.section .text
.global switch_to

switch_to:
	
	push %ebp
	mov %esp, %ebp
	
	push %edi
	push %esi
	push %edx
	push %ebx
	push %ecx
	push %eax
	pushfl
	
	mov cur, %eax
	mov %esp, task(, %eax, 4)
	
	mov 8(%ebp), %eax
	mov %eax, cur
	mov task(, %eax, 4), %esp
	
	popfl
	pop %eax
	pop %ecx
	pop %ebx
	pop %edx
	pop %esi
	pop %edi
	
	pop %ebp
	
	ret
