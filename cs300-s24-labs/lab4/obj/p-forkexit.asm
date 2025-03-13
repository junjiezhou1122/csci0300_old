
obj/p-forkexit.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <sys_exit()>:
  100000:	f3 0f 1e fa          	endbr64
            if (choice == 0 && p > 0) {
  100004:	b8 06 00 00 00       	mov    $0x6,%eax
                sys_exit();
  100009:	0f 05                	syscall
    int speed = rand(1, 16);
  10000b:	b8 03 00 00 00       	mov    $0x3,%eax

  100010:	bf f0 0d 10 00       	mov    $0x100df0,%edi
  100015:	0f 05                	syscall
  100017:	eb fe                	jmp    100017 <sys_exit()+0x17>

0000000000100019 <process_main()>:
void process_main() {
  100019:	f3 0f 1e fa          	endbr64
  10001d:	55                   	push   %rbp
  10001e:	48 89 e5             	mov    %rsp,%rbp
  100021:	41 56                	push   %r14
  100023:	41 55                	push   %r13
  100025:	41 54                	push   %r12
  100027:	53                   	push   %rbx
  100028:	eb 12                	jmp    10003c <process_main()+0x23>
                sys_exit();
  10002a:	e8 d1 ff ff ff       	call   100000 <sys_exit()>
            } else if (choice != 2 ? p > 0 : p == 0) {
  10002f:	85 db                	test   %ebx,%ebx
  100031:	75 09                	jne    10003c <process_main()+0x23>
  100033:	eb 44                	jmp    100079 <process_main()+0x60>
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  100035:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  10003a:	0f 05                	syscall
        int x = rand(0, ALLOC_SLOWDOWN);
  10003c:	be 12 00 00 00       	mov    $0x12,%esi
  100041:	bf 00 00 00 00       	mov    $0x0,%edi
  100046:	e8 d8 02 00 00       	call   100323 <rand(int, int)>
        if (x == 0) {
  10004b:	85 c0                	test   %eax,%eax
  10004d:	75 e6                	jne    100035 <process_main()+0x1c>
    register uintptr_t rax asm("rax") = syscallno;
  10004f:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
  100054:	0f 05                	syscall
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
    return rax;
  100056:	48 89 c3             	mov    %rax,%rbx
            int choice = rand(0, 2);
  100059:	be 02 00 00 00       	mov    $0x2,%esi
  10005e:	bf 00 00 00 00       	mov    $0x0,%edi
  100063:	e8 bb 02 00 00       	call   100323 <rand(int, int)>
            if (choice == 0 && p > 0) {
  100068:	85 c0                	test   %eax,%eax
  10006a:	75 04                	jne    100070 <process_main()+0x57>
  10006c:	85 db                	test   %ebx,%ebx
  10006e:	7f ba                	jg     10002a <process_main()+0x11>
            } else if (choice != 2 ? p > 0 : p == 0) {
  100070:	83 f8 02             	cmp    $0x2,%eax
  100073:	74 ba                	je     10002f <process_main()+0x16>
  100075:	85 db                	test   %ebx,%ebx
  100077:	7e c3                	jle    10003c <process_main()+0x23>
    int speed = rand(1, 16);
  100079:	be 10 00 00 00       	mov    $0x10,%esi
  10007e:	bf 01 00 00 00       	mov    $0x1,%edi
  100083:	e8 9b 02 00 00       	call   100323 <rand(int, int)>
  100088:	41 89 c4             	mov    %eax,%r12d
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  10008b:	41 bd 1b 30 10 00    	mov    $0x10301b,%r13d
    uint8_t* data_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  100091:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    heap_top = data_top;
  100098:	4c 89 2d 69 1f 00 00 	mov    %r13,0x1f69(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  10009f:	48 89 e0             	mov    %rsp,%rax
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1000a2:	48 83 e8 01          	sub    $0x1,%rax
  1000a6:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000ac:	48 89 05 4d 1f 00 00 	mov    %rax,0x1f4d(%rip)        # 102000 <stack_bottom>
    while (heap_top != stack_bottom) {
  1000b3:	4c 39 e8             	cmp    %r13,%rax
  1000b6:	0f 84 18 01 00 00    	je     1001d4 <process_main()+0x1bb>
    unsigned nalloc = 0;
  1000bc:	bb 00 00 00 00       	mov    $0x0,%ebx
            console[CPOS(24, 79)] = speed;
  1000c1:	41 be 00 80 0b 00    	mov    $0xb8000,%r14d
  1000c7:	e9 8a 00 00 00       	jmp    100156 <process_main()+0x13d>
        int x = rand(0, 7 + min(nalloc / 4, 10U));
  1000cc:	89 de                	mov    %ebx,%esi
  1000ce:	c1 ee 02             	shr    $0x2,%esi
    return a < b ? a : b;
  1000d1:	b8 0a 00 00 00       	mov    $0xa,%eax
  1000d6:	39 c6                	cmp    %eax,%esi
  1000d8:	0f 47 f0             	cmova  %eax,%esi
  1000db:	83 c6 07             	add    $0x7,%esi
  1000de:	bf 00 00 00 00       	mov    $0x0,%edi
  1000e3:	e8 3b 02 00 00       	call   100323 <rand(int, int)>
        if (x < 2) {
  1000e8:	83 f8 01             	cmp    $0x1,%eax
  1000eb:	0f 8e 8f 00 00 00    	jle    100180 <process_main()+0x167>
        } else if (x < 3) {
  1000f1:	83 f8 02             	cmp    $0x2,%eax
  1000f4:	0f 8e a5 00 00 00    	jle    10019f <process_main()+0x186>
}

inline uintptr_t make_syscall(int syscallno, uintptr_t arg0) {
    register uintptr_t rax asm("rax") = syscallno;
  1000fa:	b8 04 00 00 00       	mov    $0x4,%eax
    asm volatile ("syscall"
  1000ff:	48 8b 3d 02 1f 00 00 	mov    0x1f02(%rip),%rdi        # 102008 <heap_top>
  100106:	0f 05                	syscall
        } else if (sys_page_alloc(heap_top) >= 0) {
  100108:	85 c0                	test   %eax,%eax
  10010a:	0f 88 b2 00 00 00    	js     1001c2 <process_main()+0x1a9>
            *heap_top = speed;
  100110:	48 8b 05 f1 1e 00 00 	mov    0x1ef1(%rip),%rax        # 102008 <heap_top>
  100117:	44 88 20             	mov    %r12b,(%rax)
            console[CPOS(24, 79)] = speed;
  10011a:	66 45 89 a6 9e 0f 00 	mov    %r12w,0xf9e(%r14)
  100121:	00 
            heap_top += PAGESIZE;
  100122:	48 81 05 db 1e 00 00 	addq   $0x1000,0x1edb(%rip)        # 102008 <heap_top>
  100129:	00 10 00 00 
            if (console[CPOS(24, 0)]) {
  10012d:	66 41 83 be 00 0f 00 	cmpw   $0x0,0xf00(%r14)
  100134:	00 00 
  100136:	75 6c                	jne    1001a4 <process_main()+0x18b>
            nalloc = (heap_top - data_top) / PAGESIZE;
  100138:	48 8b 1d c9 1e 00 00 	mov    0x1ec9(%rip),%rbx        # 102008 <heap_top>
  10013f:	4c 29 eb             	sub    %r13,%rbx
  100142:	48 c1 eb 0c          	shr    $0xc,%rbx
    while (heap_top != stack_bottom) {
  100146:	48 8b 05 b3 1e 00 00 	mov    0x1eb3(%rip),%rax        # 102000 <stack_bottom>
  10014d:	48 39 05 b4 1e 00 00 	cmp    %rax,0x1eb4(%rip)        # 102008 <heap_top>
  100154:	74 7e                	je     1001d4 <process_main()+0x1bb>
        if (rand(0, 6 * ALLOC_SLOWDOWN) >= 8 * speed) {
  100156:	be 6c 00 00 00       	mov    $0x6c,%esi
  10015b:	bf 00 00 00 00       	mov    $0x0,%edi
  100160:	e8 be 01 00 00       	call   100323 <rand(int, int)>
  100165:	89 c2                	mov    %eax,%edx
  100167:	42 8d 04 e5 00 00 00 	lea    0x0(,%r12,8),%eax
  10016e:	00 
  10016f:	39 c2                	cmp    %eax,%edx
  100171:	0f 8c 55 ff ff ff    	jl     1000cc <process_main()+0xb3>
    register uintptr_t rax asm("rax") = syscallno;
  100177:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  10017c:	0f 05                	syscall
            continue;
  10017e:	eb c6                	jmp    100146 <process_main()+0x12d>
    register uintptr_t rax asm("rax") = syscallno;
  100180:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
  100185:	0f 05                	syscall
            if (sys_fork() == 0) {
  100187:	85 c0                	test   %eax,%eax
  100189:	75 bb                	jne    100146 <process_main()+0x12d>
                speed = rand(1, 16);
  10018b:	be 10 00 00 00       	mov    $0x10,%esi
  100190:	bf 01 00 00 00       	mov    $0x1,%edi
  100195:	e8 89 01 00 00       	call   100323 <rand(int, int)>
  10019a:	41 89 c4             	mov    %eax,%r12d
  10019d:	eb a7                	jmp    100146 <process_main()+0x12d>
            sys_exit();
  10019f:	e8 5c fe ff ff       	call   100000 <sys_exit()>
                console_printf(CPOS(24, 0), 0, "\n");
  1001a4:	ba 0c 0e 10 00       	mov    $0x100e0c,%edx
  1001a9:	be 00 00 00 00       	mov    $0x0,%esi
  1001ae:	bf 80 07 00 00       	mov    $0x780,%edi
  1001b3:	b8 00 00 00 00       	mov    $0x0,%eax
  1001b8:	e8 ba 0b 00 00       	call   100d77 <console_printf(int, int, char const*, ...)>
  1001bd:	e9 76 ff ff ff       	jmp    100138 <process_main()+0x11f>
        } else if (nalloc < 4) {
  1001c2:	83 fb 03             	cmp    $0x3,%ebx
  1001c5:	76 08                	jbe    1001cf <process_main()+0x1b6>
            nalloc -= 4;
  1001c7:	83 eb 04             	sub    $0x4,%ebx
  1001ca:	e9 77 ff ff ff       	jmp    100146 <process_main()+0x12d>
            sys_exit();
  1001cf:	e8 2c fe ff ff       	call   100000 <sys_exit()>
        if (rand(0, 2 * ALLOC_SLOWDOWN - 1) == 0) {
  1001d4:	be 23 00 00 00       	mov    $0x23,%esi
  1001d9:	bf 00 00 00 00       	mov    $0x0,%edi
  1001de:	e8 40 01 00 00       	call   100323 <rand(int, int)>
  1001e3:	85 c0                	test   %eax,%eax
  1001e5:	74 09                	je     1001f0 <process_main()+0x1d7>
    register uintptr_t rax asm("rax") = syscallno;
  1001e7:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  1001ec:	0f 05                	syscall
// sys_yield
//    Yield control of the CPU to the kernel. The kernel will pick another
//    process to run, if possible.
inline void sys_yield() {
    make_syscall(SYSCALL_YIELD);
}
  1001ee:	eb e4                	jmp    1001d4 <process_main()+0x1bb>
            sys_exit();
  1001f0:	e8 0b fe ff ff       	call   100000 <sys_exit()>

00000000001001f5 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1001f5:	f3 0f 1e fa          	endbr64
  1001f9:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1001fc:	48 39 fe             	cmp    %rdi,%rsi
  1001ff:	72 1d                	jb     10021e <memmove+0x29>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  100201:	b9 00 00 00 00       	mov    $0x0,%ecx
  100206:	48 85 d2             	test   %rdx,%rdx
  100209:	74 12                	je     10021d <memmove+0x28>
            *d++ = *s++;
  10020b:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  10020f:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  100213:	48 83 c1 01          	add    $0x1,%rcx
  100217:	48 39 ca             	cmp    %rcx,%rdx
  10021a:	75 ef                	jne    10020b <memmove+0x16>
        }
    }
    return dst;
}
  10021c:	c3                   	ret
  10021d:	c3                   	ret
    if (s < d && s + n > d) {
  10021e:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  100222:	48 39 cf             	cmp    %rcx,%rdi
  100225:	73 da                	jae    100201 <memmove+0xc>
        while (n-- > 0) {
  100227:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  10022b:	48 85 d2             	test   %rdx,%rdx
  10022e:	74 ec                	je     10021c <memmove+0x27>
            *--d = *--s;
  100230:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  100234:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  100237:	48 83 e9 01          	sub    $0x1,%rcx
  10023b:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  10023f:	75 ef                	jne    100230 <memmove+0x3b>
  100241:	c3                   	ret

0000000000100242 <memset>:

void* memset(void* v, int c, size_t n) {
  100242:	f3 0f 1e fa          	endbr64
  100246:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  100249:	48 85 d2             	test   %rdx,%rdx
  10024c:	74 12                	je     100260 <memset+0x1e>
  10024e:	48 01 fa             	add    %rdi,%rdx
  100251:	48 89 f9             	mov    %rdi,%rcx
        *p = c;
  100254:	40 88 31             	mov    %sil,(%rcx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  100257:	48 83 c1 01          	add    $0x1,%rcx
  10025b:	48 39 ca             	cmp    %rcx,%rdx
  10025e:	75 f4                	jne    100254 <memset+0x12>
    }
    return v;
}
  100260:	c3                   	ret

0000000000100261 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  100261:	f3 0f 1e fa          	endbr64
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  100265:	80 3f 00             	cmpb   $0x0,(%rdi)
  100268:	74 10                	je     10027a <strlen+0x19>
  10026a:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  10026f:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  100273:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100277:	75 f6                	jne    10026f <strlen+0xe>
  100279:	c3                   	ret
  10027a:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  10027f:	c3                   	ret

0000000000100280 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  100280:	f3 0f 1e fa          	endbr64
  100284:	48 89 f0             	mov    %rsi,%rax
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100287:	ba 00 00 00 00       	mov    $0x0,%edx
  10028c:	48 85 f6             	test   %rsi,%rsi
  10028f:	74 10                	je     1002a1 <strnlen+0x21>
  100291:	80 3c 17 00          	cmpb   $0x0,(%rdi,%rdx,1)
  100295:	74 0b                	je     1002a2 <strnlen+0x22>
        ++n;
  100297:	48 83 c2 01          	add    $0x1,%rdx
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  10029b:	48 39 d0             	cmp    %rdx,%rax
  10029e:	75 f1                	jne    100291 <strnlen+0x11>
  1002a0:	c3                   	ret
  1002a1:	c3                   	ret
  1002a2:	48 89 d0             	mov    %rdx,%rax
    }
    return n;
}
  1002a5:	c3                   	ret

00000000001002a6 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  1002a6:	f3 0f 1e fa          	endbr64
    while (*s && *s != (char) c) {
  1002aa:	0f b6 07             	movzbl (%rdi),%eax
  1002ad:	84 c0                	test   %al,%al
  1002af:	74 10                	je     1002c1 <strchr+0x1b>
  1002b1:	40 38 f0             	cmp    %sil,%al
  1002b4:	74 18                	je     1002ce <strchr+0x28>
        ++s;
  1002b6:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  1002ba:	0f b6 07             	movzbl (%rdi),%eax
  1002bd:	84 c0                	test   %al,%al
  1002bf:	75 f0                	jne    1002b1 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
  1002c1:	40 84 f6             	test   %sil,%sil
  1002c4:	b8 00 00 00 00       	mov    $0x0,%eax
  1002c9:	48 0f 44 c7          	cmove  %rdi,%rax
    } else {
        return nullptr;
    }
}
  1002cd:	c3                   	ret
        return (char*) s;
  1002ce:	48 89 f8             	mov    %rdi,%rax
  1002d1:	c3                   	ret

00000000001002d2 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  1002d2:	f3 0f 1e fa          	endbr64
    if (!rand_seed_set) {
  1002d6:	83 3d 3b 1d 00 00 00 	cmpl   $0x0,0x1d3b(%rip)        # 102018 <rand_seed_set>
  1002dd:	74 27                	je     100306 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  1002df:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  1002e6:	f4 51 58 
  1002e9:	48 0f af 05 1f 1d 00 	imul   0x1d1f(%rip),%rax        # 102010 <rand_seed>
  1002f0:	00 
  1002f1:	48 83 c0 01          	add    $0x1,%rax
  1002f5:	48 89 05 14 1d 00 00 	mov    %rax,0x1d14(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1002fc:	48 c1 e8 20          	shr    $0x20,%rax
  100300:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  100305:	c3                   	ret

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  100306:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  10030d:	87 d4 30 
  100310:	48 89 05 f9 1c 00 00 	mov    %rax,0x1cf9(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  100317:	c7 05 f7 1c 00 00 01 	movl   $0x1,0x1cf7(%rip)        # 102018 <rand_seed_set>
  10031e:	00 00 00 
}
  100321:	eb bc                	jmp    1002df <rand()+0xd>

0000000000100323 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  100323:	f3 0f 1e fa          	endbr64
  100327:	55                   	push   %rbp
  100328:	48 89 e5             	mov    %rsp,%rbp
  10032b:	41 54                	push   %r12
  10032d:	53                   	push   %rbx
    assert(min <= max);
  10032e:	39 f7                	cmp    %esi,%edi
  100330:	7f 26                	jg     100358 <rand(int, int)+0x35>
  100332:	41 89 fc             	mov    %edi,%r12d
  100335:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100337:	e8 96 ff ff ff       	call   1002d2 <rand()>
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  10033c:	44 29 e3             	sub    %r12d,%ebx
  10033f:	83 c3 01             	add    $0x1,%ebx
  100342:	48 63 db             	movslq %ebx,%rbx
    unsigned long r = rand();
  100345:	48 98                	cltq
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  100347:	48 0f af d8          	imul   %rax,%rbx
  10034b:	48 c1 eb 1f          	shr    $0x1f,%rbx
  10034f:	41 8d 04 1c          	lea    (%r12,%rbx,1),%eax
}
  100353:	5b                   	pop    %rbx
  100354:	41 5c                	pop    %r12
  100356:	5d                   	pop    %rbp
  100357:	c3                   	ret
    assert(min <= max);
  100358:	ba 0e 0e 10 00       	mov    $0x100e0e,%edx
  10035d:	be f2 00 00 00       	mov    $0xf2,%esi
  100362:	bf 19 0e 10 00       	mov    $0x100e19,%edi
  100367:	e8 45 0a 00 00       	call   100db1 <assert_fail(char const*, int, char const*)>

000000000010036c <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  10036c:	f3 0f 1e fa          	endbr64
  100370:	55                   	push   %rbp
  100371:	48 89 e5             	mov    %rsp,%rbp
  100374:	41 57                	push   %r15
  100376:	41 56                	push   %r14
  100378:	41 55                	push   %r13
  10037a:	41 54                	push   %r12
  10037c:	53                   	push   %rbx
  10037d:	48 83 ec 58          	sub    $0x58,%rsp
  100381:	49 89 ff             	mov    %rdi,%r15
  100384:	41 89 f5             	mov    %esi,%r13d
  100387:	49 89 d4             	mov    %rdx,%r12
  10038a:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  10038e:	0f b6 3a             	movzbl (%rdx),%edi
  100391:	40 84 ff             	test   %dil,%dil
  100394:	0f 85 4f 06 00 00    	jne    1009e9 <printer::vprintf(int, char const*, __va_list_tag*)+0x67d>
        }
        for (; width > 0; --width) {
            putc(' ', color);
        }
    }
}
  10039a:	48 83 c4 58          	add    $0x58,%rsp
  10039e:	5b                   	pop    %rbx
  10039f:	41 5c                	pop    %r12
  1003a1:	41 5d                	pop    %r13
  1003a3:	41 5e                	pop    %r14
  1003a5:	41 5f                	pop    %r15
  1003a7:	5d                   	pop    %rbp
  1003a8:	c3                   	ret
        for (++format; *format; ++format) {
  1003a9:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  1003ae:	45 0f b6 64 24 01    	movzbl 0x1(%r12),%r12d
  1003b4:	45 84 e4             	test   %r12b,%r12b
  1003b7:	0f 84 14 01 00 00    	je     1004d1 <printer::vprintf(int, char const*, __va_list_tag*)+0x165>
        int flags = 0;
  1003bd:	41 be 00 00 00 00    	mov    $0x0,%r14d
  1003c3:	40 88 7d a8          	mov    %dil,-0x58(%rbp)
            const char* flagc = strchr(flag_chars, *format);
  1003c7:	41 0f be f4          	movsbl %r12b,%esi
  1003cb:	bf f0 14 10 00       	mov    $0x1014f0,%edi
  1003d0:	e8 d1 fe ff ff       	call   1002a6 <strchr>
  1003d5:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  1003d8:	48 85 c0             	test   %rax,%rax
  1003db:	74 78                	je     100455 <printer::vprintf(int, char const*, __va_list_tag*)+0xe9>
                flags |= 1 << (flagc - flag_chars);
  1003dd:	48 81 e9 f0 14 10 00 	sub    $0x1014f0,%rcx
  1003e4:	b8 01 00 00 00       	mov    $0x1,%eax
  1003e9:	d3 e0                	shl    %cl,%eax
  1003eb:	41 09 c6             	or     %eax,%r14d
        for (++format; *format; ++format) {
  1003ee:	48 83 c3 01          	add    $0x1,%rbx
  1003f2:	44 0f b6 23          	movzbl (%rbx),%r12d
  1003f6:	45 84 e4             	test   %r12b,%r12b
  1003f9:	75 cc                	jne    1003c7 <printer::vprintf(int, char const*, __va_list_tag*)+0x5b>
        int width = -1;
  1003fb:	0f b6 7d a8          	movzbl -0x58(%rbp),%edi
  1003ff:	44 89 75 a4          	mov    %r14d,-0x5c(%rbp)
  100403:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
        int precision = -1;
  100409:	c7 45 a0 ff ff ff ff 	movl   $0xffffffff,-0x60(%rbp)
        if (*format == '.') {
  100410:	80 3b 2e             	cmpb   $0x2e,(%rbx)
  100413:	0f 84 e0 00 00 00    	je     1004f9 <printer::vprintf(int, char const*, __va_list_tag*)+0x18d>
        switch (*format) {
  100419:	0f b6 03             	movzbl (%rbx),%eax
  10041c:	3c 6c                	cmp    $0x6c,%al
  10041e:	0f 84 7b 01 00 00    	je     10059f <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
  100424:	0f 8f 56 01 00 00    	jg     100580 <printer::vprintf(int, char const*, __va_list_tag*)+0x214>
  10042a:	3c 68                	cmp    $0x68,%al
  10042c:	0f 85 90 01 00 00    	jne    1005c2 <printer::vprintf(int, char const*, __va_list_tag*)+0x256>
            ++format;
  100432:	48 8d 43 01          	lea    0x1(%rbx),%rax
  100436:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
        switch (*format) {
  10043a:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  10043e:	8d 50 bd             	lea    -0x43(%rax),%edx
  100441:	80 fa 35             	cmp    $0x35,%dl
  100444:	0f 87 58 06 00 00    	ja     100aa2 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  10044a:	0f b6 d2             	movzbl %dl,%edx
  10044d:	3e ff 24 d5 30 0e 10 	notrack jmp *0x100e30(,%rdx,8)
  100454:	00 
        if (*format >= '1' && *format <= '9') {
  100455:	0f b6 7d a8          	movzbl -0x58(%rbp),%edi
  100459:	44 89 75 a4          	mov    %r14d,-0x5c(%rbp)
  10045d:	41 8d 44 24 cf       	lea    -0x31(%r12),%eax
  100462:	3c 08                	cmp    $0x8,%al
  100464:	77 31                	ja     100497 <printer::vprintf(int, char const*, __va_list_tag*)+0x12b>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100466:	0f b6 03             	movzbl (%rbx),%eax
  100469:	8d 50 d0             	lea    -0x30(%rax),%edx
  10046c:	80 fa 09             	cmp    $0x9,%dl
  10046f:	77 72                	ja     1004e3 <printer::vprintf(int, char const*, __va_list_tag*)+0x177>
  100471:	41 be 00 00 00 00    	mov    $0x0,%r14d
                width = 10 * width + *format++ - '0';
  100477:	48 83 c3 01          	add    $0x1,%rbx
  10047b:	43 8d 14 b6          	lea    (%r14,%r14,4),%edx
  10047f:	0f be c0             	movsbl %al,%eax
  100482:	44 8d 74 50 d0       	lea    -0x30(%rax,%rdx,2),%r14d
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100487:	0f b6 03             	movzbl (%rbx),%eax
  10048a:	8d 50 d0             	lea    -0x30(%rax),%edx
  10048d:	80 fa 09             	cmp    $0x9,%dl
  100490:	76 e5                	jbe    100477 <printer::vprintf(int, char const*, __va_list_tag*)+0x10b>
  100492:	e9 72 ff ff ff       	jmp    100409 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
        } else if (*format == '*') {
  100497:	41 80 fc 2a          	cmp    $0x2a,%r12b
  10049b:	75 51                	jne    1004ee <printer::vprintf(int, char const*, __va_list_tag*)+0x182>
            width = va_arg(val, int);
  10049d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1004a1:	8b 01                	mov    (%rcx),%eax
  1004a3:	83 f8 2f             	cmp    $0x2f,%eax
  1004a6:	77 17                	ja     1004bf <printer::vprintf(int, char const*, __va_list_tag*)+0x153>
  1004a8:	89 c2                	mov    %eax,%edx
  1004aa:	48 03 51 10          	add    0x10(%rcx),%rdx
  1004ae:	83 c0 08             	add    $0x8,%eax
  1004b1:	89 01                	mov    %eax,(%rcx)
  1004b3:	44 8b 32             	mov    (%rdx),%r14d
            ++format;
  1004b6:	48 83 c3 01          	add    $0x1,%rbx
  1004ba:	e9 4a ff ff ff       	jmp    100409 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            width = va_arg(val, int);
  1004bf:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1004c3:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1004c7:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1004cb:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1004cf:	eb e2                	jmp    1004b3 <printer::vprintf(int, char const*, __va_list_tag*)+0x147>
        int flags = 0;
  1004d1:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
        int width = -1;
  1004d8:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
  1004de:	e9 26 ff ff ff       	jmp    100409 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1004e3:	41 be 00 00 00 00    	mov    $0x0,%r14d
  1004e9:	e9 1b ff ff ff       	jmp    100409 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
        int width = -1;
  1004ee:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
  1004f4:	e9 10 ff ff ff       	jmp    100409 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            ++format;
  1004f9:	48 8d 53 01          	lea    0x1(%rbx),%rdx
            if (*format >= '0' && *format <= '9') {
  1004fd:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  100501:	8d 48 d0             	lea    -0x30(%rax),%ecx
  100504:	80 f9 09             	cmp    $0x9,%cl
  100507:	76 13                	jbe    10051c <printer::vprintf(int, char const*, __va_list_tag*)+0x1b0>
            } else if (*format == '*') {
  100509:	3c 2a                	cmp    $0x2a,%al
  10050b:	74 33                	je     100540 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d4>
            ++format;
  10050d:	48 89 d3             	mov    %rdx,%rbx
                precision = 0;
  100510:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
  100517:	e9 fd fe ff ff       	jmp    100419 <printer::vprintf(int, char const*, __va_list_tag*)+0xad>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  10051c:	b9 00 00 00 00       	mov    $0x0,%ecx
                    precision = 10 * precision + *format++ - '0';
  100521:	48 83 c2 01          	add    $0x1,%rdx
  100525:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  100528:	0f be c0             	movsbl %al,%eax
  10052b:	8d 4c 48 d0          	lea    -0x30(%rax,%rcx,2),%ecx
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  10052f:	0f b6 02             	movzbl (%rdx),%eax
  100532:	8d 70 d0             	lea    -0x30(%rax),%esi
  100535:	40 80 fe 09          	cmp    $0x9,%sil
  100539:	76 e6                	jbe    100521 <printer::vprintf(int, char const*, __va_list_tag*)+0x1b5>
  10053b:	48 89 d3             	mov    %rdx,%rbx
  10053e:	eb 1c                	jmp    10055c <printer::vprintf(int, char const*, __va_list_tag*)+0x1f0>
                precision = va_arg(val, int);
  100540:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100544:	8b 01                	mov    (%rcx),%eax
  100546:	83 f8 2f             	cmp    $0x2f,%eax
  100549:	77 23                	ja     10056e <printer::vprintf(int, char const*, __va_list_tag*)+0x202>
  10054b:	89 c2                	mov    %eax,%edx
  10054d:	48 03 51 10          	add    0x10(%rcx),%rdx
  100551:	83 c0 08             	add    $0x8,%eax
  100554:	89 01                	mov    %eax,(%rcx)
  100556:	8b 0a                	mov    (%rdx),%ecx
                ++format;
  100558:	48 83 c3 02          	add    $0x2,%rbx
            if (precision < 0) {
  10055c:	85 c9                	test   %ecx,%ecx
  10055e:	b8 00 00 00 00       	mov    $0x0,%eax
  100563:	0f 49 c1             	cmovns %ecx,%eax
  100566:	89 45 a0             	mov    %eax,-0x60(%rbp)
  100569:	e9 ab fe ff ff       	jmp    100419 <printer::vprintf(int, char const*, __va_list_tag*)+0xad>
                precision = va_arg(val, int);
  10056e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100572:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100576:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10057a:	48 89 41 08          	mov    %rax,0x8(%rcx)
  10057e:	eb d6                	jmp    100556 <printer::vprintf(int, char const*, __va_list_tag*)+0x1ea>
        switch (*format) {
  100580:	3c 74                	cmp    $0x74,%al
  100582:	74 1b                	je     10059f <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
  100584:	3c 7a                	cmp    $0x7a,%al
  100586:	74 17                	je     10059f <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
        switch (*format) {
  100588:	8d 50 bd             	lea    -0x43(%rax),%edx
  10058b:	80 fa 35             	cmp    $0x35,%dl
  10058e:	0f 87 e4 05 00 00    	ja     100b78 <printer::vprintf(int, char const*, __va_list_tag*)+0x80c>
  100594:	0f b6 d2             	movzbl %dl,%edx
  100597:	3e ff 24 d5 e0 0f 10 	notrack jmp *0x100fe0(,%rdx,8)
  10059e:	00 
            ++format;
  10059f:	48 8d 43 01          	lea    0x1(%rbx),%rax
  1005a3:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
        switch (*format) {
  1005a7:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  1005ab:	8d 50 bd             	lea    -0x43(%rax),%edx
  1005ae:	80 fa 35             	cmp    $0x35,%dl
  1005b1:	0f 87 eb 04 00 00    	ja     100aa2 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  1005b7:	0f b6 d2             	movzbl %dl,%edx
  1005ba:	3e ff 24 d5 90 11 10 	notrack jmp *0x101190(,%rdx,8)
  1005c1:	00 
  1005c2:	8d 50 bd             	lea    -0x43(%rax),%edx
  1005c5:	80 fa 35             	cmp    $0x35,%dl
  1005c8:	0f 87 d0 04 00 00    	ja     100a9e <printer::vprintf(int, char const*, __va_list_tag*)+0x732>
  1005ce:	0f b6 d2             	movzbl %dl,%edx
  1005d1:	3e ff 24 d5 40 13 10 	notrack jmp *0x101340(,%rdx,8)
  1005d8:	00 
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1005d9:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1005dd:	8b 01                	mov    (%rcx),%eax
  1005df:	83 f8 2f             	cmp    $0x2f,%eax
  1005e2:	77 3a                	ja     10061e <printer::vprintf(int, char const*, __va_list_tag*)+0x2b2>
  1005e4:	89 c2                	mov    %eax,%edx
  1005e6:	48 03 51 10          	add    0x10(%rcx),%rdx
  1005ea:	83 c0 08             	add    $0x8,%eax
  1005ed:	89 01                	mov    %eax,(%rcx)
  1005ef:	48 8b 12             	mov    (%rdx),%rdx
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  1005f2:	48 89 d0             	mov    %rdx,%rax
  1005f5:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  1005f9:	49 89 d1             	mov    %rdx,%r9
  1005fc:	49 f7 d9             	neg    %r9
  1005ff:	25 80 00 00 00       	and    $0x80,%eax
  100604:	4c 0f 44 ca          	cmove  %rdx,%r9
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  100608:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  10060b:	09 c8                	or     %ecx,%eax
  10060d:	83 c8 60             	or     $0x60,%eax
  100610:	89 45 a4             	mov    %eax,-0x5c(%rbp)
        const char* data = "";
  100613:	41 bc 0d 0e 10 00    	mov    $0x100e0d,%r12d
            break;
  100619:	e9 8a 02 00 00       	jmp    1008a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x53c>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  10061e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100622:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100626:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10062a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10062e:	eb bf                	jmp    1005ef <printer::vprintf(int, char const*, __va_list_tag*)+0x283>
        switch (*format) {
  100630:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100634:	eb 04                	jmp    10063a <printer::vprintf(int, char const*, __va_list_tag*)+0x2ce>
  100636:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            long x = length ? va_arg(val, long) : va_arg(val, int);
  10063a:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
  10063e:	8b 03                	mov    (%rbx),%eax
  100640:	83 f8 2f             	cmp    $0x2f,%eax
  100643:	77 10                	ja     100655 <printer::vprintf(int, char const*, __va_list_tag*)+0x2e9>
  100645:	89 c2                	mov    %eax,%edx
  100647:	48 03 53 10          	add    0x10(%rbx),%rdx
  10064b:	83 c0 08             	add    $0x8,%eax
  10064e:	89 03                	mov    %eax,(%rbx)
  100650:	48 63 12             	movslq (%rdx),%rdx
  100653:	eb 9d                	jmp    1005f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x286>
  100655:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
  100659:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  10065d:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100661:	48 89 43 08          	mov    %rax,0x8(%rbx)
  100665:	eb e9                	jmp    100650 <printer::vprintf(int, char const*, __va_list_tag*)+0x2e4>
        switch (*format) {
  100667:	b8 01 00 00 00       	mov    $0x1,%eax
  10066c:	be 0a 00 00 00       	mov    $0xa,%esi
  100671:	e9 ac 00 00 00       	jmp    100722 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
  100676:	b8 00 00 00 00       	mov    $0x0,%eax
  10067b:	be 0a 00 00 00       	mov    $0xa,%esi
  100680:	e9 9d 00 00 00       	jmp    100722 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
  100685:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100689:	b8 00 00 00 00       	mov    $0x0,%eax
  10068e:	be 0a 00 00 00       	mov    $0xa,%esi
  100693:	e9 8a 00 00 00       	jmp    100722 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
  100698:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10069c:	b8 00 00 00 00       	mov    $0x0,%eax
  1006a1:	be 0a 00 00 00       	mov    $0xa,%esi
  1006a6:	eb 7a                	jmp    100722 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1006a8:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
  1006ac:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  1006b0:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1006b4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  1006b8:	e9 83 00 00 00       	jmp    100740 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d4>
  1006bd:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1006c1:	8b 01                	mov    (%rcx),%eax
  1006c3:	83 f8 2f             	cmp    $0x2f,%eax
  1006c6:	77 10                	ja     1006d8 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  1006c8:	89 c2                	mov    %eax,%edx
  1006ca:	48 03 51 10          	add    0x10(%rcx),%rdx
  1006ce:	83 c0 08             	add    $0x8,%eax
  1006d1:	89 01                	mov    %eax,(%rcx)
  1006d3:	44 8b 0a             	mov    (%rdx),%r9d
  1006d6:	eb 6b                	jmp    100743 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d7>
  1006d8:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1006dc:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1006e0:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1006e4:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1006e8:	eb e9                	jmp    1006d3 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  1006ea:	41 89 f0             	mov    %esi,%r8d
  1006ed:	c7 45 98 20 00 00 00 	movl   $0x20,-0x68(%rbp)
    const char* digits = upper_digits;
  1006f4:	bf 20 15 10 00       	mov    $0x101520,%edi
  1006f9:	eb 64                	jmp    10075f <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
        switch (*format) {
  1006fb:	b8 01 00 00 00       	mov    $0x1,%eax
  100700:	eb 1b                	jmp    10071d <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
  100702:	b8 00 00 00 00       	mov    $0x0,%eax
  100707:	eb 14                	jmp    10071d <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
  100709:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10070d:	b8 00 00 00 00       	mov    $0x0,%eax
  100712:	eb 09                	jmp    10071d <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
  100714:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100718:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  10071d:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  100722:	85 c0                	test   %eax,%eax
  100724:	74 97                	je     1006bd <printer::vprintf(int, char const*, __va_list_tag*)+0x351>
  100726:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10072a:	8b 01                	mov    (%rcx),%eax
  10072c:	83 f8 2f             	cmp    $0x2f,%eax
  10072f:	0f 87 73 ff ff ff    	ja     1006a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x33c>
  100735:	89 c2                	mov    %eax,%edx
  100737:	48 03 51 10          	add    0x10(%rcx),%rdx
  10073b:	83 c0 08             	add    $0x8,%eax
  10073e:	89 01                	mov    %eax,(%rcx)
  100740:	4c 8b 0a             	mov    (%rdx),%r9
            flags |= FLAG_NUMERIC;
  100743:	83 4d a4 20          	orl    $0x20,-0x5c(%rbp)
    if (base < 0) {
  100747:	85 f6                	test   %esi,%esi
  100749:	79 9f                	jns    1006ea <printer::vprintf(int, char const*, __va_list_tag*)+0x37e>
        base = -base;
  10074b:	41 89 f0             	mov    %esi,%r8d
  10074e:	c7 45 98 20 00 00 00 	movl   $0x20,-0x68(%rbp)
        digits = lower_digits;
  100755:	bf 00 15 10 00       	mov    $0x101500,%edi
        base = -base;
  10075a:	be 10 00 00 00       	mov    $0x10,%esi
    *--numbuf_end = '\0';
  10075f:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  100763:	4c 89 c9             	mov    %r9,%rcx
  100766:	4c 8d 65 cf          	lea    -0x31(%rbp),%r12
        *--numbuf_end = digits[val % base];
  10076a:	48 63 f6             	movslq %esi,%rsi
  10076d:	49 83 ec 01          	sub    $0x1,%r12
  100771:	48 89 c8             	mov    %rcx,%rax
  100774:	ba 00 00 00 00       	mov    $0x0,%edx
  100779:	48 f7 f6             	div    %rsi
  10077c:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100780:	41 88 14 24          	mov    %dl,(%r12)
        val /= base;
  100784:	48 89 ca             	mov    %rcx,%rdx
  100787:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  10078a:	48 39 f2             	cmp    %rsi,%rdx
  10078d:	73 de                	jae    10076d <printer::vprintf(int, char const*, __va_list_tag*)+0x401>
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  10078f:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100792:	89 c8                	mov    %ecx,%eax
  100794:	f7 d0                	not    %eax
  100796:	a8 60                	test   $0x60,%al
  100798:	0f 85 5d 03 00 00    	jne    100afb <printer::vprintf(int, char const*, __va_list_tag*)+0x78f>
                prefix = "-";
  10079e:	bb 28 0e 10 00       	mov    $0x100e28,%ebx
            if (flags & FLAG_NEGATIVE) {
  1007a3:	f6 c1 80             	test   $0x80,%cl
  1007a6:	75 1e                	jne    1007c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x45a>
                prefix = "+";
  1007a8:	bb 2a 0e 10 00       	mov    $0x100e2a,%ebx
            } else if (flags & FLAG_PLUSPOSITIVE) {
  1007ad:	f6 c1 10             	test   $0x10,%cl
  1007b0:	75 14                	jne    1007c6 <printer::vprintf(int, char const*, __va_list_tag*)+0x45a>
        const char* prefix = "";
  1007b2:	f6 c1 08             	test   $0x8,%cl
  1007b5:	ba 26 0e 10 00       	mov    $0x100e26,%edx
  1007ba:	b8 0d 0e 10 00       	mov    $0x100e0d,%eax
  1007bf:	48 0f 45 c2          	cmovne %rdx,%rax
  1007c3:	48 89 c3             	mov    %rax,%rbx
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1007c6:	8b 45 a0             	mov    -0x60(%rbp),%eax
  1007c9:	f7 d0                	not    %eax
  1007cb:	c1 e8 1f             	shr    $0x1f,%eax
  1007ce:	89 45 8c             	mov    %eax,-0x74(%rbp)
            datalen = strlen(data);
  1007d1:	4c 89 e7             	mov    %r12,%rdi
  1007d4:	e8 88 fa ff ff       	call   100261 <strlen>
  1007d9:	89 45 9c             	mov    %eax,-0x64(%rbp)
            && precision >= 0) {
  1007dc:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
  1007e0:	0f 84 0a 01 00 00    	je     1008f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x584>
  1007e6:	80 7d 8c 00          	cmpb   $0x0,-0x74(%rbp)
  1007ea:	0f 84 00 01 00 00    	je     1008f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x584>
            zeros = precision > datalen ? precision - datalen : 0;
  1007f0:	8b 4d a0             	mov    -0x60(%rbp),%ecx
  1007f3:	89 ca                	mov    %ecx,%edx
  1007f5:	29 c2                	sub    %eax,%edx
  1007f7:	39 c1                	cmp    %eax,%ecx
  1007f9:	b8 00 00 00 00       	mov    $0x0,%eax
  1007fe:	0f 4f c2             	cmovg  %edx,%eax
  100801:	89 45 a0             	mov    %eax,-0x60(%rbp)
  100804:	e9 fd 00 00 00       	jmp    100906 <printer::vprintf(int, char const*, __va_list_tag*)+0x59a>
        switch (*format) {
  100809:	b8 01 00 00 00       	mov    $0x1,%eax
  10080e:	eb 1b                	jmp    10082b <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
  100810:	b8 00 00 00 00       	mov    $0x0,%eax
  100815:	eb 14                	jmp    10082b <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
  100817:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10081b:	b8 00 00 00 00       	mov    $0x0,%eax
  100820:	eb 09                	jmp    10082b <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
  100822:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100826:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  10082b:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  100830:	e9 ed fe ff ff       	jmp    100722 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
        switch (*format) {
  100835:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100839:	eb 04                	jmp    10083f <printer::vprintf(int, char const*, __va_list_tag*)+0x4d3>
  10083b:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            num = (uintptr_t) va_arg(val, void*);
  10083f:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100843:	8b 01                	mov    (%rcx),%eax
  100845:	83 f8 2f             	cmp    $0x2f,%eax
  100848:	77 1f                	ja     100869 <printer::vprintf(int, char const*, __va_list_tag*)+0x4fd>
  10084a:	89 c2                	mov    %eax,%edx
  10084c:	48 03 51 10          	add    0x10(%rcx),%rdx
  100850:	83 c0 08             	add    $0x8,%eax
  100853:	89 01                	mov    %eax,(%rcx)
  100855:	4c 8b 0a             	mov    (%rdx),%r9
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  100858:	81 4d a4 21 01 00 00 	orl    $0x121,-0x5c(%rbp)
            base = -16;
  10085f:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  100864:	e9 e2 fe ff ff       	jmp    10074b <printer::vprintf(int, char const*, __va_list_tag*)+0x3df>
            num = (uintptr_t) va_arg(val, void*);
  100869:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10086d:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100871:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100875:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100879:	eb da                	jmp    100855 <printer::vprintf(int, char const*, __va_list_tag*)+0x4e9>
        switch (*format) {
  10087b:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10087f:	eb 04                	jmp    100885 <printer::vprintf(int, char const*, __va_list_tag*)+0x519>
  100881:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            data = va_arg(val, char*);
  100885:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100889:	8b 07                	mov    (%rdi),%eax
  10088b:	83 f8 2f             	cmp    $0x2f,%eax
  10088e:	0f 87 74 01 00 00    	ja     100a08 <printer::vprintf(int, char const*, __va_list_tag*)+0x69c>
  100894:	89 c2                	mov    %eax,%edx
  100896:	48 03 57 10          	add    0x10(%rdi),%rdx
  10089a:	83 c0 08             	add    $0x8,%eax
  10089d:	89 07                	mov    %eax,(%rdi)
  10089f:	4c 8b 22             	mov    (%rdx),%r12
        unsigned long num = 0;
  1008a2:	41 b9 00 00 00 00    	mov    $0x0,%r9d
        if (flags & FLAG_NUMERIC) {
  1008a8:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  1008ab:	83 e0 20             	and    $0x20,%eax
  1008ae:	89 45 98             	mov    %eax,-0x68(%rbp)
  1008b1:	0f 85 2f 02 00 00    	jne    100ae6 <printer::vprintf(int, char const*, __va_list_tag*)+0x77a>
            prefix = (base == -16 ? "0x" : "0X");
  1008b7:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
        const char* prefix = "";
  1008be:	bb 0d 0e 10 00       	mov    $0x100e0d,%ebx
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1008c3:	8b 4d a0             	mov    -0x60(%rbp),%ecx
  1008c6:	89 c8                	mov    %ecx,%eax
  1008c8:	f7 d0                	not    %eax
  1008ca:	c1 e8 1f             	shr    $0x1f,%eax
  1008cd:	88 45 8c             	mov    %al,-0x74(%rbp)
  1008d0:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
  1008d4:	0f 85 f7 fe ff ff    	jne    1007d1 <printer::vprintf(int, char const*, __va_list_tag*)+0x465>
  1008da:	84 c0                	test   %al,%al
  1008dc:	0f 84 ef fe ff ff    	je     1007d1 <printer::vprintf(int, char const*, __va_list_tag*)+0x465>
            datalen = strnlen(data, precision);
  1008e2:	48 63 f1             	movslq %ecx,%rsi
  1008e5:	4c 89 e7             	mov    %r12,%rdi
  1008e8:	e8 93 f9 ff ff       	call   100280 <strnlen>
  1008ed:	89 45 9c             	mov    %eax,-0x64(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  1008f0:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  1008f3:	83 e0 26             	and    $0x26,%eax
            zeros = 0;
  1008f6:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  1008fd:	83 f8 22             	cmp    $0x22,%eax
  100900:	0f 84 46 02 00 00    	je     100b4c <printer::vprintf(int, char const*, __va_list_tag*)+0x7e0>
        width -= datalen + zeros + strlen(prefix);
  100906:	48 89 df             	mov    %rbx,%rdi
  100909:	e8 53 f9 ff ff       	call   100261 <strlen>
  10090e:	8b 4d a0             	mov    -0x60(%rbp),%ecx
  100911:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  100914:	01 f9                	add    %edi,%ecx
  100916:	44 89 f2             	mov    %r14d,%edx
  100919:	29 ca                	sub    %ecx,%edx
  10091b:	29 c2                	sub    %eax,%edx
  10091d:	41 89 d6             	mov    %edx,%r14d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100920:	f6 45 a4 04          	testb  $0x4,-0x5c(%rbp)
  100924:	75 32                	jne    100958 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ec>
  100926:	85 d2                	test   %edx,%edx
  100928:	7e 2e                	jle    100958 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ec>
        width -= datalen + zeros + strlen(prefix);
  10092a:	89 55 a4             	mov    %edx,-0x5c(%rbp)
            putc(' ', color);
  10092d:	49 8b 07             	mov    (%r15),%rax
  100930:	44 89 ea             	mov    %r13d,%edx
  100933:	be 20 00 00 00       	mov    $0x20,%esi
  100938:	4c 89 ff             	mov    %r15,%rdi
  10093b:	ff 10                	call   *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  10093d:	41 83 ee 01          	sub    $0x1,%r14d
  100941:	45 85 f6             	test   %r14d,%r14d
  100944:	7f e7                	jg     10092d <printer::vprintf(int, char const*, __va_list_tag*)+0x5c1>
  100946:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  100949:	85 d2                	test   %edx,%edx
  10094b:	b8 01 00 00 00       	mov    $0x1,%eax
  100950:	0f 4f c2             	cmovg  %edx,%eax
  100953:	29 c2                	sub    %eax,%edx
  100955:	41 89 d6             	mov    %edx,%r14d
        for (; *prefix; ++prefix) {
  100958:	0f b6 03             	movzbl (%rbx),%eax
  10095b:	84 c0                	test   %al,%al
  10095d:	74 19                	je     100978 <printer::vprintf(int, char const*, __va_list_tag*)+0x60c>
            putc(*prefix, color);
  10095f:	0f b6 f0             	movzbl %al,%esi
  100962:	49 8b 07             	mov    (%r15),%rax
  100965:	44 89 ea             	mov    %r13d,%edx
  100968:	4c 89 ff             	mov    %r15,%rdi
  10096b:	ff 10                	call   *(%rax)
        for (; *prefix; ++prefix) {
  10096d:	48 83 c3 01          	add    $0x1,%rbx
  100971:	0f b6 03             	movzbl (%rbx),%eax
  100974:	84 c0                	test   %al,%al
  100976:	75 e7                	jne    10095f <printer::vprintf(int, char const*, __va_list_tag*)+0x5f3>
        for (; zeros > 0; --zeros) {
  100978:	8b 5d a0             	mov    -0x60(%rbp),%ebx
  10097b:	85 db                	test   %ebx,%ebx
  10097d:	7e 15                	jle    100994 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            putc('0', color);
  10097f:	49 8b 07             	mov    (%r15),%rax
  100982:	44 89 ea             	mov    %r13d,%edx
  100985:	be 30 00 00 00       	mov    $0x30,%esi
  10098a:	4c 89 ff             	mov    %r15,%rdi
  10098d:	ff 10                	call   *(%rax)
        for (; zeros > 0; --zeros) {
  10098f:	83 eb 01             	sub    $0x1,%ebx
  100992:	75 eb                	jne    10097f <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
        for (; datalen > 0; ++data, --datalen) {
  100994:	8b 45 9c             	mov    -0x64(%rbp),%eax
  100997:	85 c0                	test   %eax,%eax
  100999:	7e 1e                	jle    1009b9 <printer::vprintf(int, char const*, __va_list_tag*)+0x64d>
  10099b:	89 c3                	mov    %eax,%ebx
  10099d:	4c 01 e3             	add    %r12,%rbx
            putc(*data, color);
  1009a0:	41 0f b6 34 24       	movzbl (%r12),%esi
  1009a5:	49 8b 07             	mov    (%r15),%rax
  1009a8:	44 89 ea             	mov    %r13d,%edx
  1009ab:	4c 89 ff             	mov    %r15,%rdi
  1009ae:	ff 10                	call   *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  1009b0:	49 83 c4 01          	add    $0x1,%r12
  1009b4:	49 39 dc             	cmp    %rbx,%r12
  1009b7:	75 e7                	jne    1009a0 <printer::vprintf(int, char const*, __va_list_tag*)+0x634>
        for (; width > 0; --width) {
  1009b9:	45 85 f6             	test   %r14d,%r14d
  1009bc:	7e 16                	jle    1009d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            putc(' ', color);
  1009be:	49 8b 07             	mov    (%r15),%rax
  1009c1:	44 89 ea             	mov    %r13d,%edx
  1009c4:	be 20 00 00 00       	mov    $0x20,%esi
  1009c9:	4c 89 ff             	mov    %r15,%rdi
  1009cc:	ff 10                	call   *(%rax)
        for (; width > 0; --width) {
  1009ce:	41 83 ee 01          	sub    $0x1,%r14d
  1009d2:	75 ea                	jne    1009be <printer::vprintf(int, char const*, __va_list_tag*)+0x652>
    for (; *format; ++format) {
  1009d4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  1009d8:	4c 8d 60 01          	lea    0x1(%rax),%r12
  1009dc:	0f b6 78 01          	movzbl 0x1(%rax),%edi
  1009e0:	40 84 ff             	test   %dil,%dil
  1009e3:	0f 84 b1 f9 ff ff    	je     10039a <printer::vprintf(int, char const*, __va_list_tag*)+0x2e>
        if (*format != '%') {
  1009e9:	40 80 ff 25          	cmp    $0x25,%dil
  1009ed:	0f 84 b6 f9 ff ff    	je     1003a9 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d>
            putc(*format, color);
  1009f3:	40 0f b6 f7          	movzbl %dil,%esi
  1009f7:	49 8b 07             	mov    (%r15),%rax
  1009fa:	44 89 ea             	mov    %r13d,%edx
  1009fd:	4c 89 ff             	mov    %r15,%rdi
  100a00:	ff 10                	call   *(%rax)
            continue;
  100a02:	4c 89 65 a8          	mov    %r12,-0x58(%rbp)
  100a06:	eb cc                	jmp    1009d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            data = va_arg(val, char*);
  100a08:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100a0c:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100a10:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100a14:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100a18:	e9 82 fe ff ff       	jmp    10089f <printer::vprintf(int, char const*, __va_list_tag*)+0x533>
        switch (*format) {
  100a1d:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100a21:	eb 04                	jmp    100a27 <printer::vprintf(int, char const*, __va_list_tag*)+0x6bb>
  100a23:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            color = va_arg(val, int);
  100a27:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100a2b:	8b 01                	mov    (%rcx),%eax
  100a2d:	83 f8 2f             	cmp    $0x2f,%eax
  100a30:	77 10                	ja     100a42 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
  100a32:	89 c2                	mov    %eax,%edx
  100a34:	48 03 51 10          	add    0x10(%rcx),%rdx
  100a38:	83 c0 08             	add    $0x8,%eax
  100a3b:	89 01                	mov    %eax,(%rcx)
  100a3d:	44 8b 2a             	mov    (%rdx),%r13d
            continue;
  100a40:	eb 92                	jmp    1009d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            color = va_arg(val, int);
  100a42:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100a46:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100a4a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100a4e:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100a52:	eb e9                	jmp    100a3d <printer::vprintf(int, char const*, __va_list_tag*)+0x6d1>
        switch (*format) {
  100a54:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100a58:	eb 04                	jmp    100a5e <printer::vprintf(int, char const*, __va_list_tag*)+0x6f2>
  100a5a:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            numbuf[0] = va_arg(val, int);
  100a5e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100a62:	8b 07                	mov    (%rdi),%eax
  100a64:	83 f8 2f             	cmp    $0x2f,%eax
  100a67:	77 23                	ja     100a8c <printer::vprintf(int, char const*, __va_list_tag*)+0x720>
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	48 03 57 10          	add    0x10(%rdi),%rdx
  100a6f:	83 c0 08             	add    $0x8,%eax
  100a72:	89 07                	mov    %eax,(%rdi)
  100a74:	8b 02                	mov    (%rdx),%eax
  100a76:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100a79:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100a7d:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  100a81:	41 b9 00 00 00 00    	mov    $0x0,%r9d
            break;
  100a87:	e9 1c fe ff ff       	jmp    1008a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x53c>
            numbuf[0] = va_arg(val, int);
  100a8c:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
  100a90:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  100a94:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100a98:	48 89 43 08          	mov    %rax,0x8(%rbx)
  100a9c:	eb d6                	jmp    100a74 <printer::vprintf(int, char const*, __va_list_tag*)+0x708>
        switch (*format) {
  100a9e:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            numbuf[0] = (*format ? *format : '%');
  100aa2:	84 c0                	test   %al,%al
  100aa4:	0f 85 ca 00 00 00    	jne    100b74 <printer::vprintf(int, char const*, __va_list_tag*)+0x808>
                format--;
  100aaa:	48 83 6d a8 01       	subq   $0x1,-0x58(%rbp)
  100aaf:	89 f8                	mov    %edi,%eax
            numbuf[0] = (*format ? *format : '%');
  100ab1:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100ab4:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
        if (flags & FLAG_NUMERIC) {
  100ab8:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  100abb:	83 e0 20             	and    $0x20,%eax
  100abe:	89 45 98             	mov    %eax,-0x68(%rbp)
  100ac1:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
  100ac5:	0f 84 ec fd ff ff    	je     1008b7 <printer::vprintf(int, char const*, __va_list_tag*)+0x54b>
  100acb:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  100ad1:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    const char* digits = upper_digits;
  100ad7:	bf 20 15 10 00       	mov    $0x101520,%edi
        if (flags & FLAG_NUMERIC) {
  100adc:	be 0a 00 00 00       	mov    $0xa,%esi
  100ae1:	e9 79 fc ff ff       	jmp    10075f <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
  100ae6:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    const char* digits = upper_digits;
  100aec:	bf 20 15 10 00       	mov    $0x101520,%edi
        if (flags & FLAG_NUMERIC) {
  100af1:	be 0a 00 00 00       	mov    $0xa,%esi
  100af6:	e9 64 fc ff ff       	jmp    10075f <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100afb:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100afe:	89 c8                	mov    %ecx,%eax
  100b00:	f7 d0                	not    %eax
  100b02:	a8 21                	test   $0x21,%al
  100b04:	75 3c                	jne    100b42 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d6>
                   && (base == 16 || base == -16)
  100b06:	41 8d 40 10          	lea    0x10(%r8),%eax
        const char* prefix = "";
  100b0a:	bb 0d 0e 10 00       	mov    $0x100e0d,%ebx
                   && (base == 16 || base == -16)
  100b0f:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  100b14:	0f 85 a9 fd ff ff    	jne    1008c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
                   && (num || (flags & FLAG_ALT2))) {
  100b1a:	4d 85 c9             	test   %r9,%r9
  100b1d:	75 09                	jne    100b28 <printer::vprintf(int, char const*, __va_list_tag*)+0x7bc>
  100b1f:	f6 c5 01             	test   $0x1,%ch
  100b22:	0f 84 9b fd ff ff    	je     1008c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
            prefix = (base == -16 ? "0x" : "0X");
  100b28:	41 83 f8 f0          	cmp    $0xfffffff0,%r8d
  100b2c:	ba 23 0e 10 00       	mov    $0x100e23,%edx
  100b31:	b8 20 0e 10 00       	mov    $0x100e20,%eax
  100b36:	48 0f 45 c2          	cmovne %rdx,%rax
  100b3a:	48 89 c3             	mov    %rax,%rbx
  100b3d:	e9 81 fd ff ff       	jmp    1008c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
        const char* prefix = "";
  100b42:	bb 0d 0e 10 00       	mov    $0x100e0d,%ebx
  100b47:	e9 77 fd ff ff       	jmp    1008c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
                   && datalen + (int) strlen(prefix) < width) {
  100b4c:	48 89 df             	mov    %rbx,%rdi
  100b4f:	e8 0d f7 ff ff       	call   100261 <strlen>
  100b54:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  100b57:	8d 14 07             	lea    (%rdi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100b5a:	44 89 f1             	mov    %r14d,%ecx
  100b5d:	29 f9                	sub    %edi,%ecx
  100b5f:	29 c1                	sub    %eax,%ecx
  100b61:	44 39 f2             	cmp    %r14d,%edx
  100b64:	b8 00 00 00 00       	mov    $0x0,%eax
  100b69:	0f 4c c1             	cmovl  %ecx,%eax
  100b6c:	89 45 a0             	mov    %eax,-0x60(%rbp)
  100b6f:	e9 92 fd ff ff       	jmp    100906 <printer::vprintf(int, char const*, __va_list_tag*)+0x59a>
  100b74:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
                prefix = "+";
  100b78:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100b7c:	e9 30 ff ff ff       	jmp    100ab1 <printer::vprintf(int, char const*, __va_list_tag*)+0x745>
  100b81:	90                   	nop

0000000000100b82 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100b82:	f3 0f 1e fa          	endbr64
    : cell_(console), scroll_(scroll) {
  100b86:	48 c7 07 d0 15 10 00 	movq   $0x1015d0,(%rdi)
  100b8d:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100b94:	00 
  100b95:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100b98:	85 f6                	test   %esi,%esi
  100b9a:	78 18                	js     100bb4 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b9c:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100ba2:	7f 0f                	jg     100bb3 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100ba4:	48 63 f6             	movslq %esi,%rsi
  100ba7:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100bae:	00 
  100baf:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100bb3:	c3                   	ret
        cell_ += cursorpos;
  100bb4:	8b 05 42 84 fb ff    	mov    -0x47bbe(%rip),%eax        # b8ffc <cursorpos>
  100bba:	48 98                	cltq
  100bbc:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100bc3:	00 
  100bc4:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100bc8:	c3                   	ret
  100bc9:	90                   	nop

0000000000100bca <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100bca:	f3 0f 1e fa          	endbr64
  100bce:	55                   	push   %rbp
  100bcf:	48 89 e5             	mov    %rsp,%rbp
  100bd2:	53                   	push   %rbx
  100bd3:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100bd7:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100bde:	00 
  100bdf:	72 18                	jb     100bf9 <console_printer::scroll()+0x2f>
  100be1:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100be4:	b8 00 80 0b 00       	mov    $0xb8000,%eax
  100be9:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100bed:	75 1e                	jne    100c0d <console_printer::scroll()+0x43>
        memmove(console, console + CONSOLE_COLUMNS,
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
  100bef:	48 89 43 08          	mov    %rax,0x8(%rbx)
    } else {
        cell_ = console;
    }
}
  100bf3:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  100bf7:	c9                   	leave
  100bf8:	c3                   	ret
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100bf9:	ba 38 15 10 00       	mov    $0x101538,%edx
  100bfe:	be 1f 02 00 00       	mov    $0x21f,%esi
  100c03:	bf 19 0e 10 00       	mov    $0x100e19,%edi
  100c08:	e8 a4 01 00 00       	call   100db1 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100c0d:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100c12:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100c17:	48 89 c7             	mov    %rax,%rdi
  100c1a:	e8 d6 f5 ff ff       	call   1001f5 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100c1f:	ba a0 00 00 00       	mov    $0xa0,%edx
  100c24:	be 00 00 00 00       	mov    $0x0,%esi
  100c29:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100c2e:	e8 0f f6 ff ff       	call   100242 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100c33:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100c37:	48 2d a0 00 00 00    	sub    $0xa0,%rax
  100c3d:	eb b0                	jmp    100bef <console_printer::scroll()+0x25>
  100c3f:	90                   	nop

0000000000100c40 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100c40:	f3 0f 1e fa          	endbr64
  100c44:	55                   	push   %rbp
  100c45:	48 89 e5             	mov    %rsp,%rbp
  100c48:	41 55                	push   %r13
  100c4a:	41 54                	push   %r12
  100c4c:	53                   	push   %rbx
  100c4d:	48 83 ec 08          	sub    $0x8,%rsp
  100c51:	48 89 fb             	mov    %rdi,%rbx
  100c54:	41 89 f5             	mov    %esi,%r13d
  100c57:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100c5a:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100c5e:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100c64:	72 14                	jb     100c7a <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100c66:	48 89 df             	mov    %rbx,%rdi
  100c69:	e8 5c ff ff ff       	call   100bca <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100c6e:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100c72:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100c78:	73 ec                	jae    100c66 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100c7a:	41 80 fd 0a          	cmp    $0xa,%r13b
  100c7e:	74 1e                	je     100c9e <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100c80:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100c84:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100c88:	45 0f b6 ed          	movzbl %r13b,%r13d
  100c8c:	45 09 e5             	or     %r12d,%r13d
  100c8f:	66 44 89 28          	mov    %r13w,(%rax)
    }
}
  100c93:	48 83 c4 08          	add    $0x8,%rsp
  100c97:	5b                   	pop    %rbx
  100c98:	41 5c                	pop    %r12
  100c9a:	41 5d                	pop    %r13
  100c9c:	5d                   	pop    %rbp
  100c9d:	c3                   	ret
        int pos = (cell_ - console) % 80;
  100c9e:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100ca4:	48 89 c1             	mov    %rax,%rcx
  100ca7:	48 89 c6             	mov    %rax,%rsi
  100caa:	48 d1 fe             	sar    $1,%rsi
  100cad:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100cb4:	66 66 66 
  100cb7:	48 89 f0             	mov    %rsi,%rax
  100cba:	48 f7 ea             	imul   %rdx
  100cbd:	48 c1 fa 05          	sar    $0x5,%rdx
  100cc1:	48 89 c8             	mov    %rcx,%rax
  100cc4:	48 c1 f8 3f          	sar    $0x3f,%rax
  100cc8:	48 29 c2             	sub    %rax,%rdx
  100ccb:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  100ccf:	48 c1 e2 04          	shl    $0x4,%rdx
  100cd3:	89 f0                	mov    %esi,%eax
  100cd5:	29 d0                	sub    %edx,%eax
            *cell_++ = ' ' | color;
  100cd7:	41 83 cc 20          	or     $0x20,%r12d
  100cdb:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  100cdf:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  100ce3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  100ce7:	66 44 89 22          	mov    %r12w,(%rdx)
            ++pos;
  100ceb:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100cee:	83 f8 50             	cmp    $0x50,%eax
  100cf1:	75 e8                	jne    100cdb <console_printer::putc(unsigned char, int)+0x9b>
  100cf3:	eb 9e                	jmp    100c93 <console_printer::putc(unsigned char, int)+0x53>
  100cf5:	90                   	nop

0000000000100cf6 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100cf6:	f3 0f 1e fa          	endbr64
    cursorpos = cell_ - console;
  100cfa:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100cfe:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100d04:	48 d1 f8             	sar    $1,%rax
  100d07:	89 05 ef 82 fb ff    	mov    %eax,-0x47d11(%rip)        # b8ffc <cursorpos>
}
  100d0d:	c3                   	ret

0000000000100d0e <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100d0e:	f3 0f 1e fa          	endbr64
  100d12:	55                   	push   %rbp
  100d13:	48 89 e5             	mov    %rsp,%rbp
  100d16:	41 56                	push   %r14
  100d18:	41 55                	push   %r13
  100d1a:	41 54                	push   %r12
  100d1c:	53                   	push   %rbx
  100d1d:	48 83 ec 20          	sub    $0x20,%rsp
  100d21:	89 fb                	mov    %edi,%ebx
  100d23:	41 89 f4             	mov    %esi,%r12d
  100d26:	49 89 d5             	mov    %rdx,%r13
  100d29:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100d2c:	89 fa                	mov    %edi,%edx
  100d2e:	c1 ea 1f             	shr    $0x1f,%edx
  100d31:	89 fe                	mov    %edi,%esi
  100d33:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d37:	e8 46 fe ff ff       	call   100b82 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100d3c:	4c 89 f1             	mov    %r14,%rcx
  100d3f:	4c 89 ea             	mov    %r13,%rdx
  100d42:	44 89 e6             	mov    %r12d,%esi
  100d45:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d49:	e8 1e f6 ff ff       	call   10036c <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100d4e:	85 db                	test   %ebx,%ebx
  100d50:	78 1a                	js     100d6c <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100d52:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100d56:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100d5c:	48 d1 f8             	sar    $1,%rax
}
  100d5f:	48 83 c4 20          	add    $0x20,%rsp
  100d63:	5b                   	pop    %rbx
  100d64:	41 5c                	pop    %r12
  100d66:	41 5d                	pop    %r13
  100d68:	41 5e                	pop    %r14
  100d6a:	5d                   	pop    %rbp
  100d6b:	c3                   	ret
        cp.move_cursor();
  100d6c:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d70:	e8 81 ff ff ff       	call   100cf6 <console_printer::move_cursor()>
  100d75:	eb db                	jmp    100d52 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100d77 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100d77:	f3 0f 1e fa          	endbr64
  100d7b:	55                   	push   %rbp
  100d7c:	48 89 e5             	mov    %rsp,%rbp
  100d7f:	48 83 ec 50          	sub    $0x50,%rsp
  100d83:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100d87:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100d8b:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100d8f:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100d96:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100d9a:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100d9e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100da2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100da6:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100daa:	e8 5f ff ff ff       	call   100d0e <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100daf:	c9                   	leave
  100db0:	c3                   	ret

0000000000100db1 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  100db1:	f3 0f 1e fa          	endbr64
  100db5:	55                   	push   %rbp
  100db6:	48 89 e5             	mov    %rsp,%rbp
  100db9:	48 89 f9             	mov    %rdi,%rcx
  100dbc:	41 89 f0             	mov    %esi,%r8d
  100dbf:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  100dc2:	ba 98 15 10 00       	mov    $0x101598,%edx
  100dc7:	be 00 c0 00 00       	mov    $0xc000,%esi
  100dcc:	bf 30 07 00 00       	mov    $0x730,%edi
  100dd1:	b0 00                	mov    $0x0,%al
  100dd3:	e8 9f ff ff ff       	call   100d77 <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100dd8:	b8 03 00 00 00       	mov    $0x3,%eax
    asm volatile ("syscall"
  100ddd:	bf 00 00 00 00       	mov    $0x0,%edi
  100de2:	0f 05                	syscall
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100de4:	eb fe                	jmp    100de4 <assert_fail(char const*, int, char const*)+0x33>
