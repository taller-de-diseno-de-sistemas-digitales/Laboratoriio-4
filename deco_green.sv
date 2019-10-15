module deco_green (
	input [2:0] data,
	output [7:0] color
	);
	
	always_comb
	case(data)
	0: color = 8'b00000000;
	1: color = 8'b11111111;
	2: color = 8'b11100011;
	3: color = 8'b10000000;
	4: color = 8'b00000000;
	default: color = 8'b00000000;
	endcase
	
endmodule 