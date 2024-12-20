`timescale 1ns / 1ps

module Dff_tb;

reg clk, d;
wire q, qbar;

Dff u_test(
    .clk (clk ),
    .d (d ),
    
    .q (q ),
    .qbar (qbar )
);

initial clk = 1'b0;
initial d=1'b0;
 
always clk = #20 ~clk;
always d = #50 ~d;
 
initial begin
   #500
   $finish;
 end
endmodule
