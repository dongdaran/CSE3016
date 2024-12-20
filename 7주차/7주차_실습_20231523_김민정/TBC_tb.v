`timescale 1ns / 1ps

module TBC_tb;

reg aa1, aa2, bb1, bb2;
wire llt, eeq, ggt;

TBC u_test(
    .a1 (aa1 ),
    .a2 (aa2 ),
    .b1 (bb1 ),
    .b2 (bb2 ),
    
    .lt (llt ),
    .eq (eeq ),
    .gt (ggt )
);

initial begin
    aa1=1'b0;
    aa2=1'b0;
    bb1=1'b0;
    bb2=1'b0;
end

always@(aa1 or aa2 or bb1 or bb2) begin
    aa1 <= #400 ~aa1;
    aa2 <= #200 ~aa2;
    bb1 <= #100 ~bb1;
    bb2 <= #50 ~bb2;
end

initial begin
#1000
$finish;
end

endmodule
