`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Giselle Hinahon
// 
// Create Date: 03/01/2025 05:18:52 PM
// Design Name: 
// Module Name: PC
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


module PlusFour(
     input logic [0:31] SUM_IN,                // declaring inputs and outputs
     output logic [0:31] SUM_OUT
     );
     assign SUM_OUT = 4'b0100+SUM_IN;          //adds 4 to the input value and outputs the sum
endmodule
