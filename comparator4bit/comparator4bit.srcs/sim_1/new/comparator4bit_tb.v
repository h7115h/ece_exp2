`timescale 10ns / 10ps

module comparator4bit_tb;

  reg [3:0] a, b;
  wire x, y, z;

  comparator4bit uut (.a(a),.b(b),.x(x),.y(y),.z(z));

  initial begin
    a = 4'b0011;
    b = 4'b1000;
    #10;
    
    a = 4'b0111;
    b = 4'b0001;
    #10;

    a = 4'b1001;
    b = 4'b1001;
    #10;

    a = 4'b1011;
    b = 4'b1111;
    #10;

  end

endmodule

