module TFF_oneshot_c(clk,rst, T, Q);

input T, clk, rst;
output reg Q;
reg T_reg, T_trig;

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        Q <= 1'b0;
        T_reg <= 1'b0;
        T_trig <= 1'b0;
    end else begin
        if (T_trig) begin
            Q <= ~Q;
        end
        T_reg <= T;
        T_trig <= T & ~T_reg;
    end
end

endmodule
