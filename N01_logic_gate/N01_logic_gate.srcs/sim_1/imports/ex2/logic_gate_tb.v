`timescale 10ns / 100ps

module testbench();
reg a,b;
wire x,y,z,u,v;

logic_gate l1(a,b,x,y,z,u,v);

initial begin
    a=1'b0; b=1'b0;
    #20 
    a=1'b0; b=1'b1;
    #20 
    a=1'b1; b=1'b0;
    #20 
    a=1'b1; b=1'b1;
end

endmodule