----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2016 12:53:45 PM
-- Design Name: 
-- Module Name: Sinusoid_LUT - Behavioral
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

entity Sinusoid_LUT is
    Port ( Angle : in STD_LOGIC_VECTOR (15 downto 0);
           Output : out STD_LOGIC_VECTOR (15 downto 0));
end Sinusoid_LUT;

architecture LUT of Sinusoid_LUT is

    type LUT is array (0 to 127) of signed(15 downto 0);
        constant sin_LUT : Lut := (
        0 => "4324",
        
    
begin


end Behavioral;
