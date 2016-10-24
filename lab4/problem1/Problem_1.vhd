----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2016 12:17:21 PM
-- Design Name: 
-- Module Name: Problem_1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Problem_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           F : out STD_LOGIC);
end Problem_1;
    
architecture Behavioral of Problem_1 is
    component Multiplexer port ( I0 : in STD_LOGIC;
                                 I1 : in STD_LOGIC;
                                 I2 : in STD_LOGIC;
                                 I3 : in STD_LOGIC;
                                 S0 : in STD_LOGIC;
                                 S1 : in STD_LOGIC;
                                 Output : out STD_LOGIC);
                                 
     end component;
                                 
signal input0, input1, input2, input3 : STD_LOGIC;


begin
    input0 <= (A XOR B);
    input1 <= (A NAND B);
    input2 <= (A NOR B);
    input3 <= (A XNOR B);
    part0 : Multiplexer port map (I0 => input0, I1 => input1, I2 => input2, I3 => input3, 
    S0 => S0, S1 => S1, Output => F); 


end Behavioral;
