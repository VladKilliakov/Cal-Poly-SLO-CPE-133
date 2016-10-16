----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2016 03:54:20 PM
-- Design Name: 
-- Module Name: SubPart - Behavioral
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

entity SubPart is
    port (A, B : in STD_LOGIC;
          Sum : inout STD_LOGIC;
          Carryin : in STD_LOGIC;
          Carryout : out STD_LOGIC);
end SubPart;

architecture Behavioral of SubPart is

begin
    Sum <= ((A xor B) xor Carryin);
    Carryout <= ((A and B) or ((A xor B) and Carryin));

end Behavioral;
