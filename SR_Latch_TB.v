module SR_LATCH_TB;

reg S,R;
wire Q,Qbar;

SR_LATCH sr1(.S(S), .R(R),.Q(Q),.Qbar(Qbar));

initial 
begin

#10 S=1; R=0;
#10 S=0; R=1;
#10 S=1; R=1;

#30 $stop();
end

endmodule
