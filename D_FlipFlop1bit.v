`timescale 1ns/1ps
module flip_flop(d,q, clk, rst);

input d, rst, clk;
output reg q;

//assign #10 clk =! clk;

always @(posedge rst or negedge clk)
if(rst)
q <= 1'b0;
else
q <= d;

endmodule

