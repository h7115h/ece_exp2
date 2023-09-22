module TFF_oneshot2 (
  input wire clk,     
  input wire rst,     
  input wire t,       
  output reg q,       
  reg T_reg,          
  wire T_trig        
);

assign T_trig = t & ~T_reg;

always @(posedge clk or negedge rst) begin
  if (!rst) begin
    q <= 1'b0;     
    T_reg <= 1'b0; 
  end else begin
    if (T_trig) begin
      q <= ~q;   
    end
    T_reg <= t;     
  end
end

endmodule