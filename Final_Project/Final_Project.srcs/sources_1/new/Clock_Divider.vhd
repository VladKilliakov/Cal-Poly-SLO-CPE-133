----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2016 12:53:45 PM
-- Design Name: 
-- Module Name: Clock_Divider - Behavioral
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

entity Clock_Divider is
    Port ( Master_Clock : in STD_LOGIC;
           Divider : in std_logic_vector (31 downto 0);
           Output_Clock : out STD_LOGIC);
end Clock_Divider;

architecture Behavioral of Clock_Divider is
    signal Toggle : std_logic := '0';
begin
    process (Master_Clock) is
    
        variable counter : unsigned(31 downto 0) := x"00000000";
        
    begin
        
        if (rising_edge(Master_Clock)) then
        
            counter := counter + 1;
            
            if (std_logic_vector(counter) = Divider) then
            
                counter := x"00000000";
                Toggle <= not Toggle;
                
            end if;    
            
        end if;
    
    end process;
    
    Output_Clock <= Toggle;
    
end Behavioral;