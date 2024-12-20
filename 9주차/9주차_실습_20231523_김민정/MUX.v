`timescale 1ns / 1ps

module MUX(
    input a,b,c,d,s0,s1,
    output f
    );

assign f = ((~s0)&(~s1)&a)|((s0)&(~s1)&b)|((~s0)&(s1)&c)|((s0)&(s1)&d);

endmodule
