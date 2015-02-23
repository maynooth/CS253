		.MODEL medium
		
		.STACK
		.DATA
		
msg1 	BYTE "Daniel",10,13,"$"

		.CODE
		.STARTUP
		
		; create a space with value 10
		mov cx,10
		
start:	mov bx,OFFSET msg1
back: 	mov dx,[bx] ;dl=letters
		
		cmp dl,'$'
		jz done
		
		mov ah,02h
		int 021h
		
		inc bx
		jmp back

done: 	nop

		; decrease value
		dec cx
		
		; jump to start to repeat printing
		jnz start


		.EXIT
END
