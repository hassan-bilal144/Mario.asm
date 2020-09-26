.model small
.stack 4096

.data

marioX word 7        ;coordinates of mario 
marioY word 180

goombaX word 97      ;coordinates of goombas
goombaY word 180
goombaX2 word 177
goombaY2 word 180

goombaState word 1   ;tells whether goomba is moving towards left or righttttt
goombaState2 word 1

goombaDead word 0    ;tells whether mario has killed goomba or not
goombaDead2 word 0    ;tells whether mario has killed goomba or not

marioState word 1  ;tells the jump function whether it should move mario up or down

isJumpingMario word 0 ;tells whether mario is in process of jumping or not

onHurdle word 0   ;tells if mario is standing on hurlde or not

jumpFromHurdle word  0 ;tells that the user has pressed jump when mario was standing on hurlde

marioHeight word 0 ;height of mario, used for jumping

maxHeight word 50 ;height till the mario will jump

flagDontMoveRight word 0  ;flag which prevents mario to move right when it hits a hurdle

flagDontMoveLeft word 0   ;flag which prevents mario to move left when it hits a hurdle

level word 1             ;current level
score word 0            ;current score
lives word 3             ;number of lives left

prevLives word 3

checked1 byte 0
checked2 byte 0
checked3 byte 0
checked4 byte 0
checked5 byte 0
checked6 byte 0

numToPrint byte 0   ;variable used to print multi-digit numbers
printvar byte 1

stringLevel db "level: ",'$'   ;strings to display information about gameplay
stringScore db "score: ",'$'
stringLives db "lives: ",'$'

gameTitle db "SUPERMARIO",'$'                            
gameTitle2 db "write the user name and press enter to start the game",'$'
gameTitle3 db "user name: ",'$'                                                   ;strings to display messages
youWon db "YOU WON !!",'$'
youLose db "You lose :(",'$'



mario db 0,0,0,4,4,4,4,4,0,0,0,0
	  db 0,0,4,4,4,4,4,4,4,4,4,0
	  db 0,0,6,6,6,14,14,0,14,0,0,0
	  db 0,6,14,6,14,14,14,0,14,14,14,0
	  db 0,6,14,6,6,1,14,14,0,14,14,14
	  db 0,0,6,14,14,14,14,0,0,0,0,0
	  db 0,0,0,14,14,14,14,14,14,0,0,0
	  db 0,0,4,4,1,4,4,1,4,4,0,0
	  db 0,4,4,4,1,4,4,1,4,4,4,0                   ;colour of pixels to draw mario 
	  db 4,4,4,4,1,1,1,1,4,4,4,4
	  db 14,14,4,1,14,1,1,14,1,4,14,14
	  db 14,14,14,1,1,1,1,1,1,14,14,14
	  db 14,14,1,1,1,1,1,1,1,1,14,14
	  db 0,0,1,1,1,0,0,1,1,1,0,0
	  db 0,6,6,6,0,0,0,0,6,6,6,0
	  db 6,6,6,6,0,0,0,0,6,6,6,6

goomba db 0,0,0,0,0,0,114,114,114,114,0,0,0,0,0,0
	   db 0,0,0,0,0,114,114,114,114,114,114,0,0,0,0,0
	   db 0,0,0,0,114,114,114,114,114,114,114,114,0,0,0,0
	   db 0,0,0,114,114,114,114,114,114,114,114,114,114,0,0,0
	   db 0,0,114,21,21,114,114,114,114,114,114,21,21,114,0,0
	   db 0,114,114,114,93,21,114,114,114,114,21,93,114,114,114,0
	   db 114,114,114,114,93,21,21,21,21,21,21,93,114,114,114,114        ;colour of pixels to draw goomba
	   db 114,114,114,114,93,21,93,114,114,93,21,93,114,114,114,114
	   db 114,114,114,114,93,93,93,114,114,93,93,93,114,114,114,114
	   db 114,114,114,114,114,114,114,114,114,114,114,114,114,114,114,114
	   db 0,114,114,114,114,93,93,93,93,93,93,114,114,114,114,0
	   db 0,0,0,0,93,93,93,93,93,93,93,93,0,0,0,0
	   db 0,0,21,21,93,93,93,93,93,93,93,93,21,21,0,0
	   db 0,21,21,21,21,21,93,93,93,93,21,21,21,21,21,0
	   db 0,21,21,21,21,21,21,0,0,21,21,21,21,21,21,0
	   db 0,0,21,21,21,21,21,0,0,21,21,21,21,21,0,0
	   


flagColour byte 2    ;variable to change flag colour

bowserX word 10      ;X and Y cooedinates of bowser
bowserY word 50

bowserState word 1
	   
