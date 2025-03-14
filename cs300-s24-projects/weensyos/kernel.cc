#include "kernel.hh"
#include "k-apic.hh"
#include "k-vmiter.hh"
#include <atomic>

// kernel.cc
//
//    This is the kernel.


// INITIAL PHYSICAL MEMORY LAYOUT
//
//  +-------------- Base Memory --------------+
//  v                                         v
// +-----+--------------------+----------------+--------------------+---------/
// |     | Kernel      Kernel |       :    I/O | App 1        App 1 | App 2
// |     | Code + Data  Stack |  ...  : Memory | Code + Data  Stack | Code ...
// +-----+--------------------+----------------+--------------------+---------/
// 0  0x40000              0x80000 0xA0000 0x100000             0x140000
//                                             ^
//                                             | \___ PROC_SIZE ___/
//                                      PROC_START_ADDR

#define PROC_SIZE 0x40000       // initial state only

proc ptable[NPROC];             // array of process descriptors
                                // Note that `ptable[0]` is never used.
proc* current;                  // pointer to currently executing proc

#define HZ 100                  // timer interrupt frequency (interrupts/sec)
static std::atomic<unsigned long> ticks; // # timer interrupts so far


// Memory state
//    Information about physical page with address `pa` is stored in
//    `pages[pa / PAGESIZE]`. In the handout code, each `pages` entry
//    holds an `refcount` member, which is 0 for free pages.
//    You can change this as you see fit.

pageinfo pages[NPAGES];


[[noreturn]] void schedule();
[[noreturn]] void run(proc* p);
void exception(regstate* regs);
uintptr_t syscall(regstate* regs);
void memshow();


// kernel(command)
//    Initialize the hardware and processes and start running. The `command`
//    string is an optional string passed from the boot loader.

static void process_setup(pid_t pid, const char* program_name);

void kernel(const char* command) {
    // Initialize hardware.
    init_hardware();
    log_printf("Starting WeensyOS\n");

    // Initialize timer interrupt.
    ticks = 1;
    init_timer(HZ);

    // Clear screen.
    console_clear();

    
// (re-)Initialize the kernel page table.
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
        if (it.va() == 0) {
            // nullptr is inaccessible even to the kernel
            it.map(it.va(), 0);
        } else if (it.va() >= PROC_START_ADDR) {
            // Memory above PROC_START_ADDR should not be mapped in kernel_pagetable
            // (Each process will get its own mappings for this region)
            it.map(it.va(), PTE_P | PTE_W | PTE_U);
        } else if (it.va() == CONSOLE_ADDR) {
            // Console memory needs to be accessible by both kernel and user processes
            it.map(it.va(), PTE_P | PTE_W | PTE_U);
        } else {
            // Regular kernel memory - accessible only to the kernel
            it.map(it.va(), PTE_P | PTE_W);
        }
    }

    // Set up process descriptors.
    for (pid_t i = 0; i < NPROC; i++) {
        ptable[i].pid = i;
        ptable[i].state = P_FREE;
    }
    if (command && program_loader(command).present()) {
        process_setup(1, command);
    } else {
        process_setup(1, "allocator");
        process_setup(2, "allocator2");
        process_setup(3, "allocator3");
        process_setup(4, "allocator4");
    }

    // Switch to the first process using run().
    run(&ptable[1]);
}


// kalloc(sz)
//    Kernel memory allocator. Allocates `sz` contiguous bytes and
//    returns a pointer to the allocated memory (the physical address of
//    the newly allocated memory), or `nullptr` on failure.
//
//    The returned memory is initialized to 0xCC, which corresponds to
//    the x86 instruction `int3` (this may help you debug). You can
//    reset it to something more useful.
//
//    On WeensyOS, `kalloc` is a page-based allocator: if `sz > PAGESIZE`
//    the allocation fails; if `sz < PAGESIZE` it allocates a whole page
//    anyway.
//
//    The stencil code returns the next allocatable free page it can find,
//    but it never reuses pages or supports freeing memory (you'll have to
//    change this at some point).

static uintptr_t next_alloc_pa;

void* kalloc(size_t sz) {
    if (sz > PAGESIZE) {
        return nullptr;
    }

    while (next_alloc_pa < MEMSIZE_PHYSICAL) {
        uintptr_t pa = next_alloc_pa;
        next_alloc_pa += PAGESIZE;

        if (allocatable_physical_address(pa)
            && !pages[pa / PAGESIZE].used()) {
            pages[pa / PAGESIZE].refcount = 1;
            memset((void*) pa, 0xCC, PAGESIZE);
            return (void*) pa;
        }
    }
    return nullptr;
}


// kfree(kptr)
//    Frees `kptr`, which must have been previously returned by `kalloc`.
//    If `kptr == nullptr` does nothing.

