module	Lab2_4_bit_RBS(
	input [3:0]X, Y,
	input Bin, 
	output Bout, 
	output [3:0]Diff);
	
	wire	B1, B2, B3;
	
	Lab2_full_sub M1(X[0], Y[0], Bin, B1, Diff[0]);
	Lab2_full_sub M2(X[1], Y[1], B1, B2, Diff[1]);
	Lab2_full_sub M3(X[2], Y[2], B2, B3, Diff[2]);
	Lab2_full_sub M4(X[3], Y[3], B3, Bout, Diff[3]);
	
endmodule