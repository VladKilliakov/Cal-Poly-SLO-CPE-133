----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2016 06:48:44 PM
-- Design Name: 
-- Module Name: PWM - Behavioral
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

entity PWM is
    Port ( Clk : in STD_LOGIC;
           Pulse_Width : in STD_LOGIC_VECTOR (31 downto 0);
           PWM_out : out STD_LOGIC);
end PWM;

architecture Behavioral of PWM is
    signal counter : unsigned(32 downto 0) := x"00000000" & "0";

begin

process (Clk, counter)

begin
    --counter <= counter + 1;
    if (rising_edge(clk)) then
        counter <= counter + 1;
        if (Pulse_Width > std_logic_vector(counter)) then
            PWM_out <= '1';
        else 
            PWM_out <= '0';
        end if;
    end if;
end process;


end Behavioral;
