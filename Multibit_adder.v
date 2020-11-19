`timescale 1ns/1ps

module MultiAdder(a,b,cin,sum,cout);

input [0:3]a,b;
input cin;
wire cout0, cout1, cout2;
output [3:0]sum;
output cout; 

Adder Adder_0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(cout0));
Adder Adder_1(.a(a[1]),.b(b[1]),.cin(cout0),.sum(sum[1]),.cout(cout1));
Adder Adder_2(.a(a[2]),.b(b[2]),.cin(cout1),.sum(sum[2]),.cout(cout2));
Adder Adder_3(.a(a[3]),.b(b[3]),.cin(cout2),.sum(sum[3]),.cout(cout));

endmodule
