`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2025 19:16:44
// Design Name: 
// Module Name: mux 32
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

module mux_32x1#(parameter k=32)(
input [k-1:0]a,
input [4:0] sel,
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
