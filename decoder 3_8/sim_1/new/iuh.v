`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2025 17:59:44
// Design Name: 
// Module Name: iuh
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
module decoder_3x8_tb();
reg [2:0]in;
reg en;
wire [8:0]out;
decoder_3x8 dut (in,en,out);
integer i;
initial begin
for(i=0;i<8;i=i+1)
begin
in=$random();
en=1;
#10;
$display("in=%d,en=%d,out=%d",in,en,out);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule