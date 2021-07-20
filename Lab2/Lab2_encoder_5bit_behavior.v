module	Lab2_encoder_5bit_behavior(
	input [0:4]D, 
	output reg [2:0]A,
	output reg V);
	///*
	always@(*)
		begin
			V = !(D == 5'b00000);
			A[2] = D == 5'b00001;
			A[1] = (~D[0] & ~D[1] & D[2]) | (~D[0] & ~D[1] & D[3]);
			A[0] = (~D[0] & D[1]) | (~D[0] & ~D[2] & D[3]);
		end
	//*/
	/*
	always@(D, A, V)
		if(D[0])	  {A,V} = 4'b0001;
		else if(D[1]) {A,V} = 4'b0011;
		else if(D[2]) {A,V} = 4'b0101;
		else if(D[3]) {A,V} = 4'b0111;
		else if(D[4]) {A,V} = 4'b1001;
		else		  V = 1'b0;
	*/
endmodule