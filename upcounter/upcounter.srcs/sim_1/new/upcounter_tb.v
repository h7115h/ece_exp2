`timescale 1ns/1ps

module testbench;
  reg clk;
  reg rst;
  reg x;
  wire [1:0] state;

  upcounter DUT (
    .clk(clk),
    .rst(rst),
    .x(x),
    .state(state)
  );

  always begin
    #5 clk = ~clk;
  end

  initial begin
    clk = 0;
    rst = 0;
    x = 0;

    #20 rst = 1;

    x = 1;
    #20 x = 0;

    #20

    x = 1;
    #20 x = 0;

    #20

    x = 1;
    #20 x = 0;
    
    #20

    x = 1;
    #20 x = 0;
    #20

    $finish;
  end

endmodule

