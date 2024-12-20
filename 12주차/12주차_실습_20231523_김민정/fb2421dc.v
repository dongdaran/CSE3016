`timescale 1ns / 1ps

module fb2421dc(
    input clk, r,
    output [3:0] out
    );
reg [3:0] out;
always@(posedge clk)
begin
    if(!r)
        out <= 0;
    else if (out ==4)
        out <=11;
    else if (out ==15)
        out <=0;
    else
        out <= out +1;
end
endmodule
