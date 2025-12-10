`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2025 19:43:19
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb2_1( );
reg I0,I1,s;
wire y;
integer i,j,k;
mux2_1 DUT (y,I0,I1,s);
initial begin
   for(i=0;i<2;i=i+1)
   begin
    s =i;
    for(j=0;j<2;j=j+1)
    begin
      I0 =j;
    for(k=0;k<2;k=k+1)
    begin
      I1 =k;
      #10;
    end
   end
  end
$finish;
end
endmodule

