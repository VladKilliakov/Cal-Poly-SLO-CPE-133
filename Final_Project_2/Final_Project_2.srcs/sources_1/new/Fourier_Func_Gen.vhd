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
-- arithmetic functions with unsigned or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Fourier_Func_Gen is
    Port ( Clk : in STD_LOGIC;
           Switches : in unsigned (15 downto 0);
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
    component Fourier_Register port (Clk, M_Button, L_Button, R_Button, B_Button, Reset : in std_logic;
                                     switches : in unsigned (15 downto 0);
                                     State : out std_logic_vector (3 downto 0);
                                     Current_Reg : out unsigned (15 downto 0);
                                     Reg0, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6, Reg7 : out unsigned(15 downto 0);
                                     Reg0_inv, Reg1_inv, Reg2_inv, Reg3_inv, Reg4_inv, Reg5_inv, Reg6_inv, Reg7_inv: out unsigned(15 downto 0));
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
                                Modu_in : in unsigned (47 downto 0);
                                Modu_out : out std_logic);
    end component;
    
   
    component Disp_Output port (clk, B_Button, reset : in std_logic;
                                state : in std_logic_vector (3 downto 0);
                                curr_reg_setting : in std_logic_vector (15 downto 0);
                                sev_seg_out : out std_logic_vector (15 downto 0));
    end component;
    
    component SinCos_Decoder port (reset, clk : in std_logic;
                                freq_multiplier : in std_logic_vector (3 downto 0);
                                sin_data, cos_data : out unsigned(15 downto 0));    
    end component;
    
    component amplitude_prescaler port (reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : in unsigned(15 downto 0);
                                        max_output : in std_logic_vector (15 downto 0);
                                        scale_factor : out unsigned (15 downto 0)); 
    
    end component;
    component scaler port (Sinu_in : in unsigned(15 downto 0);
                           Amplitude : in unsigned(15 downto 0);
                           scale_factor : in unsigned(15 downto 0);
                           Sinu_out : out unsigned(47 downto 0));
                           
    
    end component;
    
    component find_max port (reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : in unsigned (15 downto 0);
                             reg_max : out std_logic_vector(15 downto 0));
    end component;
    
    component sincos_decoder_inv port (reset, clk : in std_logic;
                                       freq_multiplier : in std_logic_vector (3 downto 0);
                                       sin_data, cos_data : out unsigned(15 downto 0));
    end component;
    signal Clk_Main, Clk_Display, Clk_Dac, Clk_Theta : std_logic;
    signal s_Reg0, s_Reg1, s_Reg2, s_Reg3, s_Reg4, s_Reg5, s_Reg6, s_Reg7 : unsigned(15 downto 0);
    signal s_Reg0_inv, s_Reg1_inv, s_Reg2_inv, s_Reg3_inv, s_Reg4_inv, s_Reg5_inv, s_Reg6_inv, s_Reg7_inv : unsigned(15 downto 0);
    signal Reg_to_disp, sev_seg_val : std_logic_vector (15 downto 0);
    signal reg_to_disp_signed : unsigned(15 downto 0);
    signal s_scale_factor : unsigned(15 downto 0);
    signal current_state : std_logic_vector (3 downto 0);
    signal sin_y1, sin_y2, sin_y3, sin_y4, sin_y5, sin_y6, sin_y7, sin_y8 : unsigned(15 downto 0);
    signal sin_y1_neg, sin_y2_neg, sin_y3_neg, sin_y4_neg, sin_y5_neg, sin_y6_neg, sin_y7_neg, sin_y8_neg : unsigned(15 downto 0);
    signal sin_scaled1, sin_scaled2, sin_scaled3, sin_scaled4, sin_scaled5, sin_scaled6, sin_scaled7, sin_scaled8 : unsigned(47 downto 0);
    signal sin_scaled1_neg, sin_scaled2_neg, sin_scaled3_neg, sin_scaled4_neg, sin_scaled5_neg, sin_scaled6_neg, sin_scaled7_neg, sin_scaled8_neg : unsigned(47 downto 0);
    signal Dac_in : unsigned(47 downto 0);
    signal reg_sum : unsigned(15 downto 0);
begin

    --Clock Gen
    State_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(100000, 32)), Output_Clk => Clk_Main); -- 1kHz
    Display_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(200000, 32)), Output_Clk => Clk_Display); -- 400Hz
    DAC_Clk_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(100, 32)), Output_Clk => Clk_Dac); --100kHz
    Initial_Theta_Clock_Gen : Clk_Divider port map (Master_Clk => Clk, Divider => std_logic_vector(to_unsigned(3000, 32)), Output_Clk => Clk_Theta); -- 60Hz
    -- End Clock Gen                                    --switched clk below from mainclk to clk
    
    -- DAC
    Store_Amplitude : Fourier_Register port map ( Clk => Clk, B_Button => B_button, M_Button => M_Button, L_Button => L_Button, R_Button => R_Button, Reset => Reset, switches => switches, 
        Reg0 => s_Reg0, Reg1 => s_Reg1, Reg2 => s_Reg2, Reg3 => s_Reg3, Reg4 => s_Reg4, Reg5 => s_Reg5, Reg6 => s_Reg6, Reg7 => s_Reg7, 
        Reg0_inv => s_Reg0_inv, Reg1_inv => s_Reg1_inv, Reg2_inv => s_Reg2_inv, Reg3_inv => s_Reg3_inv, Reg4_inv => s_Reg4_inv, Reg5_inv => s_Reg5_inv, Reg6_inv => s_Reg6_inv, Reg7_inv => s_Reg7_inv, State => current_state, current_reg => reg_to_disp_signed);
    reg_to_disp <= std_logic_vector(reg_to_disp_signed);
