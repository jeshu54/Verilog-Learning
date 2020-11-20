`timescale 1ns/1ps

module MAC(in,rst_n,clk,out);

input [7:0]in;
input rst_n;
input clk;
output reg [31:0]out;
wire [31:0] out_next;

always @(posedge clk or negedge rst_n)
out = (rst_n)? out_next:0;

assign out_next = out + (in*2);

endmodule
