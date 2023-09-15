`timescale 10ns / 10ps

module priorityencoder42_tb();
    reg [3:0] D;
    wire [1:0] y;
    wire v;

    priorityencoder42 u0(D,y,v);

    always begin 
        D = 4'b0000;
        #20 D = 4'b1000;
        #20 D = 4'b1011;
        #20 D = 4'b0101;
        #20 D = 4'b0001;
        #20;
    end
endmodule
