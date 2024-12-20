`timescale 1ns / 1ps

module SR_tb;
reg clk, reset, si;
wire [3:0] Q;

SR u_test(
    .clk (clk ),
    .reset (reset ),
    .si (si ),
   
    .Q (Q )
);
    
initial begin
    clk = 1'b0;
    reset = 1'b0;
    si = 1'b1;
end

always clk = #10 ~clk;
always si = #50 ~si; 


initial reset = #600 ~ reset;

endmodule
