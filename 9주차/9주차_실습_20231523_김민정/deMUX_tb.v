`timescale 1ns / 1ps

module deMUX_tb;

reg a,s0,s1;
wire out1, out2, out3, out4;

deMUX u_test(
    .a (a ),
    .s0 (s0 ),
    .s1 (s1 ),
    
    .out1 (out1 ),
    .out2 (out2 ),
    .out3 (out3 ),
    .out4 (out4 )
);
    
initial begin
    a=1'b0;
    s0=1'b0;
    s1=1'b0;
end

always@(a or s0 or s1) begin
    a <= #200 ~a;
    s0 <= #100 ~s0;
    s1 <= #50 ~s1;
end

initial begin
    #1000
    $finish;
end

endmodule
