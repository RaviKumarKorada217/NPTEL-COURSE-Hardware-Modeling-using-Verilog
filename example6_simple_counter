`timescale 1ns / 1ps

module example6_simple_counter( clk, rst, count  );
    input clk, rst;
    output reg[31:0] count; //32-bit counter
    
    always@(posedge clk) //synchronous reset
        begin
            if(rst)
             count=32'b0;
            else
             count=count+1;
        end             
endmodule


/* Asynchronous reset */

`timescale 1ns / 1ps

module example6_simple_counter( clk, rst, count  );
    input clk, rst;
    output reg[31:0] count; //32-bit counter
    
    always@(posedge clk or posedge rst) //Asynchronous reset
        begin
            if(rst)
             count=32'b0;
            else
             count=count+1;
        end             
endmodule

