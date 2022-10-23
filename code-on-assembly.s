    .file   "code-on-c.c"
    .intel_syntax noprefix
    .text
    .section    .rodata
.LC0:
    .string "%d"
    .text
    .globl  zapolnimMas
    .type   zapolnimMas, @function
zapolnimMas:
    endbr64
    push    rbp
    mov rbp, rsp
    sub rsp, 32
    mov QWORD PTR -24[rbp], rdi		# int* a - rdi
    mov DWORD PTR -28[rbp], esi		# int n - esi
    mov DWORD PTR -4[rbp], 0		# int i = 0 
    jmp .L2
.L3:
    mov eax, DWORD PTR -4[rbp]
    cdqe
    lea rdx, 0[0+rax*4]
    mov rax, QWORD PTR -24[rbp]
    add rax, rdx
    mov rsi, rax
    lea rax, .LC0[rip]
    mov rdi, rax
    mov eax, 0
    call    __isoc99_scanf@PLT
    add DWORD PTR -4[rbp], 1
.L2:
    mov eax, DWORD PTR -4[rbp]
    cmp eax, DWORD PTR -28[rbp]
    jl  .L3
    nop
    nop
    leave
    ret
    .size   zapolnimMas, .-zapolnimMas
    .globl  vvod
    .type   vvod, @function
vvod:
    endbr64
    push    rbp
    mov rbp, rsp
    sub rsp, 16
    lea rax, -4[rbp]
    mov rsi, rax
    lea rax, .LC0[rip]
    mov rdi, rax
    mov eax, 0
    call    __isoc99_scanf@PLT		# вызов функции scanf
    mov eax, DWORD PTR -4[rbp]		# возврат переменной q
    leave
    ret
    .size   vvod, .-vvod
    .globl  posElem
    .type   posElem, @function
posElem:
    endbr64
    push    rbp
    mov rbp, rsp
    mov QWORD PTR -24[rbp], rdi		# int* a - rdi
    mov DWORD PTR -28[rbp], esi		# int n - esi
    mov rax, QWORD PTR -24[rbp]
    mov eax, DWORD PTR [rax]
    mov DWORD PTR -4[rbp], eax		# int minim (takes value from eax) - eax
    mov DWORD PTR -8[rbp], 0		# int pos = 0
    mov DWORD PTR -12[rbp], 1		# int i = 1
    jmp .L7
.L9:
    mov eax, DWORD PTR -12[rbp]
    cdqe
    lea rdx, 0[0+rax*4]
    mov rax, QWORD PTR -24[rbp]
    add rax, rdx
    mov eax, DWORD PTR [rax]
    cmp DWORD PTR -4[rbp], eax
    jle .L8
    mov eax, DWORD PTR -12[rbp]
    cdqe
    lea rdx, 0[0+rax*4]
    mov rax, QWORD PTR -24[rbp]
    add rax, rdx
    mov eax, DWORD PTR [rax]
    mov DWORD PTR -4[rbp], eax
    mov eax, DWORD PTR -12[rbp]
    mov DWORD PTR -8[rbp], eax
.L8:
    add DWORD PTR -12[rbp], 1
.L7:
    mov eax, DWORD PTR -12[rbp]
    cmp eax, DWORD PTR -28[rbp]
    jl  .L9
    mov eax, DWORD PTR -8[rbp]
    pop rbp
    ret
    .size   posElem, .-posElem
    .globl  zapolnimB
    .type   zapolnimB, @function
zapolnimB:
    endbr64
    push    rbp
    mov rbp, rsp
    mov QWORD PTR -24[rbp], rdi		# const int* a - переданный параметр (rdi)
    mov QWORD PTR -32[rbp], rsi		# int* b - переданный параметр (rsi)
    mov DWORD PTR -36[rbp], edx		# int pos - переданный параметр (edx)
    mov DWORD PTR -40[rbp], ecx		# int n - переданный параметр (ecx)
    mov DWORD PTR -4[rbp], 0		# int i - параметр, инициализированный в функции
    jmp .L12				# переход к L12
.L16:
    cmp DWORD PTR -4[rbp], 0
    jne .L13
    mov eax, DWORD PTR -36[rbp]
    cdqe
    lea rdx, 0[0+rax*4]
    mov rax, QWORD PTR -24[rbp]
    add rax, rdx
    mov edx, DWORD PTR -4[rbp]
    movsx   rdx, edx
    lea rcx, 0[0+rdx*4]
    mov rdx, QWORD PTR -32[rbp]
    add rdx, rcx
    mov eax, DWORD PTR [rax]
    mov DWORD PTR [rdx], eax
    jmp .L14
.L13:
    mov eax, DWORD PTR -4[rbp]
    cmp eax, DWORD PTR -36[rbp]
    jne .L15
    mov eax, DWORD PTR -4[rbp]
    cdqe
    lea rdx, 0[0+rax*4]
    mov rax, QWORD PTR -32[rbp]
    add rdx, rax
    mov rax, QWORD PTR -24[rbp]
    mov eax, DWORD PTR [rax]
    mov DWORD PTR [rdx], eax
    jmp .L14
.L15:
    mov eax, DWORD PTR -4[rbp]
    cdqe
    lea rdx, 0[0+rax*4]
    mov rax, QWORD PTR -24[rbp]
    add rax, rdx
    mov edx, DWORD PTR -4[rbp]
    movsx   rdx, edx
    lea rcx, 0[0+rdx*4]
    mov rdx, QWORD PTR -32[rbp]
    add rdx, rcx
    mov eax, DWORD PTR [rax]
    mov DWORD PTR [rdx], eax
.L14:
    add DWORD PTR -4[rbp], 1
