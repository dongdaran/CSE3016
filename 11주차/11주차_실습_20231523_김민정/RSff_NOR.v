`timescale 1ns / 1ps
module RSff_NOR(
    input s, r, clk,
    output q, qbar
    );
    
assign q = ~((r&clk) | qbar);
assign qbar = ~((s & clk) | q);

endmodule
