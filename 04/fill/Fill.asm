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

  @CLEAR_SCREEN
  D;JEQ

  // black the screen
  @i // i = 0
  M=0
(LOO)
  @i
  D=M // D=i
  @8191
  D=D-A // D=i-100
  @OUT
  D;JGT // i-100>0 go out
  @i
  D=M
  @SCREEN
  A=A+D
  M=-1
  @i
  M=M+1
  @LOO
  0;JMP
(OUT)

  @END
  0;JMP
(CLEAR_SCREEN)
  @i // i = 0
  M=0
(LOO2)
  @i
  D=M // D=i
  @8191
  D=D-A // D=i-100
  @OUT2
  D;JGT // i-100>0 go out
  @i
  D=M
  @SCREEN
  A=A+D
  M=0
  @i
  M=M+1
  @LOO2
  0;JMP
(OUT2)

(END)
  @LOOP
  0;JMP