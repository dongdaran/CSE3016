`timescale 1ns / 1ps

module DC_tb;
reg a,b;
wire d0,d1,d2,d3;

DC u_test(
    .a (a ),
    .b (b ),
    
    .d0 (d0 ),
    .d1 (d1 ),
    .d2 (d2 ),
    .d3 (d3 )
);
    
initial begin
    a=1'b0;
    b=1'b0;
end

always@(a or b) begin
    a <= #50 ~a;
    b <= #100 ~b;
end

initial begin
    #400
    $finish;
end


endmodule
