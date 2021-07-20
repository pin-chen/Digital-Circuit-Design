module	Lab2_4_bit_BLS_dataflow(
	input [3:0]X, Y,
	input Bin, 
	output Bout, 
	output [3:0]Diff);
	
	wire	[3:0]B;
	wire	[3:0]G, P, _X;
	wire	B1_Lv1, 
			B2_Lv1_1, B2_Lv1_2, 
			B3_Lv1_1, B3_Lv1_2, B3_Lv1_3,
			B4_Lv1_1, B4_Lv1_2, B4_Lv1_3, B4_Lv1_4;
	///*
	assign	_X = ~X;
	
	assign	G = _X & Y;
	
	assign	P = (X&Y)|((~X)&(~Y));
	assign	B[0] = Bin;
	assign	Diff = (P&B)|((~P)&(~B));
	
		
	assign	B1_Lv1 = P[0] & Bin,
			B2_Lv1_1 = P[1] & G[0],
			B2_Lv1_2 = P[1] & P[0] & Bin,
			B3_Lv1_1 = P[2] & G[1],
			B3_Lv1_2 = P[1] & P[0] & G[0],
			B3_Lv1_3 = P[2] & P[1] & P[0] & Bin,
			B4_Lv1_1 = P[3] & G[2],
			B4_Lv1_2 = P[3] & P[2] & G[1],
			B4_Lv1_3 = P[3] & P[2] & P[1] & G[0],
			B4_Lv1_4 = P[3] & P[2] & P[1] & P[0] & Bin;
		
	assign	B[1] = G[0] | B1_Lv1,
			B[2] = G[1] | B2_Lv1_1 | B2_Lv1_2,
			B[3] = G[2] | B3_Lv1_1 | B3_Lv1_2 | B3_Lv1_3,
			Bout = G[3] | B4_Lv1_1 | B4_Lv1_2 | B4_Lv1_3 | B4_Lv1_4;
	//*/
	//assign	Diff = X - Y - Bin;
	//assign	Bout = {1'b0,X} < {1'b0,Y} + Bin ?	1'b1 : 1'b0;
endmodule