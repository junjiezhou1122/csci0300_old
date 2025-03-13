#define _GNU_SOURCE
#include <assert.h>
#include <errno.h>
#include <fcntl.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#include "../io300.h"

/*
    student.c
    Fill in the following stencils
*/

/*
    When starting, you might want to change this for testing on small files.
*/
#ifndef CACHE_SIZE
#define CACHE_SIZE 8
#endif

#if (CACHE_SIZE < 4)
#error "internal cache size should not be below 4."
#error "if you changed this during testing, that is fine."
#error "when handing in, make sure it is reset to the provided value"
#error "if this is not done, the autograder will not run"
#endif

/*
   This macro enables/disables the dbg() function. Use it to silence your
   debugging info.
   Use the dbg() function instead of printf debugging if you don't want to
   hunt down 30 printfs when you want to hand in
*/
#define DEBUG_PRINT 0
#define DEBUG_STATISTICS 1

struct io300_file {
    int fd;                 // File descriptor
    char* cache;            // Cache buffer
    size_t cache_size;      // Size of the cache
    off_t file_offset;      // Current position in file
    off_t cache_offset;     // Starting position of cache in file
    size_t cache_valid;     // Number of valid bytes in cache
    int cache_dirty;        // Whether cache has been modified, but don't store into disk!
    char* description;
    struct io300_statistics {
        int read_calls;
        int write_calls;
        int seeks;
    } stats;
};

/*
    Assert the properties that you would like your file to have at all times.
    Call this function frequently (like at the beginning of each function) to
    catch logical errors early on in development.
*/
static void check_invariants(struct io300_file* f) {
    assert(f != NULL);
    assert(f->cache != NULL);
    assert(f->fd >= 0);
    assert(f->cache_size > 0);
    assert(f->file_offset >= 0);
    assert(f->cache_offset >= 0);
    assert(f->cache_valid <= f->cache_size);
}

/*
    Wrapper around printf that provides information about the
    given file. You can silence this function with the DEBUG_PRINT macro.
*/
static void dbg(struct io300_file* f, char* fmt, ...) {
    (void)f;
    (void)fmt;
#if (DEBUG_PRINT == 1)
    static char buff[300];
    size_t const size = sizeof(buff);
    int n = snprintf(buff, size,
                     // TODO: Add the fields you want to print when debugging
                     "{desc:%s, } -- ", f->description);
    int const bytes_left = size - n;
    va_list args;
    va_start(args, fmt);
    vsnprintf(&buff[n], bytes_left, fmt, args);
    va_end(args);
    printf("%s", buff);
#endif
}

struct io300_file* io300_open(const char* const path, char* description) {
    if (path == NULL) {
        fprintf(stderr, "error: null file path\n");
        return NULL;
    }

    int const fd = open(path, O_RDWR | O_CREAT | O_SYNC, S_IRUSR | S_IWUSR);
    if (fd == -1) {
        fprintf(stderr, "error: could not open file: `%s`: %s\n", path,
                strerror(errno));
        return NULL;
    }

    struct io300_file* const ret = malloc(sizeof(*ret));
    if (ret == NULL) {
        fprintf(stderr, "error: could not allocate io300_file\n");
        close(fd);
        return NULL;
    }

    ret->fd = fd;
    ret->cache = malloc(CACHE_SIZE);
    if (ret->cache == NULL) {
        fprintf(stderr, "error: could not allocate file cache\n");
        close(ret->fd);
        free(ret);
        return NULL;
    }
    ret->description = description;
    // TODO: Initialize your file
    ret->cache_size = CACHE_SIZE;
    ret->file_offset = 0;
    ret->cache_offset = 0;
    ret->cache_valid = 0;
    ret->cache_dirty = 0;
    memset(&ret->stats, 0, sizeof(ret->stats));
    

    check_invariants(ret);
    dbg(ret, "Just finished initializing file from path: %s\n", path);
    return ret;
}

// Add forward declaration for io300_fetch
int io300_fetch(struct io300_file* const f);

