/* 4-Bit RCA */

`timescale 1ns / 1ps

module RCA( a, b, cin, s);
input [3:0] a, b;
input cin=0;
output [4:0] s;
wire [3:1] c;

FA fa0( a[0], b[0], cin, s[0], c[1]);
FA fa1( a[1], b[1], c[1], s[1], c[2]);
FA fa2( a[2], b[2], c[2], s[2], c[3]);
FA fa3( a[3], b[3], c[3], s[3], s[4]);
endmodule

/* Full Adder*/
`timescale 1ns / 1ps

module FA( a, b, c, sum, carry );
input a, b, c;
output sum, carry;

sum s1( a, b, c, sum);
carry c1( a, b, c, carry);
endmodule

//sum

module sum( a, b, c, s);
input a, b, c;
output s;
wire w1;

xor x1( w1, a, b);
xor x2( s, c, w1);
endmodule

//carry

module carry( a, b, c, cy);
input a, b, c;
output cy;
wire w1, w2, w3;

and a1(w1, a, b);
and a2(w2, b, c);
and a3(w3, a, c);
or o1(cy, w1, w2, w3);
endmodule

// 4-Bit RCA testbench

`timescale 1ns / 1ps

module RCA_tb( );
reg [3:0] a, b;
reg cin;
wire [4:0]s;

RCA dut ( .a(a), .b(b), .cin(cin), .s(s));

initial begin
a=0; b=0; cin=0;
end

initial begin
#20;
a=2; b=3;
#20;
a=9; b=13;
#20;
a=10; b=14;
#20;
a=10; b=14;

$stop;

end
endmodule
