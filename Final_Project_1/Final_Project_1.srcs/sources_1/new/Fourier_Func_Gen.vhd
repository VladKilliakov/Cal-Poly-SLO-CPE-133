----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2016 10:48:11 PM
-- Design Name: 
-- Module Name: Fourier_Func_Gen - Behavioral
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

entity Fourier_Func_Gen is
    Port ( Clk : in STD_LOGIC;
           Switches : in STD_LOGIC_VECTOR (15 downto 0);
           L_Button : in STD_LOGIC;
           R_Button, B_Button : in STD_LOGIC;
           M_Button, Reset : in STD_LOGIC;
           CaBus : out STD_LOGIC_VECTOR (7 downto 0);
           AnBus : out STD_LOGIC_VECTOR (3 downto 0);
           Dac_Out : out STD_LOGIC);
end Fourier_Func_Gen;

architecture Behavioral of Fourier_Func_Gen is
    component Fourier_Register port (Clk, M_Button, L_Button, R_Button, Reset : in std_logic;
                                     switches : in std_logic_vector (15 downto 0);
                                     State : out std_logic_vector (3 downto 0);
                                     Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7 : out std_logic_vector(15 downto 0));
    end component;
    
    component Clk_Divider port (Master_Clk : in std_logic;
                                  Divider : in std_logic_vector (31 downto 0);
                                  Output_Clk : out std_logic);
    end component;
    
    component Sev_Seg_Driver port (Clk : in std_logic;
                                  Input : in std_logic_vector (15 downto 0);
                                  AnBus : out std_logic_vector (3 downto 0);
                                  CaBus : out std_logic_vector (7 downto 0));
    end component;
    
    component Sigma_Delta port (Clk : in std_logic;
                                Modu_in : in std_logic_vector (15 downto 0);
                                Modu_out : out std_logic);
    end component;
    
    component Bin_to_V_Decoder port ( Clk : in std_logic;
                                      Reg : in std_logic_vector(15 downto 0);
                                      Volt : out std_logic_vector (15 downto 0));
                                      
    end component;
    
    component Disp_Output port (clk, B_Button, reset : in std_logic;
                                state : in std_logic_vector (3 downto 0);
                                switch_setting : in std_logic_vector (15 downto 0);
                                sev_seg_out : out std_logic_vector (15 downto 0));
    end component;
    
    signal Clk_Main : std_logic;
    signal Clk_Display : std_logic;
    signal Clk_Dac : std_logic;
    signal s_Reg0, s_Reg1, s_Reg2, s_Reg3, s_Reg4, s_Reg5, s_Reg6, s_Reg7 : std_logic_vector(15 downto 0);
    signal Display_Reg : std_logic_vector (15 downto 0);
    signal Sum_of_cos : std_logic_vector (15 downto 0);
    signal Reg_to_disp, sev_seg_val : std_logic_vector (15 downto 0);
    signal current_state : std_logic_vector (3 downto 0);
begin
    Display_Reg(15 downto 12) <= current_state;
    Display_Reg(11 downto 4) <= Switches(11 downto 4);
    Display_Reg(3 downto 0) <= s_Reg2(3 downto 0);
    Store_Amplitude : Fourier_Register port map ( Clk => Clk_Main, M_Button => M_Button, L_Button => L_Button, R_Button => R_Button, Reset => Reset, switches => switches,
                                                  Reg0 => s_Reg0, Reg1 => s_Reg1, Reg2 => s_Reg2, Reg3 => s_Reg3, Reg4 => s_Reg4, Reg5 => s_Reg5, Reg6 => s_Reg6, Reg7 => s_Reg7,
                                                  State => current_state);
    Switch_Decoder : Bin_to_V_Decoder port map (Clk => Clk_Main, Reg => Reg_to_Disp, Volt => Display_Reg(11 downto 0));
    Main_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(100000, 32)), Output_Clk => Clk_Main);
    Display_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(250000, 32)), Output_Clk => Clk_Display);
    DAC_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(1000, 32)), Output_Clk => Clk_Dac);
    Sev_Seg_Output_Logic : Disp_Output port map (reset => reset, clk => Clk_Display, B_Button => B_Button, state => current_state, switch_setting => switches, sev_seg_out => sev_seg_val);
    Sev_Seg_Driver_Part : Sev_Seg_Driver port map (Clk => Clk_Display, Input => Display_Reg, AnBus => AnBus, CaBus => CaBus);
    One_Bit_DAC : Sigma_Delta port map (clk => Clk_Dac, Modu_in => Sum_of_cos, Modu_out => Dac_out);
    
    process (current_state) is
    begin
        case (current_state) is
            when "0001" => Reg_to_Disp <= s_Reg0;
            when "0010" => Reg_to_Disp <= s_Reg1;
            when "0011" => Reg_to_Disp <= s_Reg2;
            when "0100" => Reg_to_Disp <= s_Reg3;
            when "0101" => Reg_to_Disp <= s_Reg4;
            when "0110" => Reg_to_Disp <= s_Reg5;
            when "0111" => Reg_to_Disp <= s_Reg6;
            when "1000" => Reg_to_Disp <= s_Reg7;
        end case;
    end process;
    
end Behavioral;
