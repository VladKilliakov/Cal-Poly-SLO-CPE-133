----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2016 12:53:45 PM
-- Design Name: 
-- Module Name: Fourier_Register - Behavioral
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

entity Fourier_Register is
    Port ( Clk, Push, L_Button, R_Button, reset : in STD_LOGIC;
           switches : in std_logic_vector(15 downto 0);
           Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7 : out std_logic_vector(15 downto 0));
           
end Fourier_Register;

architecture Behavioral of Fourier_Register is
    
    signal cos_state : std_logic_vector(2 downto 0);
begin
    --state machine
    change_state: process (clk, L_Button, R_button, Reset, cos_state)
    
    begin
    
        if (reset = '0') then
            
            cos_state <= "000";
            
        elsif rising_edge(clk) then
            
            case cos_state is
                when "000" => --state 0
                    if (L_Button = '1') then
                        cos_state <= "111";
                    elsif (R_Button = '0') then
                        cos_state <= "001";
                    else
                        cos_state <= "000";
                    end if;
                
            end case;
            
        end if;
        
    end process change_state;
   
    Push_to_reg : process (clk, push, cos_state, switches)
    
    begin
        
        if (push = '1') then
            case cos_state is
                when "000" => reg0 <= switches;
                when "001" => reg1 <= switches;
                when "010" => reg2 <= switches;
                when "011" => reg3 <= switches;
                when "100" => reg4 <= switches;
                when "101" => reg5 <= switches;
                when "110" => reg6 <= switches;
                when "111" => reg7 <= switches;
            end case;
        end if;
end Behavioral;
