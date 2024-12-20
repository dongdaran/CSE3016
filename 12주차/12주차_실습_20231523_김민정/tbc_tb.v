`timescale 1ns / 1ps

module tbc_tb;

reg clk, r;
wire [1:0] out;

tbc u_test(
    .clk (clk ),
    .r (r ),

    .out (out )
);

initial r=1'b0;
initial clk=1'b1;

always r = #100 ~r;
always clk = #7 ~clk;

initial begin
    #1000
    $finish;
end

endmodule
