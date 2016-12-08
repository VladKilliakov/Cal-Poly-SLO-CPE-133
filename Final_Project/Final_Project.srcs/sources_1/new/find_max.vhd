----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2016 12:27:12 PM
-- Design Name: 
-- Module Name: find_max - Behavioral
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

entity find_max is
    Port ( reg0 : in STD_LOGIC_VECTOR (15 downto 0);
           reg1 : in STD_LOGIC_VECTOR (15 downto 0);
           reg2 : in STD_LOGIC_VECTOR (15 downto 0);
           reg3 : in STD_LOGIC_VECTOR (15 downto 0);
           reg5 : in STD_LOGIC_VECTOR (15 downto 0);
           reg6 : in STD_LOGIC_VECTOR (15 downto 0);
           reg7 : in STD_LOGIC_VECTOR (15 downto 0);
           reg_max : out STD_LOGIC_VECTOR (15 downto 0));
end find_max;

architecture Behavioral of find_max is
    
    signal max01, max23, max45, max67, max0123, max4567 : std_logic_vector (15 downto 0);
    
begin
    max : process (reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7)
    
    begin
    if (reg0 > reg1) then 
    
        max01 <= reg0;
    
    else
        
        max01 <= reg1;
    
    end if;
    
    if (reg2 > reg3) then
        
        max23 <= reg2;
        
    else
        max23 <= reg3;
        
    end if;    
    
    if (reg4 > reg5) then
        
        max45 <= reg4;
        
    else
        max45 <= reg5;
        
    end if;   
    
    if (reg6 > reg7) then
        
        max67 <= reg6;
        
    else
        max67 <= reg7;
        
    end if;
    
    if (max01 > max23) then
        
        max0123 <= max01;
    
    else
        max0123 <= max23;
    end if;
    
    if (max45 > max67) then
    
        max4567 <= max45;
    
    else 
    
        max4567 <= max67;
    
    end if;
    
    if (max0123 <= max4567) then
    
        reg_max <= max0123;
        
    else 
        
        reg_max <= max4567;
    end if;
    
    end process max;
end Behavioral;
