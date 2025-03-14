`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Giselle Hinahon
// 
// Create Date: 03/01/2025 07:09:23 PM
// Design Name: 
// Module Name: REGFILE
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


module REGFILE(
    input logic en,
    input logic [4:0] adr1 ,
    input logic [4:0] adr2 ,
    input logic [4:0] w_adr ,
    input logic [31:0] w_data,
    input logic CLK,
    output logic  [31:0] rs1,
    output logic [31:0] rs2
    );
    logic [31:0] register [0:31];          // create a memory module with 16-bit width and 512 addresses

    initial begin                          // initialize the memory to be all 0s
        int i;
        for (i=0; i<32; i=i+1) begin
            register[i] = 0;
        end
    end

    assign rs1=register[adr1];             //asynchronously set the registers to be 0
    assign rs2=register[adr2];
    always_ff @( posedge CLK)begin         //check that the enable is active and that the write adress is not 0 
    // if enable is on
        if(en) begin
            if (w_adr !=0) begin
                register[w_adr]<= w_data;
            end
        end
    end
endmodule
