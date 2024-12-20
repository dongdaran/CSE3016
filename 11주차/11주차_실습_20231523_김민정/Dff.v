`timescale 1ns / 1ps

module Dff(
    input clk, d,
    output q, qbar
   );

assign q = ~((~d &clk)|qbar);
assign qbar = ~((d & clk) |q);
endmodule
