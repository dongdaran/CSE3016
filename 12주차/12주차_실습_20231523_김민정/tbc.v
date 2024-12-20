`timescale 1ns / 1ps

module tbc(

    input clk, r,
    output [1:0] out
    );
    
reg [1:0] out;
always@(posedge clk)
begin
    if(!r)
        out <= 0;
    else
        out <= out + 1;
end
endmodule
