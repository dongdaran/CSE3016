`timescale 1ns / 1ps

module sub(
    input [3:0] A, [3:0] B, 
    input Kin,
    output [3:0] D, 
    output Kout
    );
    
wire [3:1] K;
    
assign D[0] = (A[0]^B[0])^Kin;
assign K[1] = (~A[0]&B[0]) | (Kin&~(A[0]^B[0]));
    
assign D[1] = (A[1]^B[1])^K[1];
assign K[2] = (~A[1]&B[1]) | (K[1]&~(A[1]^B[1]));

assign D[2] = (A[2]^B[2])^K[2];
assign K[3] = (~A[2]&B[2]) | (K[1]&~(A[2]^B[2]));

assign D[3] = (A[3]^B[3])^K[3];
assign Kout = (~A[3]&B[3]) | (K[3]&~(A[3]^B[3]));

endmodule
