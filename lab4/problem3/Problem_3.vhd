----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2016 02:31:45 PM
-- Design Name: 
-- Module Name: Problem_3 - Behavioral
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


entity Problem_3 is
    Port ( Abus : in STD_LOGIC_VECTOR (3 downto 0);
           Bbus : in STD_LOGIC_VECTOR (3 downto 0);
           Sumbus: out STD_LOGIC_VECTOR (3 downto 0);
           Error : out STD_LOGIC);
end Problem_3;
    
architecture Behavioral of Problem_3 is
    component SubPart port (A, B: in STD_LOGIC;
                            Carryin : in STD_LOGIC;
                            Carryout, Sum : out STD_LOGIC);
                            
                            
    end component;
    
signal CarrySig0, CarrySig1, CarrySig2, CarrySig3 : std_logic;
    

begin
    part0 : SubPart port map (A => Abus(0), B => Bbus(0), Sum => Sumbus(0), Carryin => '0', Carryout => CarrySig0);
    part1 : SubPart port map (A => Abus(1), B => Bbus(1), Sum => Sumbus(1), Carryin => CarrySig0, Carryout => CarrySig1);
    part2 : SubPart port map (A => Abus(2), B => Bbus(2), Sum => Sumbus(2), Carryin => CarrySig1, Carryout => CarrySig2);
    part3 : SubPart port map (A => Abus(3), B => Bbus(3), Sum => Sumbus(3), Carryin => CarrySig2, Carryout => Error); 
    

end Behavioral;
