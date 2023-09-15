module priorityencoder42(D,y,v);
input [3:0] D;
output reg v;
output reg [1:0] y;
    
    always@(*)begin
        v=1;
        if(D[3]) y=2'b11;
        else if(D[2]) y=2'b10;
        else if(D[1]) y=2'b01;
        else if(D[0]) y=2'b00;
        else begin
            v=0;
            y=2'bx;
        end
    end
endmodule