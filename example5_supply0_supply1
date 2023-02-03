module example5_supply0_supply1( a,b,c,f  );
    input a,b,c;
    output f;
    supply0 gnd;
    supply1 vdd;
    wire t1, t2;
    
    nand g1(t1,vdd,a);
    xor g2(t2,b,gnd);
    and g3(f, t1,t2,c);
endmodule
