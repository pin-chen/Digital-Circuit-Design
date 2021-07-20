module	Lab1_gatelevel(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	w1, w2, w3, w4, w5, _C, _B;
	
	or		G1_LV1(w1, A, B);
	not		not_C(_C, C);
	or		G2_LV1(w2, _C, D);
	and		G3_LV2(w3, w1, w2);
	or		G4_LV1(w4, A, C);
	not		not_B(_B, B);
	and		G5_LV2(w5, w4, _B);
	or		G6_LV3(F, w3, w5);
	
endmodule