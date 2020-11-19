`timescale 1ns/1ps

module Adder(a,b,cin,sum,cout);

input a,b,cin;
wire d,e,f;
output reg cout,sum; 
assign d = a^b;
always @(a,b,cin)
begin sum = a^b^cin; end

always @(cin,a,b) 
begin

cout = a&b | cin&d;
end

endmodule
