`timescale 1ns / 1ps
module TFF_oneshot2_tb;
  reg clk;
  reg rst;
  reg t;
  wire q;

TFF_oneshot2 u(.clk(clk),.rst(rst),.t(t), .q(q));  
always begin
    #5 clk = ~clk;
  end

  initial begin
    clk <= 0;
    rst <= 1;
    t <= 0;
    
    #10 rst <= 0;
    
    #10 rst <= 1;
    #10 t <= 1;
    #20 t <= 0;
    #20 t <= 1;
    
    #20 t <= 0;
    #20 t <= 1;
    #20 t <= 0;
    #20 t <= 1;

    $finish;
  end

endmodule

