`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/18 09:28:19
// Design Name: 
// Module Name: FourAnd_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FourAnd_tb;

reg aa,bb,cc,dd;

wire ee,ff,gg;

FourAnd u_cast(
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),

.e (ee ),
.f (ff ),
.g (gg )
);

initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
    dd=1'b0;
end

always@(aa or bb or cc or dd) begin
    aa<= #50 ~aa;
    bb<= #100 ~bb;
    cc<= #150 ~cc;
    dd<= #200 ~dd;
end

initial begin
    #1000
    $finish;
end


endmodule
