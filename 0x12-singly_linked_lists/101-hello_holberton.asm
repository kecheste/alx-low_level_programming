@@ -1,16 +1,22 @@
	section .data	; Data section, initialized variables
	fmt db "%s", 10, 0      ; The printf format, "\n",'0'
	msg db "Hello Holberton", 0 ; C string needs 0
extern printf			;the C function, to be called

	section .text	; Code section.
	extern printf	; Call to printf
	global main	; the standard gcc entry point
main:			; the program label for the entry point
	push    rbp	; set up stack frame, must be alligned
	mov	rdi,fmt
	mov	rsi,msg
	mov	rax,0	; or can be  xor  rax,rax
	call    printf	; Call C function
	pop	rbp	; restore stack
	mov	rax,0	; normal, no error, return value
	ret		; return
	        section .data	; Data section, initialized variables
msg:		db "Hello, Holberton", 0 ; C string needs 0
fmt:		db "%s", 10, 0		 ;the printf format 10 is \n needed

	        section .text	; Code section.

	        global main	; the standard gcc entry point
main:				; the program label for the entry point
	        push    rbp	; set up stack frame, must be aligned
	mov	rbp, rsp
	mov	edi, fmt	; first parameter, format
	mov	esi, msg	; second parameter, msg
	call	printf		; call c function

	mov	eax,0		; or can be  xor  rax,rax

	pop	rbp		; restore stack

	mov	rax,0		; normal, no error, return value
	ret			; return
