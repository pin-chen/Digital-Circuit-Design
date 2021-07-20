module	Lab2_half_sub_gatelevel(
	input x, y, 
	output B, D);
	wire	_x;
	
	not	(_x, x);
	
	and	#(2)G1(B, _x, y);
	xor #(4)G2(D, x, y);
endmodule