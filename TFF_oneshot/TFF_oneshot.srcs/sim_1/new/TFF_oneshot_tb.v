`timescale 1ns / 1ps
module TFF_oneshot_tb();
reg clk, rst, T;
wire Q;

TFF_oneshot u(clk, rst, T,Q);

initial begin
    clk<=0;
    rst<=1;
    T<=0;
    #10 rst<=0;
    #10 rst<=1;
    #40 T<=1;
    #60 T<=0;
    #40 T<=1;
    #60 T<=0;
    #40 T<=1;
    #60 T<=0;
    #40 T<=1;
    #60 T<=0;
end

always begin
    #5 clk <= ~clk;
end
endmodule