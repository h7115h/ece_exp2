`timescale 1ns/1ps

module testbench;

  reg clk;
  reg rst;
  reg A;
  reg B;
  reg C;

  wire [2:0] state;
  wire y;

  vendingmachine DUT (
    .clk(clk),
    .rst(rst),
    .A(A),
    .B(B),
    .C(C),
    .state(state),
    .y(y)
  );

  always begin
    #5 clk = ~clk;
  end

  initial begin
    clk = 0;
    rst = 0;
    A = 0;
    B = 0;
    C = 0;

    #20 rst=1; A = 1;
    
    #20 A=0; B = 1;

    #20 B = 0; A=1;
    
    #20 A=0; B = 1;

    #20 B = 0; C=1;

    #20 C = 0;

    #20 rst=0;
    
    #20 rst=1; A = 1;
    
    #20 A=0; B = 1;

    #20 B = 0; C=1;

    

  end

endmodule

