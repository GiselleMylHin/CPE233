`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Giselle Hinahon
// 
// Create Date: 02/20/2025 12:49:20 PM
// Design Name: 
// Module Name: BCG
// Project Name: pain
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


module BCG(
    input logic [31:0] rs1, //connected to ott. top rs1
    input logic [31:0] rs2, //connected to ott. top rs2
    output logic  br_eq,    //connected to ott. top br_eq     
    output logic br_lt,     //connected to ott. top br_lt
    output logic  br_ltu    //connected to ott. top br_ltu
    );
    assign br_eq = (rs1 == rs2);                         // check if inputs are equal and store it in br_eq
    assign br_lt = ($signed(rs1) < $signed(rs2));        // check if input1 is less than input 2 and store it in br_lt (both unputs are signed)
    assign br_ltu = (rs1 < rs2);                         // check if input1 is less than input 2 and store it in br_ltu
endmodule
