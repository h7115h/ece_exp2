`timescale 1ns / 1ps

module half_adder(
    input wire x,y,
    output wire s,c
    );
    
    assign s=x^y;
    assign c=x&y;
    
endmodule
