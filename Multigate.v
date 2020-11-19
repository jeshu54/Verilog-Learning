`timescale 1ns/1ps

//AND and OR Gate
module multi_gate(c,d,a,b);

input a,b;
output reg c,d;

always @(a,b)

begin

c = a&b;
d = a|b;

end

endmodule

//XNOR and NAND

module multi_gate1(e,f,g,h);

input e,f;
output reg g,h;
wire j;

assign j = ~e;

always begin @(j,e) g = ~(j&e); end
always begin @(j,f) h = ~(j^f); end

endmodule

