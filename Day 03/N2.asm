.model small
.stack 100h
.data
	msg1 db "Enter the num01: $"
	n1 db 0
	msg2 db "Enter the num02: $"
	n2 db 0
	msg3 db "Total of num1 and num2 : $"
	
.code
start:
	mov ax,@data
	mov ds,ax
	
	mov dx,offset msg1	;print the msg
	mov ah,09h
	int 21h
	
	mov ah,01h	;read input
	int 21h
	
	mov dl,al
	sub dl,48
	
	mov n1,dl
	
	mov dl,0ah	;next line
	mov ah,02h
	int 21h
	
	mov dx,offset msg2	;print the msg
	mov ah,09h
	int 21h
	
	mov ah,01h	;read input
	int 21h
	
	mov dl,al
	sub dl,48
	
	mov n2,dl
	
	mov dl,0ah	;next line
	mov ah,02h
	int 21h
	
	mov dx,offset msg3	;print the msg
	mov ah,09h
	int 21h
	
	mov dl,n1
	add dl,n2
	add dl,48
	
	mov ah,02h
	int 21h
	
	mov ax,4c00h
	int 21h
	
end start
	
	
