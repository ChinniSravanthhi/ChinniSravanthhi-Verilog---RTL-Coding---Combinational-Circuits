`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2025 17:59:02
// Design Name: 
// Module Name: hj
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
module decoder_3x8(
input [2:0]in,
input en,
output reg [8:0] out);
always @(*)
begin
if(en)
begin
case(in)
  3'b000:out=8'b0000_0001;
  3'b001:out=8'b0000_0010;
  3'b010:out=8'b0000_0100;
  3'b011:out=8'b0000_1000;
  3'b100:out=8'b0001_0000;
  3'b101:out=8'b0010_0000;
  3'b110:out=8'b0100_0000;
  3'b111:out=8'b1000_0000;
  default:out=8'b0000_0000;
endcase
end
end
endmodule
