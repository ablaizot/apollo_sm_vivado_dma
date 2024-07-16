// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jul 16 12:32:12 2024
// Host        : Thorntanker running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Dev/apollo_sm_vivado/apollo_sm_xu8/apollo_sm_xu8.gen/sources_1/bd/zynq_bd/ip/zynq_bd_axis_jtag_0_0/zynq_bd_axis_jtag_0_0_stub.v
// Design      : zynq_bd_axis_jtag_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-fbvb900-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_jtag_v1_0,Vivado 2023.2" *)
module zynq_bd_axis_jtag_0_0(channel, s_axis_aclk, s_axis_tdata, 
  s_axis_tvalid, s_axis_tready, s_axis_tkeep, s_axis_tlast, TCK_0, TMS_0, TDI_0, TDO_0, TCK_1, TMS_1, 
  TDI_1, TDO_1)
/* synthesis syn_black_box black_box_pad_pin="channel,s_axis_tdata[63:0],s_axis_tvalid,s_axis_tready,s_axis_tkeep[7:0],s_axis_tlast,TCK_0,TMS_0,TDI_0,TDO_0,TCK_1,TMS_1,TDI_1,TDO_1" */
/* synthesis syn_force_seq_prim="s_axis_aclk" */;
  input channel;
  input s_axis_aclk /* synthesis syn_isclock = 1 */;
  input [63:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  output TCK_0;
  output TMS_0;
  output TDI_0;
  input TDO_0;
  output TCK_1;
  output TMS_1;
  output TDI_1;
  input TDO_1;
endmodule
