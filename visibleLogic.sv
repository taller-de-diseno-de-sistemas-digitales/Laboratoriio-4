module visibleLogic (input xm63, ym63,
							input [2:0] color,
							input enable,
							output visible);

logic background;
assign background = (color == 3'd0); 
assign visible = ~background && ~(xm63 | ym63) && enable;
	
endmodule
//