bowser db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,15,22,0,22,15,22,0,0,0,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,15,15,22,42,42,15,22,0,0,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,0,0,22,22,0,22,15,15,15,22,22,42,42,22,22,22,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,0,22,15,15,22,22,22,15,15,15,15,22,22,22,15,15,22,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,0,0,22,15,42,42,22,15,15,15,15,15,22,42,42,42,15,22,22,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,0,0,0,22,42,15,42,22,15,15,15,22,2,2,22,22,42,42,15,22,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,0,22,22,15,15,42,42,42,22,22,22,2,2,2,22,15,15,22,22,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,22,42,15,42,42,42,42,22,2,2,2,2,2,2,22,15,15,15,22,22,22,22,0,0
	   db 0,0,0,0,0,0,0,0,0,22,15,42,42,42,42,42,42,22,2,2,2,2,2,2,22,15,15,22,22,42,42,42,22,0
	   db 0,0,0,0,0,0,0,0,0,22,15,22,15,15,15,42,22,2,2,2,2,2,2,2,2,22,15,22,42,42,42,22,42,22
	   db 0,0,0,0,0,0,0,0,0,0,22,22,15,42,42,42,22,2,2,2,2,2,22,22,2,2,22,42,42,42,42,42,42,22
	   db 0,0,0,0,0,0,0,0,0,0,22,15,15,42,42,15,22,2,2,2,2,22,42,42,22,22,42,42,42,42,42,42,42,22
	   db 0,0,0,0,0,0,0,0,0,22,15,42,42,42,15,22,22,2,2,2,22,42,42,42,42,42,42,42,42,42,42,15,22,0
	   db 0,0,0,0,0,0,0,0,0,22,42,22,42,42,22,22,22,22,2,2,22,42,42,42,42,42,42,42,15,15,22,15,22,0
	   db 0,0,0,0,0,0,0,0,0,0,22,15,22,22,22,15,15,15,22,22,22,42,42,22,15,15,22,22,15,15,22,22,0,0
	   db 0,0,0,0,0,0,22,22,22,22,22,15,15,2,2,22,22,15,15,15,22,22,42,42,22,22,22,15,22,22,0,0,0,0
	   db 0,0,0,0,0,22,15,15,15,2,2,2,2,2,2,2,2,22,15,15,15,22,22,42,42,42,42,22,22,0,0,0,0,0
	   db 0,0,0,0,0,22,15,15,15,2,2,2,2,2,2,15,2,2,22,15,15,22,22,22,42,42,42,42,42,22,0,0,0,0
	   db 0,0,0,0,0,22,15,15,2,2,2,2,2,2,2,15,15,2,2,22,15,15,22,22,22,22,22,22,22,0,0,0,0,0              ;colour of pixels of bowser
	   db 0,0,0,0,0,22,2,2,2,2,15,15,15,2,2,2,2,2,2,22,15,15,22,22,0,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,22,2,2,2,2,15,15,15,2,2,2,2,2,2,22,15,15,22,42,22,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,22,15,2,2,2,2,15,15,2,2,2,2,2,22,22,15,15,22,42,42,22,0,0,0,0,0,0,0,0,0
	   db 0,0,0,22,15,15,2,2,2,2,2,2,2,2,2,2,22,15,15,15,15,22,2,15,22,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,22,2,2,2,2,2,2,2,2,2,2,22,22,15,15,15,22,2,2,2,22,0,0,0,22,22,22,0,0,0
	   db 0,0,0,0,22,2,2,2,2,2,2,2,15,15,2,22,15,15,15,22,2,15,2,22,42,22,22,22,42,42,15,22,0,0
	   db 0,0,0,0,22,2,2,15,15,15,2,2,15,2,2,22,15,15,15,22,2,2,22,42,42,42,42,42,42,42,22,0,0,0
	   db 0,0,0,22,15,2,2,15,15,15,2,2,2,2,22,22,15,15,22,2,2,2,22,42,42,42,42,42,42,42,22,0,0,0
	   db 0,0,0,0,22,2,2,15,15,2,2,2,2,2,22,15,15,15,22,2,15,22,42,42,42,42,42,42,42,42,42,22,0,0
	   db 0,0,0,0,22,2,2,2,2,2,2,2,2,22,22,15,15,15,22,2,2,22,42,42,42,42,42,42,42,42,42,15,22,0
	   db 0,0,0,0,0,22,2,2,2,2,2,2,22,22,15,15,15,22,22,22,22,22,22,42,42,42,42,42,42,42,22,22,0,0
	   db 0,0,0,0,0,0,22,2,2,2,22,22,15,15,15,15,15,22,42,22,42,42,22,22,22,22,42,42,42,15,22,0,0,0
	   db 0,0,0,0,0,22,15,22,22,22,15,15,15,15,15,15,22,42,42,42,22,22,0,0,0,0,22,22,22,22,0,0,0,0
	   db 0,0,0,0,22,22,15,15,15,15,15,15,15,15,15,22,42,42,42,42,42,22,0,0,0,0,0,0,0,0,0,0,0,0
	   db 0,0,0,22,15,22,22,15,15,15,15,15,15,22,22,42,42,42,42,42,42,22,0,0,0,0,0,0,0,0,0,0,0,0
	   db 0,0,22,22,15,15,22,22,22,22,22,22,22,42,42,42,42,42,42,42,42,22,0,0,0,0,0,0,0,0,0,0,0,0
	   db 0,22,15,22,22,22,42,42,42,42,42,42,22,22,42,42,42,42,42,42,22,22,0,0,0,0,0,0,0,0,0,0,0,0
	   db 0,22,22,42,42,42,42,42,42,42,42,22,22,22,42,42,42,42,42,42,42,42,22,22,0,0,0,0,0,0,0,0,0,0
	   db 22,42,42,42,42,42,42,42,22,22,22,0,22,42,42,42,42,42,42,42,42,42,15,15,22,0,0,0,0,0,0,0,0,0
	   db 0,22,22,22,22,22,22,22,0,0,0,0,22,42,42,42,42,42,42,42,42,42,15,15,15,22,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,0,0,0,22,22,22,22,22,22,22,22,22,22,22,22,0,0,0,0,0,0,0,0,0
	   

castleX word 295
castleY word 170         ;X and Y cooedinates of castle
  
castle db 0,0,0,0,0,0,0,0,0,0,4,4,0,0,4,4,0,0,4,4,0
       db 0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,4,4,4,4,0,0
	   db 0,0,0,0,0,0,0,0,0,0,8,0,4,4,0,0,4,4,0,0,0
	   db 0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0
	   db 0,0,0,0,0,0,8,0,8,0,8,0,8,0,8,0,0,0,0,0,0
	   db 0,0,0,0,0,0,8,8,8,8,8,8,8,8,8,0,0,0,0,0,0
	   db 0,8,0,8,0,8,7,7,7,7,7,7,7,7,7,8,0,8,0,8,0
	   db 0,8,8,8,8,8,7,8,7,7,7,7,7,8,7,8,8,8,8,8,0
	   db 0,0,7,7,7,0,7,8,7,7,7,7,7,8,7,0,7,7,7,0,0
	   db 0,0,7,8,7,0,7,7,7,7,7,7,7,7,7,0,7,8,7,0,0
	   db 0,0,7,8,7,0,7,7,7,8,8,8,7,7,7,0,7,8,7,0,0
	   db 0,0,7,7,7,0,7,7,7,8,8,8,7,7,7,0,7,7,7,0,0             ;colour of pixels of castle
	   db 0,0,7,7,7,7,7,7,7,8,8,8,7,7,7,7,7,7,7,0,0
	   db 0,0,7,7,7,8,7,7,7,7,7,7,7,7,7,8,7,7,7,0,0
	   db 0,0,7,7,7,8,7,7,0,0,0,0,0,7,7,8,7,7,7,0,0
	   db 0,0,7,7,7,8,7,0,8,0,8,0,8,0,7,8,7,7,7,0,0
	   db 0,0,7,7,7,7,7,0,8,0,8,0,8,0,7,7,7,7,7,0,0
	   db 0,0,7,7,7,7,7,0,0,0,0,0,0,0,7,7,7,7,7,0,0
	   db 0,0,7,8,7,7,7,0,8,0,8,0,8,0,7,7,7,8,7,0,0
	   db 0,0,7,8,7,7,7,0,0,0,0,0,0,0,7,7,7,8,7,0,0
	   db 0,0,7,7,7,7,7,0,8,0,8,0,8,0,7,7,7,7,7,0,0
	   db 0,0,7,7,7,7,7,0,0,0,0,0,0,0,7,7,7,7,7,0,0
	   db 0,2,2,2,2,2,2,2,7,7,7,7,7,2,2,2,2,2,2,2,0
	   db 2,2,2,2,2,2,2,2,7,7,7,7,7,2,2,2,2,2,2,2,2
	   db 0,2,2,2,2,2,2,2,7,7,7,7,7,2,2,2,2,2,2,2,0 

