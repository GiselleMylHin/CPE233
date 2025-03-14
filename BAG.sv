`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Giselle Hinahon
// 
// Create Date: 02/20/2025 12:58:39 PM
// Design Name: Branch Address Generator
// Module Name: BAG
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


module BAG(
    input logic [31:0] rs1,    //connected to ott. top rs1
    input logic [31:0] PC,     //connected to ott. top PC
    input logic [31:0] IType,  //connected to ott. top Itype
    input logic [31:0] JType,  //connected to ott. top Jtype
    input logic [31:0] BType,  //connected to ott. top Btype

    output logic [31:0] branch, //connected to ott. top BRANCH
    output logic [31:0] jal,    //connected to ott. top JAL
    output logic [31:0] jalr    //connected to ott. top JALR
    );
    assign branch = PC + BType;         //branch address generation formating 
    assign jal = PC + JType;            //jal address generation formating 
    assign jalr = rs1 + IType;          //jalr address generation formating
endmodule
