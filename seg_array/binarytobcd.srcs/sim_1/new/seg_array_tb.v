`timescale 1us / 1ns
module seg_array_tb();
  reg clk;
  reg rst;
  reg btn;
  wire [7:0] seg_data;
  wire [7:0] seg_sel;
  
  seg_array uut(.clk(clk),.rst(rst),.btn(btn),.seg_data(seg_data),.seg_sel(seg_sel));

  always begin
    #5 clk = ~clk;
  end

  initial begin
    clk = 0;
    rst = 0;
    btn = 0;

    #10 rst = 1;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;
    #1e+6 btn=1;
    #10 btn=0;


    $finish;
  end
endmodule