coinsX dw 81,161,251,30,70,130,220,280,191                       ;array of X and Y coordinates of coins
coinsY dw 154,134,144,100,110,150,120,150,160	   

coinCheck dw 0,0,0,0,0,0,0,0,0                             ; array of checks to tell if coins have been collected by mario or not

coins db 0,0,14,14,14,14,0,0
      db 0,14,14,14,14,14,14,0
	  db 0,14,14,6,6,14,14,0
	  db 14,14,6,14,14,0,14,14
	  db 14,14,6,14,14,0,14,14                  ;colour of pixels of coins
	  db 14,14,6,14,14,0,14,14
	  db 14,14,6,14,14,0,14,14
	  db 14,14,6,14,14,0,14,14
	  db 14,14,6,14,14,0,14,14
	  db 14,14,6,14,14,0,14,14
	  db 14,14,6,14,14,0,14,14
	  db 14,14,6,14,14,0,14,14
	  db 14,14,6,14,14,0,14,14
	  db 0,14,14,0,0,14,14,0
	  db 0,14,14,14,14,14,14,0
	  db 0,0,14,14,14,14,0,0
	  


fireX dw 7 dup(?)                                ; array of X and Y coordinates of fire which bowser throws
fireY dw 7 dup(?)
timer byte 0
fireCollided dw 0,0,0,0,0,0,0               ;checks to see if fire has been shooted by bowser and checks to see if fire has been collided
fireShooted dw 0,0,0,0,0,0,0                ;by hurdles or mario or not

currentTime byte 0
prevTime byte 0

userName byte 7 dup(?)           ;string which stores username of the player

isGameOver byte 0               ;check to see if game has ended, it stops the gameLoop

userNameLen word 0              ;length of username

fire db 0,41,0,41,41,0,0,0
     db 0,0,41,0,41,41,41,0
	 db 41,0,0,0,41,42,41,41
	 db 0,0,41,41,41,42,42,41
	 db 0,41,41,42,42,15,42,41               ;colour of pixels of fire 
	 db 0,41,42,42,15,42,41,41
	 db 0,41,41,42,42,41,41,0
	 db 0,0,41,41,41,41,0,0

.code




main proc

mov ax,@data
mov ds,ax             ;to initialize the data





mov ah,0
mov al,13h  ;video mode
int 10h


call startScreen  

mov si,0
mov ah,02h
mov dh,9
mov dl,16
int 10h
.while si<7                           ;code which takes user name as input
	mov ah,0
	int 16h
	
	.if (ah==1ch)
		mov si,20
	.endif
	
	.if (si!=20)
		mov cx,1
		mov bh,0
		mov bl,32h
		mov userName[si],al
		mov ah,0ah
		int 10h
	
		mov ah,02h
		inc dl
		int 10h
		
		inc userNameLen
	.endif
	
	inc si
.endw

.if (si==7)
	
	loop1:
	mov ah,0
	int 16h
	cmp ah,1ch
	JE exit
	jmp loop1
exit:		
.endif

startGame:
call refreshScreen
call drawHurdle1
call drawHurdle2                      ;functions which draws all the obsticles 
call drawHurdle3
call drawmario
call displayInfo
call gameLoop                 ;a function which has the gameLoop which runs infinitely until the game overs

;mov ah,4ch
;int 21h

main endp


checkLevel proc                             ;a functions which updates level, lives,score and displays score if the game ends

.if marioX==296 && (level==1 || level==2)
	mov marioX,7
	mov marioY,180
	mov marioHeight,0
	mov maxHeight,50
	mov isJumpingMario,0
	mov marioState,1
	inc level
	call displayInfo
.endif

.if marioX==283 && level==3
	inc level
	call displayInfo
.endif

mov ax,lives
.if prevLives!=ax
	mov marioX,7
	mov marioY,180
	mov marioHeight,0
	mov isJumpingMario,0
	mov marioState,1
	mov prevLives,ax
	call displayInfo
.endif

.if (level==3 && checked3==0)
mov goombaDead,0
mov goombaDead2,0
mov flagColour,0
call drawFlag
call drawCastle
mov checked3,1
.endif

.if level==2&& checked5==0
    mov cx,0
	mov si,0
	.while cx<9
	   .if coinCheck[si]==1 || coinCheck[si]==2
	     mov coinCheck[si],0
	   .endif
	inc cx
	mov checked5,1
	add si,2
	.endw
.endif

.if level==3 && checked6==0
    mov cx,0
	mov si,0
	.while cx<9
	   .if coinCheck[si]==1 || coinCheck[si]==2
	     mov coinCheck[si],0
	   .endif
	inc cx
	mov checked6,1
	add si,2
	.endw
.endif

.if (level==1 || level==2) && checked4==0
call drawFlag
mov checked4,1
.endif

