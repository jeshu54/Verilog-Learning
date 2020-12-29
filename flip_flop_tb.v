`timescale 1ns/1ps

module FF_TB();

reg clk, rst;
wire q;
reg d;


flip_flop ff_tb(.d(d),.q(q), .clk(clk), .rst(rst));

initial
begin
#10 rst =1; d=1; clk=1;
#10 rst =1; d=1; clk=0;
#10 rst =1; d=1; clk=1;
#10 rst =1; d=1; clk=0;
#10 rst =1; d=1; clk=1;
#10 rst =1; d=1; clk=0;
#10 rst =1; d=1; clk=1;
#10 rst =1; d=1; clk=0;
#10 rst =0; d=1; clk=1;
#10 rst =0; d=1; clk=0;
#10 rst =0; d=1; clk=1;
#10 rst =0; d=1; clk=0;
#10 rst =0; d=1; clk=1;
#10 rst =0; d=1; clk=0;
#10 rst =0; d=1; clk=1;
#10 rst =0; d=1; clk=0;
#10 rst =0; d=1; clk=1;
#10 rst =0; d=1; clk=0;
end

endmodule

