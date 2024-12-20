`timescale 1ns / 1ps

module EPBC_tb;

reg aa, bb, cc, dd, pp;
wire ppec;

EPBC u_test(
    .a (aa ),
    .b (bb ),
    .c (cc ),
    .d (dd ),
    .p (pp ),
    
    .pec (ppec )
);

initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
    dd=1'b0;
    pp=1'b0;
end

always@(aa or bb or cc or dd or pp) begin
    aa <= #400 ~aa;
    bb <= #200 ~bb;
    cc <= #100 ~cc;
    dd <= #50 ~dd;
    pp <= #25 ~pp;
end

initial begin
#1000
$finish;
end

endmodule