.if level==4
	call refreshScreen
	mov ah,02h
	mov dh,10
	mov dl,16
	int 10h
	mov si,0
	.while si<10
		mov cx,1
		mov bl,32h
		mov bh,0
		mov al,youWon[si]
		mov ah,0ah
		int 10h
		inc si
		mov ah,02h
		inc dl
		int 10h
	.endw
	
	mov ah,02h
	mov dh,12
	mov dl,15
	int 10h
	mov si,0
	.while si<7
		mov cx,1
		mov bl,32h
		mov bh,0
		mov al,Stringscore[si]
		mov ah,0ah
		int 10h
		mov ah,02h
		inc dl
		int 10h
		inc si
	.endw
		
	mov ax,0
	mov ax,score
	mov numToPrint,al
	mov printvar,12
	call multiDigitPrint
	mov isGameOver,1
.endif

.if lives==0
	call refreshScreen
	mov ah,02h
	mov dh,10
	mov dl,16
	int 10h
	mov si,0
	.while si<11
		mov cx,1
		mov bl,32h
		mov bh,0
		mov al,youLose[si]
		mov ah,0ah
		int 10h
		mov ah,02h
		inc dl
		int 10h
		inc si
	.endw
	
	mov ah,02h
	mov dh,12
	mov dl,16
	int 10h
	mov si,0
	.while si<7
		mov cx,1
		mov bl,32h
		mov bh,0
		mov al,Stringscore[si]
		mov ah,0ah
		int 10h
		mov ah,02h
		inc dl
		int 10h
		inc si
	.endw
	mov ax,0
	mov ax,score
	mov numToPrint,al
	mov printvar,12
	call multiDigitPrint
	mov isGameOver,1

.endif

ret
checkLevel endp

displayInfo proc uses ax bx cx dx              ;a function which displays level,scores and lives on the screen
;dl is x axis
; dh is y axis

mov ah,02h
mov dl,1
mov dh,1
int 10h
mov cx,7
mov si,offset stringLevel
displayLevel:
	push cx
	mov al,[si]
	mov bh,0
	mov bl,32h
	mov cx,1
	mov ah,0ah
	int 10h
	inc si
	mov ah,02h
	inc dl
	int 10h
	pop cx
loop displayLevel 

mov ah,02h
mov dl,15
mov dh,1
int 10h
mov cx,7
mov si,offset stringScore
displayScore:
	push cx
	mov al,[si]
	mov bh,0
	mov bl,32h
	mov cx,1
	mov ah,0ah
	int 10h
	inc si
	mov ah,02h
	inc dl
	int 10h
	pop cx
loop displayScore

mov ah,02h
mov dl,30
mov dh,1
int 10h
mov cx,7
mov si,offset stringLives
displayLives:
	push cx
	mov al,[si]
	mov bh,0
	mov bl,32h
	mov cx,1
	mov ah,0ah
	int 10h
	inc si
	mov ah,02h
	inc dl
	int 10h
	pop cx
loop displayLives

mov ah,02h
mov dl,8    ;8
mov dh,1             ;to display level no
int 10h
mov bh,0
mov bl,32h
mov cx,1
mov ax,level
add ax,48
mov ah,0ah
int 10h

mov ah,02h
mov dl,22        ;23
mov dh,1            ; to display score no
int 10h
mov ax,0
mov ax,score
mov numToPrint,al
call multiDigitPrint


mov ah,02h
mov dl,37  ;38
mov dh,1            ; to display lives 
int 10h
mov bh,0
mov bl,32h
mov cx,1
mov ax,lives
add ax,48
mov ah,0ah
int 10h

mov ah,02h
mov dh,3
mov dl,1
int 10h

mov si,0
.while si<11
	mov bh,0
	mov bl,32h
	mov al,gameTitle3[si]
	mov cx,1
	mov ah,0ah
	int 10h
	mov ah,02h
	inc dl
	int 10h
	inc si
.endw

mov ah,02h
mov dh,3
mov dl,11
int 10h

mov si,0
nameLoop:
	cmp si,userNameLen
	je exit
	mov cx,1
	mov bl,32h
	mov bh,0
	mov al,userName[si]
	mov ah,0ah
	int 10h
	inc si
	mov ah,02h
	inc dl
	int 10h
	jmp nameLoop
	
exit:

ret
displayInfo endp

multiDigitPrint proc uses ax bx cx dx                  ;a function that is used to print score which is a multoi-digit number
	mov cx, 0
	mov ax,0
	mov al,numToPrint
		L1: 
			mov dx,0
			mov bx,10
			div bx
			push dx
			inc cx
			cmp ax,0
		JNE L1
	mov ah,02h
	mov dl,22
	mov dh,printvar
	int 10h
	L2:
		
		pop ax
		add ax,48
		
		push cx
		mov cx,1
		mov bh,0
		mov bl,32h
		
		mov ah,0ah
		int 10h
		
		mov ah,02h
		inc dl
		int 10h
		
		pop cx
		dec  bx
	loop L2
		
	exit:	
	ret
multiDigitPrint endp



startScreen proc                               ;a function that displays the message at start of the game
	mov ah,02h
	mov dh,3    ;setting cursor position for printing "Super"
	mov dl,16
	int 10h
	mov cx,10
	mov si,offset gameTitle
	titleLoop:
		push cx
		cmp cx,5
		JE SetingCursor
		GoBack:
		mov  al,[si]
		mov bh,0
		mov bl,32h
		mov cx,1      ;printing charachter
		mov ah,0ah
		int 10h
		
		mov ah,02h
		add  dl,1   ;incrementing x-axis after printing each charachter
		int 10h
		
		pop cx
		inc si
	loop titleLoop
	jmp titleDone
	
	SetingCursor:
		mov ah,02h
		mov dh,4    ;setting cursor position for printing "Mario"
		mov dl,16
		int 10h
		jmp GoBack
titleDone:

mov ah,02h
mov dh,9
mov dl,6
int 10h
mov si,0
.while si<11
	mov bh,0
	mov bl,32h
	mov al,gameTitle3[si]
	mov cx,1
	mov ah,0ah
	int 10h
	mov ah,02h
	inc dl
	int 10h
	inc si
.endw


