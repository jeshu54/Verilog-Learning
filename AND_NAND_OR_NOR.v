`timescale 1ns/1ps

// AND GATE
module and_gate(c,a,b);

input a, b;
output reg c;

always @(a,b)
assign c = a & b;

endmodule

// OR GATE

module or_gate(d,e,f);

input e, f;
output reg d;

always @(e,f)
assign d = e | f;

endmodule


// NAND GATE

module nand_gate(g,h,i);

input g, h;
output reg i;

always @(g,h)
assign i = ~(g & h);

endmodule

// NOR GATE

module nor_gate(j,k,l);

input j,k;
output reg l;

always @(j,k)
assign l = ~(j | k);

endmodule