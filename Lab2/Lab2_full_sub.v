module	Lab2_full_sub(
	input x, y, z, 
	output B, D);
	wire	w1, B1, B2;
	
	Lab2_half_sub_gatelevel M1(x, y, B1, w1);
	Lab2_half_sub_gatelevel M2(w1, z, B2, D);
	or	#(2)G1(B, B1, B2);
	
endmodule