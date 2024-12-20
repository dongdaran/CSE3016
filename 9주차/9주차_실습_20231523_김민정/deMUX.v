`timescale 1ns / 1ps

module deMUX(
    input a,s0,s1,
    output out1, out2, out3, out4
    );
    
assign out1 = a&(~s0)&(~s1);
assign out2 = a&(s0)&(~s1);
assign out3 = a&(~s0)&(s1);
assign out4 = a&(s0)&(s1);
endmodule
