`timescale 1ns / 1ps
module fb2421dc_tb;

reg clk, r;
wire [3:0] out;

fb2421dc u_test(
    .clk (clk ),
    .r (r ),

    .out (out )
);

initial r=1'b0;
initial clk=1'b1;

always r = #100 ~r;
always clk = #5 ~clk;

initial begin
    #1000
    $finish;
end

endmodule
