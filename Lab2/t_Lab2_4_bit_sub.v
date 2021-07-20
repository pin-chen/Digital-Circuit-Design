module	t_Lab2_4_bit_sub;
	wire	Bout_RBS, Bout_BLS_gatelevel, Bout_BLS_dataflow, Bout_BLS_behvioral;
	wire	[3:0]Diff_RBS, Diff_BLS_gatelevel, Diff_BLS_dataflow, Diff_BLS_behvioral;
	reg 	[3:0]X, Y;
	reg		Bin;
	parameter stop_time = 400;
	//instantiate device under test
	Lab2_4_bit_RBS				M1(X, Y, Bin, Bout_RBS, Diff_RBS);
	Lab2_4_bit_BLS_gatelevel	M2(X, Y, Bin, Bout_BLS_gatelevel, Diff_BLS_gatelevel);
	Lab2_4_bit_BLS_dataflow		M3(X, Y, Bin, Bout_BLS_dataflow, Diff_BLS_dataflow);
	Lab2_4_bit_BLS_behvioral	M4(X, Y, Bin, Bout_BLS_behvioral, Diff_BLS_behvioral);
	initial #stop_time $finish;
	//apply inputs one at a time
	initial	begin
		X=4'b1111; Y=4'b1111; Bin=1'b1;
		#50 X=4'b0001; Y=4'b1101; Bin=1'b0;
		#50 X=4'b0101; Y=4'b0101; Bin=1'b0;
		#50 X=4'b1100; Y=4'b0011; Bin=1'b1;
		#50 X=4'b1000; Y=4'b0111; Bin=1'b0;
		#50 X=4'b0000; Y=4'b1111; Bin=1'b1;
		#50 X=4'b0110; Y=4'b0001; Bin=1'b0;
		#50 X=4'b1100; Y=4'b1000; Bin=1'b1;
	end

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_4_bit_sub.vcd");
		$dumpvars;
	end
endmodule