void kfree(void* kptr) {
    // Placeholder code below - you will have to implement `kfree`!
    (void) kptr;
    assert(false);
}


// process_setup(pid, program_name)
//    Loads application program `program_name` as process number `pid`.
//    This loads the application's code and data into memory, sets its
//    %rip and %rsp, gives it a stack page, and marks it as runnable.

void process_setup(pid_t pid, const char* program_name) {
    init_process(&ptable[pid], 0);

    // Initialize this process's page table. Notice how we are currently
    // sharing the kernel's page table.
    // Allocate a new, empty page table instead of kernel pagetable
    ptable[pid].pagetable = (x86_64_pagetable *) kalloc(PAGESIZE);
    if (!ptable[pid].pagetable) {
        // Handle allocation failure
        return;
    }
    memset(ptable[pid].pagetable, 0, PAGESIZE);

    // Copy kernel table into this new pagetable!
    vmiter kernel_it(kernel_pagetable, 0);
    vmiter process_it(ptable[pid].pagetable, 0);

    // Map kernel space only (not process space)
    // This ensures kernel code and data are accessible during system calls
    for (; kernel_it.va() < PROC_START_ADDR; kernel_it += PAGESIZE) {
        // Skip non-existent mappings
        if (!kernel_it.present()) {
            process_it += PAGESIZE;
            continue;
        }
        
        // Copy kernel mappings
        process_it.map(kernel_it.pa(), kernel_it.perm());
        process_it += PAGESIZE;
    }

    // Also map the console
    vmiter console_kernel_it(kernel_pagetable, CONSOLE_ADDR);
    vmiter console_process_it(ptable[pid].pagetable, CONSOLE_ADDR);
    console_process_it.map(console_kernel_it.pa(), console_kernel_it.perm());

    // Initialize `program_loader`.
    program_loader loader(program_name);

    // For each segment of the program
    for (loader.reset(); loader.present(); ++loader) {
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
            a < loader.va() + loader.size();
            a += PAGESIZE) {
            // Allocate a physical page using kalloc
            void* physical_page = kalloc(PAGESIZE);
            if (!physical_page) {
                // Handle allocation failure
                return;
            }
            
            // Clear the physical page 
            memset(physical_page, 0, PAGESIZE);
            
            // Map the physical page to the virtual address in the process's page table
            // Set appropriate permissions (read-only or read-write)
            int perm = PTE_P | PTE_U;  // Always present and user-accessible
            if (loader.writable()) {
                perm |= PTE_W;         // Add write permission only if segment is writable
            }
            
            vmiter segment_it(ptable[pid].pagetable, a);
            segment_it.map((uintptr_t)physical_page, perm);
        }
    }

    // Copy program data from loader to mapped physical pages
    for (loader.reset(); loader.present(); ++loader) {
        for (size_t i = 0; i < loader.size(); ++i) {
            // Get the virtual address in the process's address space
            uintptr_t va = loader.va() + i;
            
            // Find corresponding physical address using vmiter
            vmiter it(ptable[pid].pagetable, va);
            if (it.present()) {
                // Copy program data directly to the physical address
                if (i < loader.data_size()) {
                    *(char*)it.pa() = loader.data()[i];
                }
            }
        }
    }

    // Allocate stack page
    uintptr_t stack_addr = MEMSIZE_VIRTUAL - PAGESIZE;
    void* physical_stack = kalloc(PAGESIZE);
    if (!physical_stack) {
        // Handle allocation failure
        return;
    }
    
    // Clear the stack
    memset(physical_stack, 0, PAGESIZE);
    
    // Map the stack page with user permissions
    vmiter stack_it(ptable[pid].pagetable, stack_addr);
    stack_it.map((uintptr_t)physical_stack, PTE_P | PTE_W | PTE_U);

    // Set %rsp to the start of the stack.
    ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;

    // Set %rip to the entry point
    ptable[pid].regs.reg_rip = loader.entry();

    // Mark the process as runnable
    ptable[pid].state = P_RUNNABLE;
}



// exception(regs)
//    Exception handler (for interrupts, traps, and faults).
//    You should *not* have to edit this function.
//
//    The register values from exception time are stored in `regs`.
//    The processor responds to an exception by saving application state on
//    the kernel's stack, then jumping to kernel assembly code (see
//    k-exception.S). That code saves more registers on the kernel's stack,
//    then calls exception(). This way, the process can be resumed right where
//    it left off before the exception. The pushed registers are popped and
//    restored before returning to the process (see k-exception.S).
//
//    Note that hardware interrupts are disabled when the kernel is running.

