#define DMALLOC_DISABLE 1
#include "dmalloc.hh"
#include <cassert>
#include <cstring>
#include <map>
#include <algorithm>

// Magic number for validation
#define MAGIC_NUMBER 0xDEADBEEF

// Add a canary value definition at the top with other constants
#define CANARY_VALUE 0xCAFEBABE

// Structure to store metadata about allocations
struct allocation_header {
    size_t size;           // Size of the allocation
    unsigned long magic;   // Magic number to detect corruption
    unsigned int status;   // Status of the allocation (1 = allocated, 0 = freed)
};

struct allocation_info {
    const char* file; // file where allocation happend
    long line; //line number where allocation happed
    size_t size; // size of allocation
};

// Global variables to track memory statistics
static unsigned long long alloc_total = 0;     // Total number of allocations
static unsigned long long total_size = 0;      // Total size allocated
static unsigned long long alloc_active = 0;    // Active allocations count
static unsigned long long active_size = 0;     // Active size allocated
static unsigned long long alloc_fail = 0;      // Number of failed allocations
static unsigned long long fail_size = 0;       // Total size of failed allocations
static uintptr_t heap_min = 0;                // Smallest allocated address
static uintptr_t heap_max = 0;                // Largest allocated address

// Using std::map
std::map<void*, allocation_info> allocation_map;


/**
 * dmalloc(sz,file,line)
 *      malloc() wrapper. Dynamically allocate the requested amount `sz` of memory and 
 *      return a pointer to it 
 * 
 * @arg size_t sz : the amount of memory requested 
 * @arg const char *file : a string containing the filename from which dmalloc was called 
 * @arg long line : the line number from which dmalloc was called 
 * 
 * @return a pointer to the heap where the memory was reserved
 */
void* dmalloc(size_t sz, const char* file, long line) {
    (void) file, (void) line;   // avoid uninitialized variable warnings
    
    // Handle zero-size allocation
    if (sz == 0) {
        sz = 1;  // Allocate at least 1 byte
    }
    
    // Calculate total size needed (user size + metadata + canary)
    size_t total_allocation = sz + sizeof(allocation_header) + sizeof(unsigned long);
    
    // Check for overflow when adding header size
    if (sz > SIZE_MAX - sizeof(allocation_header) - sizeof(unsigned long)) {
        alloc_fail++;
        fail_size += sz;
        return nullptr;
    }
    
    // Allocate the total size (metadata + user data + canary)
    void* block = base_malloc(total_allocation);
    
    if (block != nullptr) {
        // Set up the metadata at the start of the block
        allocation_header* header = (allocation_header*)block;
        header->size = sz;  // Store the user's requested size
        header->magic = MAGIC_NUMBER;
        header->status = 1;  // Mark as allocated
        
        // Calculate pointer to user's data area (after header)
        void* user_ptr = (char*)block + sizeof(allocation_header);
        
        // Place canary at the end of the user's data
        unsigned long* canary = (unsigned long*)((char*)user_ptr + sz);
        *canary = CANARY_VALUE;
        
        // Update statistics
        alloc_total++;
        alloc_active++;
        total_size += sz;
        active_size += sz;
        
        // Update heap boundaries
        uintptr_t ptr_val = (uintptr_t)user_ptr;
        if (heap_min == 0 || ptr_val < heap_min) {
            heap_min = ptr_val;
        }
        
        // Fix: Update heap_max to include the entire allocation
        // Need to include: base pointer + header size + user data size
        heap_max = std::max(heap_max, 
                           (uintptr_t)block + sizeof(allocation_header) + sz);
        
        allocation_info info = {file, line, sz};
        allocation_map[user_ptr] = info;
        
        return user_ptr;
    } else {
        // Handle allocation failure
        alloc_fail++;
        fail_size += sz;
        return nullptr;
    }
}

/**
 * dfree(ptr, file, line)
 *      free() wrapper. Release the block of heap memory pointed to by `ptr`. This should 
 *      be a pointer that was previously allocated on the heap. If `ptr` is a nullptr do nothing. 
 * 
 * @arg void *ptr : a pointer to the heap 
 * @arg const char *file : a string containing the filename from which dfree was called 
 * @arg long line : the line number from which dfree was called 
 */
