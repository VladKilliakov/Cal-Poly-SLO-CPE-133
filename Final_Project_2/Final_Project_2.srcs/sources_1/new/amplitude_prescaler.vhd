----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2016 01:22:33 PM
-- Design Name: 
-- Module Name: amplitude_prescaler - Behavioral
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

entity amplitude_prescaler is
    Port  ( reg0 : in unsigned (15 downto 0);
            reg1 : in unsigned (15 downto 0);
            reg2 : in unsigned (15 downto 0);
            reg3 : in unsigned (15 downto 0);
            reg4 : in unsigned (15 downto 0);
            reg5 : in unsigned (15 downto 0);
            reg6 : in unsigned (15 downto 0);
            reg7 : in unsigned (15 downto 0);
            reg0_inv : in unsigned (15 downto 0);
            reg1_inv : in unsigned (15 downto 0);
            reg2_inv : in unsigned (15 downto 0);
            reg3_inv : in unsigned (15 downto 0);
            reg4_inv : in unsigned (15 downto 0);
            reg5_inv : in unsigned (15 downto 0);
            reg6_inv : in unsigned (15 downto 0);
            reg7_inv : in unsigned (15 downto 0);
           max_output : in STD_LOGIC_VECTOR (15 downto 0);
           scale_factor : out unsigned (15 downto 0));
end amplitude_prescaler;
architecture Behavioral of amplitude_prescaler is
    signal max_sum_sinu : unsigned(15 downto 0);
    signal one : unsigned(15 downto 0);
begin
    process(reg0, reg1, reg2, reg3, reg3, reg4, reg5, reg6, reg7, max_output, max_sum_sinu, one) is
    begin
    if ((((reg0 +reg1) + (reg2 + reg3)) + ((reg4 + reg5) +(reg6 + reg7))) = x"0000") then
         one <= x"0001";
    else
        one <= x"0000";
    end if;
    max_sum_sinu <= ((((reg0 + reg1) + (reg2 + reg3)) + ((reg4 + reg5) + (reg6 + reg7))));
    scale_factor <= unsigned(max_output) / (max_sum_sinu + one);
    end process;
                        
end Behavioral;
