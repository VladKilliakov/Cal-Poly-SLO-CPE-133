----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2016 12:53:45 PM
-- Design Name: 
-- Module Name: Sigma_Delta - Behavioral
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

entity Sigma_Delta is
    Port ( Clk : in STD_LOGIC;
           Modu_in : in std_logic_vector (15 downto 0);
           Modu_out : out std_logic);
end Sigma_Delta;

architecture Behavioral of Sigma_Delta is

    signal counter : unsigned(16 downto 0) := "00000000000000000";
    
begin
    
    process (Clk, counter)
    
    begin
        --counter <= counter + 1;
        if (rising_edge(clk)) then
        counter <= (('0' & counter(15 downto 0)) + unsigned('0' & Modu_in));
        end if;
    end process;
    
    Modu_out <= std_logic(counter(16));

end Behavioral;
