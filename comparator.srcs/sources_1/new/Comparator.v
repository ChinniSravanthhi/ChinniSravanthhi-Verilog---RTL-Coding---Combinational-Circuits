`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2025 17:58:05
// Design Name: 
// Module Name: Comparator
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
module comparator_4bit(
    input  [3:0] A,  // 4-bit input A
    input  [3:0] B,  // 4-bit input B
    output reg A_gt_B, // High if A > B
    output reg A_lt_B, // High if A < B
    output reg A_eq_B  // High if A == B
);

    always @(*) begin
        if (A > B) begin
            A_gt_B = 1'b1;
            A_lt_B = 1'b0;
            A_eq_B = 1'b0;
        end
        else if (A < B) begin
            A_gt_B = 1'b0;
            A_lt_B = 1'b1;
            A_eq_B = 1'b0;
        end
        else begin // A == B
            A_gt_B = 1'b0;
            A_lt_B = 1'b0;
            A_eq_B = 1'b1;
        end
    end

endmodule
