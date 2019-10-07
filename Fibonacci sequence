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
	push input
	call scanf
	move ebx, dword [ebp-0x4]
	
	cmp ebx,1
	je fibonacci(a)

	cmp ebx,2
	je fibonacci(b)

	mov eax,0
	mov ebx,1
	mov ecx,0
	mov edx,0

	loop:

		mov eax, ebx
		mov ebx, ecx
		add eax, ebx
		add ecx, eax
		push ecx
		push fmt
		call printf
		inc edx
		cmp edx, dword [ebp-0x4]
		j1 loop

	fib1:
		push ebx
		push output
		call printf
	
	fib2:
		push ebx
		push fmt
		call printf
	leave
		
	ret
