BITS 32

extern printf
extern scanf

section.data
	fmt: db "%d", 0
	out :db "%d",10,0

section.text

	global main

	main:
	push ebp
	mov ebp,esp
	sub esp, 0x10
	
	lea eax, [ebp-0x4]
	push eax
	push fmt
	call scanf
	move eax, dword [ebp-0x4]

	mov eax, 1	
	mov ecx, 1
		
	L1 :   
	mul ebx 
	dec ebx
	inc ecx
	cmp ecx, dword[ebp-0x4]
	jl L1

	push eax
	push out
	call printf
		
	leave		

	ret
