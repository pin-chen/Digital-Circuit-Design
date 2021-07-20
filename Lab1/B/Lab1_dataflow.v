module	Lab1_dataflow(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	w1, w2, w3, w4, w5, _C, _B;
	
	assign	w1 = A | B;
	assign	_C = ~C;
	assign	w2 = _C | D;
	assign	w3 = w1 & w2;
	assign	w4 = A | C;
	assign	_B = ~B;
	assign	w5 = w4 & _B;
	assign	F = w3 | w5;
	
endmodule