`timescale 1ns / 1ps

module EC_tb;

reg a,b,c,d;
wire e0,e1;

EC u_test(
    .a (a ),
    .b (b ),
    .c (c ),
    .d (d ),
    
    .e0 (e0 ),
    .e1 (e1 )
);
    
initial begin
    a=1'b0;
    b=1'b0;
    c=1'b0;
    d=1'b0;
end

always@(a or b or c or d) begin
    a <= #400 ~a;
    b <= #200 ~b;
    c <= #100 ~c;
    d <= #50 ~d;
end

initial begin
    #1000
    $finish;
end



endmodule
