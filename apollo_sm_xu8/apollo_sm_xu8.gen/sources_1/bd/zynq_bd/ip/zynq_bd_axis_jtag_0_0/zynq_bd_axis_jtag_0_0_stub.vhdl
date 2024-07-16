-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jul 16 12:32:12 2024
-- Host        : Thorntanker running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Dev/apollo_sm_vivado/apollo_sm_xu8/apollo_sm_xu8.gen/sources_1/bd/zynq_bd/ip/zynq_bd_axis_jtag_0_0/zynq_bd_axis_jtag_0_0_stub.vhdl
-- Design      : zynq_bd_axis_jtag_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-fbvb900-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_bd_axis_jtag_0_0 is
  Port ( 
    channel : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    TCK_0 : out STD_LOGIC;
    TMS_0 : out STD_LOGIC;
    TDI_0 : out STD_LOGIC;
    TDO_0 : in STD_LOGIC;
    TCK_1 : out STD_LOGIC;
    TMS_1 : out STD_LOGIC;
    TDI_1 : out STD_LOGIC;
    TDO_1 : in STD_LOGIC
  );

end zynq_bd_axis_jtag_0_0;

architecture stub of zynq_bd_axis_jtag_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "channel,s_axis_aclk,s_axis_tdata[63:0],s_axis_tvalid,s_axis_tready,s_axis_tkeep[7:0],s_axis_tlast,TCK_0,TMS_0,TDI_0,TDO_0,TCK_1,TMS_1,TDI_1,TDO_1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_jtag_v1_0,Vivado 2023.2";
begin
end;