mov si,offset gameTitle2
mov ah,02h
mov dh,13
mov dl,5
int 10h
mov cx,53
startGame:
	push cx
	mov al,[si]
	mov bh,0
	mov bl,32h
	mov cx,1
	mov ah,0ah
	int 10h
	
	mov ah,02h
	inc dl
	int 10h
	
	inc si
	
	pop cx
	
	.if (cx==24)
		mov ah,02h
		mov dh,14
		mov dl,7
		int 10h
	.endif
	
loop startGame


	
ret
startScreen endp

drawHurdle1 proc                      ;function which draws pipe
   mov cx, 70 
   mov dx, 200
   mov al,32h 
   
   forcols:
  inc cx
  mov ah,0ch
  int 10h
  cmp cx, 90
  JBE forcols

  mov cx, 70  
  dec dx     
  cmp dx, 180
  Jae forcols
	
	sub cx,5
	forcols2:
	inc cx                                                ; x=66 y=175    ;x=96 y=175
	mov ah,0ch
	int 10h
	cmp cx,95
	JBE forcols2
	
	mov cx,65
	dec dx
	cmp dx,175
	JAE forcols2
		
ret
drawHurdle1 endp

drawHurdle2 proc                 ;function which draws pipe
   mov cx, 150 
   mov dx, 200
   mov al,32h 
   
   forcols:
  inc cx
  mov ah,0ch
  int 10h
  cmp cx, 170
  JBE forcols

  mov cx, 150  
  dec dx     
  cmp dx, 160
  Jae forcols
	
	sub cx,5
	forcols2:
	inc cx                                                ; x=146 y=155    ;x=176 y=155
	mov ah,0ch
	int 10h
	cmp cx,175
	JBE forcols2
	
	mov cx,145
	dec dx
	cmp dx,155
	JAE forcols2
	

ret
drawHurdle2 endp


drawHurdle3 proc                   ;function which draws pipe
   mov cx, 240 
   mov dx, 200
   mov al,32h 
   
   forcols:
  inc cx
  mov ah,0ch
  int 10h
  cmp cx, 260
  JBE forcols

  mov cx, 240  
  dec dx     
  cmp dx, 170
  Jae forcols
	
	sub cx,5
	forcols2:
	inc cx                                                ; x=236 y=165    ;x=266 y=165
	mov ah,0ch
	int 10h
	cmp cx,265
	JBE forcols2
	
	mov cx,235
	dec dx
	cmp dx,165
	JAE forcols2
	

ret
drawHurdle3 endp




drawflag proc
   mov cx, 250
   mov dx, 20
   mov al,flagColour
first:
  inc cx
  mov ah,0ch
  int 10h
  cmp cx,310                                             ; x=310   y=60
  JBE first

  mov cx,250
  inc dx     
  cmp dx, 60
  JBE first
  
  mov cx,307
  mov dx,61
  mov al,flagColour
second:
	inc cx
	mov ah,0ch
	int 10h
	cmp cx,310
	JBE second
	
	mov cx,307
	inc dx
	cmp dx,200
	JBE second

  
ret
drawflag endp



drawmario proc uses ax bx cx dx
mov cx,marioX
mov dx,marioY
mov si,offset mario

row:
	mov bx,marioX
	add bx,12
	cmp cx,bx
	JE col
	mov al,[si]
	mov ah,0ch
	int 10h
	inc si
	inc cx
jmp row	

col:
	inc dx
	mov bx,marioY
	add bx,16
	cmp bx,dx
	JE exit
	mov cx,marioX
	jmp row
exit:

ret
drawmario endp

drawmarioBlack proc uses ax bx cx dx

mov cx,marioX
mov dx,marioY
mov al,0
row:
	mov bx,marioX
	add bx,12
	cmp cx,bx
	JE col
	mov ah,0ch
	int 10h
	inc cx
jmp row	

col:
	inc dx
	mov bx,marioY
	add bx,16
	cmp bx,dx
	JE exit
	mov cx,marioX
	jmp row
exit:

ret
drawmarioBlack endp


gameLoop proc uses ax bx cx dx
; this is the main gameloop which runs infinitely until the game is over
L1:
	.if level==3
	call slowDownButNotTooMuch
	.else 
	call slowDown
	.endif
	
	call getTime
	
	.if level==3
	call shootFire
	call drawFireBlack
	call moveFire
	call fireCollision
	.endif
	
	call drawmarioBlack
	
	call drawCoins
	call coinCollision
	call drawCoinsBlack
	
	call checkLevel
	
	
	.if goombaDead==0 && level!=1
	call moveGoomba
	.endif
	
	.if goombaDead2==0 && level!=1
	call moveGoomba2
	.endif
	
	.if(level==3)
	call moveBowser
	.endif
	
	cmp isGameOver,1
	je exitLoop
	
	mov ah,1
	int 16h
	jz dontCheck
	
	
	mov ah,0     ;checks what key is pressed
	int 16h
	
	dontCheck:
	
	
	cmp ah,'M'   ;move right
	je right
	
	
	cmp ah,'K'  ;move left
	je left
		
	.if(ah=='H' && onHurdle==1)
		mov jumpFromHurdle,1
	.endif
	
	cmp ah,'H'
	je jump
	
	backToLoop:
	
	cmp isJumpingMario,1
	je jump
	
	backToLoopAfterJump:
	
	.if level==3 
	call drawFire
	.endif
	;call printShooted
	call drawMario
jmp L1	

right:
	mov flagDontMoveRight,0
	call checkCollision
	cmp flagDontMoveRight,1
	JE backToLoop
	inc marioX
	jmp backToLoop
left:
	mov flagDontMoveLeft,0
	call checkCollision
	cmp flagDontMoveLeft,1
	JE backToLoop
	cmp marioX,0
	je backToLoop
	dec marioX
	jmp backToLoop
	
jump:
	mov isJumpingMario,1
	call jumpMario
	jmp backToLoopAfterJump

	
exitLoop:
ret
gameLoop endp



refreshScreen proc uses ax

	mov ah,0
	mov al,13h  ;video mode
	int 10h
ret
refreshScreen endp

 ;x=66 y=175  to x=96 y=175; 
 ;x=146 y=155  to  x=176 y=155
 ; x=236 y=165   to x=266 y=165


