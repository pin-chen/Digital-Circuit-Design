module	t_Lab3_Sequence_Recognizer;
	wire	z_state_diagram, z_structure;
	reg 	x, clock, reset;
	parameter stop_time = 150;
	//instantiate device under test
	Lab3_Sequence_Recognizer_state_diagram 	state_diagram	(x, clock, reset, z_state_diagram);
	Lab3_Sequence_Recognizer_structure 		structure		(x, clock, reset, z_structure);
	//
	initial #stop_time $finish;
	//
	initial begin 
		reset = 0;
		clock = 0; 
		forever #5 clock = ~clock; 
	end
	//
	initial	fork
		x = 1;
		#4 reset = 1;
		#10 x = 1;
		#20 x = 0;
		#30 x = 0;
		#40 x = 1;
		#50 x = 0;
		#60 x = 1;
		#70 x = 1;
		#80 reset = 0;
		#80 x = 0;
		#84 reset = 1;
		#90 x = 0;
		#100 x = 1;
		#110 x = 0;
		#120 x = 0;
		#130 x = 0;
	join

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab3_Sequence_Recognizer.vcd");
		$dumpvars;
	end
endmodule