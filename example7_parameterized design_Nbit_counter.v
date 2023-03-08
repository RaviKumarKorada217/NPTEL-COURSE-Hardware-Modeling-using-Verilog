/* parameterized design :: an N-bit counter */
`timescale 1ns / 1ps

module example7_Nbit_counter( clk, rst, count   );
    parameter N=7;
    input clk, rst;
    output reg[N:0] count;
    always@(negedge clk)
        if(rst) count<=0;
        else count<=count+1;
endmodule
