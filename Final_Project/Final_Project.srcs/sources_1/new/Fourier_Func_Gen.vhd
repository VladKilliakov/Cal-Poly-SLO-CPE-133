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
           R_Button : in std_logic;
           B_Button : in STD_LOGIC;
           M_Button, Reset : in STD_LOGIC;
           CaBus : out STD_LOGIC_VECTOR (7 downto 0);
           AnBus : out STD_LOGIC_VECTOR (3 downto 0);
           Led : out std_logic_vector (15 downto 0);
           Dac_Out : out STD_LOGIC);
end Fourier_Func_Gen;

architecture Behavioral of Fourier_Func_Gen is
    component Fourier_Register port (Clk, M_Button, L_Button, R_Button, Reset : in std_logic;
                                     switches : in std_logic_vector (15 downto 0);
                                     State : out std_logic_vector (3 downto 0);
                                     Current_Reg : out std_logic_vector (15 downto 0);
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
                                Modu_in : in std_logic_vector (31 downto 0);
                                Modu_out : out std_logic);
    end component;
    
   
    component Disp_Output port (clk, B_Button, reset : in std_logic;
                                state : in std_logic_vector (3 downto 0);
                                curr_reg_setting : in std_logic_vector (15 downto 0);
                                sev_seg_out : out std_logic_vector (15 downto 0));
    end component;
    
    component SinCos_Decoder port (reset, clk : in std_logic;
                                freq_multiplier : in std_logic_vector (3 downto 0);
                                sin_data, cos_data : out signed(15 downto 0));    
    end component;
    
    component amplitude_prescaler port (reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : in std_logic_vector(15 downto 0);
                                        max_output : in std_logic_vector (15 downto 0);
                                        scale_factor : out signed (15 downto 0)); 
    
    end component;
    component scaler port (Sinu_in : in signed(15 downto 0);
                           Amplitude : in std_logic_vector(15 downto 0);
                           scale_factor : in signed(15 downto 0);
                           Sinu_out : out signed(31 downto 0));
                           
    
    end component;
    
    component find_max port (reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : in unsigned (15 downto 0);
                             reg_max : out std_logic_vector(15 downto 0));
    end component;
    signal Clk_Main, Clk_Display, Clk_Dac, Clk_Theta : std_logic;
    signal s_Reg0, s_Reg1, s_Reg2, s_Reg3, s_Reg4, s_Reg5, s_Reg6, s_Reg7, s_reg_max : std_logic_vector(15 downto 0);
    signal Reg_to_disp, sev_seg_val : std_logic_vector (15 downto 0);
    signal s_scale_factor : signed(15 downto 0);
    signal current_state : std_logic_vector (3 downto 0);
    signal sin_y1, sin_y2, sin_y3, sin_y4, sin_y5, sin_y6, sin_y7, sin_y8 : signed(15 downto 0);
    signal sin_scaled1, sin_scaled2, sin_scaled3, sin_scaled4, sin_scaled5, sin_scaled6, sin_scaled7, sin_scaled8 : signed(31 downto 0);
    signal Dac_in : std_logic_vector(31 downto 0);
    signal reg_sum : unsigned(15 downto 0);
