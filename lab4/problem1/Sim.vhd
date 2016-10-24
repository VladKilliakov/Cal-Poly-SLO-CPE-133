----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2016 12:35:15 PM
-- Design Name: 
-- Module Name: Sim - Behavioral
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

entity Sim is
    
end Sim;

architecture Behavioral of Sim is
    component Problem_1
    Port ( S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           F : out STD_LOGIC);
     end component;
     
signal S1, S0, A, B, F : STD_LOGIC;
begin
     UUT: Problem_1 port map (S1 => S1, S0 => S0, A => A, B => B, F => F);
        process begin
                   S1 <= '0';
                   S0 <= '0';
                   A <= '0';
                   B <= '0';
                   
                   wait for 10 ns;
                   
                   S1 <= '0';
                   S0 <= '0';
                   A <= '0';
                   B <= '1';
                   
                   wait for 10 ns;
                   
                   S1 <= '0';
                   S0 <= '0';
                   A <= '1';
                   B <= '0';
                   
                   wait for 10 ns;
                   
                   S1 <= '0';
                   S0 <= '0';
                   A <= '1';
                   B <= '1';
                   
                   wait for 10 ns;
                   
                   S1 <= '0';
                   S0 <= '1';
                   A <= '0';
                   B <= '0';
                   
                   wait for 10 ns;
                   
                   S1 <= '0';
                   S0 <= '1';
                   A <= '0';
                   B <= '1';
                   
                   wait for 10 ns;
                   
                   S1 <= '0';
                   S0 <= '1';
                   A <= '1';
                   B <= '0';
                   
                   wait for 10 ns;
                   
                   S1 <= '0';
                   S0 <= '1';
                   A <= '1';
                   B <= '1';
                   
                   wait for 10 ns;
                   
                   S1 <= '1';
                   S0 <= '0';
                   A <= '0';
                   B <= '0';
                   
                   wait for 10 ns;
                   
                   S1 <= '1';
                   S0 <= '0';
                   A <= '0';
                   B <= '1';
                   
                   wait for 10 ns;
                   
                   S1 <= '1';
                   S0 <= '0';
                   A <= '1';
                   B <= '0';
                               
                   wait for 10 ns;
                   
                   S1 <= '1';
                   S0 <= '0';
                   A <= '1';
                   B <= '1';
                               
                   wait for 10 ns;
                   
                   S1 <= '1';
                   S0 <= '1';
                   A <= '0';
                   B <= '0';
                               
                   wait for 10 ns;
                   
                   S1 <= '1';
                   S0 <= '1';
                   A <= '0';
                   B <= '1';
                               
                   wait for 10 ns;
                   
                   S1 <= '1';
                   S0 <= '1';
                   A <= '1';
                   B <= '0';
                               
                   wait for 10 ns;
                   
                   S1 <= '1';
                   S0 <= '1';
                   A <= '1';
                   B <= '1';
                               
                   wait;
                   
               end process;

end Behavioral;
