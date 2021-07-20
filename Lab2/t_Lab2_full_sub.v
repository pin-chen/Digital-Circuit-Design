module	t_Lab2_full_sub;
	wire	B, D;
	reg		x, y, z;
	parameter stop_time = 400;
	//instantiate device under test
	Lab2_full_sub M1(x, y, z, B, D);
	
	initial #stop_time $finish;
	//apply inputs one at a time
	initial	begin
		{x,y,z} = 3'b000;
		repeat(7) #50 {x,y,z} = {x,y,z} + 1'b1;
	end

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_full_sub.vcd");
		$dumpvars;
	end
endmodule