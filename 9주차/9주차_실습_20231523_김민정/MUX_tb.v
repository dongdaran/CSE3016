`timescale 1ns / 1ps

module MUX_tb;
reg a,b,c,d,s0,s1;
wire f;

MUX u_test(
    .a (a ),
    .b (b ),
    .c (c ),
    .d (d ),
    .s0 (s0 ),
    .s1 (s1 ),
    
    .f (f )
);
    
initial begin
    a=1'b0;
    b=1'b0;
    c=1'b0;
    d=1'b0;
    s0=1'b0;
    s1=1'b0;
    
end

always@(a or b or c or d or s1 or s0) begin
    a <= #800 ~a;
    b <= #400 ~b;
    c <= #200 ~c;
    d <= #100 ~d;
    s0 <= #50 ~s0;
    s1 <= #25 ~s1;
end

initial begin
    #1000
    $finish;
end

endmodule
