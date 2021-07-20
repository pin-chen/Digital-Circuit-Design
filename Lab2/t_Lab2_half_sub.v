module	t_Lab2_half_sub;
	wire	B, D;
	reg		x, y;
	parameter stop_time = 50;
	//instantiate device under test
	Lab2_half_sub_gatelevel M1(x, y, B, D);
	
	initial #stop_time $finish;
	//apply inputs one at a time
	initial	begin
		{x,y} = 2'b00;
		repeat(3) #10 {x,y} = {x,y} + 1'b1;
	end

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_half_sub.vcd");
		$dumpvars;
	end
endmodule