void exception(regstate* regs) {
    // Copy the saved registers into the `current` process descriptor.
    current->regs = *regs;
    regs = &current->regs;

    // It can be useful to log events using `log_printf`.
    // Events logged this way are stored in the host's `log.txt` file.
    /* log_printf("proc %d: exception %d at rip %p\n",
                current->pid, regs->reg_intno, regs->reg_rip); */

    // Show the current cursor location and memory state (unless this is a kernel fault).
    console_show_cursor(cursorpos);
    if (regs->reg_intno != INT_PF || (regs->reg_errcode & PFERR_USER)) {
        memshow();
    }

    // If Control-C was typed, exit the virtual machine.
    check_keyboard();


    // Actually handle the exception.
    switch (regs->reg_intno) {

    case INT_IRQ + IRQ_TIMER:
        ++ticks;
        lapicstate::get().ack();
        schedule();
        break;                  /* will not be reached */

    case INT_PF: {
        // Analyze faulting address and access type.
        uintptr_t addr = rdcr2();
        const char* operation = regs->reg_errcode & PFERR_WRITE
                ? "write" : "read";
        const char* problem = regs->reg_errcode & PFERR_PRESENT
                ? "protection problem" : "missing page";

        if (!(regs->reg_errcode & PFERR_USER)) {
            panic("Kernel page fault for %p (%s %s, rip=%p)!\n",
                  addr, operation, problem, regs->reg_rip);
        }
        console_printf(CPOS(24, 0), 0x0C00,
                       "Process %d page fault for %p (%s %s, rip=%p)!\n",
                       current->pid, addr, operation, problem, regs->reg_rip);
        current->state = P_BROKEN;
        break;
    }

    default:
        panic("Unexpected exception %d!\n", regs->reg_intno);

    }

    // Return to the current process (or run something else).
    if (current->state == P_RUNNABLE) {
        run(current);
    } else {
        schedule();
    }
}


// syscall(regs)
//    System call handler.
//
//    The register values from system call time are stored in `regs`.
//    The return value, if any, is returned to the user process in `%rax`.
//
//    Note that hardware interrupts are disabled when the kernel is running.

// Headers for helper functions used by syscall.
int syscall_page_alloc(uintptr_t addr);
pid_t syscall_fork();
void syscall_exit();

uintptr_t syscall(regstate* regs) {
    // Copy the saved registers into the `current` process descriptor.
    current->regs = *regs;
    regs = &current->regs;

    // It can be useful to log events using `log_printf`.
    // Events logged this way are stored in the host's `log.txt` file.
    /* log_printf("proc %d: syscall %d at rip %p\n",
                  current->pid, regs->reg_rax, regs->reg_rip); */

    // Show the current cursor location and memory state (unless this is a kernel fault).
    console_show_cursor(cursorpos);
    memshow();

    // If Control-C was typed, exit the virtual machine.
    check_keyboard();

    // Actually handle the exception.
    switch (regs->reg_rax) {

    case SYSCALL_PANIC:
        panic(nullptr); // does not return

    case SYSCALL_GETPID:
        return current->pid;

    case SYSCALL_YIELD:
        current->regs.reg_rax = 0;
        schedule(); // does not return

    case SYSCALL_PAGE_ALLOC:
        return syscall_page_alloc(current->regs.reg_rdi);

    case SYSCALL_FORK:
        return syscall_fork();

    case SYSCALL_EXIT:
        syscall_exit();
        schedule(); // does not return

    default:
        panic("Unexpected system call %ld!\n", regs->reg_rax);

    }

    panic("Should not get here!\n");
}


// syscall_page_alloc(addr)
//    Helper function that handles the SYSCALL_PAGE_ALLOC system call.
//    This function implement the specification for `sys_page_alloc`
//    in `u-lib.hh` (but in the stencil code, it does not - you will
//    have to change this).

int syscall_page_alloc(uintptr_t addr) {
    assert(addr % PAGESIZE == 0);
    
    // Allocate a new physical page
    void* physical_page = kalloc(PAGESIZE);
    if (!physical_page) {
        return -1; // Allocation failed
    }
    
    // Map the physical page to the virtual address in the current process's page table
    vmiter it(current->pagetable, addr);
    int r = it.try_map((uintptr_t)physical_page, PTE_P | PTE_W | PTE_U);
    if (r != 0) {
        // If mapping failed, free the page and return error
        kfree(physical_page);
        return -1;
    }
    
    // The page is already zeroed by kalloc + memset
    return 0;
}

