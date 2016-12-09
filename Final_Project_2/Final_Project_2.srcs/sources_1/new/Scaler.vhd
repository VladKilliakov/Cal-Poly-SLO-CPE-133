----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2016 12:04:28 PM
-- Design Name: 
-- Module Name: Scaler - Behavioral
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

entity Scaler is
    Port ( sinu_in : in unsigned (15 downto 0);
           Amplitude : in unsigned (15 downto 0);
           scale_factor : in unsigned (15 downto 0);
           sinu_out : out unsigned (31 downto 0));
end Scaler;
    
architecture Behavioral of Scaler is
signal s_scale_factor : unsigned(15 downto 0);
begin
    process (scale_factor) is
    begin
    if (scale_factor = x"0000") then
        s_scale_factor <= scale_factor + to_unsigned(1,15);
    else
        s_scale_factor <= scale_factor;
    end if;
    end process;
    
    sinu_out <= (unsigned(Amplitude) / (s_scale_factor)) * sinu_in;

end Behavioral;
