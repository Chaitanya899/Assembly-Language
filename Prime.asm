
BITS 32

extern printf
extern scanf

section.data:
         input: db "Enter the number", 0 
         fmt1: db "It is a prime number",10,0
         fmt2: db "It is not a prime number",10,0

section.text:
        global main

        main:
        push ebp
        mov ebp, esp
        sub esp, 0x10

        lea eax, [ebp-0x4]
        push eax
        push input
        call scanf
       
	mov ebx, [ebp-0x4]
	
	cmp ebx,1
	je is prime
	
	cmp ebx,2
	je is not prime

	loop:
		mov wdx,0
		mov eax,ebx
		div ecx
		inc ecx
		cmp edx,0
		je is not prime

		cpm ecx,[ebp-0x4]
		j1 loop

		

		
