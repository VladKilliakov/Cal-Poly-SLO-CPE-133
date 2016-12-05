----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2016 01:00:47 PM
-- Design Name: 
-- Module Name: Sev_Seg_Output_Logic - Behavioral
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

entity Sev_Seg_Output_Logic is
    Port ( Clk : in STD_LOGIC;
           change_output : in STD_LOGIC;
           state : in STD_LOGIC_VECTOR (3 downto 0);
           switch_setting : in STD_LOGIC_VECTOR (15 downto 0);
           sev_seg_out : out STD_LOGIC_VECTOR (15 downto 0));
end Sev_Seg_Output_Logic;

architecture Behavioral of Sev_Seg_Output_Logic is

begin


end Behavioral;
