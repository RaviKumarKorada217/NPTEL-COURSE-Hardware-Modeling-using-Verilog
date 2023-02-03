`timescale 1ns / 1ps

module example8_positional_explicit_association( A,B,C,D,E,F,Y );
    input A,B,C,D,E,F;
    output Y;
    wire t1,t2,t3;
    
    nand #1 G1(t1,A,B);
    and #2 G2(t2,C,~B,D);
    nor #1 G3(t3,E,F);
    nand #1 G4(Y,t1,t2,t3);
endmodule

//testbench

`timescale 1ns / 1ps

module example8_positional_explicit_association_tb( );
    reg X1,X2,X3,X4,X5,X6;
    wire OUT;
    
    example8_positional_explicit_association DUT(X1,X2,X3,X4,X5,X6,OUT);
                              // Positional association
   /* example8_positional_explicit_association DUT(.OUT(Y),.X1(A),.X2(B),.X3(C),.X4(D),.X5(E),.X6(F));
                             // explicit association
                 */
   initial
    begin 
     $monitor ($time, "X1=%b,X2=%b,X3=%b,X4=%b,X5=%b,X6=%b,OUT=%b",X1,X2,X3,X4,X5,X6,OUT);
     #5 X1=1; X2=0; X3=0; X4=1; X5=0; X6=0;
     #5 X1=1; X2=0; X3=1; X4=1
     #5 $finish;
    end     
   endmodule
