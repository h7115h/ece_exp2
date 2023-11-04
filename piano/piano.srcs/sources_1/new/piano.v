module piano(clk, rst, btn, piezo);
input clk, rst;
input [7:0] btn;
output reg piezo;

parameter do=12'd3830;
parameter rae=12'd3400;
parameter mi=12'd3038;
parameter fa=12'd2864;
parameter sol=12'd2550;
parameter la=12'd2272;
parameter ti=12'd2028;
parameter high_do=12'd1912;

reg [11:0] cnt;
reg [11:0] cnt_limit;

always@(btn) begin
    if(!rst) cnt_limit=0;
    else begin
        case(btn)
            8'b00000001 : cnt_limit = do;
            8'b00000010 : cnt_limit = rae;
            8'b00000100 : cnt_limit = mi;
            8'b00001000 : cnt_limit = fa;
            8'b00010000 : cnt_limit = sol;
            8'b00100000 : cnt_limit = la;
            8'b01000000 : cnt_limit = ti;
            8'b10000000 : cnt_limit = high_do;
            default : cnt_limit = 0;
        endcase
    end
end

always@(posedge clk or negedge rst) begin
    if(!rst) begin
        cnt=0;
        piezo=0;
    end
    else if(cnt >= cnt_limit/2) begin
        piezo=~piezo;
        cnt=0;
    end
    else cnt= cnt+1;
end
endmodule
