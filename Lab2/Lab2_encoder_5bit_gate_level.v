module	Lab2_encoder_5bit_gate_level(
	input [0:4]D, 
	output [2:0]A,
	output V);
	wire	[0:4]_D;
	wire	A1_1, A1_2, A0_1, A0_2;
	
	or	G1(V, D[0], D[1], D[2], D[3], D[4]);
	not	(_D[0], D[0]),
		(_D[1], D[1]),
		(_D[2], D[2]),
		(_D[3], D[3]),
		(_D[4], D[4]);
		
	and	G2(A[2], _D[0], _D[1], _D[2], _D[3], D[4]);
	
	and	G3(A1_1, _D[0], _D[1], D[2]),
		G4(A1_2, _D[0], _D[1], D[3]);
	or	G5(A[1], A1_1, A1_2);
	
	and	G6(A0_1, _D[0], D[1]),
		G7(A0_2, _D[0], _D[2], D[3]);
	or	G8(A[0], A0_1, A0_2);
endmodule