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
    Port ( Clk, M_Button, L_Button, R_Button, reset : in STD_LOGIC;
           switches : in std_logic_vector(15 downto 0);
           State : out std_logic_vector(3 downto 0);
           Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7, current_reg : out std_logic_vector(15 downto 0));
           
end Fourier_Register;

architecture Behavioral of Fourier_Register is
    
    type state_type is (COST, COS2T, COS3T, COS4T, COS5T, COS6T, COS7T, COS8T);
    signal PS, NS : state_type;
    signal L_Press, R_Press, M_Press : std_logic; 
    signal L_Prev, R_Prev, M_Prev : std_logic;
    signal s_reg0, s_reg1, s_reg2, s_reg3, s_reg4, s_reg5, s_reg6, s_reg7 : std_logic_vector (15 downto 0);
    
begin
    --state machine
    sync_state: process (clk, Reset, NS)
    
    begin
    
            if (reset = '1') then
                
                PS <= COST;
                
            elsif (rising_edge(clk)) then
                
                PS <= NS; --change state on clock pulse
                
            end if;
    end process sync_state;
    
    change_state : process (PS, L_Press, R_Press)
    
    begin
    
        case PS is 
            when COST =>

                if (L_Press = '1') then
                    NS <= COS8T;
                elsif (R_Press = '1') then -- use left and right buttons to switch up and down one state
                    NS <= COS2T;
                else
                    NS <= COST;
                end if;
                
            when COS2T =>

                if (L_Press = '1') then
                    NS <= COST;
                elsif (R_Press = '1') then
                    NS <= COS3T;
                else
                    NS <= COS2T;
                end if;
                
            when COS3T =>
            
                if (L_Press = '1') then
                    NS <= COS2T;
                elsif (R_Press = '1') then
                    NS <= COS4T;
                else
                    NS <= COS3T;
                end if;
                
            when COS4T =>
            
                if (L_Press = '1') then
                    NS <= COS3T;
                elsif (R_Press = '1') then
                    NS <= COS5T;
                else
                    NS <= COS4T;
                end if;
                
            when COS5T =>
            
                if (L_Press = '1') then
                    NS <= COS4T;
                elsif (R_Press = '1') then
                    NS <= COS6T;
                else
                    NS <= COS5T;
                end if;
                
            when COS6T =>
            
                if (L_Press = '1') then
                    NS <= COS5T;
                elsif (R_Press = '1') then
                    NS <= COS7T;
                else
                    NS <= COS6T;
                end if;
                
            when COS7T =>
            
                if (L_Press = '1') then
                    NS <= COS6T;
                elsif (R_Press = '1') then
                    NS <= COS8T;
                else
                    NS <= COS7T;
                end if;
                
            when COS8T =>
            
                if (L_Press = '1') then
                    NS <= COS7T;
                elsif (R_Press = '1') then
                    NS <= COST;
                else
                    NS <= COS8T;
                end if;
                
        end case;
    end process change_state;
   
    M_Press_to_reg : process (clk, M_Press, PS, switches)
    
    begin
        -- If you pulse middle button
        if (M_Press = '1' and rising_edge(clk)) then
            case PS is
                when COST => s_reg0 <= switches;
                when COS2T => s_reg1 <= switches;
                when COS3T => s_reg2 <= switches;
                when COS4T => s_reg3 <= switches;
                when COS5T => s_reg4 <= switches;
                when COS6T => s_reg5 <= switches;
                when COS7T => s_reg6 <= switches;
                when COS8T => s_reg7 <= switches;
            end case;
        end if;
        
    end process M_Press_to_reg;

    state_to_bin : process (PS, clk)
    
    begin
        if (rising_edge(clk)) then
            case(PS) is
                
                when COST => 
                State <= "0001";
                current_reg <= s_reg0;
                when COS2T => 
                State <= "0010";
                current_reg <= s_reg1;
                when COS3T => 
                State <= "0011";
                current_reg <= s_reg2;
                when COS4T => 
                State <= "0100";
                current_reg <= s_reg3;
                when COS5T => 
                State <= "0101";
                current_reg <= s_reg4;
                when COS6T => 
                State <= "0110";
                current_reg <= s_reg5;
                when COS7T => 
                State <= "0111";
                current_reg <= s_reg6;
                when COS8T => 
                State <= "1000";
                current_reg <= s_reg7;
            end case;
        end if;
    end process state_to_bin;
    
    detect_press : process (clk, L_Button, R_Button, M_Button)
    
    begin
        if (rising_edge(clk)) then
            if (L_Button = '1' and L_Prev = '0') then
                L_Press <= '1';
                L_Prev <= '1';
            elsif (L_Button = '1' and L_Prev = '1') then
                L_Press <= '0';
                L_Prev <= '1';
            else
                L_Press <= '0';
                L_Prev <= '0';
            end if;
            
            if (R_Button = '1' and R_Prev = '0') then
                R_Press <= '1';
                R_Prev <= '1';
            elsif (R_Button = '1' and R_Prev = '1') then
                R_Press <= '0';
                R_Prev <= '1';
            else 
                R_Press <= '0';
                R_Prev <= '0';
            end if;
            
            if (M_Button = '1' and M_Prev = '0') then
                M_Press <= '1';
                M_Prev <= '1';
            elsif (M_Button = '1' and M_Prev = '1') then
                M_Press <= '0';
                M_Prev <= '1';
            else 
                M_Press <= '0';
                M_Prev <= '0';
            end if;
        end if;
    end process detect_press;
    
    reg0 <= s_reg0;
    reg1 <= s_reg1;
    reg2 <= s_reg2;
    reg3 <= s_reg3;
    reg4 <= s_reg4;
    reg5 <= s_reg5;
    reg6 <= s_reg6;
    reg7 <= s_reg7;
    
end Behavioral;