jumpMario proc uses ax bx cx dx
 	
	cmp isJumpingMario,1
	JNE exit
	
	.if(onHurdle==1 && jumpFromHurdle==1)
		mov onHurdle,0
		mov marioState,1
		mov jumpFromHurdle,0
		mov isJumpingMario,1
		mov bx,marioHeight
		.if (maxHeight==50)
			add maxHeight,bx
		.endif
	.endif
	

	mov ax,maxHeight
	cmp marioHeight,ax
	JE changeStateToDown
	

	jmp exitStateChange
		
	
	
	changeStateToDown:
		mov marioState,0
	
	exitStateChange:

	cmp marioHeight,0
	JNE dontCheckEndJump
	
	cmp marioState,0
	JE endJump
	
	dontCheckEndJump:
	
	cmp marioState,1
		JNE moveDown
	
	dec marioY
	inc marioHeight
	mov isJumpingMario,1
	jmp exit
	
	moveDown:
		inc marioY
		mov marioState,0
		dec marioHeight
		mov isJumpingMario,1
		jmp exit
	
endJump:
	mov isJumpingMario,0
	mov marioState,1
	mov maxHeight,50

	
exit:                 

call checkCollision
ret
jumpMario endp



slowDown proc uses cx dx ax
	
mov cx,00h
mov dx,06fffh
mov ah,86h
int 15h

ret
slowDown endp

slowDownButNotTooMuch proc uses cx dx ax

mov cx,00h
mov dx,03fffh
mov ah,86h
int 15h

ret
slowDownButNotTooMuch endp


 ;x=66 y=175  to x=96 y=175; 
 ;x=146 y=155  to  x=176 y=155
 ; x=236 y=165   to x=266 y=165

checkCollision proc uses ax bx cx dx                  ;checks mario's collision with pipes


.if marioX==54 && marioY>159            ;65-11=54
mov flagDontMoveRight,1
.endif

.if marioX==97 && marioY>159             ;
mov flagDontMoveLeft,1
.endif

.if marioX>=55 && marioX<=96 && marioY==159     ;66-11=55
mov isJumpingMario,0
mov onHurdle,1
mov marioState,0
.endif

.if (marioX<55 || marioX>96) && (marioY==159)
mov isJumpingMario,1
.endif

.if marioX==134 && marioY>139             ;145-11=134
mov flagDontMoveRight,1
.endif

.if marioX==177 && marioY>139
mov flagDontMoveLeft,1
.endif

.if marioX>=135 && marioX<=176 && marioY==139      ;146-11=135  
mov isJumpingMario,0
mov onHurdle,1
mov marioState,0
.endif

.if (marioX<135 || marioX>176) && (marioY==139)
mov isJumpingMario,1
.endif

.if marioX==224 && marioY>149               ;235-11=224
mov flagDontMoveRight,1
.endif

.if marioX==267 && marioY>149   ;236-266
mov flagDontMoveLeft,1
.endif

.if marioX>=225 && marioX<=266 && marioY==149     ;236-11=225
mov isJumpingMario,0
mov onHurdle,1
mov marioState,0
.endif

.if (marioX<225 || marioX>266) && (marioY==149)
mov isJumpingMario,1
.endif
ret
checkCollision endp




drawGoomba proc uses ax bx cx dx

mov cx,goombaX
mov dx,goombaY
mov si,offset goomba

row:
	mov bx,goombaX
	add bx,16
	cmp cx,bx
	JE col
	mov al,[si]
	mov ah,0ch
	int 10h
	inc si
	inc cx
jmp row	

col:
	inc dx
	mov bx,goombaY
	add bx,16
	cmp bx,dx
	JE exit
	mov cx,goombaX
	jmp row
exit:

ret
drawGoomba endp

drawGoomba2 proc uses ax bx cx dx

mov cx,goombaX2
mov dx,goombaY2
mov si,offset goomba

row:
	mov bx,goombaX2
	add bx,16
	cmp cx,bx
	JE col
	mov al,[si]
	mov ah,0ch
	int 10h
	inc si
	inc cx
jmp row	

col:
	inc dx
	mov bx,goombaY2
	add bx,16
	cmp bx,dx
	JE exit
	mov cx,goombaX2
	jmp row
exit:

ret
drawGoomba2 endp

drawGoombaBlack proc uses ax bx cx dx

mov cx,goombaX
mov dx,goombaY
mov al,0
row:
	mov bx,goombaX
	add bx,16
	cmp cx,bx
	JE col
	mov ah,0ch
	int 10h
	inc cx
jmp row	

col:
	inc dx
	mov bx,goombaY
	add bx,16
	cmp bx,dx
	JE exit
	mov cx,goombaX
	jmp row
exit:


ret
drawGoombaBlack endp


drawGoombaBlack2 proc uses ax bx cx dx

mov cx,goombaX2
mov dx,goombaY2
mov al,0
row:
	mov bx,goombaX2
	add bx,16
	cmp cx,bx
	JE col
	mov ah,0ch
	int 10h
	inc cx
jmp row	

col:
	inc dx
	mov bx,goombaY2
	add bx,16
	cmp bx,dx
	JE exit
	mov cx,goombaX2
	jmp row
exit:


ret
drawGoombaBlack2 endp



moveGoomba proc uses ax bx cx dx

;moves goomba between the 1st and 2nd hurdle *96 to 144*
;  if goombaState==1 its moving right if goombaState==0 its moving left
call drawGoombaBlack

cmp goombaX,128   ;144-16
JE ChangeStateToLeft

cmp goombaX,96
JE changeStateToRight

jmp exitGoombaState
		
changeStateToRight:
	mov goombaState,1
	jmp exitGoombaState
			
changeStateToLeft:
	mov goombaState,0
		
exitGoombaState:

cmp goombaState,1
JNE moveLeft
inc goombaX
jmp exit

moveLeft:
	dec goombaX	
	


exit:
call drawGoomba
;code for checking collision of mario with goomba 
mov ax,marioY
add ax,16

mov cx,goombaX
sub cx,12

mov bx,goombaX
add bx,16