--    PWM_Gen : PWM port map ( clk => clk_DAC, Pulse_Width => DAC_in, PWM_out => PWM_out);
    --End Dac
    
    --Seven Segment Drivers
    Sev_Seg_Output_Logic : Disp_Output port map (reset => reset, clk => Clk_Display, B_Button => B_Button, state => current_state, curr_reg_setting => Reg_to_Disp, sev_seg_out => sev_seg_val);
    Sev_Seg_Driver_Part : Sev_Seg_Driver port map (Clk => Clk_Display, Input => sev_seg_val, AnBus => AnBus, CaBus => CaBus);
    One_Bit_DAC : Sigma_Delta port map (clk => Clk_Dac, Modu_in => Dac_in, Modu_out => Dac_out);
    --End Seven Segment Drivers
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
    
    --Inverse Sin Calculator
    
    Cos_1_inv : SinCos_Decoder_Inv port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(1,4)), sin_data => sin_y1_neg);
    Cos_2_inv : SinCos_Decoder_Inv port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(2,4)), sin_data => sin_y2_neg);
    Cos_3_inv : SinCos_Decoder_Inv port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(3,4)), sin_data => sin_y3_neg);
    Cos_4_inv : SinCos_Decoder_Inv port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(4,4)), sin_data => sin_y4_neg);
    Cos_5_inv : SinCos_Decoder_Inv port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(5,4)), sin_data => sin_y5_neg);
    Cos_6_inv : SinCos_Decoder_Inv port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(6,4)), sin_data => sin_y6_neg);
    Cos_7_inv : SinCos_Decoder_Inv port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(7,4)), sin_data => sin_y7_neg);
    Cos_8_inv : SinCos_Decoder_Inv port map(clk => Clk_Theta, reset => '0', freq_multiplier => std_logic_vector(to_unsigned(8,4)), sin_data => sin_y8_neg);
    
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
    -- Inverse
    Scaled_0_inv : Scaler port map (Sinu_in => Sin_y1_neg, Amplitude => s_reg0_inv, Sinu_out => Sin_scaled1_neg, scale_factor => s_scale_factor); 
    Scaled_1_inv : Scaler port map (Sinu_in => sin_y2_neg, Amplitude => s_reg1_inv, Sinu_out => Sin_scaled2_neg, scale_factor => s_scale_factor); 
    Scaled_2_inv : Scaler port map (Sinu_in => sin_y3_neg, Amplitude => s_reg2_inv, Sinu_out => Sin_scaled3_neg, scale_factor => s_scale_factor); 
    Scaled_3_inv : Scaler port map (Sinu_in => sin_y4_neg, Amplitude => s_reg3_inv, Sinu_out => Sin_scaled4_neg, scale_factor => s_scale_factor); 
    Scaled_4_inv : Scaler port map (Sinu_in => sin_y5_neg, Amplitude => s_reg4_inv, Sinu_out => Sin_scaled5_neg, scale_factor => s_scale_factor); 
    Scaled_5_inv : Scaler port map (Sinu_in => sin_y6_neg, Amplitude => s_reg5_inv, Sinu_out => Sin_scaled6_neg, scale_factor => s_scale_factor); 
    Scaled_6_inv : Scaler port map (Sinu_in => sin_y7_neg, Amplitude => s_reg6_inv, Sinu_out => Sin_scaled7_neg, scale_factor => s_scale_factor); 
    Scaled_7_inv : Scaler port map (Sinu_in => sin_y8_neg, Amplitude => s_reg7_inv, Sinu_out => Sin_scaled8_neg, scale_factor => s_scale_factor); 
    
    --End Cosine Scaler
    
    DAC_in <= (((Sin_scaled1 + Sin_scaled2) + (Sin_scaled3 + Sin_scaled4)) + ((Sin_scaled5 + Sin_scaled6) + (Sin_scaled7 + Sin_scaled8))) + (((Sin_scaled1_neg + Sin_scaled2_neg) + (Sin_scaled3_neg + Sin_scaled4_neg)) + ((Sin_scaled5_neg + Sin_scaled6_neg) + (Sin_scaled7_neg + Sin_scaled8_neg)));
    Led(0) <= Dac_in(0);
    Led(1) <= Dac_in(3);
    Led(2) <= Dac_in(6);
    Led(3) <= Dac_in(10);
    Led(4) <= Dac_in(13);
    Led(5) <= Dac_in(16);
    Led(6) <= Dac_in(20);
    Led(7) <= Dac_in(23);
    Led(8) <= Dac_in(26);
    Led(9) <= Dac_in(29);
    Led(10) <= Dac_in(32);
    Led(11) <= Dac_in(35);
    Led(12) <= Dac_in(38);
    Led(13) <= Dac_in(41);
    Led(14) <= Dac_in(44);
    Led(15) <= Dac_in(47);
    
end Behavioral;
