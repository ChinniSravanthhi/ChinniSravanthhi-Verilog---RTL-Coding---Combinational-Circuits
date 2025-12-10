`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2025 19:04:44
// Design Name: 
// Module Name: mux
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
module mux_64x1#(parameter k=64)(
input [k-1:0]a,
input [5:0] sel,
output reg y);
integer i;
always @(*)
begin
for(i=0;i<k;i=i+1)
begin
case(sel)
i: y= a[i];
endcase
end
end
endmodule
