`timescale 1ns / 1ps

module EPBC(
    input a,b,c,d,p,
    output pec
    );
    
assign pec = ((~p)&(((~a)&(~b)&(~c)&(d))|((~a)&(~b)&(c)&(~d))|((~a)&(b)&(~c)&(~d))|((~a)&(b)&(c)&(d))|((a)&(b)&(~c)&(d))|((a)&(b)&(c)&(~d))|((a)&(~b)&(~c)&(~d))|((a)&(~b)&(c)&(d))))|((p)&(((~a)&(~b)&(~c)&(~d))|((~a)&(~b)&(c)&(d))|((~a)&(b)&(~c)&(d))|((~a)&(b)&(c)&(~d))|((a)&(b)&(~c)&(~d))|((a)&(b)&(c)&(d))|((a)&(~b)&(~c)&(d))|((a)&(~b)&(c)&(~d))));
endmodule
