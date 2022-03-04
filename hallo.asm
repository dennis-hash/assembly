global  _start
section .text
_start:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, len 
	int 0x80
	
	;mov eax, 0x4
	;mov ebx, 0x1
	;mov ecx, message1
	;mov edx, len2 
	;int 0x80
	
	mov eax, 0x1
	mov ebx, 0x5
	int 0x80

section .data
	message: db "hello world"
	message1: db "he world"
	len equ $ - message
	len2 equ  $-message1
