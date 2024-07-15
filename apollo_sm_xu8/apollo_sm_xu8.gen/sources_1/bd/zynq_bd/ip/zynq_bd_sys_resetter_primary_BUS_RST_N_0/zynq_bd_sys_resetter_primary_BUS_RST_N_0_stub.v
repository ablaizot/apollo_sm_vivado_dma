// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Jul 15 16:46:17 2024
// Host        : Thorntanker running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Dev/apollo_sm_vivado/apollo_sm_xu8/apollo_sm_xu8.gen/sources_1/bd/zynq_bd/ip/zynq_bd_sys_resetter_primary_BUS_RST_N_0/zynq_bd_sys_resetter_primary_BUS_RST_N_0_stub.v
// Design      : zynq_bd_sys_resetter_primary_BUS_RST_N_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-fbvb900-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_3_util_vector_logic,Vivado 2023.2" *)
module zynq_bd_sys_resetter_primary_BUS_RST_N_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res[0:0]" */;
  input [0:0]Op1;
  output [0:0]Res;
endmodule
