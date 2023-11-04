`timescale 1us / 1ns
module piano_tb();
reg clk, rst;
reg [7:0] btn;
wire piezo;

piano P1(clk, rst, btn, piezo);

initial begin
    clk <= 0;
    rst <= 1;
    btn <= 8'b00000000;
    #1e+6; rst <= 0;
    #1e+6; rst <= 1;
    #1e+6; btn <= 8'b00000001;
    #1e+6; btn <= 8'b00100000;
end
always begin
    #1 clk <= ~clk;
end

endmodule
