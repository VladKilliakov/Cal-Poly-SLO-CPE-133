----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2016 01:22:33 PM
-- Design Name: 
-- Module Name: amplitude_prescaler - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with unsigned or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity amplitude_prescaler is
    Port ( reg0 : in unsigned (15 downto 0);
           reg1 : in unsigned (15 downto 0);
           reg2 : in unsigned (15 downto 0);
           reg3 : in unsigned (15 downto 0);
           reg4 : in unsigned (15 downto 0);
           reg5 : in unsigned (15 downto 0);
           reg6 : in unsigned (15 downto 0);
           reg7 : in unsigned (15 downto 0);
           max_output : in STD_LOGIC_VECTOR (15 downto 0);
           scale_factor : out unsigned (15 downto 0));
end amplitude_prescaler;

architecture Behavioral of amplitude_prescaler is
    signal max_sum_sinu : unsigned(15 downto 0);
begin

    max_sum_sinu <= unsigned(std_logic_vector(((unsigned(reg0) + unsigned(reg1)) + (unsigned(reg2) + unsigned(reg3))) + ((unsigned(reg4) + unsigned(reg5)) + (unsigned(reg6) + unsigned(reg7)))));
    process (max_sum_sinu = x"0000") then -- change mult to division
    scale_factor <= max_sum_sinu / unsigned(max_output);                        
end Behavioral;
