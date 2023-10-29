`timescale 1ns/10ps

module testbench;
  reg clk;
  reg rst;
  reg x;

  wire [1:0] state;
  wire y;

  statediagram DUT (
    .clk(clk),
    .rst(rst),
    .x(x),
    .state(state),
    .y(y)
  );
 
  always begin
    #5 clk = ~clk;
  end
  
  initial begin
    clk = 0;
    rst = 0;
    x = 0;

    #10 rst = 1;
    #10 x = 1;
    #10 x = 1;
    #10 x = 0;
    #10
    $finish;
  end

endmodule

