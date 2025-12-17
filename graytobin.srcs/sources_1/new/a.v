`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2025 20:02:52
// Design Name: 
// Module Name: a
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

module gray_2_bin(
input [4:0] g,
output [4:0] b);
assign b[4]=g[4];
assign b[3]=g[4]^g[3];
assign b[2]=g[4]^g[3]^g[2];
assign b[1]=g[4]^g[3]^g[2]^g[1];
assign b[0]=g[4]^g[3]^g[2]^g[1]^g[0];
endmodule
