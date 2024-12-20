`timescale 1ns / 1ps

module TBC(
    input a1,a2,b1,b2,
    output lt, eq, gt
    );

assign lt = ((~a1)&(~a2)&(b2))| ((~a1)&(b1))|((~a2)&(b1)&(b2));
assign eq = ((~a1)&(~a2)&(~b1)&(~b2))|((~a1)&(a2)&(~b1)&(b2))|((a1)&(a2)&(b1)&(b2))|((a1)&(~a2)&(b1)&(~b2));
assign gt = ((a1)&(~b1))| ((a2)&(~b1)&(~b2))|((a1)&(a2)&(~b2));
endmodule