.L12:
    mov eax, DWORD PTR -4[rbp]
    cmp eax, DWORD PTR -40[rbp]
    jl  .L16
    nop
    nop
    pop rbp		# отчистка стека
    ret
    .size   zapolnimB, .-zapolnimB
    .section    .rodata
.LC1:
    .string "%d "
    .text
    .globl  print
    .type   print, @function
print:
    endbr64
    push    rbp
    mov rbp, rsp
    sub rsp, 32
    mov QWORD PTR -24[rbp], rdi		# const int* a - в rdi
    mov DWORD PTR -28[rbp], esi		# int n - в esi
    mov DWORD PTR -4[rbp], 0		# int i = 0
    jmp .L18
.L19:
    mov eax, DWORD PTR -4[rbp]
    cdqe
    lea rdx, 0[0+rax*4]
    mov rax, QWORD PTR -24[rbp]
    add rax, rdx
    mov eax, DWORD PTR [rax]
    mov esi, eax
    lea rax, .LC1[rip]
    mov rdi, rax
    mov eax, 0
    call    printf@PLT
    add DWORD PTR -4[rbp], 1
.L18:
    mov eax, DWORD PTR -4[rbp]
    cmp eax, DWORD PTR -28[rbp]
    jl  .L19
    nop
    nop
    leave
    ret
    .size   print, .-print
    .globl  main
    .type   main, @function
main:
    endbr64
    push    rbp
    mov rbp, rsp
    push    r15
    push    r14
    push    r13
    push    r12
    push    rbx
    sub rsp, 88
    mov rax, rsp
    mov rbx, rax
    call    vvod
    mov DWORD PTR -52[rbp], eax
    mov eax, DWORD PTR -52[rbp]
    movsx   rdx, eax
    sub rdx, 1
    mov QWORD PTR -64[rbp], rdx
    movsx   rdx, eax
    mov QWORD PTR -112[rbp], rdx
    mov QWORD PTR -104[rbp], 0
    movsx   rdx, eax
    mov QWORD PTR -128[rbp], rdx
    mov QWORD PTR -120[rbp], 0
    cdqe
    lea rdx, 0[0+rax*4]
    mov eax, 16
    sub rax, 1
    add rax, rdx
    mov edi, 16
    mov edx, 0
    div rdi
    imul    rax, rax, 16
    mov rcx, rax
    and rcx, -4096
    mov rdx, rsp
    sub rdx, rcx
.L21:
    cmp rsp, rdx
    je  .L22
    sub rsp, 4096
    or  QWORD PTR 4088[rsp], 0
    jmp .L21
.L22:
    mov rdx, rax
    and edx, 4095
    sub rsp, rdx
    mov rdx, rax
    and edx, 4095
    test    rdx, rdx
    je  .L23
    and eax, 4095
    sub rax, 8
    add rax, rsp
    or  QWORD PTR [rax], 0
.L23:
    mov rax, rsp
    add rax, 3
    shr rax, 2
    sal rax, 2
    mov QWORD PTR -72[rbp], rax
    mov edx, DWORD PTR -52[rbp]
    mov rax, QWORD PTR -72[rbp]
    mov esi, edx
    mov rdi, rax
    call    zapolnimMas
    mov eax, DWORD PTR -52[rbp]
    movsx   rdx, eax
    sub rdx, 1
    mov QWORD PTR -80[rbp], rdx
    movsx   rdx, eax
    mov r14, rdx
    mov r15d, 0
    movsx   rdx, eax
    mov r12, rdx
    mov r13d, 0
    cdqe
    lea rdx, 0[0+rax*4]
    mov eax, 16
    sub rax, 1
    add rax, rdx
    mov esi, 16
    mov edx, 0
    div rsi
    imul    rax, rax, 16
    mov rcx, rax
    and rcx, -4096
    mov rdx, rsp
    sub rdx, rcx
.L24:
    cmp rsp, rdx
    je  .L25
    sub rsp, 4096
    or  QWORD PTR 4088[rsp], 0
    jmp .L24
.L25:
    mov rdx, rax
    and edx, 4095
    sub rsp, rdx
    mov rdx, rax
    and edx, 4095
    test    rdx, rdx
    je  .L26
    and eax, 4095
    sub rax, 8
    add rax, rsp
    or  QWORD PTR [rax], 0
.L26:
    mov rax, rsp
    add rax, 3
    shr rax, 2
    sal rax, 2
    mov QWORD PTR -88[rbp], rax
    mov edx, DWORD PTR -52[rbp]
    mov rax, QWORD PTR -72[rbp]
    mov esi, edx
    mov rdi, rax
    call    posElem
    mov DWORD PTR -92[rbp], eax
    mov ecx, DWORD PTR -52[rbp]
    mov edx, DWORD PTR -92[rbp]
    mov rsi, QWORD PTR -88[rbp]
    mov rax, QWORD PTR -72[rbp]
    mov rdi, rax
    call    zapolnimB
    mov edx, DWORD PTR -52[rbp]
    mov rax, QWORD PTR -88[rbp]
    mov esi, edx
    mov rdi, rax
    call    print
    mov eax, 0
    mov rsp, rbx
    lea rsp, -40[rbp]
    pop rbx
    pop r12
    pop r13
    pop r14
    pop r15
    pop rbp
    ret
    .size   main, .-main
    .ident  "GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
    .section    .note.GNU-stack,"",@progbits
    .section    .note.gnu.property,"a"
    .align 8
    .long   1f - 0f
    .long   4f - 1f
    .long   5
0:
    .string "GNU"
1:
    .align 8
    .long   0xc0000002
    .long   3f - 2f
2:
    .long   0x3
3:
    .align 8
4:

