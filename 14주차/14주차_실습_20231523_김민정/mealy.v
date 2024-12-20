`timescale 1ns / 1ps

module mealy(
    input clk, reset,
    input in,
    output out,
    output [3:0] Q
    );
    
reg out;
reg A,B,C,D;
reg [3:0] Q;

initial begin
        A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        out = 1'b0;
        Q=1'b0000;
    end
    
    
always @(posedge clk or posedge reset)
    begin 
    if(reset)
        begin
        A <= 1'b1;
        B <= 1'b0;
        C <= 1'b0;
        D <= 1'b0;
        out <= 1'b0;
        end
    else if(A==1'b1)
        begin
        if(in)
            begin
            B <= 1'b1;
            A <= 1'b0;
            out<=1'b0;
            end
        else
            begin
            A <= 1'b1;
            out <= 1'b0;
            end
        end
        else if(B==1'b1)
            begin
            if(in)
                begin
                B<=1'b0;
                C<=1'b1;
                out<=1'b0;
                end
            else
                begin
                B<=1'b0;
                A<=1'b1;
                out<=1'b0;
                end
           end
        else if(C==1'b1)
               begin
               if(in)
                   begin
                   C<=1'b1;
                   out<=1'b0;
                   end
               else
                   begin
                   C<=1'b0;
                   D<=1'b1;
                   out<=1'b0;
                   end
              end
        else if(D==1'b1)
                  begin
                  if(in)
                      begin
                      D<=1'b0;
                      B<=1'b1;
                      out<=1'b1;
                      end
                  else
                      begin
                      D<=1'b0;
                      A<=1'b1;
                      out<=1'b0;
                      end
                 end
            end
        
    
always @(posedge clk) begin
    if(reset) begin 
        Q = 4'b0000;
     end
     else begin
        Q[0] <= Q[1];
        Q[1] <= Q[2];
        Q[2] <= Q[3];
        Q[3] <= in;
     end
   end    

 endmodule       