int io300_seek(struct io300_file* const f, off_t const pos) {
    check_invariants(f);
    f->stats.seeks++;

   // Consider whether cache still valid after seeking
    // Updated comparison to avoid signed/unsigned issues:
    if (pos >= f->cache_offset && (size_t)(pos - f->cache_offset) < f->cache_valid) {
        // Position is within valid cache range, cache remains valid
        // No action needed here as the cache is still valid
    } else {
        // Position is outside cache range
        if (f->cache_dirty) {
            io300_flush(f);
        }
        
        // Invalidate the cache
        f->cache_valid = 0;
    }

    f->file_offset = pos;
    return lseek(f->fd, pos, SEEK_SET);
}


int io300_close(struct io300_file* const f) {
    check_invariants(f);

#if (DEBUG_STATISTICS == 1)
    printf("stats: {desc: %s, read_calls: %d, write_calls: %d, seeks: %d}\n",
           f->description, f->stats.read_calls, f->stats.write_calls,
           f->stats.seeks);
#endif
    // Flush any pending writes to disk
    if (f->cache_dirty) {
        io300_flush(f);
    }

    close(f->fd);
    free(f->cache);
    free(f);
    return 0;
}

off_t io300_filesize(struct io300_file* const f) {
    check_invariants(f);
    struct stat s;
    int const r = fstat(f->fd, &s);
    if (r >= 0 && S_ISREG(s.st_mode)) {
        return s.st_size;
    } else {
        return -1;
    }
}

int io300_readc(struct io300_file* const f) {
    unsigned char c;
    check_invariants(f);
    // Updated condition and removed unused statement:
    if (f->file_offset >= f->cache_offset &&
        (size_t)(f->file_offset - f->cache_offset) < f->cache_valid) {
        c = f->cache[f->file_offset - f->cache_offset];
        f->file_offset++;
        return c;
    } else {
        // Need to fetch data into cache
        io300_fetch(f);

        // After fetching, check if we have any data
        if (f->cache_valid > 0) {
            c = f->cache[0];
            f->file_offset++;
            return c;
        } else {
            // No data available (end of file EOF)
            return -1;
        }
    }
}
int io300_writec(struct io300_file* f, int ch) {
    check_invariants(f);
    f->stats.write_calls++;

    // Update condition: cast CACHE_SIZE to off_t for signed comparison.
    if (f->file_offset >= f->cache_offset && 
        f->file_offset < f->cache_offset + (off_t)f->cache_size) {
        f->cache[f->file_offset - f->cache_offset] = ch;
        f->cache_dirty = 1;
        if ((size_t)(f->file_offset - f->cache_offset + 1) > f->cache_valid) {
            f->cache_valid = f->file_offset - f->cache_offset + 1;
        }
        f->file_offset++;
        return 1;
    } else {
        // Position outside current cache, need to flush and start new cache
        if (f->cache_dirty) {
            io300_flush(f);
        }
        
        // Start a new cache at current position
        f->cache_offset = f->file_offset;
        f->cache_valid = 1;
        f->cache[0] = ch;
        f->cache_dirty = 1;
        f->file_offset++;
        return 1;
    }
}

ssize_t io300_read(struct io300_file* const f, char* const buff,
                   size_t const sz) {
    check_invariants(f);
    
    if (sz == 0) {
        return 0;
    }

    size_t total_read = 0;

    // If reading a very large chunk, bypass cache
    if (sz > f->cache_size) {
        // Flush first
        if (f->cache_dirty && io300_flush(f) != 0) {
            return -1;
        }

        // Reset cache validity
        f->cache_valid = 0;
        
        // Seek to correct position
        off_t pos = lseek(f->fd, f->file_offset, SEEK_SET);
        if (pos == -1) return -1;
        
        // Direct read from file
        f->stats.read_calls++;
        ssize_t bytes = read(f->fd, buff, sz);
        if (bytes <= 0) return bytes; // Error or EOF
        
        // Update file position
        f->file_offset += bytes;
        return bytes;
    }
    
    // For smaller reads, use the cache
    while (total_read < sz) {
        // Check if data is in cache
        if (f->file_offset >= f->cache_offset && 
            (size_t)(f->file_offset - f->cache_offset) < f->cache_valid) {
            
            // Calculate how much we can copy from cache
            size_t cache_pos = f->file_offset - f->cache_offset;
            size_t available = f->cache_valid - cache_pos;
            size_t to_copy = (sz - total_read < available) ? sz - total_read : available;
            
            // Copy data from cache to buffer
            memcpy(buff + total_read, f->cache + cache_pos, to_copy);
            f->file_offset += to_copy;
            total_read += to_copy;  // IMPORTANT: This line updates total_read
        } else {
            // Need to fetch new data
            if (io300_fetch(f) != 0) {
                // If fetch fails but we've read some data, return what we have
                return total_read > 0 ? (ssize_t)total_read : -1;
            }
            
            // If after fetching, cache is still empty, we've hit EOF
            if (f->cache_valid == 0) {
                return total_read > 0 ? total_read : 0; // Return 0 for EOF if nothing read
            }
        }
    }
    
    return total_read;
}


