module	Simple_Circuit(A, B, C, D, E);
	output	D, E;
	input	A, B, C;
	wire	w1;
	
	or		G3(D, w1, E);
	not		G2(E, C);
	and		G1(w1, A, B);
endmodule