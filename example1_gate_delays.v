`timescale 1ns / 1ps
module example1( a, b, c, d, e, f, y);
    input a, b, c, d, e, f;
    output y;
    wire w1, w2, w3;
    
    nand #1 g1(w1,a,b);      //can also be written as nand #1 g1(w1,a,b), g4(y,w1,w2,w3);
    and #2 g2(w2,c,~b,d);
    nor #1 g3(w3,e,f);
    nand #1 g4(y,w1,w2,w3);
endmodule 


/* test bench */

`timescale 1ns / 1ps
module example1_gate_delays_tb();
    reg a,b,c,d,e,f;
    wire y;
    
    example1 dut (.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.y(y));
    
    initial
     begin
         $monitor ($time, "a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,y=%b",a,b,c,d,e,f,y);
        
         #5 a=1;b=0;c=0;d=1;e=0;f=0;
         #5 a=0;b=0;c=1;d=1;e=0;f=0;
         #5 a=1;c=0;
         #5 f=1;
         #5 $finish;
     end

endmodule
