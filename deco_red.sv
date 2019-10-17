module deco_red (
	input [3:0] data,
	output [7:0] color
	);
	
	always_comb
	case(data)
	0: color = 8'b00000000;//Negro
	1: color = 8'b11111111;//Blanco/fondo
	2: color = 8'b01110111;//
	3: color = 8'b11111111;
	4: color = 8'b10011001;
	5: color = 8'b11111111;
	6: color = 8'b10011001;
	default: color = 8'b00000000;
	endcase
	
endmodule 