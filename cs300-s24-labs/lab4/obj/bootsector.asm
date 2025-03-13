
obj/bootsector.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000007c00 <boot_start>:
    7c00:	fa                   	cli
    7c01:	fc                   	cld
    7c02:	bc                   	.byte 0xbc
    7c03:	00                   	.byte 0
    7c04:	7c                   	.byte 0x7c

0000000000007c05 <notify_bios64>:
    7c05:	b8 00 ec ba 02       	mov    $0x2baec00,%eax
    7c0a:	00 cd                	add    %cl,%ch
    7c0c:	15                   	.byte 0x15

0000000000007c0d <init_boot_pagetable>:
    7c0d:	66 bf 00 10          	mov    $0x1000,%di
    7c11:	00 00                	add    %al,(%rax)
    7c13:	66 31 c0             	xor    %ax,%ax
    7c16:	66 b9 00 08          	mov    $0x800,%cx
    7c1a:	00 00                	add    %al,(%rax)
    7c1c:	66 f3 ab             	rep stos %ax,%es:(%rdi)
    7c1f:	66 bf 00 10          	mov    $0x1000,%di
    7c23:	00 00                	add    %al,(%rax)
    7c25:	67 66 8d 8f 03 10 00 	lea    0x1003(%edi),%cx
    7c2c:	00 
    7c2d:	67 66 89 0f          	mov    %cx,(%edi)
    7c31:	67 66 c7 41 fd 83 00 	movw   $0x83,-0x3(%ecx)
	...

0000000000007c3a <real_to_prot>:
    7c3a:	0f 20 e0             	mov    %cr4,%rax
    7c3d:	66 83 c8 30          	or     $0x30,%ax
    7c41:	0f 22 e0             	mov    %rax,%cr4
    7c44:	0f 22 df             	mov    %rdi,%cr3
    7c47:	66 b9 80 00          	mov    $0x80,%cx
    7c4b:	00 c0                	add    %al,%al
    7c4d:	0f 32                	rdmsr
    7c4f:	66 0d 01 09          	or     $0x901,%ax
    7c53:	00 00                	add    %al,(%rax)
    7c55:	0f 30                	wrmsr
    7c57:	0f 20 c0             	mov    %cr0,%rax
    7c5a:	66 0d 01 00          	or     $0x1,%ax
    7c5e:	01 80 0f 22 c0 0f    	add    %eax,0xfc0220f(%rax)
    7c64:	01 16                	add    %edx,(%rsi)
    7c66:	86 7c ea 5b          	xchg   %bh,0x5b(%rdx,%rbp,8)
    7c6a:	7d 08                	jge    7c74 <gdt+0x4>
    7c6c:	00 0f                	add    %cl,(%rdi)
    7c6e:	1f                   	(bad)
	...

0000000000007c70 <gdt>:
	...
    7c7c:	00                   	.byte 0
    7c7d:	9a                   	(bad)
    7c7e:	20 00                	and    %al,(%rax)

0000000000007c80 <gdtdesc>:
    7c80:	00 00                	add    %al,(%rax)
    7c82:	00 00                	add    %al,(%rax)
    7c84:	00 00                	add    %al,(%rax)
    7c86:	0f 00                	(bad)
    7c88:	70 7c                	jo     7d06 <boot_readseg+0x76>
    7c8a:	00 00                	add    %al,(%rax)
    7c8c:	00 00                	add    %al,(%rax)
	...

0000000000007c90 <boot_readseg>:
//    Load an ELF segment at virtual address `dst` from the IDE disk's sector
//    `src_sect`. Copies `filesz` bytes into memory at `dst` from sectors
//    `src_sect` and up, then clears memory in the range
//    `[dst+filesz, dst+memsz)`.
static void boot_readseg(uintptr_t ptr, uint32_t src_sect,
                         size_t filesz, size_t memsz) {
    7c90:	41 89 f0             	mov    %esi,%r8d
    uintptr_t end_ptr = ptr + filesz;
    memsz += ptr;

    // round down to sector boundary
    ptr &= ~(SECTORSIZE - 1);
    7c93:	48 89 fe             	mov    %rdi,%rsi
                         size_t filesz, size_t memsz) {
    7c96:	41 57                	push   %r15
    uintptr_t end_ptr = ptr + filesz;
    7c98:	4c 8d 0c 17          	lea    (%rdi,%rdx,1),%r9
                         size_t filesz, size_t memsz) {
    7c9c:	41 56                	push   %r14
    memsz += ptr;
    7c9e:	4c 8d 14 0f          	lea    (%rdi,%rcx,1),%r10
    ptr &= ~(SECTORSIZE - 1);
    7ca2:	48 81 e6 00 fe ff ff 	and    $0xfffffffffffffe00,%rsi
                 : "d" (port)
                 : "cc");
}

__always_inline void outb(int port, uint8_t data) {
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
    7ca9:	41 b7 20             	mov    $0x20,%r15b
                         size_t filesz, size_t memsz) {
    7cac:	41 55                	push   %r13
    7cae:	41 be f6 01 00 00    	mov    $0x1f6,%r14d
    7cb4:	41 bd f5 01 00 00    	mov    $0x1f5,%r13d
    asm volatile("cld; rep; insl"
    7cba:	41 bb 80 00 00 00    	mov    $0x80,%r11d
    7cc0:	41 54                	push   %r12
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
    7cc2:	41 bc f4 01 00 00    	mov    $0x1f4,%r12d
    7cc8:	55                   	push   %rbp
    7cc9:	bd f3 01 00 00       	mov    $0x1f3,%ebp
    7cce:	53                   	push   %rbx
    7ccf:	bb f2 01 00 00       	mov    $0x1f2,%ebx

    // read sectors
    for (; ptr < end_ptr; ptr += SECTORSIZE, ++src_sect) {
    7cd4:	4c 39 ce             	cmp    %r9,%rsi
    7cd7:	73 69                	jae    7d42 <boot_readseg+0xb2>
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
    7cd9:	ba f7 01 00 00       	mov    $0x1f7,%edx
    7cde:	ec                   	in     (%dx),%al
// boot_waitdisk
//    Wait for the disk to be ready.
static void boot_waitdisk() {
    // Wait until the ATA status register says ready (0x40 is on)
    // & not busy (0x80 is off)
    while ((inb(0x1F7) & 0xC0) != 0x40) {
    7cdf:	83 e0 c0             	and    $0xffffffc0,%eax
    7ce2:	3c 40                	cmp    $0x40,%al
    7ce4:	75 f3                	jne    7cd9 <boot_readseg+0x49>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
    7ce6:	b0 01                	mov    $0x1,%al
    7ce8:	89 da                	mov    %ebx,%edx
    7cea:	ee                   	out    %al,(%dx)
    7ceb:	44 89 c0             	mov    %r8d,%eax
    7cee:	89 ea                	mov    %ebp,%edx
    7cf0:	ee                   	out    %al,(%dx)
static void boot_readsect(uintptr_t dst, uint32_t src_sect) {
    // programmed I/O for "read sector"
    boot_waitdisk();
    outb(0x1F2, 1);             // send `count = 1` as an ATA argument
    outb(0x1F3, src_sect);      // send `src_sect`, the sector number
    outb(0x1F4, src_sect >> 8);
    7cf1:	44 89 c0             	mov    %r8d,%eax
    7cf4:	44 89 e2             	mov    %r12d,%edx
    7cf7:	c1 e8 08             	shr    $0x8,%eax
    7cfa:	ee                   	out    %al,(%dx)
    outb(0x1F5, src_sect >> 16);
    7cfb:	44 89 c0             	mov    %r8d,%eax
    7cfe:	44 89 ea             	mov    %r13d,%edx
    7d01:	c1 e8 10             	shr    $0x10,%eax
    7d04:	ee                   	out    %al,(%dx)
    outb(0x1F6, (src_sect >> 24) | 0xE0);
    7d05:	44 89 c0             	mov    %r8d,%eax
    7d08:	44 89 f2             	mov    %r14d,%edx
    7d0b:	c1 e8 18             	shr    $0x18,%eax
    7d0e:	83 c8 e0             	or     $0xffffffe0,%eax
    7d11:	ee                   	out    %al,(%dx)
    7d12:	ba f7 01 00 00       	mov    $0x1f7,%edx
    7d17:	44 89 f8             	mov    %r15d,%eax
    7d1a:	ee                   	out    %al,(%dx)
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
    7d1b:	ba f7 01 00 00       	mov    $0x1f7,%edx
    7d20:	ec                   	in     (%dx),%al
    while ((inb(0x1F7) & 0xC0) != 0x40) {
    7d21:	83 e0 c0             	and    $0xffffffc0,%eax
    7d24:	3c 40                	cmp    $0x40,%al
    7d26:	75 f3                	jne    7d1b <boot_readseg+0x8b>
    asm volatile("cld; rep; insl"
    7d28:	48 89 f7             	mov    %rsi,%rdi
    7d2b:	44 89 d9             	mov    %r11d,%ecx
    7d2e:	ba f0 01 00 00       	mov    $0x1f0,%edx
    7d33:	fc                   	cld
    7d34:	f3 6d                	rep insl (%dx),%es:(%rdi)
    for (; ptr < end_ptr; ptr += SECTORSIZE, ++src_sect) {
    7d36:	48 81 c6 00 02 00 00 	add    $0x200,%rsi
    7d3d:	41 ff c0             	inc    %r8d
    7d40:	eb 92                	jmp    7cd4 <boot_readseg+0x44>
    for (; end_ptr < memsz; ++end_ptr) {
    7d42:	4d 39 d1             	cmp    %r10,%r9
    7d45:	73 09                	jae    7d50 <boot_readseg+0xc0>
        *(uint8_t*) end_ptr = 0;
    7d47:	41 c6 01 00          	movb   $0x0,(%r9)
    for (; end_ptr < memsz; ++end_ptr) {
    7d4b:	49 ff c1             	inc    %r9
    7d4e:	eb f2                	jmp    7d42 <boot_readseg+0xb2>
}
    7d50:	5b                   	pop    %rbx
    7d51:	5d                   	pop    %rbp
    7d52:	41 5c                	pop    %r12
    7d54:	41 5d                	pop    %r13
    7d56:	41 5e                	pop    %r14
    7d58:	41 5f                	pop    %r15
    7d5a:	c3                   	ret

0000000000007d5b <boot>:
[[noreturn]] void boot() {
    7d5b:	f3 0f 1e fa          	endbr64
    7d5f:	55                   	push   %rbp
    boot_readseg((uintptr_t) ELFHDR, KERNEL_START_SECTOR,
    7d60:	b9 00 10 00 00       	mov    $0x1000,%ecx
    7d65:	ba 00 10 00 00       	mov    $0x1000,%edx
    7d6a:	be 01 00 00 00       	mov    $0x1,%esi
[[noreturn]] void boot() {
    7d6f:	53                   	push   %rbx
    boot_readseg((uintptr_t) ELFHDR, KERNEL_START_SECTOR,
    7d70:	bf 00 30 00 00       	mov    $0x3000,%edi
[[noreturn]] void boot() {
    7d75:	50                   	push   %rax
    boot_readseg((uintptr_t) ELFHDR, KERNEL_START_SECTOR,
    7d76:	e8 15 ff ff ff       	call   7c90 <boot_readseg>
    elf_program* eph = ph + ELFHDR->e_phnum;
    7d7b:	0f b7 2c 25 38 30 00 	movzwl 0x3038,%ebp
    7d82:	00 
    elf_program* ph = (elf_program*) ((uint8_t*) ELFHDR + ELFHDR->e_phoff);
    7d83:	48 8b 04 25 20 30 00 	mov    0x3020,%rax
    7d8a:	00 
    elf_program* eph = ph + ELFHDR->e_phnum;
    7d8b:	48 6b ed 38          	imul   $0x38,%rbp,%rbp
    elf_program* ph = (elf_program*) ((uint8_t*) ELFHDR + ELFHDR->e_phoff);
    7d8f:	48 8d 98 00 30 00 00 	lea    0x3000(%rax),%rbx
    elf_program* eph = ph + ELFHDR->e_phnum;
    7d96:	48 01 dd             	add    %rbx,%rbp
    for (; ph < eph; ++ph) {
    7d99:	48 39 eb             	cmp    %rbp,%rbx
    7d9c:	73 21                	jae    7dbf <boot+0x64>
                     KERNEL_START_SECTOR + ph->p_offset / SECTORSIZE,
    7d9e:	48 8b 73 08          	mov    0x8(%rbx),%rsi
        boot_readseg(ph->p_va,
    7da2:	48 8b 4b 28          	mov    0x28(%rbx),%rcx
    for (; ph < eph; ++ph) {
    7da6:	48 83 c3 38          	add    $0x38,%rbx
        boot_readseg(ph->p_va,
    7daa:	48 8b 53 e8          	mov    -0x18(%rbx),%rdx
    7dae:	48 8b 7b d8          	mov    -0x28(%rbx),%rdi
                     KERNEL_START_SECTOR + ph->p_offset / SECTORSIZE,
    7db2:	48 c1 ee 09          	shr    $0x9,%rsi
        boot_readseg(ph->p_va,
    7db6:	ff c6                	inc    %esi
    7db8:	e8 d3 fe ff ff       	call   7c90 <boot_readseg>
    for (; ph < eph; ++ph) {
    7dbd:	eb da                	jmp    7d99 <boot+0x3e>
    kernel_entry();
    7dbf:	ff 14 25 18 30 00 00 	call   *0x3018
