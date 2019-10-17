module addressGen(input [9:0] pixelx, pixely,
										posx, posy,
						output xm63, ym63,
						output logic [15:0] address);

logic [9:0] idx, idy;
assign idx = pixelx - posx;
assign idy = pixely - posy;
assign address = {idy[7:0], idx[7:0]}; 
assign xm63 = (idx > 10'd128);//cambiar por tama;o de sprite
assign ym63 = (idy > 10'd64);						
						
endmodule
     
//