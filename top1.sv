module top1(
    input wire CLK,             // board clock: 100 MHz on Arty/Basys3/Nexys
    input wire RST_BTN,         // reset button
    output wire VGA_HS_O,       // horizontal sync output
    output wire VGA_VS_O,       // vertical sync output
	 output wire VGA_CLK,
    output wire [7:0] VGA_R,    // 4-bit VGA red output
    output wire [7:0] VGA_G,    // 4-bit VGA green output
    output wire [7:0] VGA_B     // 4-bit VGA blue output
    );

    wire rst = ~RST_BTN;    // reset is active low on Arty & Nexys Video
    // wire rst = RST_BTN;  // reset is active high on Basys3 (BTNC)

    // generate a 25 MHz pixel strobe
    reg pix_stb;
    clock_divider VGA_Clock_gen (CLK,pix_stb);
	 assign VGA_CLK = pix_stb;
    wire [9:0] x;  // current pixel x position: 10-bit value: 0-1023
    wire [8:0] y;  // current pixel y position:  9-bit value: 0-511

    vga640x480 display (
        .i_clk(CLK),
        .i_pix_stb(pix_stb),
        .i_rst(rst),
        .o_hs(VGA_HS_O), 
        .o_vs(VGA_VS_O), 
        .o_x(x), 
        .o_y(y)
    );

    // Four overlapping squares
    /*wire sq_a, sq_b, sq_c, sq_d;
    assign sq_a = ((x > 0) & (y >  40) & (x < 320) & (y < 200)) ? 1 : 0;
    assign sq_b = ((x > 200) & (y > 120) & (x < 360) & (y < 280)) ? 1 : 0;
    assign sq_c = ((x > 280) & (y > 200) & (x < 440) & (y < 360)) ? 1 : 0;
    assign sq_d = ((x > 360) & (y > 280) & (x < 520) & (y < 440)) ? 1 : 0;

    assign VGA_R[7] = sq_b;         // square b is red
    assign VGA_G[7] = sq_a | sq_d;  // squares a and d are green
    assign VGA_B[7] = sq_c;         // square c is blue
	 */
	 
	 //assign VGA_G = ((x == 213 || x == 426) || (y == 160 || y == 320)) ? 8'h0 : 8'hFF;
	 //assign VGA_B = ((x == 213 || x == 426) || (y == 160 || y == 320)) ? 8'h0 : 8'hFF;
	 //assign VGA_R = ((x == 213 || x == 426) || (y == 160 || y == 320)) ? 8'h0 : 8'hFF;
	 
	 assign VGA_R = ((x == 213 || x == 426)) ? 8'b00000000 : 8'b11111111; 
	 assign VGA_G = ((x == 213 || x == 426)) ? 8'b00000000 : 8'b11111111;
	 assign VGA_B = ((x == 213 || x == 426)) ? 8'b00000000 : 8'b11111111;
	 
endmodule 