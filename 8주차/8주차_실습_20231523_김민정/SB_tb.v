`timescale 1ns / 1ps

module SB_tb;

reg w,x,y,z;
wire a,b,c,d,e,f,g,dp, digit;

SB u_test(
   .w (w ),
   .x (x ),
   .y (y ),
   .z (z ),
   
   .a (a ),
   .b (b ),
   .c (c ),
   .d (d ),
   .e (e ),
   .f (f ),
   .g (g ),
   .dp (dp ),
   .digit (digit )
);

initial begin
    w=1'b0;
    x=1'b0;
    y=1'b0;
    z=1'b0;
end

always@(x or y or z or w) begin
    w <= #400 ~w;
    x <= #200 ~x;
    y <= #100 ~y;
    z <= #50 ~z;
end

initial begin
    #1000
    $finish;
end


endmodule
