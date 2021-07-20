module	Lab1_gatelevel_UDP(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	w1, w2, w3, _C, _B;
	
	not		not_C(_C, C);
	Lab1_UDP M1(w1, A, B, _C, D);
	or		G1_LV1(w2, A, C);
	not		not_B(_B, B);
	and		G2_LV2(w3, w2, _B);
	or		G3_LV3(F, w1, w3);
	
endmodule