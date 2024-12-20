`timescale 1ns / 1ps

module RSff_NOR_tb;

reg clk, s, r;
wire q, qbar;

RSff_NOR u_test(
    .clk (clk ),
    .s (s ),
    .r (r ),
    
    .q (q ),
    .qbar (qbar )
);

initial clk = 1'b0;
initial r=1'b0;
initial s=1'b1;
 
always clk = #20 ~clk;
always r = #50 ~r;
always s = #100 ~s;
 
initial begin
   #1000
   $finish;
 end
endmodule
