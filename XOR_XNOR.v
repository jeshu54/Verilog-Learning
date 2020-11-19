`timescale 1ns/1ps

// XOR GATE
module xor_gate(c,a,b);

input a, b;
output reg c;

always @(a,b)
assign c = (a|b) & (~b|~a);

endmodule

// OR GATE

module xnor_gate(d,e,f);

input e, f;
output reg d;

always @ (e,f)
assign d = ((e&f) |  (~f&~e));

endmodule