begin

    --Clock Gen
    State_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(100000, 32)), Output_Clk => Clk_Main); -- 1kHz
    Display_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(200000, 32)), Output_Clk => Clk_Display); -- 400Hz
    DAC_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(50, 32)), Output_Clk => Clk_Dac); --100kHz
    Initial_Theta_Clock_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(1666, 32)), Output_Clk => Clk_Theta); -- 60Hz
    -- End Clock Gen                                    --switched clk below from mainclk to clk
    Store_Amplitude : Fourier_Register port map ( Clk => Clk, M_Button => M_Button, L_Button => L_Button, R_Button => R_Button, Reset => Reset, switches => switches, 
        Reg0 => s_Reg0, Reg1 => s_Reg1, Reg2 => s_Reg2, Reg3 => s_Reg3, Reg4 => s_Reg4, Reg5 => s_Reg5, Reg6 => s_Reg6, Reg7 => s_Reg7, State => current_state, current_reg => reg_to_disp);
    Sev_Seg_Output_Logic : Disp_Output port map (reset => reset, clk => Clk_Display, B_Button => B_Button, state => current_state, curr_reg_setting => Reg_to_Disp, sev_seg_out => sev_seg_val);
    Sev_Seg_Driver_Part : Sev_Seg_Driver port map (Clk => Clk_Display, Input => sev_seg_val, AnBus => AnBus, CaBus => CaBus);
    One_Bit_DAC : Sigma_Delta port map (clk => Clk_Dac, Modu_in => Dac_in, Modu_out => Dac_out);
    --Sine Calculator/ LUT
    Cos_1 : SinCos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(1,4)), sin_data => sin_y1);
    Cos_2 : SinCos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(2,4)), sin_data => sin_y2);
    Cos_3 : SinCos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(3,4)), sin_data => sin_y3);
    Cos_4 : SinCos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(4,4)), sin_data => sin_y4);
    Cos_5 : SinCos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(5,4)), sin_data => sin_y5);
    Cos_6 : SinCos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(6,4)), sin_data => sin_y6);
    Cos_7 : SinCos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(7,4)), sin_data => sin_y7);
    Cos_8 : SinCos_Decoder port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(8,4)), sin_data => sin_y8);
    --End Sosine Calculator/ LUT
    --Scales the wave so that the max possible wave value is the max value possible
    prescaler : amplitude_prescaler port map (reg0 => s_reg0, reg1 => s_reg1, reg2 => s_reg2, reg3 => s_reg3, reg4 => s_reg4, reg5 => s_reg5, reg6 => s_reg6, reg7 => s_reg7, max_output => x"ffff", scale_factor => s_scale_factor);
    -- multiplies scale factor to all signals and adds in the set amplitudes from the switches
    Scaled_0 : Scaler port map (Sinu_in => Sin_y1, Amplitude => s_reg0, Sinu_out => Sin_scaled1, scale_factor => s_scale_factor); 
    Scaled_1 : Scaler port map (Sinu_in => sin_y2, Amplitude => s_reg1, Sinu_out => Sin_scaled2, scale_factor => s_scale_factor); 
    Scaled_2 : Scaler port map (Sinu_in => sin_y3, Amplitude => s_reg2, Sinu_out => Sin_scaled3, scale_factor => s_scale_factor); 
    Scaled_3 : Scaler port map (Sinu_in => sin_y4, Amplitude => s_reg3, Sinu_out => Sin_scaled4, scale_factor => s_scale_factor); 
    Scaled_4 : Scaler port map (Sinu_in => sin_y5, Amplitude => s_reg4, Sinu_out => Sin_scaled5, scale_factor => s_scale_factor); 
    Scaled_5 : Scaler port map (Sinu_in => sin_y6, Amplitude => s_reg5, Sinu_out => Sin_scaled6, scale_factor => s_scale_factor); 
    Scaled_6 : Scaler port map (Sinu_in => sin_y7, Amplitude => s_reg6, Sinu_out => Sin_scaled7, scale_factor => s_scale_factor); 
    Scaled_7 : Scaler port map (Sinu_in => sin_y8, Amplitude => s_reg7, Sinu_out => Sin_scaled8, scale_factor => s_scale_factor); 
    --End Cosine Scaler
    DAC_in <= std_logic_vector(((Sin_scaled1 + Sin_scaled2) + (Sin_scaled3 + Sin_scaled4)) + ((Sin_scaled5 + Sin_scaled6) + (Sin_scaled7 + Sin_scaled8)));
--    process (current_state, s_reg0, s_reg1, s_reg2, s_reg3, s_reg4, s_reg5, s_reg6, s_reg7) is
--    begin
--        case (current_state) is
--            when "0001" => Reg_to_Disp <= s_Reg0;
--            when "0010" => Reg_to_Disp <= s_Reg1;
--            when "0011" => Reg_to_Disp <= s_Reg2;
--            when "0100" => Reg_to_Disp <= s_Reg3;
--            when "0101" => Reg_to_Disp <= s_Reg4;
--            when "0110" => Reg_to_Disp <= s_Reg5;
--            when "0111" => Reg_to_Disp <= s_Reg6;
--            when "1000" => Reg_to_Disp <= s_Reg7;
--            when others => Reg_to_Disp <= s_Reg0;
                
--        end case;
--    end process;
    Led(0) <= Dac_in(1);
    Led(1) <= Dac_in(3);
    Led(2) <= Dac_in(5);
    Led(3) <= Dac_in(7);
    Led(4) <= Dac_in(9);
    Led(5) <= Dac_in(11);
    Led(6) <= Dac_in(13);
    Led(7) <= Dac_in(15);
    Led(8) <= Dac_in(17);
    Led(9) <= Dac_in(19);
    Led(10) <= Dac_in(21);
    Led(11) <= Dac_in(23);
    Led(12) <= Dac_in(25);
    Led(13) <= Dac_in(27);
    Led(14) <= Dac_in(29);
    Led(15) <= Dac_in(31);
    
end Behavioral;
