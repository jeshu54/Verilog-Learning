module ripple_counter(q,clk,rst);

input clk, rst;
output [3:0]  q;


T_FF TFF0(q[0], clk, rst);
T_FF TFF1(q[1], q[0], rst);
T_FF TFF2(q[2], q[1], rst);
T_FF TFF3(q[3],q[2], rst);

endmodule;
