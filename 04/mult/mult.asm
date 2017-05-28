// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

        @0
        D=M //D=M[0]

        @times
        M=D //M[times]=R0

        @2
        M=0 //R[2]=0

        (LOOP)
        @times
        D=M //D=M[times]
        @END
        D;JEQ //if D==times, go to END

        @1
        D=D-A //M[times]=M[times]-1
        @times
        M=D //M[times]=D-1
        @2
        D=M //D=M[2]
        @1
        D=D+M //D=D+M[1]
        @2
        M=D //M[2]= D+M[1]

        @LOOP
        0;JMP

        (END)
        @END
        0;JMP
