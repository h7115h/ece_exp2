`timescale 10ns / 10ps

module mux2b4to1_tb();
reg [1:0] I0,I1,I2,I3; 
reg [1:0] S;
wire [1:0] Y;
    
mux4bit8to1 u0(I0,I1,I2,I3,S,Y);
initial begin

        S = 2'b00;
    #10 S = 2'b01;
    #10 S = 2'b10;
    #10 S = 2'b11;
    end
endmodule

