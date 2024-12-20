`timescale 1ns / 1ps

module SR(
    input clk, reset, si,
    output [3:0] Q
    );
    
reg [3:0] Q;
initial Q = 4'b0000;

always @(posedge clk) begin
    if(reset) begin 
        Q = 4'b0000;
     end
     else begin
        Q[0] <= Q[1];
        Q[1] <= Q[2];
        Q[2] <= Q[3];
        Q[3] <= si;
     end
   end    
endmodule
