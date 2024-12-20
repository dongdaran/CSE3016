`timescale 1ns / 1ps

module RSff_NAND_tb;

reg clk, s, r;
wire q, qbar;

RSff_NAND u_test(
    .clk (clk ),
    .s (s ),
    .r (r ),
    
    .q (q ),
    .qbar (qbar )
);

initial begin
    clk = 1'b0;
    r = 1'b0;
    s = 1'b1;
end
 
always clk = #25 ~clk;
always r = #20 ~r;
always s = #30 ~s;
 
initial begin
   #1000
   $finish;
 end
endmodule
