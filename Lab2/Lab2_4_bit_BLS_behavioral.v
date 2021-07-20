module	Lab2_4_bit_BLS_behvioral(
	input [3:0]X, Y,
	input Bin, 
	output reg Bout, 
	output reg [3:0]Diff);
	
	reg	[3:0]B;
	reg	[3:0]G, P, _X;
	reg	B1_Lv1, 
		B2_Lv1_1, B2_Lv1_2, 
		B3_Lv1_1, B3_Lv1_2, B3_Lv1_3,
		B4_Lv1_1, B4_Lv1_2, B4_Lv1_3, B4_Lv1_4;
	///*
	always@(*)
		begin
			_X = ~X;
			G = _X & Y;
			P = (X&Y)|((~X)&(~Y));
			B1_Lv1 = P[0] & Bin;
			B2_Lv1_1 = P[1] & G[0];
			B2_Lv1_2 = P[1] & P[0] & Bin;
			B3_Lv1_1 = P[2] & G[1];
			B3_Lv1_2 = P[1] & P[0] & G[0];
			B3_Lv1_3 = P[2] & P[1] & P[0] & Bin;
			B4_Lv1_1 = P[3] & G[2];
			B4_Lv1_2 = P[3] & P[2] & G[1];
			B4_Lv1_3 = P[3] & P[2] & P[1] & G[0];
			B4_Lv1_4 = P[3] & P[2] & P[1] & P[0] & Bin;
			B[1] = G[0] | B1_Lv1;
			B[2] = G[1] | B2_Lv1_1 | B2_Lv1_2;
			B[3] = G[2] | B3_Lv1_1 | B3_Lv1_2 | B3_Lv1_3;
			Bout = G[3] | B4_Lv1_1 | B4_Lv1_2 | B4_Lv1_3 | B4_Lv1_4;
			B[0] = Bin;
			Diff = (P&B)|((~P)&(~B));
		end
	//*/
	/*	
	always@(X,Y,Bin,Bout,Diff)
		if({1'b0,X} < {1'b0,Y} + Bin)	{Bout,Diff} = {1'b1,X - Y - Bin};
		else							{Bout,Diff} = {1'b0,X - Y - Bin};
	*/
endmodule