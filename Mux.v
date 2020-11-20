`timescale 1ns/1ps

module muxfour_1(q,a,b,c,d,s);

input a,b,c,d;
input [1:0]s;

output q;
assign q = (s==2'b00)? a: (s==2'b01)? b:(s==2'b10) ? c:d;

endmodule
