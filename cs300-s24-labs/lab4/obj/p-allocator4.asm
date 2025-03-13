
obj/p-allocator4.full:     file format elf64-x86-64


Disassembly of section .text:

00000000001c0000 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  1c0000:	f3 0f 1e fa          	endbr64
  1c0004:	55                   	push   %rbp
  1c0005:	48 89 e5             	mov    %rsp,%rbp
  1c0008:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  1c0009:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
  1c000e:	0f 05                	syscall


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  1c0010:	89 c3                	mov    %eax,%ebx
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  1c0012:	bf 0f 20 1c 00       	mov    $0x1c200f,%edi
    pid_t p = sys_getpid();

    // The heap starts on the page right after the 'end' symbol,
    // whose address is the first address not allocated to process code
    // or data.
    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  1c0017:	48 81 e7 00 f0 ff ff 	and    $0xfffffffffffff000,%rdi
  1c001e:	48 89 3d e3 0f 00 00 	mov    %rdi,0xfe3(%rip)        # 1c1008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1c0025:	48 89 e0             	mov    %rsp,%rax

    // The bottom of the stack is the first address on the current
    // stack page (this process never needs more than one stack page).
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1c0028:	48 83 e8 01          	sub    $0x1,%rax
  1c002c:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1c0032:	48 89 05 c7 0f 00 00 	mov    %rax,0xfc7(%rip)        # 1c1000 <stack_bottom>

    // Allocate heap pages until (1) hit the stack (out of address space)
    // or (2) allocation fails (out of physical memory).
    // TODO: Add your code here.
    while(1){
        if (heap_top + PAGESIZE > stack_bottom) {
  1c0039:	48 8d 97 00 10 00 00 	lea    0x1000(%rdi),%rdx
  1c0040:	48 39 d0             	cmp    %rdx,%rax
  1c0043:	72 38                	jb     1c007d <process_main()+0x7d>
    register uintptr_t rax asm("rax") = syscallno;
  1c0045:	b8 04 00 00 00       	mov    $0x4,%eax
    asm volatile ("syscall"
  1c004a:	0f 05                	syscall
            break;
        }
        int result = sys_page_alloc(heap_top);
        if (result < 0) {
  1c004c:	85 c0                	test   %eax,%eax
  1c004e:	78 2d                	js     1c007d <process_main()+0x7d>
            break;
        }
        *((pid_t*) heap_top) = p;
  1c0050:	48 8b 05 b1 0f 00 00 	mov    0xfb1(%rip),%rax        # 1c1008 <heap_top>
  1c0057:	89 18                	mov    %ebx,(%rax)
        heap_top += PAGESIZE;
  1c0059:	48 8b 05 a8 0f 00 00 	mov    0xfa8(%rip),%rax        # 1c1008 <heap_top>
  1c0060:	48 8d b8 00 10 00 00 	lea    0x1000(%rax),%rdi
  1c0067:	48 89 3d 9a 0f 00 00 	mov    %rdi,0xf9a(%rip)        # 1c1008 <heap_top>
        if (heap_top + PAGESIZE > stack_bottom) {
  1c006e:	48 05 00 20 00 00    	add    $0x2000,%rax
  1c0074:	48 39 05 85 0f 00 00 	cmp    %rax,0xf85(%rip)        # 1c1000 <stack_bottom>
  1c007b:	73 c8                	jae    1c0045 <process_main()+0x45>
    register uintptr_t rax asm("rax") = syscallno;
  1c007d:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  1c0082:	0f 05                	syscall
    }
 

    // Do nothing forever
    while (true) {
  1c0084:	eb f7                	jmp    1c007d <process_main()+0x7d>
