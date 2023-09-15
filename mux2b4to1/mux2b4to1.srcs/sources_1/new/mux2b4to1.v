module mux2b4to1(I0,I1,I2,I3,S,Y);
input [1:0] I0,I1,I2,I3; 
input [1:0] S;
output reg [1:0] Y;
  
always @(*) begin
  case (S)
    2'b00: Y = I0;
    2'b01: Y = I1;
    2'b10: Y = I2;
    2'b11: Y = I3;
    default: Y = 2'bx;
  endcase
end

endmodule
