module deco (input [2:0] color,	
             output logic [3:0] R,
				 output logic [3:0] G,
				 output logic [3:0] B
				 );

// 0 - Fondo
// 1 - 0x000000
// 2 - 0xffffff
// 3 - 0XFF1551
// 4 - 0xbf8718
// 5 - 0x5eff00
// 6 - 0x008fff
// 7 - 0x02006b				 
				 
				 
always_comb
	case (color)
	3'd0: begin
	R <= 4'b0001;
	G <= 4'b0001;
	B <= 4'b0001;
	end
	3'd1: begin
	R <= 4'b0101;
	G <= 4'b0101;
	B <= 4'b0101;
	end
	3'd2: begin
	R <= 4'b000;
	G <= 4'b000;
	B <= 4'b000;
	end
	3'd3: begin
	R <= 4'b0001;
	G <= 4'b0000;
	B <= 4'b0000;
	end
	3'd4: begin
	R <= 4'b0001;
	G <= 4'b0001;
	B <= 4'b0001;
	end
	3'd5: begin
	R <= 4'b0000;
	G <= 4'b0000;
	B <= 4'b0001;
	end
	3'd6: begin
	R <= 4'b0000;
	G <= 4'b0001;
	B <= 4'b0000;
	end
	3'd7: begin
	R <= 4'b0110;
	G <= 4'b0;
	B <= 4'b0000;
	end
	endcase
endmodule
//
