// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jul 16 12:33:15 2024
// Host        : Thorntanker running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Dev/apollo_sm_vivado/apollo_sm_xu8/apollo_sm_xu8.gen/onboardclk/ip/onboardclk/onboardclk_stub.v
// Design      : onboardclk
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-fbvb900-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module onboardclk(clk_200MHz, clk_50MHz, clk_125MHz, reset, locked, 
  clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk_in1_p,clk_in1_n" */
/* synthesis syn_force_seq_prim="clk_200MHz" */
/* synthesis syn_force_seq_prim="clk_50MHz" */
/* synthesis syn_force_seq_prim="clk_125MHz" */;
  output clk_200MHz /* synthesis syn_isclock = 1 */;
  output clk_50MHz /* synthesis syn_isclock = 1 */;
  output clk_125MHz /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule