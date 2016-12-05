----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2016 12:45:21 PM
-- Design Name: 
-- Module Name: Bin_to_V_Decoder - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bin_to_V_Decoder is
    Port ( clk : in STD_LOGIC;
           reg : in STD_LOGIC_VECTOR (15 downto 0);
           Volt : out STD_LOGIC_VECTOR (15 downto 0));
end Bin_to_V_Decoder;

architecture Behavioral of Bin_to_V_Decoder is

begin
    process (clk, reg) is
    begin
        if (rising_edge(clk)) then
            volt <= reg;
            
        end if;
    end process;

end Behavioral;
