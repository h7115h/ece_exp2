`timescale 1ns / 1ps

module fulladder(x,y,z,s,c);
input x,y,z;
output c,s;
wire s1, c1, c2;

half_adder u1(x,y,s1,c1);
half_adder u2(z,s1,s,c2);
assign c= c1|c2;

endmodule
