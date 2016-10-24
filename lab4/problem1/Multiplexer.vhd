----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2016 12:26:15 PM
-- Design Name: 
-- Module Name: Multiplexer - Behavioral
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

entity Multiplexer is
    Port ( I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           I3 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Output : out STD_LOGIC);
end Multiplexer;

architecture Behavioral of Multiplexer is

begin
    Output <= (NOT S1 AND NOT S0 AND I0) OR (NOT S1 AND S0 AND I1) OR (S1 AND NOT S0 AND I2) OR (S1 AND S0 AND I3);

end Behavioral;