void dfree(void* ptr, const char* file, long line) {
    if (ptr != nullptr) {
        // Check if pointer is within heap bounds
        uintptr_t ptr_val = (uintptr_t)ptr;
        if (ptr_val < heap_min || ptr_val >= heap_max) {
            fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not in heap\n", 
                    file, line, ptr);
            return;
        }

        // Get back to the header by moving backwards from user's pointer
        allocation_header* header = (allocation_header*)((char*)ptr - sizeof(allocation_header));
        
        // Verify the magic number
        if (header->magic != MAGIC_NUMBER) {
            // Magic number invalid - check if it's within any allocated blocks
            bool found = false;
            for (const auto& pair : allocation_map) {
                void* block_ptr = pair.first;
                const allocation_info& info = pair.second;
                
                // Calculate block boundaries
                uintptr_t block_start = (uintptr_t)block_ptr;
                uintptr_t block_end = block_start + info.size;
                
                // Check if our invalid pointer is within this block
                if (ptr_val >= block_start && ptr_val < block_end) {
                    // Calculate offset into the block
                    size_t offset = ptr_val - block_start;
                    fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not allocated\n"
                            "%s:%ld: %p is %zu bytes inside a %zu byte region allocated here\n",
                            file, line, ptr,
                            info.file, info.line, ptr, offset, info.size);
                    found = true;
                    break;
                }
            }
            
            if (!found) {
                fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not allocated\n",
                        file, line, ptr);
            }
            return;
        }
        
        // Check if already freed (keep this AFTER magic number check but BEFORE allocation_map check)
        if (header->status == 0) {
            fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, double free\n", 
                    file, line, ptr);
            return;
        }
        
        // Now check if the pointer is in our allocation map
        auto it = allocation_map.find(ptr);
        if (it == allocation_map.end()) {
            fprintf(stderr, "MEMORY BUG: %s:%ld: invalid free of pointer %p, not allocated\n",
                    file, line, ptr);
            return;
        }
        
        // Check the canary value at the end of the user's data
        unsigned long* canary = (unsigned long*)((char*)ptr + header->size);
        if (*canary != CANARY_VALUE) {
            fprintf(stderr, "MEMORY BUG: %s:%ld: detected wild write during free of pointer %p\n", 
                    file, line, ptr);
            abort();  // Terminate the program as requested
        }
        
        // Update statistics and mark as freed
        alloc_active--;
        active_size -= header->size;
        
        // Mark as freed and clear magic
        header->status = 0;
        
        allocation_map.erase(ptr);
        
        base_free(header);
    }
}

/**
 * dcalloc(nmemb, sz, file, line)
 *      calloc() wrapper. Dynamically allocate enough memory to store an array of `nmemb` 
 *      number of elements with wach element being `sz` bytes. The memory should be initialized 
 *      to zero  
 * 
 * @arg size_t nmemb : the number of items that space is requested for
 * @arg size_t sz : the size in bytes of the items that space is requested for
 * @arg const char *file : a string containing the filename from which dcalloc was called 
 * @arg long line : the line number from which dcalloc was called 
 * 
 * @return a pointer to the heap where the memory was reserved
 */
void* dcalloc(size_t nmemb, size_t sz, const char* file, long line) {
    // Check for multiplication overflow
    if (nmemb != 0 && sz != 0) {
        if (sz > SIZE_MAX / nmemb) {
            // Multiplication would overflow
            alloc_fail++;
            fail_size += SIZE_MAX;  // Record maximum possible size as failed
            return nullptr;
        }
    }
    
    size_t total_sz = nmemb * sz;
    // Check if total size would overflow with header
    if (total_sz > SIZE_MAX - sizeof(allocation_header)) {
        alloc_fail++;
        fail_size += total_sz;
        return nullptr;
    }
    
    void* ptr = dmalloc(total_sz, file, line);
    if (ptr) {
        memset(ptr, 0, total_sz);
    }
    return ptr;
}

/**
 * get_statistics(stats)
 *      fill a dmalloc_stats pointer with the current memory statistics  
 * 
 * @arg dmalloc_stats *stats : a pointer to the the dmalloc_stats struct we want to fill
 */
void get_statistics(dmalloc_stats* stats) {
    // Initialize all statistics to zero
    memset(stats, 0, sizeof(dmalloc_stats));
    
    // Fill in the tracked statistics
    stats->ntotal = alloc_total;
    stats->total_size = total_size;
    stats->nactive = alloc_active;
    stats->active_size = active_size;
    stats->nfail = alloc_fail;
    stats->fail_size = fail_size;
    stats->heap_min = heap_min;
    stats->heap_max = heap_max;
}

/**
 * print_statistics()
 *      print the current memory statistics to stdout       
 */
void print_statistics() {
    dmalloc_stats stats;
    get_statistics(&stats);

    printf("alloc count: active %10llu   total %10llu   fail %10llu\n",
           stats.nactive, stats.ntotal, stats.nfail);
    printf("alloc size:  active %10llu   total %10llu   fail %10llu\n",
           stats.active_size, stats.total_size, stats.fail_size);
}

/**  
 * print_leak_report()
 *      Print a report of all currently-active allocated blocks of dynamic
 *      memory.
 */
void print_leak_report() {
    for (const auto& pair : allocation_map) {
        void* ptr = pair.first;
        const allocation_info& info = pair.second;
        printf("LEAK CHECK: %s:%ld: allocated object %p with size %zu\n",
               info.file, info.line, ptr, info.size);
    }
}
