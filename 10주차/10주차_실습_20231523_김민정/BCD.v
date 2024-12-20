`timescale 1ns / 1ps

module BCD(
    input [3:0] A, B,
    input Cin,
    output [3:0] bcdS,
    output bcdCout
    );
    
wire [3:0] S;  
wire [3:1] C;
wire Cout;
wire [3:1] bcdC;
wire [3:0] bcd;

assign S[0] = A[0]^B[0]^Cin;
assign C[1] = (A[0]&B[0]) | Cin&(A[0]^B[0]);

assign S[1] = A[1]^B[1]^C[1];
assign C[2] = (A[1]&B[1]) | C[1]&(A[1]^B[1]);

assign S[2] = A[2]^B[2]^C[2];
assign C[3] = (A[2]&B[2]) | C[2]&(A[2]^B[2]);

assign S[3] = A[3]^B[3]^C[3];
assign Cout = (A[3]&B[3]) | C[3]&(A[3]^B[3]);

assign bcdCout = (S[3]&S[2]) | (S[3]&S[1]) | Cout;

assign bcd[0] = 0;
assign bcd[1] = bcdCout;
assign bcd[2] = bcdCout;
assign bcd[3] = 0;

assign bcdS[0] = bcd[0]^S[0];
assign bcdC[1] = bcd[0]&S[0];

assign bcdS[1] = bcd[1]^S[1]^bcdC[1];
assign bcdC[2] = (bcd[1]&S[1]) | bcdC[1]&(bcd[1]^S[1]);

assign bcdS[2] = bcd[2]^S[2]^bcdC[2];
assign bcdC[3] = (bcd[2]&S[2]) | bcdC[2]&(bcd[2]^S[2]);

assign bcdS[3] = bcd[3]^S[3]^bcdC[3];

endmodule
