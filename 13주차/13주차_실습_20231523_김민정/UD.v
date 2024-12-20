`timescale 1ns / 1ps
module UD(
    input up,clk,reset,
    output [3:0] Q,
    output [6:0] ss,
    output d
    );
assign d = 1'b1;

reg [3:0] Q;
reg [6:0] ss;

initial Q = 4'b0000;
always @(posedge clk) begin
    if(up) begin
        if(reset)
            Q =4'b0000;
        else
        Q <= Q + 1;
        ss <= 7'b0111110;
    end
    else begin
        if(reset)
            Q =4'b0000;
        else
            Q <= Q - 1;
            ss <= 7'b0111101;
    end
end
endmodule
