`timescale 1ns / 1ps

module adder_tb;

reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [3:0]S;
wire Cout;

adder u_test(
    .A (A ),
    .B (B ),
    .Cin (Cin ),
    
    .S (S ),
    .Cout (Cout )
    );
    
initial begin
    Cin = 1'b0;
    A[0] = 1'b0;
    A[1] = 1'b0;
    A[2] = 1'b0;
    A[3] = 1'b0;
    B[0] = 1'b0;
    B[1] = 1'b0;
    B[2] = 1'b0;
    B[3] = 1'b0;
end

always@(A or B or Cin) begin
   Cin <= #800 ~Cin;
   A[0] <= #400 ~A[0];
   A[1] <= #200 ~A[1];
   A[2] <= #100 ~A[2];
   A[3] <= #50 ~A[3];
   B[0] <= #25 ~B[0];
   B[1] <= #12.5 ~B[1];
   B[2] <= #7.25 ~B[2];
   B[3] <= #3.625 ~B[3];
end

initial begin
    #1000
    $finish;
end

endmodule
