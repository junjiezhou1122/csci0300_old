
obj/p-fork.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <process_main()>:
extern uint8_t end[];

uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  100000:	f3 0f 1e fa          	endbr64
  100004:	55                   	push   %rbp
  100005:	48 89 e5             	mov    %rsp,%rbp
  100008:	41 54                	push   %r12
  10000a:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  10000b:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
  100010:	0f 05                	syscall
    // Fork a total of three new copies.
    pid_t p1 = sys_fork();
    assert(p1 >= 0);
  100012:	85 c0                	test   %eax,%eax
  100014:	78 3a                	js     100050 <process_main()+0x50>
  100016:	48 89 c3             	mov    %rax,%rbx
    register uintptr_t rax asm("rax") = syscallno;
  100019:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
  10001e:	0f 05                	syscall
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
    return rax;
  100020:	49 89 c4             	mov    %rax,%r12
    pid_t p2 = sys_fork();
    assert(p2 >= 0);
  100023:	85 c0                	test   %eax,%eax
  100025:	78 3d                	js     100064 <process_main()+0x64>
    register uintptr_t rax asm("rax") = syscallno;
  100027:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
  10002c:	0f 05                	syscall

    // Check fork return values: fork should return 0 to child.
    if (sys_getpid() == 1) {
  10002e:	83 f8 01             	cmp    $0x1,%eax
  100031:	74 45                	je     100078 <process_main()+0x78>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
    } else {
        assert(p1 == 0 || p2 == 0);
  100033:	85 db                	test   %ebx,%ebx
  100035:	74 55                	je     10008c <process_main()+0x8c>
  100037:	45 85 e4             	test   %r12d,%r12d
  10003a:	74 50                	je     10008c <process_main()+0x8c>
  10003c:	ba 6a 0d 10 00       	mov    $0x100d6a,%edx
  100041:	be 16 00 00 00       	mov    $0x16,%esi
  100046:	bf 58 0d 10 00       	mov    $0x100d58,%edi
  10004b:	e8 c3 0c 00 00       	call   100d13 <assert_fail(char const*, int, char const*)>
    assert(p1 >= 0);
  100050:	ba 50 0d 10 00       	mov    $0x100d50,%edx
  100055:	be 0e 00 00 00       	mov    $0xe,%esi
  10005a:	bf 58 0d 10 00       	mov    $0x100d58,%edi
  10005f:	e8 af 0c 00 00       	call   100d13 <assert_fail(char const*, int, char const*)>
    assert(p2 >= 0);
  100064:	ba 62 0d 10 00       	mov    $0x100d62,%edx
  100069:	be 10 00 00 00       	mov    $0x10,%esi
  10006e:	bf 58 0d 10 00       	mov    $0x100d58,%edi
  100073:	e8 9b 0c 00 00       	call   100d13 <assert_fail(char const*, int, char const*)>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
  100078:	85 db                	test   %ebx,%ebx
  10007a:	0f 94 c0             	sete   %al
  10007d:	45 85 e4             	test   %r12d,%r12d
  100080:	0f 94 c2             	sete   %dl
  100083:	08 d0                	or     %dl,%al
  100085:	75 40                	jne    1000c7 <process_main()+0xc7>
  100087:	44 39 e3             	cmp    %r12d,%ebx
  10008a:	74 3b                	je     1000c7 <process_main()+0xc7>
    register uintptr_t rax asm("rax") = syscallno;
  10008c:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
  100091:	0f 05                	syscall
    return rax;
  100093:	49 89 c4             	mov    %rax,%r12


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  100096:	89 c3                	mov    %eax,%ebx
    }

    // The rest of this code is like p-allocator.c.

    pid_t p = sys_getpid();
    srand(p);
  100098:	89 c7                	mov    %eax,%edi
  10009a:	e8 c7 01 00 00       	call   100266 <srand(unsigned int)>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  10009f:	b8 1b 30 10 00       	mov    $0x10301b,%eax

    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  1000a4:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000aa:	48 89 05 57 1f 00 00 	mov    %rax,0x1f57(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1000b1:	48 89 e0             	mov    %rsp,%rax
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1000b4:	48 83 e8 01          	sub    $0x1,%rax
  1000b8:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000be:	48 89 05 3b 1f 00 00 	mov    %rax,0x1f3b(%rip)        # 102000 <stack_bottom>
  1000c5:	eb 1b                	jmp    1000e2 <process_main()+0xe2>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
  1000c7:	ba a0 0d 10 00       	mov    $0x100da0,%edx
  1000cc:	be 14 00 00 00       	mov    $0x14,%esi
  1000d1:	bf 58 0d 10 00       	mov    $0x100d58,%edi
  1000d6:	e8 38 0c 00 00       	call   100d13 <assert_fail(char const*, int, char const*)>
    register uintptr_t rax asm("rax") = syscallno;
  1000db:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  1000e0:	0f 05                	syscall

    while (true) {
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  1000e2:	be 63 00 00 00       	mov    $0x63,%esi
  1000e7:	bf 00 00 00 00       	mov    $0x0,%edi
  1000ec:	e8 94 01 00 00       	call   100285 <rand(int, int)>
  1000f1:	39 d8                	cmp    %ebx,%eax
  1000f3:	7d e6                	jge    1000db <process_main()+0xdb>
            if (heap_top == stack_bottom
  1000f5:	48 8b 3d 0c 1f 00 00 	mov    0x1f0c(%rip),%rdi        # 102008 <heap_top>
                || sys_page_alloc(heap_top) < 0) {
  1000fc:	48 3b 3d fd 1e 00 00 	cmp    0x1efd(%rip),%rdi        # 102000 <stack_bottom>
  100103:	74 2a                	je     10012f <process_main()+0x12f>
    register uintptr_t rax asm("rax") = syscallno;
  100105:	b8 04 00 00 00       	mov    $0x4,%eax
    asm volatile ("syscall"
  10010a:	0f 05                	syscall
  10010c:	85 c0                	test   %eax,%eax
  10010e:	78 1f                	js     10012f <process_main()+0x12f>
                break;
            }
            *heap_top = p;               // check we can write to new page
  100110:	48 8b 05 f1 1e 00 00 	mov    0x1ef1(%rip),%rax        # 102008 <heap_top>
  100117:	44 88 20             	mov    %r12b,(%rax)
            console[CPOS(24, 79)] = p;   // check we can write to console
  10011a:	66 44 89 25 7c 8e fb 	mov    %r12w,-0x47184(%rip)        # b8f9e <console+0xf9e>
  100121:	ff 
            heap_top += PAGESIZE;
  100122:	48 81 05 db 1e 00 00 	addq   $0x1000,0x1edb(%rip)        # 102008 <heap_top>
  100129:	00 10 00 00 
  10012d:	eb ac                	jmp    1000db <process_main()+0xdb>
    register uintptr_t rax asm("rax") = syscallno;
  10012f:	b8 02 00 00 00       	mov    $0x2,%eax
    asm volatile ("syscall"
  100134:	0f 05                	syscall
        }
        sys_yield();
    }

    // After running out of memory, do nothing forever
    while (true) {
  100136:	eb f7                	jmp    10012f <process_main()+0x12f>

0000000000100138 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  100138:	f3 0f 1e fa          	endbr64
  10013c:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  10013f:	48 39 fe             	cmp    %rdi,%rsi
  100142:	72 1d                	jb     100161 <memmove+0x29>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  100144:	b9 00 00 00 00       	mov    $0x0,%ecx
  100149:	48 85 d2             	test   %rdx,%rdx
  10014c:	74 12                	je     100160 <memmove+0x28>
            *d++ = *s++;
  10014e:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  100152:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  100156:	48 83 c1 01          	add    $0x1,%rcx
  10015a:	48 39 ca             	cmp    %rcx,%rdx
  10015d:	75 ef                	jne    10014e <memmove+0x16>
        }
    }
    return dst;
}
  10015f:	c3                   	ret
  100160:	c3                   	ret
    if (s < d && s + n > d) {
  100161:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  100165:	48 39 cf             	cmp    %rcx,%rdi
  100168:	73 da                	jae    100144 <memmove+0xc>
        while (n-- > 0) {
  10016a:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  10016e:	48 85 d2             	test   %rdx,%rdx
  100171:	74 ec                	je     10015f <memmove+0x27>
            *--d = *--s;
  100173:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  100177:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  10017a:	48 83 e9 01          	sub    $0x1,%rcx
  10017e:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  100182:	75 ef                	jne    100173 <memmove+0x3b>
  100184:	c3                   	ret

0000000000100185 <memset>:

void* memset(void* v, int c, size_t n) {
  100185:	f3 0f 1e fa          	endbr64
  100189:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  10018c:	48 85 d2             	test   %rdx,%rdx
  10018f:	74 12                	je     1001a3 <memset+0x1e>
  100191:	48 01 fa             	add    %rdi,%rdx
  100194:	48 89 f9             	mov    %rdi,%rcx
        *p = c;
  100197:	40 88 31             	mov    %sil,(%rcx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  10019a:	48 83 c1 01          	add    $0x1,%rcx
  10019e:	48 39 ca             	cmp    %rcx,%rdx
  1001a1:	75 f4                	jne    100197 <memset+0x12>
    }
    return v;
}
  1001a3:	c3                   	ret

00000000001001a4 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  1001a4:	f3 0f 1e fa          	endbr64
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  1001a8:	80 3f 00             	cmpb   $0x0,(%rdi)
  1001ab:	74 10                	je     1001bd <strlen+0x19>
  1001ad:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  1001b2:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  1001b6:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1001ba:	75 f6                	jne    1001b2 <strlen+0xe>
  1001bc:	c3                   	ret
  1001bd:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  1001c2:	c3                   	ret

00000000001001c3 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  1001c3:	f3 0f 1e fa          	endbr64
  1001c7:	48 89 f0             	mov    %rsi,%rax
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1001ca:	ba 00 00 00 00       	mov    $0x0,%edx
  1001cf:	48 85 f6             	test   %rsi,%rsi
  1001d2:	74 10                	je     1001e4 <strnlen+0x21>
  1001d4:	80 3c 17 00          	cmpb   $0x0,(%rdi,%rdx,1)
  1001d8:	74 0b                	je     1001e5 <strnlen+0x22>
        ++n;
  1001da:	48 83 c2 01          	add    $0x1,%rdx
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1001de:	48 39 d0             	cmp    %rdx,%rax
  1001e1:	75 f1                	jne    1001d4 <strnlen+0x11>
  1001e3:	c3                   	ret
  1001e4:	c3                   	ret
  1001e5:	48 89 d0             	mov    %rdx,%rax
    }
    return n;
}
  1001e8:	c3                   	ret

