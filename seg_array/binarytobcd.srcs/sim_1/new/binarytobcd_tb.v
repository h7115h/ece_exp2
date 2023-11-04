`timescale 1ns / 1ps
module binarytobcd_tb();

  reg clk;
  reg rst;
  reg [3:0] bin;
  wire [7:0] bcd;
  
  binarytobcd uut(.clk(clk),.rst(rst),.bin(bin),.bcd(bcd));

  always begin
    #5 clk = ~clk;
  end

  initial begin
    clk = 0;
    rst = 0;
    bin = 4'b0000;

    #10 rst = 1;

    #10 bin= 4'b0001;
    #10 bin= 4'b0010;
    #10 bin= 4'b0011;
    #10 bin= 4'b0100;
    #10 bin= 4'b0101;
    #10 bin= 4'b0110;
    #10 bin= 4'b0111;
    #10 bin= 4'b1000;
    #10 bin= 4'b1001;
    #10 bin= 4'b1010;
    #10 bin= 4'b1011;
    #10 bin= 4'b1100;
    #10 bin= 4'b1101;
    #10 bin= 4'b1110;
    #10 bin= 4'b1111;
    
    
    #100;
    $finish;
  end
endmodule

