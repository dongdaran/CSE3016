`timescale 1ns / 1ps

module adder(
    input [3:0] A, [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
    );
    
wire [3:1] C;

assign S[0] = A[0]^B[0]^Cin;
assign C[1] = (A[0]&B[0]) | Cin&(A[0]^B[0]);

assign S[1] = A[1]^B[1]^C[1];
assign C[2] = (A[1]&B[1]) | C[1]&(A[1]^B[1]);

assign S[2] = A[2]^B[2]^C[2];
assign C[3] = (A[2]&B[2]) | C[2]&(A[2]^B[2]);

assign S[3] = A[3]^B[3]^C[3];
assign Cout = (A[3]&B[3]) | C[3]&(A[3]^B[3]);

endmodule
