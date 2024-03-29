module illegal_move_detector(
	input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,
	input [8:0] X_en, O_en,
	output wire illegal_move = 1'b0
	);
	
	wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9;
	wire temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18,temp19;
	wire temp21,temp22;
	
	// playerO movimiento ilegal   
	assign temp1 = (pos1[1] | pos1[0]) & O_en[0];
	assign temp2 = (pos2[1] | pos2[0]) & O_en[1];
	assign temp3 = (pos3[1] | pos3[0]) & O_en[2];
	assign temp4 = (pos4[1] | pos4[0]) & O_en[3];
	assign temp5 = (pos5[1] | pos5[0]) & O_en[4];
	assign temp6 = (pos6[1] | pos6[0]) & O_en[5];
	assign temp7 = (pos7[1] | pos7[0]) & O_en[6];
	assign temp8 = (pos8[1] | pos8[0]) & O_en[7];
	assign temp9 = (pos9[1] | pos9[0]) & O_en[8];
	// playerX movimiento ilegal  
	assign temp11 = (pos1[1] | pos1[0]) & X_en[0];
	assign temp12 = (pos2[1] | pos2[0]) & X_en[1];
	assign temp13 = (pos3[1] | pos3[0]) & X_en[2];
	assign temp14 = (pos4[1] | pos4[0]) & X_en[3];
	assign temp15 = (pos5[1] | pos5[0]) & X_en[4];
	assign temp16 = (pos6[1] | pos6[0]) & X_en[5];
	assign temp17 = (pos7[1] | pos7[0]) & X_en[6];
	assign temp18 = (pos8[1] | pos8[0]) & X_en[7];
	assign temp19 = (pos9[1] | pos9[0]) & X_en[8];
	//senales inttermedias
	assign temp21 =((((((((temp1 | temp2) | temp3) | temp4) | temp5) | temp6) | temp7) | temp8) | temp9);
	assign temp22 =((((((((temp11 | temp12) | temp13) | temp14) | temp15) | temp16) | temp17) | temp18) | temp19);
	// salida movimiento ilegal 
	assign illegal_move = temp21 | temp22 ;
	endmodule 