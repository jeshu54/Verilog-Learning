`define FALSE 1'b0;
`define TRUE 1'b1;

`define Y2RDELAY 2;
`define R2GDELAY 3;

module traffic_light(hwy,ctr,X, clk,rst);

reg [2:0] state;
reg [2:0] next_state;
output reg [1:0] hwy, ctr;
input X;
input clk,rst;

parameter RED = 2'd0, GREEN = 2'd1, YELLOW = 2'd2; 

parameter S0=3'd0;   

parameter S1=3'd1;

parameter S2=3'd2;

parameter S3=3'd3;

parameter S4=3'd4;


always @(posedge clk)
begin 

if(rst)
state <= S0;
else
state <= next_state;
end

always @(state)
begin
hwy = GREEN;
ctr = RED;
case(state)

S0:;
S1: hwy = YELLOW;
S2: hwy = RED;
S3: begin
hwy = RED; 
ctr = GREEN;
end
S4: begin 
hwy=RED;
ctr= YELLOW;
end

endcase
end

always @ (X or state)
begin

case(state)

S0: if(X)
	next_state = S1;
	else
	next_state = S0;

S1: begin
	repeat(3) @(posedge clk)
	next_state = S2;
	end
	
S2: begin
	repeat(3) @(posedge clk)
	next_state = S3;
	end
	
S3: if(X)
	next_state = S3;
	else
	next_state = S4;

S4: begin
	repeat(3) @(posedge clk)
	next_state = S0;
	
end
default: next_state=S0;

endcase
end

endmodule
