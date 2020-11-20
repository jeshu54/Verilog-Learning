`timescale 1ns/1ps

module mux_tb;

reg a,b,c,d;
reg [1:0]s;

wire q;

muxfour_1 muxtb(.q(q),.a(a),.b(b),.c(c),.d(d),.s(s));

initial begin

a=0;
b=1;
c=1;
d=1;
s = 2'b00;

#10;
a=1;
b=0;
c=1;
d=1;
s = 2'b01;

#10;
a=1;
b=1;
c=0;
d=1;
s = 2'b10;

#10;
a=1;
b=1;
c=1;
d=0;
s = 2'b11;

#10;
end
endmodule
