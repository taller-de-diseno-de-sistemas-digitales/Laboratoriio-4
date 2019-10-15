module deco (input [2:0] color,	
             output logic [23:0] RGB);

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
	3'd0: RGB = 24'hAAAAAA;
	3'd1: RGB = 24'h000000;
	3'd2: RGB = 24'hffffff;
	3'd3: RGB = 24'hFF1551;
	3'd4: RGB = 24'hbf8718;
	3'd5: RGB = 24'h5eff00;
	3'd6: RGB = 24'h008fff;
	3'd7: RGB = 24'h02006b;
	endcase
endmodule
//
