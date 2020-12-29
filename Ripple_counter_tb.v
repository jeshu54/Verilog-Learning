`timescale 1ns/1ps;

module ripple_counter_tb();

wire [3:0]q;
reg clk, rst;


ripple_counter rc(q,clk,rst);

initial
clk = 1'b0; //set clk to 0
always
#5 clk = ~clk; //toggle clk every 5 time units
// Control the reset signal that drives the design block
// reset is asserted from 0 to 20 and from 200 to 220.
initial
begin
rst = 1'b1;
#15 rst = 1'b0;
#180 rst = 1'b1;
#10 rst = 1'b0;
#20 $stop; //terminate the simulation
end

endmodule
