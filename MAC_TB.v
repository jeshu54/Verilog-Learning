`timescale 1ns/1ps

module mac_tb;

reg [7:0]in;
reg rst_n;
reg clk;
wire [31:0] out;

MAC mac(.in(in),.rst_n(rst_n),.clk(clk),.out(out));

initial begin
clk = 1'b0;
in = 8'h00;
rst_n=1'b1;
#1;
rst_n=1'b0;
#1;
rst_n=1'b1;
#4;
in=8'h01;
#4;
in=8'h02;
#4;
in=8'h04;
$stop;
end

always #2 clk = ~clk; 
endmodule
