`timescale 1ns / 1ps
module example4_1_wor_wand( a,b,c,d,f );
    input a,b,c,d;
    output f;
    wire f;
    
    assign f=a&b;
    assign f=c|d;   /*if a=b=1 and c=d=0 then 'f' will be indeterminate*/
endmodule


/* correction */

module example4_2_wor_wand( a,b,c,d,f );
    input a,b,c,d;
    output f;
    wand f;  // wand, wor are not supported in vivado
    
    assign f=a&b;
    assign f=c|d;  //here function is realized will be f=(a&b)&(c|d)
endmodule