// syscall_fork()
//    Handles the SYSCALL_FORK system call. This function
//    implements the specification for `sys_fork` in `u-lib.hh`.
pid_t syscall_fork() {
    // Find a free process slot
    pid_t child_pid = -1;
    for (pid_t i = 1; i < NPROC; ++i) {
        if (ptable[i].state == P_FREE) {
            child_pid = i;
            break;
        }
    }
    
    // No free process slot found
    if (child_pid == -1) {
        return -1;
    }
    
    // Initialize the child process
    proc* child = &ptable[child_pid];
    *child = *current;  // Copy most state from parent
    child->pid = child_pid;
    
    // Allocate a new page table for the child
    child->pagetable = (x86_64_pagetable*) kalloc(PAGESIZE);
    if (!child->pagetable) {
        return -1;  // Failed to allocate page table
    }
    memset(child->pagetable, 0, PAGESIZE);
    
    // Copy kernel mappings (same as in process_setup)
    vmiter kernel_it(kernel_pagetable, 0);
    vmiter child_it(child->pagetable, 0);
    
    // Map kernel space only (not process space)
    for (; kernel_it.va() < PROC_START_ADDR; kernel_it += PAGESIZE) {
        if (!kernel_it.present()) {
            child_it += PAGESIZE;
            continue;
        }
        child_it.map(kernel_it.pa(), kernel_it.perm());
        child_it += PAGESIZE;
    }
    
    // Map the console
    vmiter console_kernel_it(kernel_pagetable, CONSOLE_ADDR);
    vmiter console_child_it(child->pagetable, CONSOLE_ADDR);
    console_child_it.map(console_kernel_it.pa(), console_kernel_it.perm());
    
    // Copy parent's user memory to child
    for (vmiter parent_it(current->pagetable, PROC_START_ADDR);
         parent_it.va() < MEMSIZE_VIRTUAL;
         parent_it += PAGESIZE) {
        
        if (!parent_it.present()) {
            continue;  // Skip unmapped pages
        }
        
        // Check if the page is writable
        if (parent_it.perm() & PTE_W) {
            // For writable pages, allocate a new physical page and copy contents
            void* child_page = kalloc(PAGESIZE);
            if (!child_page) {
                // TODO: Clean up already allocated pages
                return -1;  // Failed to allocate memory
            }
            
            // Copy the page contents
            memcpy(child_page, (void*)parent_it.pa(), PAGESIZE);
            
            // Map the page in the child's page table with the same permissions
            vmiter child_mem_it(child->pagetable, parent_it.va());
            child_mem_it.map((uintptr_t)child_page, parent_it.perm());
        } else {
            // For read-only pages, share the physical page between parent and child
            
            // Increment the reference count for the shared page
            uintptr_t pa = parent_it.pa();
            pages[pa / PAGESIZE].refcount++;
            
            // Map the same physical page in the child's page table
            vmiter child_mem_it(child->pagetable, parent_it.va());
            child_mem_it.map(pa, parent_it.perm());
        }
    }
    
    // Set the return value for the child process (0)
    child->regs.reg_rax = 0;
    
    // Mark the child process as runnable
    child->state = P_RUNNABLE;
    
    // Return the child's PID to the parent
    return child_pid;
}

// syscall_exit()
//    Handles the SYSCALL_EXIT system call. This function
//    implements the specification for `sys_exit` in `u-lib.hh`.
void syscall_exit() {
    // Implement for Step 7!
    panic("Unexpected system call %ld!\n", SYSCALL_EXIT);
}

// schedule
//    Picks the next process to run and then run it.
//    If there are no runnable processes, spins forever.
//    You should *not* have to edit this function.

void schedule() {
    pid_t pid = current->pid;
    for (unsigned spins = 1; true; ++spins) {
        pid = (pid + 1) % NPROC;
        if (ptable[pid].state == P_RUNNABLE) {
            run(&ptable[pid]);
        }

        // If Control-C was typed, exit the virtual machine.
        check_keyboard();

        // If spinning forever, show the memviewer.
        if (spins % (1 << 12) == 0) {
            memshow();
            log_printf("%u\n", spins);
        }
    }
}


// run(p)
//    Runs process `p`. This involves setting `current = p` and calling
//    `exception_return` to restore its page table and registers.
//    You should *not* have to edit this function.

void run(proc* p) {
    assert(p->state == P_RUNNABLE);
    current = p;

    // Check the process's current pagetable.
    check_pagetable(p->pagetable);

    // This function is defined in k-exception.S. It restores the process's
    // registers then jumps back to user mode.
    exception_return(p);

    // should never get here
    while (true) {
    }
}


// memshow()
//    Draws a picture of memory (physical and virtual) on the CGA console.
//    Switches to a new process's virtual memory map every 0.25 sec.
//    Uses `console_memviewer()`, a function defined in `k-memviewer.cc`.
//    You should *not* have to edit this function.

void memshow() {
    static unsigned last_ticks = 0;
    static int showing = 0;

    // switch to a new process every 0.25 sec
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
        last_ticks = ticks;
        showing = (showing + 1) % NPROC;
    }

    proc* p = nullptr;
    for (int search = 0; !p && search < NPROC; ++search) {
        if (ptable[showing].state != P_FREE
            && ptable[showing].pagetable) {
            p = &ptable[showing];
        } else {
            showing = (showing + 1) % NPROC;
        }
    }

    extern void console_memviewer(proc* vmp);
    console_memviewer(p);
}
