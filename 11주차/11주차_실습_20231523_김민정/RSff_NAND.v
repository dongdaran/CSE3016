`timescale 1ns / 1ps
module RSff_NAND(
    input s, r, clk,
    output q, qbar
    );
    
assign q = ~(~(s&clk) & qbar);
assign qbar = ~(~(r & clk) & q);

endmodule
