`timescale 10ns/100ps

module decoder38_tb;

  reg x, y, z;
  wire [7:0] D;

  decoder38 uut (.x(x),.y(y),.z(z),.D(D));

  initial begin
    x = 0; y = 0; z = 0;
    #10;
    x = 0; y = 0; z = 1;
    #10;
    x = 0; y = 1; z = 0;
    #10;
    x = 0; y = 1; z = 1;
    #10;
    x = 1; y = 0; z = 0;
    #10;
    x = 1; y = 0; z = 1;
    #10;
    x = 1; y = 1; z = 0;
    #10;
    x = 1; y = 1; z = 1;
    #10;
  end

endmodule
