module	t_Lab3_PE_Dff_gatelevel;
	wire	Q, Qb;
	reg 	D, clock;
	parameter stop_time = 250;
	//instantiate device under test
	Lab3_PE_Dff_gatelevel M0(D, clock, Q, Qb);
	
	initial #stop_time $finish;
	
	//
	initial begin clock = 0; forever #20 clock = ~clock; end
	//
	initial	fork
		D = 1;
		#25  D = 0;
		#65  D = 1;
		#88  D = 0;
		#122 D = 1;
		#195 D = 0;
	join

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab3_PE_Dff_gatelevel.vcd");
		$dumpvars;
	end
endmodule