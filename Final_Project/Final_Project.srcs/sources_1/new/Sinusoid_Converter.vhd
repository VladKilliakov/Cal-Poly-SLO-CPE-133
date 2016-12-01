----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2016 12:02:56 PM
-- Design Name: 
-- Module Name: Sinusoid_Converter - Behavioral
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

entity Sinusoid_Converter is
    Port ( Clk : in STD_LOGIC;
           Amp : in STD_LOGIC_VECTOR (15 downto 0);
           W : in STD_LOGIC;
           t : in STD_LOGIC_VECTOR (15 downto 0);
           Sinu_Out : out STD_LOGIC_VECTOR (15 downto 0));
end Sinusoid_Converter;

architecture Behavioral of Sinusoid_Converter is
    
    component Sinusoid_LUT port(angle : in std_logic_vector(15 downto 0);
                                output : out std_logic_vector(15 downto 0));
                                
    end component;
    
    signal angle_0, angle_1, out_0, out_1 : std_logic_vector(15 downto 0);
    
begin
    angle_0 <= std_logic_vector(to_signed((to_integer(signed(W)) * to_integer(signed(t))),32));
    LUT_1 : port map (angle => angle_0, output => out_0);
    Sinu_Out <= out_0 * Amp;
end Behavioral;
