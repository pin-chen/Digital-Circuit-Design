module	t_Lab3_SbRb_Latch_gatelevel;
	wire	Q, Qb;
	reg 	Sb, Rb;
	parameter stop_time = 250;
	//instantiate device under test
	Lab3_SbRb_Latch_gatelevel M0(Sb, Rb, Q, Qb);
	
	initial #stop_time $finish;
	
	//
	initial	fork
		Sb = 0; Rb = 1;
		#30  Sb = 1; #30  Rb = 1;
		#60  Sb = 1; #60  Rb = 0;
		#90  Sb = 1; #90  Rb = 1;
		#120 Sb = 0; #120 Rb = 0;
		#150 Sb = 1; #150 Rb = 1;
		#180 Sb = 0; #180 Rb = 1;
	join

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab3_SbRb_Latch_gatelevel.vcd");
		$dumpvars;
	end
endmodule