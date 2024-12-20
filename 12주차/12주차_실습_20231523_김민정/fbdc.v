`timescale 1ns / 1ps


module fbdc(
    input clk, r,
    output [3:0] out
    );
reg [3:0] out;
always@(posedge clk)
begin
    if(!r)
        out<=0;
    else if (out == 9)
        out <= 0;
    else
        out <= out + 1;
end   
endmodule
