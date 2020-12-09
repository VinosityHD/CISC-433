// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
@KBD
D=M

@color
M=0

@FILL
D;JEQ 

@BLACK
0;JMP 
@LOOP
0;JMP

(BLACK)
@color
M=-1

(FILL)

@SCREEN
D=A
@view
M=D 

(COUNTER)
@color
D=M
@view
A=M
M=D 

@view
M=M+1 

@24576 
D=A
@view
D=D-M 
@COUNTER
D;JGT 
@LOOP
0;JMP