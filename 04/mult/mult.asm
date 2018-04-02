// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
  
  // init R2 to 0
  @0
  D=A
  @2
  M=D
  // init sum to 0
  @sum
  M=0
  // init i to 0
  @i
  M=0

(loop)
  @i
  D=M
  @0
  D=M-D 
  @out
  D,JEQ // if (R0 - i) ==0 { JMP }

  @1
  D=M
  @2
  M=M+D


  @i
  M=M+1 // i++
  @loop
  0;JMP

(out)
