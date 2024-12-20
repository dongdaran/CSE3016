`timescale 1ns / 1ps

module EPBG(
    input a,b,c,d,
    output p
    );
    
assign p = ((~a)&(~b)&(~c)&(d))|((~a)&(~b)&(c)&(~d))|((~a)&(b)&(~c)&(~d))|((~a)&(b)&(c)&(d))|((a)&(b)&(~c)&(d))|((a)&(b)&(c)&(~d))|((a)&(~b)&(~c)&(~d))|((a)&(~b)&(c)&(d));
endmodule