;mARIOx+12>goombaX && marioX<goombaX+16 && marioState==0 marioY+16==goombaX
.if  marioState==0 && ax==goombaY && marioX>=cx && marioX<bx
call drawGoombaBlack
mov goombaDead,1
add score,10
call displayInfo
.endif

.if ax>goombaY && (marioX==cx || bx==marioX)
dec lives
.endif

ret 
moveGoomba endp


moveGoomba2 proc uses ax bx cx dx
;266 309
;moves goomba between the 1st and 2nd hurdle *175 to 235*
;  if goombaState2==1 its moving right if goombaState2==0 its moving left
call drawGoombaBlack2

cmp goombaX2,218   ;234-16
JE ChangeStateToLeft

cmp goombaX2,176
JE changeStateToRight

jmp exitGoombaState
		
changeStateToRight:
	mov goombaState2,1
	jmp exitGoombaState
			
changeStateToLeft:
	mov goombaState2,0
		
exitGoombaState:

cmp goombaState2,1
JNE moveLeft
inc goombaX2
jmp exit

moveLeft:
	dec goombaX2
	


exit:
call drawGoomba2
;code for checking collision of mario with goomba 
mov ax,marioY
add ax,16

mov cx,goombaX2
sub cx,12

mov bx,goombaX2
add bx,16

;mARIOx+12>goombaX && marioX<goombaX+16 && marioState==0 marioY+16==goombaX
.if  marioState==0 && ax==goombaY2 && marioX>=cx && marioX<bx
call drawGoombaBlack2
mov goombaDead2,1
add score,10
call displayInfo
.endif

.if ax>goombaY2 && (marioX==cx || bx==marioX)
dec lives
.endif

ret 
moveGoomba2 endp

drawBowzer proc uses ax bx cx dx

mov cx,bowserX
mov dx,bowserY
mov si,offset bowser

row:
	mov bx,bowserX
	add bx,34
	cmp cx,bx
	JE col
	mov al,[si]
	mov ah,0ch
	int 10h
	inc si
	inc cx
jmp row	

col:
	inc dx
	mov bx,bowserY
	add bx,41
	cmp bx,dx
	JE exit
	mov cx,bowserX
	jmp row
exit:


ret
drawBowzer endp

drawCastle proc uses ax bx cx dx

mov cx,castleX
mov dx,castleY
mov si,offset castle

row:
	mov bx,castleX
	add bx,21
	cmp cx,bx
	JE col
	mov al,[si]
	mov ah,0ch
	int 10h
	inc si
	inc cx
jmp row	

col:
	inc dx
	mov bx,castleY
	add bx,25
	cmp bx,dx
	JE exit
	mov cx,castleX
	jmp row
exit:


ret
drawCastle endp

 ;x=66 y=175  to x=96 y=175; 
 ;x=146 y=155  to  x=176 y=155
 ; x=236 y=165   to x=266 y=165
 	

drawBowzerBlack proc uses ax bx cx dx

mov cx,bowserX
mov dx,bowserY
mov al,0
row:
	mov bx,bowserX
	add bx,34
	cmp cx,bx
	JE col
	mov ah,0ch
	int 10h
	inc cx
jmp row	

col:
	inc dx
	mov bx,bowserY
	add bx,41
	cmp bx,dx
	JE exit
	mov cx,bowserX
	jmp row
exit:


ret
drawBowzerBlack endp

moveBowser proc uses ax bx cx dx

;moves bowser across the screen
;  if BowserState==1 its moving right if BowserState==0 its moving left
call drawBowzerBlack

cmp bowserX,266   ;300-34
JE ChangeStateToLeft

cmp bowserX,9
JE changeStateToRight

jmp exitBowserState
		
changeStateToRight:
	mov bowserState,1
	call reverseBowser
	jmp exitBowserState
			
changeStateToLeft:
	mov bowserState,0
	call reverseBowser
		
exitBowserState:

cmp BowserState,1
JNE moveLeft
inc bowserX
jmp exit

moveLeft:
	dec bowserX
	

exit:
call drawBowzer
ret
moveBowser endp

reverseBowser proc uses ax bx cx dx
; it reverses all the rows of bowser array so that it's face turns to left/right 
mov si,offset bowser

mov ax,0

.while ax<41
	mov bx,0
	mov dx,33
	push ax
	.while bx<17
		mov ax,0
		mov al,[si+bx]
		push bx
		mov bx,dx
		mov cl,[si+bx]   ;mov cl,[si+bx+dx]
		mov [si+bx],al   
		pop bx
		mov [si+bx],cl
		dec dx
		inc bx
	.endw
	add si,34
	pop ax
	inc ax
.endw



ret
reverseBowser endp


drawCoins proc uses ax bx cx dx
mov cx,0
mov di,0
.while cx<9
	push cx
	.if (coinCheck[di]==0)
	mov cx,coinsX[di]
	mov dx,coinsY[di]
	mov si,offset coins
	row:
		mov bx,coinsX[di]
		add bx,8
		cmp cx,bx
		JE col
		mov al, [si]
		mov ah,0ch
		int 10h
		inc si
		inc cx
	jmp row	

	col:
		inc dx
		mov bx,coinsY[di]
		add bx,16
		cmp bx,dx
		JE exit
		mov cx,coinsX[di]
		jmp row
	exit:
	.endif
	pop cx
	inc cx
	add di,2
.endw

ret
drawCoins endp

drawCoinsBlack proc uses ax bx cx dx

mov cx,0
mov di,0
mov al,0
.while cx<9
	push cx
	mov cx,coinsX[di]
	mov dx,coinsY[di]
	.if(coinCheck[di]==1 && coinCheck[di]!=2)
	row:
		mov bx,coinsX[di]
		add bx,8
		cmp cx,bx
		JE col
		mov ah,0ch
		int 10h
		inc cx
	jmp row	

	col:
		inc dx
		mov bx,coinsY[di]
		add bx,16
		cmp bx,dx
		JE exit
		mov cx,coinsX[di]
		jmp row
	exit:
	mov coinCheck[di],2
	.endif
	pop cx
	inc cx
	add di,2
.endw


ret
drawCoinsBlack endp


coinCollision proc uses ax bx cx dx

