`timescale 1ns / 1ps

module mealy_tb;

reg clk,reset,in;
wire out;
wire [3:0] Q;

mealy u_test(
    .clk ( clk),
    .reset ( reset),
    .in ( in),
    
    .out (out),
    .Q (Q )
    
    );

initial begin
    reset = 1'b1; 
    in=1'b1;
    clk = 1'b1;
end

always reset = #200 ~reset;
always in= #20 $urandom%2;
always clk = #10 ~clk;

initial begin
    #1000
    $finish;   
end
endmodule

