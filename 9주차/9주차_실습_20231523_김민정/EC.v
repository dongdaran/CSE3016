`timescale 1ns / 1ps
module EC(
    input a,b,c,d,
    output e0, e1
    );
    
assign e0 = a | b;
assign e1 = a | c;

endmodule
