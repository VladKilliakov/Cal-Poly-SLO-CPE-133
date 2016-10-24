----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2016 03:59:19 PM
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


entity Sim is
--  Port ( );
end Sim;

architecture Behavioral of Sim is
    Component Problem_3
        port ( Abus : in STD_LOGIC_VECTOR (3 downto 0);
               Bbus : in STD_LOGIC_VECTOR (3 downto 0);
               Sumbus: out STD_LOGIC_VECTOR (3 downto 0);
               Error : out STD_LOGIC);
    end component;
    
signal Abus, Bbus : std_logic_vector(3 downto 0);
signal Sumbus : std_logic_vector(3 downto 0);
signal Error : std_logic;
--signal CarryoutSig : std_logic;

begin
    UUT: Problem_3 port map (Abus => Abus,
                            Bbus => Bbus,
                            Sumbus => Sumbus,
                            Error => Error);
                             
                            process begin
                               Abus <= "0000";
                               Bbus <= "0000";
                               --Sumbus <= "0000";
                               
                               wait for 10ns;
                               
                               Abus <= "1111";
                               Bbus <= "1111";
                               --Sumbus <= "0000";
                               
                               wait for 10ns;
                               
                               Abus <= "1010";
                               Bbus <= "1110";
                               --Sumbus <= "0000";
                               
                               wait for 10ns;
                               
                               Abus <= "0000";
                               Bbus <= "1111";
                               --Sumbus <= "0000";
                               
                               wait for 10ns;
                               
                               Abus <= "1110";
                               Bbus <= "1010";
                              -- Sumbus <= "0000";
                               
                               wait for 10ns;
                               
                               Abus <= "1111";
                               Bbus <= "0000";
                               --Sumbus <= "0000";
                               
                               wait for 10ns;
                               
                               Abus <= "0111";
                               Bbus <= "1000";
                               --Sumbus <= "0000";
                               
                               wait for 10ns;
                               
                               Abus <= "1110";
                               Bbus <= "0001";
                               --Sumbus <= "0000";
                               
                               wait;
                               
                               end process;

end Behavioral;
