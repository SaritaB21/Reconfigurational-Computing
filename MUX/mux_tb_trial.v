
module mux_tb();
wire C;
reg [3:0]A;
reg [1:0]B;

mux m41(C,A,B);

initial
begin
A[0]=1'b1;A[1]=1'b0;A[2]=1'b0;A[3]=1'b0;
B[1]=1'b0;B[0]=1'b0;
#50;
A[0]=1'b0;A[1]=1'b1;A[2]=1'b0;A[3]=1'b0;
B[1]=1'b0;B[0]=1'b1;
#50;
A[0]=1'b0;A[1]=1'b0;A[2]=1'b1;A[3]=1'b0;
B[1]=1'b1;B[0]=1'b0;
#50;
A[0]=1'b1;A[1]=1'b1;A[2]=1'b1;A[3]=1'b0;
B[1]=1'b1;B[0]=1'b1;
#50 $finish;
end

endmodule