mov ax,0
mov si,0
.while ax<9
	push ax

	mov bx,marioY
	sub bx,15
	
	mov cx,coinsY[si] 
	sub cx,15
	
	mov dx, marioX
	add dx,11
	
	mov ax,coinsX[si]
	add ax,8

	;if marioY<=coinY+15
	;if marioY+15>=coinY
	;if marioX+11>=coinX for when coin is at right of mario
	;if marioX<=coinX+8 for when coins is at left of mario
	.if bx<=coinsY[si] && marioY>=cx && dx>=coinsX[si] && marioX<=ax && coinCheck[si]==0
		mov coinCheck[si],1
		add score,5
		call displayInfo
	.endif

	add si,2
	pop ax
	inc ax

.endw

ret 
coinCollision endp

drawFire proc uses ax bx cx dx

;bowser X ->10 fire ->45  firex=bowserX+35
;bowserY ->50 fire->65 firey=bowsery+15


mov si,0

.while si<14

.if bowserState==1 && fireShooted[si]==0    ;bowser is right
mov ax,bowserX
mov fireX[si],ax
add fireX[si],35
mov ax,bowserY
add ax,15
mov fireY[si],ax
.endif

.if bowserState==0  && fireShooted[si]==0   ;bowser is left
mov ax,bowserX
sub ax,9
mov fireX[si],ax
mov ax,bowserY
add ax,15
mov fireY[si],ax
.endif

.if (fireShooted[si]==1  && fireCollided[si]==0)



mov cx,fireX[si]
mov dx,fireY[si]
mov di,offset fire

row:
	mov bx,fireX[si]
	add bx,8
	cmp cx,bx
	JE col
	mov al,[di]
	mov ah,0ch
	int 10h
	inc di
	inc cx
jmp row	

col:
	inc dx
	mov bx,fireY[si]
	add bx,8
	cmp bx,dx
	JE exit
	mov cx,fireX[si]
	jmp row
exit:

.endif
 
add si,2


.endw


ret
drawFire endp

drawFireBlack proc uses ax bx cx dx
mov si,0

.while si<14

.if bowserState==1 && fireShooted[si]==0    ;bowser is right
mov ax,bowserX
mov fireX[si],ax
add fireX[si],35
mov ax,bowserY
add ax,15
mov fireY[si],ax
.endif

.if bowserState==0  && fireShooted[si]==0   ;bowser is left
mov ax,bowserX
sub ax,9
mov fireX[si],ax
mov ax,bowserY
add ax,15
mov fireY[si],ax
.endif


.if (fireShooted[si]==1)




mov cx,fireX[si]
mov dx,fireY[si]
mov al,0

row:
	mov bx,fireX[si]
	add bx,8
	cmp cx,bx
	JE col
	mov ah,0ch
	int 10h
	inc di
	inc cx
jmp row	

col:
	inc dx
	mov bx,fireY[si]
	add bx,8
	cmp bx,dx
	JE exit
	mov cx,fireX[si]
	jmp row
exit:

.endif
 
add si,2


.endw


ret 
drawFireBlack endp

;bowser X ->10 fire ->45  firex=bowserX+35
;bowserY ->50 fire->65 firey=bowsery+15
moveFire proc uses ax bx cx dx

mov si,0

.while si<14

	.if fireShooted[si]==1 && fireCollided[si]!=1
		inc fireY[si]
		.if bowserState==1
		inc fireX[si]
		.else
		dec fireX[si]
		.endif
	.endif

	add si,2
.endw

ret
moveFire endp


shootFire proc uses ax bx 

mov ax,0
mov al,currentTime
mov dx,0
mov bl,2
div bl

mov cl,prevTime
.if (ah==0 && currentTime!=cl && currentTime>=2)

mov si,0
.while si<14
	.if fireShooted[si]==0 
		mov fireShooted[si],1
		mov al,currentTime
		mov prevTime,al
		mov si,20
	.endif
	
	add si,2
.endw

.endif

mov si,0 
.while si<14
	.if fireCollided[si]==1
		mov fireShooted[si],0
		mov fireCollided[si],0
	.endif
	add si,2
.endw


ret
shootFire endp

getTime proc uses ax dx
   mov ah,2Ch
   int 21h
   mov currentTime,dh
   
ret
getTime endp

 ;x=66 y=175  to x=96 y=175; 
 ;x=146 y=155  to  x=176 y=155
 ; x=236 y=165   to x=266 y=165


fireCollision proc uses ax bx cx dx

mov si,0

.while si<14
	.if fireShooted[si]==1
		.if fireY[si]==192
		mov fireCollided[si],1
		.endif

		.if fireX[si]>=58 && fireX[si]<=96 && fireY[si]==167
		mov fireCollided[si],1
		.endif

		.if fireX[si]>=138 && fireX[si]<=176 && fireY[si]==147
		mov fireCollided[si],1
		.endif

		.if fireX[si]>=228 && fireX[si]<=266 && fireY[si]==157
		mov fireCollided[si],1
		.endif
		
		.if ((fireX[si]==58 || fireX[si]==97) && fireY[si]>=167) || ((fireX[si]==138 || fireX[si]==177) && fireY[si]>=147) || ((fireX[si]==228 || fireX[si]==267) && fireY[si]>=157)
		mov fireCollided[si],1
		.endif
		
		;y=170
		;x=295     fireY+8>=castleY
		mov ax,castleY
		sub ax,8
		mov bx,castleX
		.if fireX[si]==0 || fireX[si]==293 ;|| (fireY[si]>=ax && fireX[si]>=bx)
		mov fireCollided[si],1
		.endif
		
		.if fireY[si]>=ax && fireX[si]>=bx
		  mov fireCollided[si],1
		.endif
		mov bx,marioX
		add bx,11
		mov cx,fireX[si]
		add cx,8
		mov ax,fireY[si]
		add ax,8
		mov dx,marioY
		add dx,16
		;fireX+8==marioX && fireY+8>=marioY  marioX+11==fireX && fireX
		.if (cx>=marioX && fireX[si]<=bx && marioY==ax) || ((cx==marioX || bx==fireX[si]) && ax>=marioY && ax<=dx)  
		mov fireCollided[si],1
		dec lives
		.endif
	.endif

	add si,2
	
.endw

ret
fireCollision endp




end
