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
           State : out std_logic_vector(2 downto 0);
           Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7 : out std_logic_vector(15 downto 0));
           
end Fourier_Register;

architecture Behavioral of Fourier_Register is
    
    type state_type is (COST, COS2T, COS3T, COS4T, COS5T, COS6T, COS7T, COS8T);
    signal PS, NS : state_type;
    
begin
    --state machine
    sync_state: process (clk, Reset, NS)
    
    begin
    
        if (reset = '0') then
            
            PS <= COST;
            
        elsif rising_edge(clk) then
            
            PS <= NS;
            
        end if;
        
    end process sync_state;
    
    change_state : process (PS, L_Button, R_Button)
    
    begin
    
        case PS is 
            when COST =>

                if (L_Button = '1') then
                    NS <= COS8T;
                elsif (R_Button = '1') then
                    NS <= COS2T;
                else
                    NS <= COST;
                end if;
                
            when COS2T =>

                if (L_Button = '1') then
                    NS <= COST;
                elsif (R_Button = '1') then
                    NS <= COS3T;
                else
                    NS <= COS2T;
                end if;
                
            when COS3T =>
            
                if (L_Button = '1') then
                    NS <= COS2T;
                elsif (R_Button = '1') then
                    NS <= COS4T;
                else
                    NS <= COS3T;
                end if;
                
            when COS4T =>
            
                if (L_Button = '1') then
                    NS <= COS3T;
                elsif (R_Button = '1') then
                    NS <= COS5T;
                else
                    NS <= COS4T;
                end if;
                
            when COS5T =>
            
                if (L_Button = '1') then
                    NS <= COS4T;
                elsif (R_Button = '1') then
                    NS <= COS6T;
                else
                    NS <= COS5T;
                end if;
                
            when COS6T =>
            
                if (L_Button = '1') then
                    NS <= COS5T;
                elsif (R_Button = '1') then
                    NS <= COS7T;
                else
                    NS <= COS6T;
                end if;
                
            when COS7T =>
            
                if (L_Button = '1') then
                    NS <= COS6T;
                elsif (R_Button = '1') then
                    NS <= COS8T;
                else
                    NS <= COS7T;
                end if;
                
            when COS8T =>
            
                if (L_Button = '1') then
                    NS <= COS7T;
                elsif (R_Button = '1') then
                    NS <= COST;
                else
                    NS <= COS8T;
                end if;
                
        end case;
    end process change_state;
   
    Push_to_reg : process (clk, Push, PS, switches)
    
    begin
        
        if (Push = '1' and rising_edge(clk)) then
            case PS is
                when COST => reg0 <= switches;
                when COS2T => reg1 <= switches;
                when COS3T => reg2 <= switches;
                when COS4T => reg3 <= switches;
                when COS5T => reg4 <= switches;
                when COS6T => reg5 <= switches;
                when COS7T => reg6 <= switches;
                when COS8T => reg7 <= switches;
            end case;
        end if;
        
    end process Push_to_reg;

    state_to_bin : process (PS, clk)
    
    begin
        if (rising_edge(Clk)) then
            case(PS) is
                when COST => State <= "000";
                when COS2T => State <= "001";
                when COS3T => State <= "010";
                when COS4T => State <= "011";
                when COS5T => State <= "100";
                when COS6T => State <= "101";
                when COS7T => State <= "110";
                when COS8T => State <= "111";
                
            end case;
        end if;
    end process state_to_bin;

end Behavioral;
