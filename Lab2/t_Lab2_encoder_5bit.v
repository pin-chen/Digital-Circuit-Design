module	t_Lab2_encoder_5bit;
	reg [0:4]D;
	wire [2:0]A_gatelevel, A_dataflow, A_behavior;
	wire V_gatelevel, V_dataflow, V_behavior;
	parameter stop_time = 400;
	//instantiate device under test
	Lab2_encoder_5bit_gate_level	M1(D, A_gatelevel, V_gatelevel);
	Lab2_encoder_5bit_dataflow		M2(D, A_dataflow, V_dataflow);
	Lab2_encoder_5bit_behavior		M3(D, A_behavior, V_behavior);
	initial #stop_time $finish;
	//apply inputs one at a time
	initial	begin
		D = 5'b00000;
		#50 D = 5'b00001;
		#50 D = 5'b00011;
		#50 D = 5'b00110;
		#50 D = 5'b01001;
		#50 D = 5'b01101;
		#50 D = 5'b10110;
		#50 D = 5'b11010;
	end

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_encoder_5bit.vcd");
		$dumpvars;
	end
endmodule