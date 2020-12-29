`timescale 1ns/1ps

module T_FF(q, clk, rst);

input clk, rst;
output q;
wire d;


flip_flop FF(d,q,clk, rst);
not n1(d,q);

endmodule

