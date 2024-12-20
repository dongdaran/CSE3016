`timescale 1ns / 1ps

module RC_tb;

reg clk, reset;
wire [3:0] Q;

RC u_test(
    .clk (clk ),
    .reset (reset ),
   
    .Q (Q )
);
    
initial begin
    clk = 1'b0;
    reset = 1'b0;
end

always clk = #10 ~clk;
always reset = #500 ~reset;

initial begin
    #1000
    $finish;
end

endmodule
