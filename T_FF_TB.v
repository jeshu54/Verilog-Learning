`timescale 1ns/1ps

module T_FF_TB();

reg clk, rst;
wire q;
reg d;


T_FF tff1(q, clk, rst);


initial
begin
#10 rst =1; d=1; clk=1;
#10 rst =1;  clk=0;
#10 rst =1;  clk=1;
#10 rst =1;  clk=0;
#10 rst =1;  clk=1;
#10 rst =1;  clk=0;
#10 rst =1;  clk=1;
#10 rst =1;  clk=0;
#10 rst =0;  clk=1;
#10 rst =0;  clk=0;
#10 rst =0;  clk=1;
#10 rst =0;  clk=0;
#10 rst =0;  clk=1;
#10 rst =0;  clk=0;
#10 rst =0;  clk=1;
#10 rst =0;  clk=0;
#10 rst =0;  clk=1;
end


endmodule

