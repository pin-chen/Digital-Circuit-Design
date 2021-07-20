module	Lab3_Sequence_Recognizer_structure (
	input x, clock, reset, 
	output z);
	
	wire A, B, C, DA, DB, DC;
	wire [2:0]state_structure;
	// Flip-flop input equations
	assign DA = (~C & x) | (C & B & ~x);
	assign DB = (C & x) | (~C & ~x & B) | (~C & ~x & A);
	assign DC = ~x;
	//output equation
	assign z = (~C & ~x & B) | (C & x & A);
	//Instantiate D flip-flops
	D_ff_AR DffA(DA, clock, reset, A);
	D_ff_AR DffB(DB, clock, reset, B);
	D_ff_AR DffC(DC, clock, reset, C);
	//for test
	assign state_structure = {A,B,C};
	
endmodule