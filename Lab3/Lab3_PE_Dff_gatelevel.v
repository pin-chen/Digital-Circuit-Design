module	Lab3_PE_Dff_gatelevel(
	input D, clock, 
	output Q, Qb);
	
	wire nand_1, nand_2, nand_3, nand_4;
	
	nand #(5) 	(nand_1, nand_4, nand_2),
				(nand_2, nand_1, clock),
				(nand_3, nand_2, clock, nand_4),
				(nand_4, nand_3, D);
	
	Lab3_SbRb_Latch_gatelevel SbRb(nand_2, nand_3, Q, Qb);
	
endmodule