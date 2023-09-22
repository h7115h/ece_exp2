`timescale 1ns / 1ps
module JKFF_tb();
reg J, K, clk;

JKFF u1(clk, J, K, Q, Qbar);
initial begin
J=0;K=0;
#20 J=0;K=1;
#20 J=0;K=0;
#20 J=1;K=0;
#20 J=0;K=0;
#20 J=1;K=1;
#20 J=0;K=0;
end

initial begin
clk=0;
    forever begin
    #10 clk=~clk;
    end
end
endmodule
