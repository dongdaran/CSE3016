`timescale 1ns / 1ps

module SB(
    input w,x,y,z,
    output a,b,c,d,e,f,g,dp,digit
    );
    
assign a =(~w&~x&~z)|(~w&x&z)|(~w&y)|(x&y)|(w&~z)|(w&~x&~y);
assign b =(~w&~x)|(~w&~y&~z)|(~w&y&z)|(w&~x&~z)|(w&~y&z);
assign c =(~w&~y)|(~w&z)|(~w&x)|(~y&z)|(w&~x);
assign d = (~w&~x&~z)|(~x&y&z)|(x&~y&z)|(x&y&~z)|(w&~y&~z);
assign e = (w&x)|(y&~z)|(w&y)|(~x&~y&~z);
assign f = (~y&~z)|(w&~x)|(~w&x&~y)|(w&y)|(x&y&~z);
assign g = (~w&x&~y)|(~w&~x&y)|(y&~z)|(w&z)|(w&~x);
assign dp=1;
assign digit= a|b|c|d|e|f|g|dp;
endmodule
