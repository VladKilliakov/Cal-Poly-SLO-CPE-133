----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2016 01:01:48 PM
-- Design Name: 
-- Module Name: Disp_Output - Behavioral
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

entity Disp_Output is
    Port ( Clk, reset : in STD_LOGIC;
           B_Button : in STD_LOGIC;
           State : in STD_LOGIC_VECTOR (3 downto 0);
           curr_reg_setting : in STD_LOGIC_VECTOR (15 downto 0);
           sev_seg_out : out STD_LOGIC_VECTOR (15 downto 0));
end Disp_Output;

architecture Behavioral of Disp_Output is
    
    type state_type is (disp_state, disp_Switches);
    signal PS, NS : state_type;
    signal B_Button_prev, B_Button_Press : std_logic;
    
begin
    --state machine
    sync_state: process (clk, Reset, NS)
    
    begin
    
        if (reset = '1') then
            
            PS <= disp_state;
            
        elsif rising_edge(clk) then
            
            PS <= NS; --change state on clock pulse
            
        end if;
        
    end process sync_state;
    
    change_state : process (PS, B_Button_Press, state, curr_reg_setting)
    
    begin
    
        case PS is 
            when disp_state =>
                sev_seg_out <= (state & x"000");
                if (B_Button_Press = '1') then
                    NS <= disp_switches;
                else
                    NS <= disp_state;
                end if;
                
            when disp_switches =>
                sev_seg_out <= (curr_reg_setting);
                if (B_Button_Press = '1') then
                    NS <= Disp_State;
                else
                    NS <= Disp_Switches;
                end if;
                
        end case;
    end process change_state;
    
    detect_press : process (clk, B_Button)
    
    begin
        if (rising_edge(clk)) then
            if (B_Button = '1' and B_Button_Prev = '0') then
                B_Button_Press <= '1';
                B_Button_Prev <= '1';
            elsif (B_Button = '1' and B_Button_Prev = '1') then
                B_Button_Press <= '0';
                B_Button_Prev <= '1';
            else
                B_Button_Press <= '0';
                B_Button_Prev <= '0';
            end if;
        end if;
    end process detect_press;
    
end Behavioral;

