`timescale 1ns / 1ps

module UD_tb;

reg clk, up,reset;
wire[3:0] Q;
wire[6:0] ss;
  
UD u_test(
    .clk (clk ),
    .up (up ),
    .reset (reset ),
    
    .Q (Q ),
    .ss (ss )
  );
  
initial clk = 1'b0;
initial up = 1'b1;
initial reset = 1'b0;
  
always clk = #10 ~clk;
always up = #50 ~up;
always reset = #400 ~reset;
  
initial begin
    #1000
    $finish;
  end
endmodule
