module updowncounter(clk, rst, x, state);

input clk, rst, x;
reg x_reg, x_trig, up;
output reg [2:0] state;

always@(negedge rst or posedge clk) begin
    if(!rst) begin
        {x_reg, x_trig} <= 3'b000;
    end
    else begin
        x_reg <= x;
        x_trig <= x & ~x_reg;
    end
end
always@(*) begin
    if(state==3'b111) up=0;
    else if (state==3'b000) up=1;
end
always@(negedge rst or posedge clk) begin
    if(!rst) state <= 3'b000;
    else if (up) begin
        case(state)
            3'b000: state <= x_trig ? 3'b001 : 3'b000;
            3'b001: state <= x_trig ? 3'b010 : 3'b001;
            3'b010: state <= x_trig ? 3'b011 : 3'b010;
            3'b011: state <= x_trig ? 3'b100 : 3'b011;
            3'b100: state <= x_trig ? 3'b101 : 3'b100;
            3'b101: state <= x_trig ? 3'b110 : 3'b101;
            3'b110: state <= x_trig ? 3'b111 : 3'b110;
        endcase
    end
    else if (!up) begin
        case(state)
            3'b001: state <= x_trig ? 3'b000 : 3'b001;
            3'b010: state <= x_trig ? 3'b001 : 3'b010;
            3'b011: state <= x_trig ? 3'b010 : 3'b011;
            3'b100: state <= x_trig ? 3'b011 : 3'b100;
            3'b101: state <= x_trig ? 3'b100 : 3'b101;
            3'b110: state <= x_trig ? 3'b101 : 3'b110;
            3'b111: state <= x_trig ? 3'b110 : 3'b111;
        endcase
    end
end

endmodule
