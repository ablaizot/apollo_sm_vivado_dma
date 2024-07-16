-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jul 16 12:33:15 2024
-- Host        : Thorntanker running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Dev/apollo_sm_vivado/apollo_sm_xu8/apollo_sm_xu8.gen/onboardclk/ip/onboardclk/onboardclk_stub.vhdl
-- Design      : onboardclk
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-fbvb900-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity onboardclk is
  Port ( 
    clk_200MHz : out STD_LOGIC;
    clk_50MHz : out STD_LOGIC;
    clk_125MHz : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end onboardclk;

architecture stub of onboardclk is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_200MHz,clk_50MHz,clk_125MHz,reset,locked,clk_in1_p,clk_in1_n";
begin
end;
