`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2025 23:02:11
// Design Name: 
// Module Name: m4_1
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
module mux4to1 (
    input wire [3:0] d,   // 4 data inputs: d[3], d[2], d[1], d[0]
    input wire [1:0] sel, // 2-bit select line
    output reg y          // output
);

    // Always block triggered whenever d or sel changes
    always @(*) begin
        case (sel)
            2'b00: y = d[0];
            2'b01: y = d[1];
            2'b10: y = d[2];
            2'b11: y = d[3];
            default: y = 1'b0; // default case
        endcase
    end

endmodule
