.code16
start:
movw $0x7654, %ax
movw %ax, (%bx)
movw $0xf100, %dx
movw $0x1234, %ax
outw %ax, %dx
movw (0), %cx
movw %cx, %ax
outw %ax, %dx
hlt

.org 65520
jmp start

.org 65535
.byte 0xff