ssize_t io300_write(struct io300_file* const f, const char* buff,
                    size_t const sz) {
    check_invariants(f);
    
    if (sz == 0) {
        return 0;
    }

    // If writing a very large chunk, bypass the cache
    if (sz > f->cache_size) {
        // If cache is dirty, flush it first
        if (f->cache_dirty && io300_flush(f) != 0) {
            return -1;
        }
        
        // Reset cache validity since we're bypassing it
        f->cache_valid = 0;
        
        // Seek to the correct position
        off_t pos = lseek(f->fd, f->file_offset, SEEK_SET);
        if (pos == -1) return -1;
        
        // Direct write to file
        f->stats.write_calls++;
        ssize_t bytes = write(f->fd, buff, sz);
        if (bytes <= 0) return bytes; // Error
        
        // Update file position
        f->file_offset += bytes;
        return bytes;
    }
    
    // For smaller writes, use the cache
    size_t total_written = 0;
    
    while (total_written < sz) {
        // Check if we need to flush and reset cache
        if (f->file_offset < f->cache_offset || 
            f->file_offset >= f->cache_offset + (off_t)f->cache_size) {
            
            // Flush any dirty data
            if (f->cache_dirty && io300_flush(f) != 0) {
                return -1;
            }
            
            // Reset cache to new position
            f->cache_offset = f->file_offset;
            f->cache_valid = 0;
            f->cache_dirty = 0;
        }
        
        // Calculate position in cache and how much we can write
        size_t cache_pos = f->file_offset - f->cache_offset;
        size_t available = f->cache_size - cache_pos;
        size_t to_write = (sz - total_written < available) ? sz - total_written : available;
        
        // Copy data from buffer to cache
        memcpy(f->cache + cache_pos, buff + total_written, to_write);
        
        // Update cache metadata
        f->file_offset += to_write;
        total_written += to_write;
        f->cache_dirty = 1;
        
        // Update valid region if we're extending it
        if (cache_pos + to_write > f->cache_valid) {
            f->cache_valid = cache_pos + to_write;
        }
    }
    
    return total_written;
}

int io300_flush(struct io300_file* const f) {
    check_invariants(f);
    if (!f->cache_dirty) {
        return 0;
    }
    off_t pos = lseek(f->fd, f->cache_offset, SEEK_SET);
    if (pos == -1) {
        return -1;
    }
    ssize_t bytes_written = write(f->fd, f->cache, f->cache_valid);
    // Cast bytes_written to size_t for proper comparison against cache_valid.
    if ((size_t)bytes_written != f->cache_valid) {
        return -1;
    }
    pos = lseek(f->fd, f->file_offset, SEEK_SET);
    if (pos == -1) {
        return -1;
    }
    f->cache_dirty = 0;
    return 0;
}

int io300_fetch(struct io300_file* const f) {
    check_invariants(f);
    
    // If cache is dirty, flush it first
    if (f->cache_dirty) {
        int r = io300_flush(f);
        if (r != 0) {
            return r;
        }
    }
    
    // Position the file descriptor at the current file offset
    off_t pos = lseek(f->fd, f->file_offset, SEEK_SET);
    if (pos == -1) {
        return -1;
    }
    
    // Update cache_offset to current file position
    f->cache_offset = f->file_offset;
    
    // Read data from file into cache
    ssize_t bytes_read = read(f->fd, f->cache, f->cache_size);
    
    // Check read result
    if (bytes_read < 0) {
        f->cache_valid = 0;  // No valid data in cache
        return -1;
    }
    
    // Update cache validity
    f->cache_valid = bytes_read;
    f->cache_dirty = 0;  // Cache is clean after fetching from file
    
    return 0;  // Success
}
