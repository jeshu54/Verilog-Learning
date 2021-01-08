`timescale 1ns/1ps

module MultiAdder_N(a,b,cin,sum,cout);

parameter N=4;
input [N-1:0]a,b;
input cin;
wire [N-2:0] carry;
output [N-1:0]sum;
output [N-1:0]cout; 
genvar i;

Adder Adder_0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(cout[0]));

generate for (i=1; i<N-1; i=i+1) begin: add_loop
Adder Adder_n(a[i],b[i],cout[i-1], sum[i], cout[i]);
end
endgenerate

//Adder Adder_1(.a(a[1]),.b(b[1]),.cin(cout0),.sum(sum[1]),.cout(cout1));
//Adder Adder_2(.a(a[2]),.b(b[2]),.cin(cout1),.sum(sum[2]),.cout(cout2));
Adder Adder_3(.a(a[3]),.b(b[3]),.cin(cout[N-2]),.sum(sum[N-1]),.cout(cout[N-1]));

endmodule
