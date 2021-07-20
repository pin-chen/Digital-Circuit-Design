module	Lab2_4_bit_BLS_gatelevel(
	input [3:0]X, Y,
	input Bin, 
	output Bout, 
	output [3:0]Diff);
	
	wire	B1, B2, B3;
	wire	[3:0]G, P, _X, _P;
	wire	B1_Lv1, 
			B2_Lv1_1, B2_Lv1_2, 
			B3_Lv1_1, B3_Lv1_2, B3_Lv1_3,
			B4_Lv1_1, B4_Lv1_2, B4_Lv1_3, B4_Lv1_4;
			
	not	(_X[0], X[0]),
		(_X[1], X[1]),
		(_X[2], X[2]),
		(_X[3], X[3]);
		
	and	#(2)(G[0], _X[0], Y[0]),
		(G[1], _X[1], Y[1]),
		(G[2], _X[2], Y[2]),
		(G[3], _X[3], Y[3]);
	
	xnor #(4)(P[0], X[0], Y[0]),
		(P[1], X[1], Y[1]),
		(P[2], X[2], Y[2]),
		(P[3], X[3], Y[3]);
		
	xnor #(4)(Diff[0], P[0], Bin),
		(Diff[1], P[1], B1),
		(Diff[2], P[2], B2),
		(Diff[3], P[3], B3);
		
	not	(_P[0], P[0]),
		(_P[1], P[1]),
		(_P[2], P[2]),
		(_P[3], P[3]);
	
	and	#(2)(B1_Lv1, P[0], Bin),
		(B2_Lv1_1, P[1], G[0]),
		(B2_Lv1_2, P[1], P[0], Bin),
		(B3_Lv1_1, P[2], G[1]),
		(B3_Lv1_2, P[1], P[0], G[0]),
		(B3_Lv1_3, P[2], P[1], P[0], Bin),
		(B4_Lv1_1, P[3], G[2]),
		(B4_Lv1_2, P[3], P[2], G[1]),
		(B4_Lv1_3, P[3], P[2], P[1], G[0]),
		(B4_Lv1_4, P[3], P[2], P[1], P[0], Bin);
		
	or	#(2)(B1, G[0], B1_Lv1),
		(B2, G[1], B2_Lv1_1, B2_Lv1_2),
		(B3, G[2], B3_Lv1_1, B3_Lv1_2, B3_Lv1_3),
		(Bout, G[3], B4_Lv1_1, B4_Lv1_2, B4_Lv1_3, B4_Lv1_4);
		
endmodule