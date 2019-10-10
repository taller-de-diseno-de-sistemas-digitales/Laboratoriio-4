module sum #(parameter N=4) (
	input [N-1:0] a,
	input [N-1:0] b,
	output [N-1:0] c
);

	assign c = a + b;

endmodule 