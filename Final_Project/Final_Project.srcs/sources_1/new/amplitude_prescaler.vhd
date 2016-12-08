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
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity amplitude_prescaler is
    Port ( reg0 : in STD_LOGIC_VECTOR (15 downto 0);
           reg1 : in STD_LOGIC_VECTOR (15 downto 0);
           reg2 : in STD_LOGIC_VECTOR (15 downto 0);
           reg3 : in STD_LOGIC_VECTOR (15 downto 0);
           reg4 : in STD_LOGIC_VECTOR (15 downto 0);
           reg5 : in STD_LOGIC_VECTOR (15 downto 0);
           reg6 : in STD_LOGIC_VECTOR (15 downto 0);
           reg7 : in STD_LOGIC_VECTOR (15 downto 0);
           max_output : in STD_LOGIC_VECTOR (15 downto 0);
           scale_factor : out signed (15 downto 0));
end amplitude_prescaler;

architecture Behavioral of amplitude_prescaler is
    signal max_sum_sinu : signed(15 downto 0);
begin

    max_sum_sinu <= signed(std_logic_vector(((unsigned(reg0) + unsigned(reg1)) + (unsigned(reg2) + unsigned(reg3))) + ((unsigned(reg4) + unsigned(reg5)) + (unsigned(reg6) + unsigned(reg7)))));
    scale_factor <= max_sum_sinu / signed(max_output);
end Behavioral;