00000000001001e9 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  1001e9:	f3 0f 1e fa          	endbr64
    while (*s && *s != (char) c) {
  1001ed:	0f b6 07             	movzbl (%rdi),%eax
  1001f0:	84 c0                	test   %al,%al
  1001f2:	74 10                	je     100204 <strchr+0x1b>
  1001f4:	40 38 f0             	cmp    %sil,%al
  1001f7:	74 18                	je     100211 <strchr+0x28>
        ++s;
  1001f9:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  1001fd:	0f b6 07             	movzbl (%rdi),%eax
  100200:	84 c0                	test   %al,%al
  100202:	75 f0                	jne    1001f4 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
  100204:	40 84 f6             	test   %sil,%sil
  100207:	b8 00 00 00 00       	mov    $0x0,%eax
  10020c:	48 0f 44 c7          	cmove  %rdi,%rax
    } else {
        return nullptr;
    }
}
  100210:	c3                   	ret
        return (char*) s;
  100211:	48 89 f8             	mov    %rdi,%rax
  100214:	c3                   	ret

0000000000100215 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  100215:	f3 0f 1e fa          	endbr64
    if (!rand_seed_set) {
  100219:	83 3d f8 1d 00 00 00 	cmpl   $0x0,0x1df8(%rip)        # 102018 <rand_seed_set>
  100220:	74 27                	je     100249 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  100222:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  100229:	f4 51 58 
  10022c:	48 0f af 05 dc 1d 00 	imul   0x1ddc(%rip),%rax        # 102010 <rand_seed>
  100233:	00 
  100234:	48 83 c0 01          	add    $0x1,%rax
  100238:	48 89 05 d1 1d 00 00 	mov    %rax,0x1dd1(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  10023f:	48 c1 e8 20          	shr    $0x20,%rax
  100243:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  100248:	c3                   	ret

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  100249:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  100250:	87 d4 30 
  100253:	48 89 05 b6 1d 00 00 	mov    %rax,0x1db6(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  10025a:	c7 05 b4 1d 00 00 01 	movl   $0x1,0x1db4(%rip)        # 102018 <rand_seed_set>
  100261:	00 00 00 
}
  100264:	eb bc                	jmp    100222 <rand()+0xd>

0000000000100266 <srand(unsigned int)>:
void srand(unsigned seed) {
  100266:	f3 0f 1e fa          	endbr64
    rand_seed = ((unsigned long) seed << 32) | seed;
  10026a:	89 f8                	mov    %edi,%eax
  10026c:	48 c1 e7 20          	shl    $0x20,%rdi
  100270:	48 01 c7             	add    %rax,%rdi
  100273:	48 89 3d 96 1d 00 00 	mov    %rdi,0x1d96(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  10027a:	c7 05 94 1d 00 00 01 	movl   $0x1,0x1d94(%rip)        # 102018 <rand_seed_set>
  100281:	00 00 00 
}
  100284:	c3                   	ret

0000000000100285 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  100285:	f3 0f 1e fa          	endbr64
  100289:	55                   	push   %rbp
  10028a:	48 89 e5             	mov    %rsp,%rbp
  10028d:	41 54                	push   %r12
  10028f:	53                   	push   %rbx
    assert(min <= max);
  100290:	39 f7                	cmp    %esi,%edi
  100292:	7f 26                	jg     1002ba <rand(int, int)+0x35>
  100294:	41 89 fc             	mov    %edi,%r12d
  100297:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100299:	e8 77 ff ff ff       	call   100215 <rand()>
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  10029e:	44 29 e3             	sub    %r12d,%ebx
  1002a1:	83 c3 01             	add    $0x1,%ebx
  1002a4:	48 63 db             	movslq %ebx,%rbx
    unsigned long r = rand();
  1002a7:	48 98                	cltq
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1002a9:	48 0f af d8          	imul   %rax,%rbx
  1002ad:	48 c1 eb 1f          	shr    $0x1f,%rbx
  1002b1:	41 8d 04 1c          	lea    (%r12,%rbx,1),%eax
}
  1002b5:	5b                   	pop    %rbx
  1002b6:	41 5c                	pop    %r12
  1002b8:	5d                   	pop    %rbp
  1002b9:	c3                   	ret
    assert(min <= max);
  1002ba:	ba 7d 0d 10 00       	mov    $0x100d7d,%edx
  1002bf:	be f2 00 00 00       	mov    $0xf2,%esi
  1002c4:	bf 88 0d 10 00       	mov    $0x100d88,%edi
  1002c9:	e8 45 0a 00 00       	call   100d13 <assert_fail(char const*, int, char const*)>

00000000001002ce <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  1002ce:	f3 0f 1e fa          	endbr64
  1002d2:	55                   	push   %rbp
  1002d3:	48 89 e5             	mov    %rsp,%rbp
  1002d6:	41 57                	push   %r15
  1002d8:	41 56                	push   %r14
  1002da:	41 55                	push   %r13
  1002dc:	41 54                	push   %r12
  1002de:	53                   	push   %rbx
  1002df:	48 83 ec 58          	sub    $0x58,%rsp
  1002e3:	49 89 ff             	mov    %rdi,%r15
  1002e6:	41 89 f5             	mov    %esi,%r13d
  1002e9:	49 89 d4             	mov    %rdx,%r12
  1002ec:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  1002f0:	0f b6 3a             	movzbl (%rdx),%edi
  1002f3:	40 84 ff             	test   %dil,%dil
  1002f6:	0f 85 4f 06 00 00    	jne    10094b <printer::vprintf(int, char const*, __va_list_tag*)+0x67d>
        }
        for (; width > 0; --width) {
            putc(' ', color);
        }
    }
}
  1002fc:	48 83 c4 58          	add    $0x58,%rsp
  100300:	5b                   	pop    %rbx
  100301:	41 5c                	pop    %r12
  100303:	41 5d                	pop    %r13
  100305:	41 5e                	pop    %r14
  100307:	41 5f                	pop    %r15
  100309:	5d                   	pop    %rbp
  10030a:	c3                   	ret
        for (++format; *format; ++format) {
  10030b:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  100310:	45 0f b6 64 24 01    	movzbl 0x1(%r12),%r12d
  100316:	45 84 e4             	test   %r12b,%r12b
  100319:	0f 84 14 01 00 00    	je     100433 <printer::vprintf(int, char const*, __va_list_tag*)+0x165>
        int flags = 0;
  10031f:	41 be 00 00 00 00    	mov    $0x0,%r14d
  100325:	40 88 7d a8          	mov    %dil,-0x58(%rbp)
            const char* flagc = strchr(flag_chars, *format);
  100329:	41 0f be f4          	movsbl %r12b,%esi
  10032d:	bf 10 15 10 00       	mov    $0x101510,%edi
  100332:	e8 b2 fe ff ff       	call   1001e9 <strchr>
  100337:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  10033a:	48 85 c0             	test   %rax,%rax
  10033d:	74 78                	je     1003b7 <printer::vprintf(int, char const*, __va_list_tag*)+0xe9>
                flags |= 1 << (flagc - flag_chars);
  10033f:	48 81 e9 10 15 10 00 	sub    $0x101510,%rcx
  100346:	b8 01 00 00 00       	mov    $0x1,%eax
  10034b:	d3 e0                	shl    %cl,%eax
  10034d:	41 09 c6             	or     %eax,%r14d
        for (++format; *format; ++format) {
  100350:	48 83 c3 01          	add    $0x1,%rbx
  100354:	44 0f b6 23          	movzbl (%rbx),%r12d
  100358:	45 84 e4             	test   %r12b,%r12b
  10035b:	75 cc                	jne    100329 <printer::vprintf(int, char const*, __va_list_tag*)+0x5b>
        int width = -1;
  10035d:	0f b6 7d a8          	movzbl -0x58(%rbp),%edi
  100361:	44 89 75 a4          	mov    %r14d,-0x5c(%rbp)
  100365:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
        int precision = -1;
  10036b:	c7 45 a0 ff ff ff ff 	movl   $0xffffffff,-0x60(%rbp)
        if (*format == '.') {
  100372:	80 3b 2e             	cmpb   $0x2e,(%rbx)
  100375:	0f 84 e0 00 00 00    	je     10045b <printer::vprintf(int, char const*, __va_list_tag*)+0x18d>
        switch (*format) {
  10037b:	0f b6 03             	movzbl (%rbx),%eax
  10037e:	3c 6c                	cmp    $0x6c,%al
  100380:	0f 84 7b 01 00 00    	je     100501 <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
  100386:	0f 8f 56 01 00 00    	jg     1004e2 <printer::vprintf(int, char const*, __va_list_tag*)+0x214>
  10038c:	3c 68                	cmp    $0x68,%al
  10038e:	0f 85 90 01 00 00    	jne    100524 <printer::vprintf(int, char const*, __va_list_tag*)+0x256>
            ++format;
  100394:	48 8d 43 01          	lea    0x1(%rbx),%rax
  100398:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
        switch (*format) {
  10039c:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  1003a0:	8d 50 bd             	lea    -0x43(%rax),%edx
  1003a3:	80 fa 35             	cmp    $0x35,%dl
  1003a6:	0f 87 58 06 00 00    	ja     100a04 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  1003ac:	0f b6 d2             	movzbl %dl,%edx
  1003af:	3e ff 24 d5 50 0e 10 	notrack jmp *0x100e50(,%rdx,8)
  1003b6:	00 
        if (*format >= '1' && *format <= '9') {
  1003b7:	0f b6 7d a8          	movzbl -0x58(%rbp),%edi
  1003bb:	44 89 75 a4          	mov    %r14d,-0x5c(%rbp)
  1003bf:	41 8d 44 24 cf       	lea    -0x31(%r12),%eax
  1003c4:	3c 08                	cmp    $0x8,%al
  1003c6:	77 31                	ja     1003f9 <printer::vprintf(int, char const*, __va_list_tag*)+0x12b>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1003c8:	0f b6 03             	movzbl (%rbx),%eax
  1003cb:	8d 50 d0             	lea    -0x30(%rax),%edx
  1003ce:	80 fa 09             	cmp    $0x9,%dl
  1003d1:	77 72                	ja     100445 <printer::vprintf(int, char const*, __va_list_tag*)+0x177>
  1003d3:	41 be 00 00 00 00    	mov    $0x0,%r14d
                width = 10 * width + *format++ - '0';
  1003d9:	48 83 c3 01          	add    $0x1,%rbx
  1003dd:	43 8d 14 b6          	lea    (%r14,%r14,4),%edx
  1003e1:	0f be c0             	movsbl %al,%eax
  1003e4:	44 8d 74 50 d0       	lea    -0x30(%rax,%rdx,2),%r14d
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1003e9:	0f b6 03             	movzbl (%rbx),%eax
  1003ec:	8d 50 d0             	lea    -0x30(%rax),%edx
  1003ef:	80 fa 09             	cmp    $0x9,%dl
  1003f2:	76 e5                	jbe    1003d9 <printer::vprintf(int, char const*, __va_list_tag*)+0x10b>
  1003f4:	e9 72 ff ff ff       	jmp    10036b <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
        } else if (*format == '*') {
  1003f9:	41 80 fc 2a          	cmp    $0x2a,%r12b
  1003fd:	75 51                	jne    100450 <printer::vprintf(int, char const*, __va_list_tag*)+0x182>
            width = va_arg(val, int);
  1003ff:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100403:	8b 01                	mov    (%rcx),%eax
  100405:	83 f8 2f             	cmp    $0x2f,%eax
  100408:	77 17                	ja     100421 <printer::vprintf(int, char const*, __va_list_tag*)+0x153>
  10040a:	89 c2                	mov    %eax,%edx
  10040c:	48 03 51 10          	add    0x10(%rcx),%rdx
  100410:	83 c0 08             	add    $0x8,%eax
  100413:	89 01                	mov    %eax,(%rcx)
  100415:	44 8b 32             	mov    (%rdx),%r14d
            ++format;
  100418:	48 83 c3 01          	add    $0x1,%rbx
  10041c:	e9 4a ff ff ff       	jmp    10036b <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            width = va_arg(val, int);
  100421:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100425:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100429:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10042d:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100431:	eb e2                	jmp    100415 <printer::vprintf(int, char const*, __va_list_tag*)+0x147>
        int flags = 0;
  100433:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
        int width = -1;
  10043a:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
  100440:	e9 26 ff ff ff       	jmp    10036b <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100445:	41 be 00 00 00 00    	mov    $0x0,%r14d
  10044b:	e9 1b ff ff ff       	jmp    10036b <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
        int width = -1;
  100450:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
  100456:	e9 10 ff ff ff       	jmp    10036b <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            ++format;
  10045b:	48 8d 53 01          	lea    0x1(%rbx),%rdx
            if (*format >= '0' && *format <= '9') {
  10045f:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  100463:	8d 48 d0             	lea    -0x30(%rax),%ecx
  100466:	80 f9 09             	cmp    $0x9,%cl
  100469:	76 13                	jbe    10047e <printer::vprintf(int, char const*, __va_list_tag*)+0x1b0>
            } else if (*format == '*') {
  10046b:	3c 2a                	cmp    $0x2a,%al
  10046d:	74 33                	je     1004a2 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d4>
            ++format;
  10046f:	48 89 d3             	mov    %rdx,%rbx
                precision = 0;
  100472:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
  100479:	e9 fd fe ff ff       	jmp    10037b <printer::vprintf(int, char const*, __va_list_tag*)+0xad>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  10047e:	b9 00 00 00 00       	mov    $0x0,%ecx
                    precision = 10 * precision + *format++ - '0';
  100483:	48 83 c2 01          	add    $0x1,%rdx
  100487:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
  10048a:	0f be c0             	movsbl %al,%eax
  10048d:	8d 4c 48 d0          	lea    -0x30(%rax,%rcx,2),%ecx
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100491:	0f b6 02             	movzbl (%rdx),%eax
  100494:	8d 70 d0             	lea    -0x30(%rax),%esi
  100497:	40 80 fe 09          	cmp    $0x9,%sil
  10049b:	76 e6                	jbe    100483 <printer::vprintf(int, char const*, __va_list_tag*)+0x1b5>
  10049d:	48 89 d3             	mov    %rdx,%rbx
  1004a0:	eb 1c                	jmp    1004be <printer::vprintf(int, char const*, __va_list_tag*)+0x1f0>
                precision = va_arg(val, int);
  1004a2:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1004a6:	8b 01                	mov    (%rcx),%eax
  1004a8:	83 f8 2f             	cmp    $0x2f,%eax
  1004ab:	77 23                	ja     1004d0 <printer::vprintf(int, char const*, __va_list_tag*)+0x202>
  1004ad:	89 c2                	mov    %eax,%edx
  1004af:	48 03 51 10          	add    0x10(%rcx),%rdx
  1004b3:	83 c0 08             	add    $0x8,%eax
  1004b6:	89 01                	mov    %eax,(%rcx)
  1004b8:	8b 0a                	mov    (%rdx),%ecx
                ++format;
  1004ba:	48 83 c3 02          	add    $0x2,%rbx
            if (precision < 0) {
  1004be:	85 c9                	test   %ecx,%ecx
  1004c0:	b8 00 00 00 00       	mov    $0x0,%eax
  1004c5:	0f 49 c1             	cmovns %ecx,%eax
  1004c8:	89 45 a0             	mov    %eax,-0x60(%rbp)
  1004cb:	e9 ab fe ff ff       	jmp    10037b <printer::vprintf(int, char const*, __va_list_tag*)+0xad>
                precision = va_arg(val, int);
  1004d0:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1004d4:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1004d8:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1004dc:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1004e0:	eb d6                	jmp    1004b8 <printer::vprintf(int, char const*, __va_list_tag*)+0x1ea>
        switch (*format) {
  1004e2:	3c 74                	cmp    $0x74,%al
  1004e4:	74 1b                	je     100501 <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
  1004e6:	3c 7a                	cmp    $0x7a,%al
  1004e8:	74 17                	je     100501 <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
        switch (*format) {
  1004ea:	8d 50 bd             	lea    -0x43(%rax),%edx
  1004ed:	80 fa 35             	cmp    $0x35,%dl
  1004f0:	0f 87 e4 05 00 00    	ja     100ada <printer::vprintf(int, char const*, __va_list_tag*)+0x80c>
  1004f6:	0f b6 d2             	movzbl %dl,%edx
  1004f9:	3e ff 24 d5 00 10 10 	notrack jmp *0x101000(,%rdx,8)
  100500:	00 
            ++format;
  100501:	48 8d 43 01          	lea    0x1(%rbx),%rax
  100505:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
        switch (*format) {
  100509:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  10050d:	8d 50 bd             	lea    -0x43(%rax),%edx
  100510:	80 fa 35             	cmp    $0x35,%dl
  100513:	0f 87 eb 04 00 00    	ja     100a04 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  100519:	0f b6 d2             	movzbl %dl,%edx
  10051c:	3e ff 24 d5 b0 11 10 	notrack jmp *0x1011b0(,%rdx,8)
  100523:	00 
  100524:	8d 50 bd             	lea    -0x43(%rax),%edx
  100527:	80 fa 35             	cmp    $0x35,%dl
  10052a:	0f 87 d0 04 00 00    	ja     100a00 <printer::vprintf(int, char const*, __va_list_tag*)+0x732>
  100530:	0f b6 d2             	movzbl %dl,%edx
  100533:	3e ff 24 d5 60 13 10 	notrack jmp *0x101360(,%rdx,8)
  10053a:	00 
            long x = length ? va_arg(val, long) : va_arg(val, int);
  10053b:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10053f:	8b 01                	mov    (%rcx),%eax
  100541:	83 f8 2f             	cmp    $0x2f,%eax
  100544:	77 3a                	ja     100580 <printer::vprintf(int, char const*, __va_list_tag*)+0x2b2>
  100546:	89 c2                	mov    %eax,%edx
  100548:	48 03 51 10          	add    0x10(%rcx),%rdx
  10054c:	83 c0 08             	add    $0x8,%eax
  10054f:	89 01                	mov    %eax,(%rcx)
  100551:	48 8b 12             	mov    (%rdx),%rdx
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  100554:	48 89 d0             	mov    %rdx,%rax
  100557:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  10055b:	49 89 d1             	mov    %rdx,%r9
  10055e:	49 f7 d9             	neg    %r9
  100561:	25 80 00 00 00       	and    $0x80,%eax
  100566:	4c 0f 44 ca          	cmove  %rdx,%r9
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  10056a:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  10056d:	09 c8                	or     %ecx,%eax
  10056f:	83 c8 60             	or     $0x60,%eax
  100572:	89 45 a4             	mov    %eax,-0x5c(%rbp)
        const char* data = "";
  100575:	41 bc 96 0d 10 00    	mov    $0x100d96,%r12d
            break;
  10057b:	e9 8a 02 00 00       	jmp    10080a <printer::vprintf(int, char const*, __va_list_tag*)+0x53c>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100580:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100584:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100588:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10058c:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100590:	eb bf                	jmp    100551 <printer::vprintf(int, char const*, __va_list_tag*)+0x283>
        switch (*format) {
  100592:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100596:	eb 04                	jmp    10059c <printer::vprintf(int, char const*, __va_list_tag*)+0x2ce>
  100598:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            long x = length ? va_arg(val, long) : va_arg(val, int);
  10059c:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
  1005a0:	8b 03                	mov    (%rbx),%eax
  1005a2:	83 f8 2f             	cmp    $0x2f,%eax
  1005a5:	77 10                	ja     1005b7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2e9>
  1005a7:	89 c2                	mov    %eax,%edx
  1005a9:	48 03 53 10          	add    0x10(%rbx),%rdx
  1005ad:	83 c0 08             	add    $0x8,%eax
  1005b0:	89 03                	mov    %eax,(%rbx)
  1005b2:	48 63 12             	movslq (%rdx),%rdx
  1005b5:	eb 9d                	jmp    100554 <printer::vprintf(int, char const*, __va_list_tag*)+0x286>
  1005b7:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
  1005bb:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  1005bf:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1005c3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  1005c7:	eb e9                	jmp    1005b2 <printer::vprintf(int, char const*, __va_list_tag*)+0x2e4>
        switch (*format) {
  1005c9:	b8 01 00 00 00       	mov    $0x1,%eax
  1005ce:	be 0a 00 00 00       	mov    $0xa,%esi
  1005d3:	e9 ac 00 00 00       	jmp    100684 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
  1005d8:	b8 00 00 00 00       	mov    $0x0,%eax
  1005dd:	be 0a 00 00 00       	mov    $0xa,%esi
  1005e2:	e9 9d 00 00 00       	jmp    100684 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
  1005e7:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  1005eb:	b8 00 00 00 00       	mov    $0x0,%eax
  1005f0:	be 0a 00 00 00       	mov    $0xa,%esi
  1005f5:	e9 8a 00 00 00       	jmp    100684 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
  1005fa:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  1005fe:	b8 00 00 00 00       	mov    $0x0,%eax
  100603:	be 0a 00 00 00       	mov    $0xa,%esi
  100608:	eb 7a                	jmp    100684 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  10060a:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
  10060e:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  100612:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100616:	48 89 43 08          	mov    %rax,0x8(%rbx)
  10061a:	e9 83 00 00 00       	jmp    1006a2 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d4>
  10061f:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100623:	8b 01                	mov    (%rcx),%eax
  100625:	83 f8 2f             	cmp    $0x2f,%eax
  100628:	77 10                	ja     10063a <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
  10062a:	89 c2                	mov    %eax,%edx
  10062c:	48 03 51 10          	add    0x10(%rcx),%rdx
  100630:	83 c0 08             	add    $0x8,%eax
  100633:	89 01                	mov    %eax,(%rcx)
  100635:	44 8b 0a             	mov    (%rdx),%r9d
  100638:	eb 6b                	jmp    1006a5 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d7>
  10063a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10063e:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100642:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100646:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10064a:	eb e9                	jmp    100635 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
  10064c:	41 89 f0             	mov    %esi,%r8d
  10064f:	c7 45 98 20 00 00 00 	movl   $0x20,-0x68(%rbp)
    const char* digits = upper_digits;
  100656:	bf 40 15 10 00       	mov    $0x101540,%edi
  10065b:	eb 64                	jmp    1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
        switch (*format) {
  10065d:	b8 01 00 00 00       	mov    $0x1,%eax
  100662:	eb 1b                	jmp    10067f <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
  100664:	b8 00 00 00 00       	mov    $0x0,%eax
  100669:	eb 14                	jmp    10067f <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
  10066b:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10066f:	b8 00 00 00 00       	mov    $0x0,%eax
  100674:	eb 09                	jmp    10067f <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
  100676:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10067a:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  10067f:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  100684:	85 c0                	test   %eax,%eax
  100686:	74 97                	je     10061f <printer::vprintf(int, char const*, __va_list_tag*)+0x351>
  100688:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10068c:	8b 01                	mov    (%rcx),%eax
  10068e:	83 f8 2f             	cmp    $0x2f,%eax
  100691:	0f 87 73 ff ff ff    	ja     10060a <printer::vprintf(int, char const*, __va_list_tag*)+0x33c>
  100697:	89 c2                	mov    %eax,%edx
  100699:	48 03 51 10          	add    0x10(%rcx),%rdx
  10069d:	83 c0 08             	add    $0x8,%eax
  1006a0:	89 01                	mov    %eax,(%rcx)
  1006a2:	4c 8b 0a             	mov    (%rdx),%r9
            flags |= FLAG_NUMERIC;
  1006a5:	83 4d a4 20          	orl    $0x20,-0x5c(%rbp)
    if (base < 0) {
  1006a9:	85 f6                	test   %esi,%esi
  1006ab:	79 9f                	jns    10064c <printer::vprintf(int, char const*, __va_list_tag*)+0x37e>
        base = -base;
  1006ad:	41 89 f0             	mov    %esi,%r8d
  1006b0:	c7 45 98 20 00 00 00 	movl   $0x20,-0x68(%rbp)
        digits = lower_digits;
  1006b7:	bf 20 15 10 00       	mov    $0x101520,%edi
        base = -base;
  1006bc:	be 10 00 00 00       	mov    $0x10,%esi
    *--numbuf_end = '\0';
  1006c1:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  1006c5:	4c 89 c9             	mov    %r9,%rcx
  1006c8:	4c 8d 65 cf          	lea    -0x31(%rbp),%r12
        *--numbuf_end = digits[val % base];
  1006cc:	48 63 f6             	movslq %esi,%rsi
  1006cf:	49 83 ec 01          	sub    $0x1,%r12
  1006d3:	48 89 c8             	mov    %rcx,%rax
  1006d6:	ba 00 00 00 00       	mov    $0x0,%edx
  1006db:	48 f7 f6             	div    %rsi
  1006de:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  1006e2:	41 88 14 24          	mov    %dl,(%r12)
        val /= base;
  1006e6:	48 89 ca             	mov    %rcx,%rdx
  1006e9:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  1006ec:	48 39 f2             	cmp    %rsi,%rdx
  1006ef:	73 de                	jae    1006cf <printer::vprintf(int, char const*, __va_list_tag*)+0x401>
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  1006f1:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1006f4:	89 c8                	mov    %ecx,%eax
  1006f6:	f7 d0                	not    %eax
  1006f8:	a8 60                	test   $0x60,%al
  1006fa:	0f 85 5d 03 00 00    	jne    100a5d <printer::vprintf(int, char const*, __va_list_tag*)+0x78f>
                prefix = "-";
  100700:	bb 97 0d 10 00       	mov    $0x100d97,%ebx
            if (flags & FLAG_NEGATIVE) {
  100705:	f6 c1 80             	test   $0x80,%cl
  100708:	75 1e                	jne    100728 <printer::vprintf(int, char const*, __va_list_tag*)+0x45a>
                prefix = "+";
  10070a:	bb 99 0d 10 00       	mov    $0x100d99,%ebx
            } else if (flags & FLAG_PLUSPOSITIVE) {
  10070f:	f6 c1 10             	test   $0x10,%cl
  100712:	75 14                	jne    100728 <printer::vprintf(int, char const*, __va_list_tag*)+0x45a>
        const char* prefix = "";
  100714:	f6 c1 08             	test   $0x8,%cl
  100717:	ba 95 0d 10 00       	mov    $0x100d95,%edx
  10071c:	b8 96 0d 10 00       	mov    $0x100d96,%eax
  100721:	48 0f 45 c2          	cmovne %rdx,%rax
  100725:	48 89 c3             	mov    %rax,%rbx
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  100728:	8b 45 a0             	mov    -0x60(%rbp),%eax
  10072b:	f7 d0                	not    %eax
  10072d:	c1 e8 1f             	shr    $0x1f,%eax
  100730:	89 45 8c             	mov    %eax,-0x74(%rbp)
            datalen = strlen(data);
  100733:	4c 89 e7             	mov    %r12,%rdi
  100736:	e8 69 fa ff ff       	call   1001a4 <strlen>
  10073b:	89 45 9c             	mov    %eax,-0x64(%rbp)
            && precision >= 0) {
  10073e:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
  100742:	0f 84 0a 01 00 00    	je     100852 <printer::vprintf(int, char const*, __va_list_tag*)+0x584>
  100748:	80 7d 8c 00          	cmpb   $0x0,-0x74(%rbp)
  10074c:	0f 84 00 01 00 00    	je     100852 <printer::vprintf(int, char const*, __va_list_tag*)+0x584>
            zeros = precision > datalen ? precision - datalen : 0;
  100752:	8b 4d a0             	mov    -0x60(%rbp),%ecx
  100755:	89 ca                	mov    %ecx,%edx
  100757:	29 c2                	sub    %eax,%edx
  100759:	39 c1                	cmp    %eax,%ecx
  10075b:	b8 00 00 00 00       	mov    $0x0,%eax
  100760:	0f 4f c2             	cmovg  %edx,%eax
  100763:	89 45 a0             	mov    %eax,-0x60(%rbp)
  100766:	e9 fd 00 00 00       	jmp    100868 <printer::vprintf(int, char const*, __va_list_tag*)+0x59a>
        switch (*format) {
  10076b:	b8 01 00 00 00       	mov    $0x1,%eax
  100770:	eb 1b                	jmp    10078d <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
  100772:	b8 00 00 00 00       	mov    $0x0,%eax
  100777:	eb 14                	jmp    10078d <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
  100779:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10077d:	b8 00 00 00 00       	mov    $0x0,%eax
  100782:	eb 09                	jmp    10078d <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
  100784:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100788:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  10078d:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  100792:	e9 ed fe ff ff       	jmp    100684 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
        switch (*format) {
  100797:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  10079b:	eb 04                	jmp    1007a1 <printer::vprintf(int, char const*, __va_list_tag*)+0x4d3>
  10079d:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            num = (uintptr_t) va_arg(val, void*);
  1007a1:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1007a5:	8b 01                	mov    (%rcx),%eax
  1007a7:	83 f8 2f             	cmp    $0x2f,%eax
  1007aa:	77 1f                	ja     1007cb <printer::vprintf(int, char const*, __va_list_tag*)+0x4fd>
  1007ac:	89 c2                	mov    %eax,%edx
  1007ae:	48 03 51 10          	add    0x10(%rcx),%rdx
  1007b2:	83 c0 08             	add    $0x8,%eax
  1007b5:	89 01                	mov    %eax,(%rcx)
  1007b7:	4c 8b 0a             	mov    (%rdx),%r9
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  1007ba:	81 4d a4 21 01 00 00 	orl    $0x121,-0x5c(%rbp)
            base = -16;
  1007c1:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  1007c6:	e9 e2 fe ff ff       	jmp    1006ad <printer::vprintf(int, char const*, __va_list_tag*)+0x3df>
            num = (uintptr_t) va_arg(val, void*);
  1007cb:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1007cf:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1007d3:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1007d7:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1007db:	eb da                	jmp    1007b7 <printer::vprintf(int, char const*, __va_list_tag*)+0x4e9>
        switch (*format) {
  1007dd:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  1007e1:	eb 04                	jmp    1007e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x519>
  1007e3:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            data = va_arg(val, char*);
  1007e7:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1007eb:	8b 07                	mov    (%rdi),%eax
  1007ed:	83 f8 2f             	cmp    $0x2f,%eax
  1007f0:	0f 87 74 01 00 00    	ja     10096a <printer::vprintf(int, char const*, __va_list_tag*)+0x69c>
  1007f6:	89 c2                	mov    %eax,%edx
  1007f8:	48 03 57 10          	add    0x10(%rdi),%rdx
  1007fc:	83 c0 08             	add    $0x8,%eax
  1007ff:	89 07                	mov    %eax,(%rdi)
  100801:	4c 8b 22             	mov    (%rdx),%r12
        unsigned long num = 0;
  100804:	41 b9 00 00 00 00    	mov    $0x0,%r9d
        if (flags & FLAG_NUMERIC) {
  10080a:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  10080d:	83 e0 20             	and    $0x20,%eax
  100810:	89 45 98             	mov    %eax,-0x68(%rbp)
  100813:	0f 85 2f 02 00 00    	jne    100a48 <printer::vprintf(int, char const*, __va_list_tag*)+0x77a>
            prefix = (base == -16 ? "0x" : "0X");
  100819:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
        const char* prefix = "";
  100820:	bb 96 0d 10 00       	mov    $0x100d96,%ebx
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  100825:	8b 4d a0             	mov    -0x60(%rbp),%ecx
  100828:	89 c8                	mov    %ecx,%eax
  10082a:	f7 d0                	not    %eax
  10082c:	c1 e8 1f             	shr    $0x1f,%eax
  10082f:	88 45 8c             	mov    %al,-0x74(%rbp)
  100832:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
  100836:	0f 85 f7 fe ff ff    	jne    100733 <printer::vprintf(int, char const*, __va_list_tag*)+0x465>
  10083c:	84 c0                	test   %al,%al
  10083e:	0f 84 ef fe ff ff    	je     100733 <printer::vprintf(int, char const*, __va_list_tag*)+0x465>
            datalen = strnlen(data, precision);
  100844:	48 63 f1             	movslq %ecx,%rsi
  100847:	4c 89 e7             	mov    %r12,%rdi
  10084a:	e8 74 f9 ff ff       	call   1001c3 <strnlen>
  10084f:	89 45 9c             	mov    %eax,-0x64(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  100852:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  100855:	83 e0 26             	and    $0x26,%eax
            zeros = 0;
  100858:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  10085f:	83 f8 22             	cmp    $0x22,%eax
  100862:	0f 84 46 02 00 00    	je     100aae <printer::vprintf(int, char const*, __va_list_tag*)+0x7e0>
        width -= datalen + zeros + strlen(prefix);
  100868:	48 89 df             	mov    %rbx,%rdi
  10086b:	e8 34 f9 ff ff       	call   1001a4 <strlen>
  100870:	8b 4d a0             	mov    -0x60(%rbp),%ecx
  100873:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  100876:	01 f9                	add    %edi,%ecx
  100878:	44 89 f2             	mov    %r14d,%edx
  10087b:	29 ca                	sub    %ecx,%edx
  10087d:	29 c2                	sub    %eax,%edx
  10087f:	41 89 d6             	mov    %edx,%r14d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100882:	f6 45 a4 04          	testb  $0x4,-0x5c(%rbp)
  100886:	75 32                	jne    1008ba <printer::vprintf(int, char const*, __va_list_tag*)+0x5ec>
  100888:	85 d2                	test   %edx,%edx
  10088a:	7e 2e                	jle    1008ba <printer::vprintf(int, char const*, __va_list_tag*)+0x5ec>
        width -= datalen + zeros + strlen(prefix);
  10088c:	89 55 a4             	mov    %edx,-0x5c(%rbp)
            putc(' ', color);
  10088f:	49 8b 07             	mov    (%r15),%rax
  100892:	44 89 ea             	mov    %r13d,%edx
  100895:	be 20 00 00 00       	mov    $0x20,%esi
  10089a:	4c 89 ff             	mov    %r15,%rdi
  10089d:	ff 10                	call   *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  10089f:	41 83 ee 01          	sub    $0x1,%r14d
  1008a3:	45 85 f6             	test   %r14d,%r14d
  1008a6:	7f e7                	jg     10088f <printer::vprintf(int, char const*, __va_list_tag*)+0x5c1>
  1008a8:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  1008ab:	85 d2                	test   %edx,%edx
  1008ad:	b8 01 00 00 00       	mov    $0x1,%eax
  1008b2:	0f 4f c2             	cmovg  %edx,%eax
  1008b5:	29 c2                	sub    %eax,%edx
  1008b7:	41 89 d6             	mov    %edx,%r14d
        for (; *prefix; ++prefix) {
  1008ba:	0f b6 03             	movzbl (%rbx),%eax
  1008bd:	84 c0                	test   %al,%al
  1008bf:	74 19                	je     1008da <printer::vprintf(int, char const*, __va_list_tag*)+0x60c>
            putc(*prefix, color);
  1008c1:	0f b6 f0             	movzbl %al,%esi
  1008c4:	49 8b 07             	mov    (%r15),%rax
  1008c7:	44 89 ea             	mov    %r13d,%edx
  1008ca:	4c 89 ff             	mov    %r15,%rdi
  1008cd:	ff 10                	call   *(%rax)
        for (; *prefix; ++prefix) {
  1008cf:	48 83 c3 01          	add    $0x1,%rbx
  1008d3:	0f b6 03             	movzbl (%rbx),%eax
  1008d6:	84 c0                	test   %al,%al
  1008d8:	75 e7                	jne    1008c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f3>
        for (; zeros > 0; --zeros) {
  1008da:	8b 5d a0             	mov    -0x60(%rbp),%ebx
  1008dd:	85 db                	test   %ebx,%ebx
  1008df:	7e 15                	jle    1008f6 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            putc('0', color);
  1008e1:	49 8b 07             	mov    (%r15),%rax
  1008e4:	44 89 ea             	mov    %r13d,%edx
  1008e7:	be 30 00 00 00       	mov    $0x30,%esi
  1008ec:	4c 89 ff             	mov    %r15,%rdi
  1008ef:	ff 10                	call   *(%rax)
        for (; zeros > 0; --zeros) {
  1008f1:	83 eb 01             	sub    $0x1,%ebx
  1008f4:	75 eb                	jne    1008e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
        for (; datalen > 0; ++data, --datalen) {
  1008f6:	8b 45 9c             	mov    -0x64(%rbp),%eax
  1008f9:	85 c0                	test   %eax,%eax
  1008fb:	7e 1e                	jle    10091b <printer::vprintf(int, char const*, __va_list_tag*)+0x64d>
  1008fd:	89 c3                	mov    %eax,%ebx
  1008ff:	4c 01 e3             	add    %r12,%rbx
            putc(*data, color);
  100902:	41 0f b6 34 24       	movzbl (%r12),%esi
  100907:	49 8b 07             	mov    (%r15),%rax
  10090a:	44 89 ea             	mov    %r13d,%edx
  10090d:	4c 89 ff             	mov    %r15,%rdi
  100910:	ff 10                	call   *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  100912:	49 83 c4 01          	add    $0x1,%r12
  100916:	49 39 dc             	cmp    %rbx,%r12
  100919:	75 e7                	jne    100902 <printer::vprintf(int, char const*, __va_list_tag*)+0x634>
        for (; width > 0; --width) {
  10091b:	45 85 f6             	test   %r14d,%r14d
  10091e:	7e 16                	jle    100936 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            putc(' ', color);
  100920:	49 8b 07             	mov    (%r15),%rax
  100923:	44 89 ea             	mov    %r13d,%edx
  100926:	be 20 00 00 00       	mov    $0x20,%esi
  10092b:	4c 89 ff             	mov    %r15,%rdi
  10092e:	ff 10                	call   *(%rax)
        for (; width > 0; --width) {
  100930:	41 83 ee 01          	sub    $0x1,%r14d
  100934:	75 ea                	jne    100920 <printer::vprintf(int, char const*, __va_list_tag*)+0x652>
    for (; *format; ++format) {
  100936:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  10093a:	4c 8d 60 01          	lea    0x1(%rax),%r12
  10093e:	0f b6 78 01          	movzbl 0x1(%rax),%edi
  100942:	40 84 ff             	test   %dil,%dil
  100945:	0f 84 b1 f9 ff ff    	je     1002fc <printer::vprintf(int, char const*, __va_list_tag*)+0x2e>
        if (*format != '%') {
  10094b:	40 80 ff 25          	cmp    $0x25,%dil
  10094f:	0f 84 b6 f9 ff ff    	je     10030b <printer::vprintf(int, char const*, __va_list_tag*)+0x3d>
            putc(*format, color);
  100955:	40 0f b6 f7          	movzbl %dil,%esi
  100959:	49 8b 07             	mov    (%r15),%rax
  10095c:	44 89 ea             	mov    %r13d,%edx
  10095f:	4c 89 ff             	mov    %r15,%rdi
  100962:	ff 10                	call   *(%rax)
            continue;
  100964:	4c 89 65 a8          	mov    %r12,-0x58(%rbp)
  100968:	eb cc                	jmp    100936 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            data = va_arg(val, char*);
  10096a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10096e:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100972:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100976:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10097a:	e9 82 fe ff ff       	jmp    100801 <printer::vprintf(int, char const*, __va_list_tag*)+0x533>
        switch (*format) {
  10097f:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100983:	eb 04                	jmp    100989 <printer::vprintf(int, char const*, __va_list_tag*)+0x6bb>
  100985:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            color = va_arg(val, int);
  100989:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10098d:	8b 01                	mov    (%rcx),%eax
  10098f:	83 f8 2f             	cmp    $0x2f,%eax
  100992:	77 10                	ja     1009a4 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
  100994:	89 c2                	mov    %eax,%edx
  100996:	48 03 51 10          	add    0x10(%rcx),%rdx
  10099a:	83 c0 08             	add    $0x8,%eax
  10099d:	89 01                	mov    %eax,(%rcx)
  10099f:	44 8b 2a             	mov    (%rdx),%r13d
            continue;
  1009a2:	eb 92                	jmp    100936 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            color = va_arg(val, int);
  1009a4:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1009a8:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1009ac:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1009b0:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1009b4:	eb e9                	jmp    10099f <printer::vprintf(int, char const*, __va_list_tag*)+0x6d1>
        switch (*format) {
  1009b6:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  1009ba:	eb 04                	jmp    1009c0 <printer::vprintf(int, char const*, __va_list_tag*)+0x6f2>
  1009bc:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            numbuf[0] = va_arg(val, int);
  1009c0:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1009c4:	8b 07                	mov    (%rdi),%eax
  1009c6:	83 f8 2f             	cmp    $0x2f,%eax
  1009c9:	77 23                	ja     1009ee <printer::vprintf(int, char const*, __va_list_tag*)+0x720>
  1009cb:	89 c2                	mov    %eax,%edx
  1009cd:	48 03 57 10          	add    0x10(%rdi),%rdx
  1009d1:	83 c0 08             	add    $0x8,%eax
  1009d4:	89 07                	mov    %eax,(%rdi)
  1009d6:	8b 02                	mov    (%rdx),%eax
  1009d8:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1009db:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1009df:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
  1009e3:	41 b9 00 00 00 00    	mov    $0x0,%r9d
            break;
  1009e9:	e9 1c fe ff ff       	jmp    10080a <printer::vprintf(int, char const*, __va_list_tag*)+0x53c>
            numbuf[0] = va_arg(val, int);
  1009ee:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
  1009f2:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  1009f6:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1009fa:	48 89 43 08          	mov    %rax,0x8(%rbx)
  1009fe:	eb d6                	jmp    1009d6 <printer::vprintf(int, char const*, __va_list_tag*)+0x708>
        switch (*format) {
  100a00:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            numbuf[0] = (*format ? *format : '%');
  100a04:	84 c0                	test   %al,%al
  100a06:	0f 85 ca 00 00 00    	jne    100ad6 <printer::vprintf(int, char const*, __va_list_tag*)+0x808>
                format--;
  100a0c:	48 83 6d a8 01       	subq   $0x1,-0x58(%rbp)
  100a11:	89 f8                	mov    %edi,%eax
            numbuf[0] = (*format ? *format : '%');
  100a13:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100a16:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
        if (flags & FLAG_NUMERIC) {
  100a1a:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  100a1d:	83 e0 20             	and    $0x20,%eax
  100a20:	89 45 98             	mov    %eax,-0x68(%rbp)
  100a23:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
  100a27:	0f 84 ec fd ff ff    	je     100819 <printer::vprintf(int, char const*, __va_list_tag*)+0x54b>
  100a2d:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  100a33:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    const char* digits = upper_digits;
  100a39:	bf 40 15 10 00       	mov    $0x101540,%edi
        if (flags & FLAG_NUMERIC) {
  100a3e:	be 0a 00 00 00       	mov    $0xa,%esi
  100a43:	e9 79 fc ff ff       	jmp    1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
  100a48:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    const char* digits = upper_digits;
  100a4e:	bf 40 15 10 00       	mov    $0x101540,%edi
        if (flags & FLAG_NUMERIC) {
  100a53:	be 0a 00 00 00       	mov    $0xa,%esi
  100a58:	e9 64 fc ff ff       	jmp    1006c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100a5d:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100a60:	89 c8                	mov    %ecx,%eax
  100a62:	f7 d0                	not    %eax
  100a64:	a8 21                	test   $0x21,%al
  100a66:	75 3c                	jne    100aa4 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d6>
                   && (base == 16 || base == -16)
  100a68:	41 8d 40 10          	lea    0x10(%r8),%eax
        const char* prefix = "";
  100a6c:	bb 96 0d 10 00       	mov    $0x100d96,%ebx
                   && (base == 16 || base == -16)
  100a71:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  100a76:	0f 85 a9 fd ff ff    	jne    100825 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
                   && (num || (flags & FLAG_ALT2))) {
  100a7c:	4d 85 c9             	test   %r9,%r9
  100a7f:	75 09                	jne    100a8a <printer::vprintf(int, char const*, __va_list_tag*)+0x7bc>
  100a81:	f6 c5 01             	test   $0x1,%ch
  100a84:	0f 84 9b fd ff ff    	je     100825 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
            prefix = (base == -16 ? "0x" : "0X");
  100a8a:	41 83 f8 f0          	cmp    $0xfffffff0,%r8d
  100a8e:	ba 92 0d 10 00       	mov    $0x100d92,%edx
  100a93:	b8 8f 0d 10 00       	mov    $0x100d8f,%eax
  100a98:	48 0f 45 c2          	cmovne %rdx,%rax
  100a9c:	48 89 c3             	mov    %rax,%rbx
  100a9f:	e9 81 fd ff ff       	jmp    100825 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
        const char* prefix = "";
  100aa4:	bb 96 0d 10 00       	mov    $0x100d96,%ebx
  100aa9:	e9 77 fd ff ff       	jmp    100825 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
                   && datalen + (int) strlen(prefix) < width) {
  100aae:	48 89 df             	mov    %rbx,%rdi
  100ab1:	e8 ee f6 ff ff       	call   1001a4 <strlen>
  100ab6:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  100ab9:	8d 14 07             	lea    (%rdi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100abc:	44 89 f1             	mov    %r14d,%ecx
  100abf:	29 f9                	sub    %edi,%ecx
  100ac1:	29 c1                	sub    %eax,%ecx
  100ac3:	44 39 f2             	cmp    %r14d,%edx
  100ac6:	b8 00 00 00 00       	mov    $0x0,%eax
  100acb:	0f 4c c1             	cmovl  %ecx,%eax
  100ace:	89 45 a0             	mov    %eax,-0x60(%rbp)
  100ad1:	e9 92 fd ff ff       	jmp    100868 <printer::vprintf(int, char const*, __va_list_tag*)+0x59a>
  100ad6:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
                prefix = "+";
  100ada:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
  100ade:	e9 30 ff ff ff       	jmp    100a13 <printer::vprintf(int, char const*, __va_list_tag*)+0x745>
  100ae3:	90                   	nop

0000000000100ae4 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100ae4:	f3 0f 1e fa          	endbr64
    : cell_(console), scroll_(scroll) {
  100ae8:	48 c7 07 68 15 10 00 	movq   $0x101568,(%rdi)
  100aef:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100af6:	00 
  100af7:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100afa:	85 f6                	test   %esi,%esi
  100afc:	78 18                	js     100b16 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100afe:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100b04:	7f 0f                	jg     100b15 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100b06:	48 63 f6             	movslq %esi,%rsi
  100b09:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100b10:	00 
  100b11:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100b15:	c3                   	ret
        cell_ += cursorpos;
  100b16:	8b 05 e0 84 fb ff    	mov    -0x47b20(%rip),%eax        # b8ffc <cursorpos>
  100b1c:	48 98                	cltq
  100b1e:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100b25:	00 
  100b26:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100b2a:	c3                   	ret
  100b2b:	90                   	nop

0000000000100b2c <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100b2c:	f3 0f 1e fa          	endbr64
  100b30:	55                   	push   %rbp
  100b31:	48 89 e5             	mov    %rsp,%rbp
  100b34:	53                   	push   %rbx
  100b35:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100b39:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100b40:	00 
  100b41:	72 18                	jb     100b5b <console_printer::scroll()+0x2f>
  100b43:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100b46:	b8 00 80 0b 00       	mov    $0xb8000,%eax
  100b4b:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100b4f:	75 1e                	jne    100b6f <console_printer::scroll()+0x43>
        memmove(console, console + CONSOLE_COLUMNS,
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
  100b51:	48 89 43 08          	mov    %rax,0x8(%rbx)
    } else {
        cell_ = console;
    }
}
  100b55:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  100b59:	c9                   	leave
  100b5a:	c3                   	ret
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100b5b:	ba c0 0d 10 00       	mov    $0x100dc0,%edx
  100b60:	be 1f 02 00 00       	mov    $0x21f,%esi
  100b65:	bf 88 0d 10 00       	mov    $0x100d88,%edi
  100b6a:	e8 a4 01 00 00       	call   100d13 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100b6f:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100b74:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100b79:	48 89 c7             	mov    %rax,%rdi
  100b7c:	e8 b7 f5 ff ff       	call   100138 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100b81:	ba a0 00 00 00       	mov    $0xa0,%edx
  100b86:	be 00 00 00 00       	mov    $0x0,%esi
  100b8b:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100b90:	e8 f0 f5 ff ff       	call   100185 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100b95:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100b99:	48 2d a0 00 00 00    	sub    $0xa0,%rax
  100b9f:	eb b0                	jmp    100b51 <console_printer::scroll()+0x25>
  100ba1:	90                   	nop

0000000000100ba2 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100ba2:	f3 0f 1e fa          	endbr64
  100ba6:	55                   	push   %rbp
  100ba7:	48 89 e5             	mov    %rsp,%rbp
  100baa:	41 55                	push   %r13
  100bac:	41 54                	push   %r12
  100bae:	53                   	push   %rbx
  100baf:	48 83 ec 08          	sub    $0x8,%rsp
  100bb3:	48 89 fb             	mov    %rdi,%rbx
  100bb6:	41 89 f5             	mov    %esi,%r13d
  100bb9:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100bbc:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100bc0:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100bc6:	72 14                	jb     100bdc <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100bc8:	48 89 df             	mov    %rbx,%rdi
  100bcb:	e8 5c ff ff ff       	call   100b2c <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100bd0:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100bd4:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100bda:	73 ec                	jae    100bc8 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100bdc:	41 80 fd 0a          	cmp    $0xa,%r13b
  100be0:	74 1e                	je     100c00 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100be2:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100be6:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100bea:	45 0f b6 ed          	movzbl %r13b,%r13d
  100bee:	45 09 e5             	or     %r12d,%r13d
  100bf1:	66 44 89 28          	mov    %r13w,(%rax)
    }
}
  100bf5:	48 83 c4 08          	add    $0x8,%rsp
  100bf9:	5b                   	pop    %rbx
  100bfa:	41 5c                	pop    %r12
  100bfc:	41 5d                	pop    %r13
  100bfe:	5d                   	pop    %rbp
  100bff:	c3                   	ret
        int pos = (cell_ - console) % 80;
  100c00:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c06:	48 89 c1             	mov    %rax,%rcx
  100c09:	48 89 c6             	mov    %rax,%rsi
  100c0c:	48 d1 fe             	sar    $1,%rsi
  100c0f:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100c16:	66 66 66 
  100c19:	48 89 f0             	mov    %rsi,%rax
  100c1c:	48 f7 ea             	imul   %rdx
  100c1f:	48 c1 fa 05          	sar    $0x5,%rdx
  100c23:	48 89 c8             	mov    %rcx,%rax
  100c26:	48 c1 f8 3f          	sar    $0x3f,%rax
  100c2a:	48 29 c2             	sub    %rax,%rdx
  100c2d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  100c31:	48 c1 e2 04          	shl    $0x4,%rdx
  100c35:	89 f0                	mov    %esi,%eax
  100c37:	29 d0                	sub    %edx,%eax
            *cell_++ = ' ' | color;
  100c39:	41 83 cc 20          	or     $0x20,%r12d
  100c3d:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  100c41:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
  100c45:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  100c49:	66 44 89 22          	mov    %r12w,(%rdx)
            ++pos;
  100c4d:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100c50:	83 f8 50             	cmp    $0x50,%eax
  100c53:	75 e8                	jne    100c3d <console_printer::putc(unsigned char, int)+0x9b>
  100c55:	eb 9e                	jmp    100bf5 <console_printer::putc(unsigned char, int)+0x53>
  100c57:	90                   	nop

0000000000100c58 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100c58:	f3 0f 1e fa          	endbr64
    cursorpos = cell_ - console;
  100c5c:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100c60:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c66:	48 d1 f8             	sar    $1,%rax
  100c69:	89 05 8d 83 fb ff    	mov    %eax,-0x47c73(%rip)        # b8ffc <cursorpos>
}
  100c6f:	c3                   	ret

0000000000100c70 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100c70:	f3 0f 1e fa          	endbr64
  100c74:	55                   	push   %rbp
  100c75:	48 89 e5             	mov    %rsp,%rbp
  100c78:	41 56                	push   %r14
  100c7a:	41 55                	push   %r13
  100c7c:	41 54                	push   %r12
  100c7e:	53                   	push   %rbx
  100c7f:	48 83 ec 20          	sub    $0x20,%rsp
  100c83:	89 fb                	mov    %edi,%ebx
  100c85:	41 89 f4             	mov    %esi,%r12d
  100c88:	49 89 d5             	mov    %rdx,%r13
  100c8b:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100c8e:	89 fa                	mov    %edi,%edx
  100c90:	c1 ea 1f             	shr    $0x1f,%edx
  100c93:	89 fe                	mov    %edi,%esi
  100c95:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c99:	e8 46 fe ff ff       	call   100ae4 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100c9e:	4c 89 f1             	mov    %r14,%rcx
  100ca1:	4c 89 ea             	mov    %r13,%rdx
  100ca4:	44 89 e6             	mov    %r12d,%esi
  100ca7:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100cab:	e8 1e f6 ff ff       	call   1002ce <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100cb0:	85 db                	test   %ebx,%ebx
  100cb2:	78 1a                	js     100cce <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100cb4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100cb8:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100cbe:	48 d1 f8             	sar    $1,%rax
}
  100cc1:	48 83 c4 20          	add    $0x20,%rsp
  100cc5:	5b                   	pop    %rbx
  100cc6:	41 5c                	pop    %r12
  100cc8:	41 5d                	pop    %r13
  100cca:	41 5e                	pop    %r14
  100ccc:	5d                   	pop    %rbp
  100ccd:	c3                   	ret
        cp.move_cursor();
  100cce:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100cd2:	e8 81 ff ff ff       	call   100c58 <console_printer::move_cursor()>
  100cd7:	eb db                	jmp    100cb4 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100cd9 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100cd9:	f3 0f 1e fa          	endbr64
  100cdd:	55                   	push   %rbp
  100cde:	48 89 e5             	mov    %rsp,%rbp
  100ce1:	48 83 ec 50          	sub    $0x50,%rsp
  100ce5:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100ce9:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100ced:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100cf1:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100cf8:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100cfc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100d00:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100d04:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100d08:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100d0c:	e8 5f ff ff ff       	call   100c70 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100d11:	c9                   	leave
  100d12:	c3                   	ret

0000000000100d13 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  100d13:	f3 0f 1e fa          	endbr64
  100d17:	55                   	push   %rbp
  100d18:	48 89 e5             	mov    %rsp,%rbp
  100d1b:	48 89 f9             	mov    %rdi,%rcx
  100d1e:	41 89 f0             	mov    %esi,%r8d
  100d21:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  100d24:	ba 20 0e 10 00       	mov    $0x100e20,%edx
  100d29:	be 00 c0 00 00       	mov    $0xc000,%esi
  100d2e:	bf 30 07 00 00       	mov    $0x730,%edi
  100d33:	b0 00                	mov    $0x0,%al
  100d35:	e8 9f ff ff ff       	call   100cd9 <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100d3a:	b8 03 00 00 00       	mov    $0x3,%eax
    asm volatile ("syscall"
  100d3f:	bf 00 00 00 00       	mov    $0x0,%edi
  100d44:	0f 05                	syscall
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100d46:	eb fe                	jmp    100d46 <assert_fail(char const*, int, char const*)+0x33>
