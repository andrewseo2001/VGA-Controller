`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2021 07:31:11 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
input wire clk, //100MHz
output reg divided_clk = 0 //1Hz => 0.5s ON and 0.5s OFF
);

localparam div_value = 1; 
integer counter_value=0; //32 bit wide reg bus

 //division value = 100Mhz/(2*desired frequency)-1
always@ (posedge clk) //sensitivity list // rising edge 0-1
begin
    if (counter_value  == div_value)
        counter_value <= 0; //reset counter 
    else
        counter_value <= counter_value + 1;
end

always@ (posedge clk)
begin
    if (counter_value == div_value)
        divided_clk <= ~divided_clk; //flip the signal every 1000 clk signsls
    else
        divided_clk <= divided_clk; //store the value
        
end

 
endmodule















