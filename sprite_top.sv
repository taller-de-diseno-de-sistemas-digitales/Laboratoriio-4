module sprite_top(input clk, input [9:0] posx,
						posy, pixelx, pixely,
						input enable,
						output [3:0] R,
						output [3:0] G,
						output [3:0] B,
						output visible);
//ROM 
logic [15:0] address;
logic [2:0] color;
Xsprite ROM (address,clk, color);	
//DECO
deco DECO (color, R, G, B);
logic xm63, ym63;
//ADDRESS GENERATION
addressGen ADDRESSS(pixelx, pixely,
            posx, posy, xm63, ym63,address);	//genera address para recorrer el rom
//VISIBLE LOGIC			
visibleLogic VIS (xm63, ym63,color,enable,visible);						
endmodule  
//
