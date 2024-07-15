// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axi_chip2chip:5.0
// IP Revision: 20

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module zynq_bd_C2C2B_0 (
  s_aclk,
  s_aresetn,
  s_axi_awid,
  s_axi_awaddr,
  s_axi_awlen,
  s_axi_awsize,
  s_axi_awburst,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wuser,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wlast,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bid,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_arid,
  s_axi_araddr,
  s_axi_arlen,
  s_axi_arsize,
  s_axi_arburst,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rid,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rlast,
  s_axi_rvalid,
  s_axi_rready,
  axi_c2c_m2s_intr_in,
  axi_c2c_s2m_intr_out,
  axi_c2c_phy_clk,
  axi_c2c_aurora_channel_up,
  axi_c2c_aurora_tx_tready,
  axi_c2c_aurora_tx_tdata,
  axi_c2c_aurora_tx_tvalid,
  axi_c2c_aurora_rx_tdata,
  axi_c2c_aurora_rx_tvalid,
  aurora_do_cc,
  aurora_pma_init_in,
  aurora_init_clk,
  aurora_pma_init_out,
  aurora_mmcm_not_locked,
  aurora_reset_pb,
  axi_c2c_config_error_out,
  axi_c2c_link_status_out,
  axi_c2c_multi_bit_error_out,
  axi_c2c_link_error_out,
  s_axi_lite_aclk,
  s_axi_lite_awaddr,
  s_axi_lite_awprot,
  s_axi_lite_awvalid,
  s_axi_lite_awready,
  s_axi_lite_wdata,
  s_axi_lite_wstrb,
  s_axi_lite_wvalid,
  s_axi_lite_wready,
  s_axi_lite_bresp,
  s_axi_lite_bvalid,
  s_axi_lite_bready,
  s_axi_lite_araddr,
  s_axi_lite_arprot,
  s_axi_lite_arvalid,
  s_axi_lite_arready,
  s_axi_lite_rdata,
  s_axi_lite_rresp,
  s_axi_lite_rvalid,
  s_axi_lite_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_aresetn, FREQ_HZ 49999500, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_bd_ZynqMPSoC_0_pl_clk1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_aclk CLK" *)
input wire s_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_aresetn RST" *)
input wire s_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *)
input wire [5 : 0] s_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *)
input wire [7 : 0] s_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *)
input wire [2 : 0] s_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *)
input wire [1 : 0] s_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WUSER" *)
input wire [3 : 0] s_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *)
input wire s_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *)
output wire [5 : 0] s_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARID" *)
input wire [5 : 0] s_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [31 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *)
input wire [7 : 0] s_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *)
input wire [2 : 0] s_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *)
input wire [1 : 0] s_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RID" *)
output wire [5 : 0] s_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *)
output wire s_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 49999500, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 4, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN zynq_bd_ZynqMPSoC_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
input wire [3 : 0] axi_c2c_m2s_intr_in;
output wire [3 : 0] axi_c2c_s2m_intr_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_c2c_phy_clk, ASSOCIATED_BUSIF AXIS_TX:AXIS_RX, ASSOCIATED_RESET aurora_reset_pb, FREQ_HZ 78125000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN zynq_bd_C2C2B_PHY_0_user_clk_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_phy_clk CLK" *)
input wire axi_c2c_phy_clk;
input wire axi_c2c_aurora_channel_up;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_TX TREADY" *)
input wire axi_c2c_aurora_tx_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_TX TDATA" *)
output wire [63 : 0] axi_c2c_aurora_tx_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_TX, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 78125000, PHASE 0, CLK_DOMAIN zynq_bd_C2C2B_PHY_0_user_clk_out, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_TX TVALID" *)
output wire axi_c2c_aurora_tx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_RX TDATA" *)
input wire [63 : 0] axi_c2c_aurora_rx_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_RX, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 78125000, PHASE 0, CLK_DOMAIN zynq_bd_C2C2B_PHY_0_user_clk_out, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_RX TVALID" *)
input wire axi_c2c_aurora_rx_tvalid;
output wire aurora_do_cc;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AURORA_PMA_INIT_IN, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AURORA_PMA_INIT_IN RST" *)
input wire aurora_pma_init_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INIT_CLK, ASSOCIATED_RESET aurora_pma_init_out, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_bd_INIT_CLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 INIT_CLK CLK" *)
input wire aurora_init_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AURORA_PMA_INIT_OUT, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AURORA_PMA_INIT_OUT RST" *)
output wire aurora_pma_init_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AURORA_MMCM_NOT_LOCKED, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AURORA_MMCM_NOT_LOCKED RST" *)
input wire aurora_mmcm_not_locked;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AURORA_RST_OUT, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AURORA_RST_OUT RST" *)
output wire aurora_reset_pb;
output wire axi_c2c_config_error_out;
output wire axi_c2c_link_status_out;
output wire axi_c2c_multi_bit_error_out;
output wire axi_c2c_link_error_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF s_axi_lite, FREQ_HZ 49999500, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_bd_ZynqMPSoC_0_pl_clk1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK" *)
input wire s_axi_lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *)
input wire [31 : 0] s_axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWPROT" *)
input wire [1 : 0] s_axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID" *)
input wire s_axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *)
output wire s_axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA" *)
input wire [31 : 0] s_axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB" *)
input wire [3 : 0] s_axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID" *)
input wire s_axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY" *)
output wire s_axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP" *)
output wire [1 : 0] s_axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *)
output wire s_axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY" *)
input wire s_axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR" *)
input wire [31 : 0] s_axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARPROT" *)
input wire [1 : 0] s_axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID" *)
input wire s_axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY" *)
output wire s_axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *)
output wire [31 : 0] s_axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP" *)
output wire [1 : 0] s_axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *)
output wire s_axi_lite_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 49999500, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_bd_ZynqMPSoC_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRI\
TE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY" *)
input wire s_axi_lite_rready;

  axi_chip2chip_v5_0_20 #(
    .C_FAMILY("zynquplus"),
    .C_INSTANCE("axi_c2c"),
    .C_SIMULATION(0),
    .C_MASTER_FPGA(1),
    .C_AXI_BUS_TYPE(0),
    .C_EN_AXI_LINK_HNDLR(0),
    .C_COMMON_CLK(0),
    .C_INTERFACE_TYPE(2),
    .C_INTERFACE_MODE(0),
    .C_NUM_OF_IO(58),
    .C_SELECTIO_PHY_CLK(100),
    .C_INCLUDE_AXILITE(1),
    .C_AXI_DATA_WIDTH(32),
    .C_AXI_ID_WIDTH(6),
    .C_AXI_WUSER_WIDTH(4),
    .C_DISABLE_DESKEW(0),
    .C_DISABLE_CLK_SHIFT(0),
    .C_USE_DIFF_CLK(0),
    .C_USE_DIFF_IO(0),
    .C_AURORA_WIDTH(64),
    .C_ECC_ENABLE(1),
    .C_AXI_STB_WIDTH(4),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_SIZE_WIDTH(3),
    .C_AXI_BRST_WIDTH(2),
    .C_AXI_RESP_WIDTH(2),
    .C_INTERRUPT_WIDTH(4),
    .C_EN_LEGACY_MODE(0),
    .C_AXI_LITE_ADDR_WIDTH(32),
    .C_AXI_LITE_PROT_WIDTH(2),
    .C_AXI_LITE_DATA_WIDTH(32),
    .C_AXI_LITE_STB_WIDTH(4),
    .C_AXI_LITE_RESP_WIDTH(2)
  ) inst (
    .s_aclk(s_aclk),
    .s_aresetn(s_aresetn),
    .s_axi_awid(s_axi_awid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awlen(s_axi_awlen),
    .s_axi_awsize(s_axi_awsize),
    .s_axi_awburst(s_axi_awburst),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wuser(s_axi_wuser),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wlast(s_axi_wlast),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bid(s_axi_bid),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_arid(s_axi_arid),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arlen(s_axi_arlen),
    .s_axi_arsize(s_axi_arsize),
    .s_axi_arburst(s_axi_arburst),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rid(s_axi_rid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rlast(s_axi_rlast),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .axi_c2c_lnk_hndlr_in_progress(),
    .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),
    .axi_c2c_s2m_intr_out(axi_c2c_s2m_intr_out),
    .m_aclk(1'B0),
    .m_aresetn(1'B1),
    .m_axi_awid(),
    .m_axi_awaddr(),
    .m_axi_awlen(),
    .m_axi_awsize(),
    .m_axi_awburst(),
    .m_axi_awvalid(),
    .m_axi_awready(1'B0),
    .m_axi_wuser(),
    .m_axi_wdata(),
    .m_axi_wstrb(),
    .m_axi_wlast(),
    .m_axi_wvalid(),
    .m_axi_wready(1'B0),
    .m_axi_bid(6'B0),
    .m_axi_bresp(2'B0),
    .m_axi_bvalid(1'B0),
    .m_axi_bready(),
    .m_axi_arid(),
    .m_axi_araddr(),
    .m_axi_arlen(),
    .m_axi_arsize(),
    .m_axi_arburst(),
    .m_axi_arvalid(),
    .m_axi_arready(1'B0),
    .m_axi_rid(6'B0),
    .m_axi_rdata(32'B0),
    .m_axi_rresp(2'B0),
    .m_axi_rlast(1'B0),
    .m_axi_rvalid(1'B0),
    .m_axi_rready(),
    .axi_c2c_s2m_intr_in(4'B0),
    .axi_c2c_m2s_intr_out(),
    .idelay_ref_clk(1'B0),
    .axi_c2c_phy_clk(axi_c2c_phy_clk),
    .axi_c2c_selio_tx_clk_out(),
    .axi_c2c_selio_tx_data_out(),
    .axi_c2c_selio_rx_clk_in(1'B0),
    .axi_c2c_selio_rx_data_in(28'B0),
    .axi_c2c_selio_tx_diff_clk_out_p(),
    .axi_c2c_selio_tx_diff_clk_out_n(),
    .axi_c2c_selio_tx_diff_data_out_p(),
    .axi_c2c_selio_tx_diff_data_out_n(),
    .axi_c2c_selio_rx_diff_clk_in_p(1'B0),
    .axi_c2c_selio_rx_diff_clk_in_n(1'B0),
    .axi_c2c_selio_rx_diff_data_in_p(28'B0),
    .axi_c2c_selio_rx_diff_data_in_n(28'B0),
    .axi_c2c_aurora_channel_up(axi_c2c_aurora_channel_up),
    .axi_c2c_aurora_tx_tready(axi_c2c_aurora_tx_tready),
    .axi_c2c_aurora_tx_tdata(axi_c2c_aurora_tx_tdata),
    .axi_c2c_aurora_tx_tvalid(axi_c2c_aurora_tx_tvalid),
    .axi_c2c_aurora_rx_tdata(axi_c2c_aurora_rx_tdata),
    .axi_c2c_aurora_rx_tvalid(axi_c2c_aurora_rx_tvalid),
    .aurora_do_cc(aurora_do_cc),
    .aurora_pma_init_in(aurora_pma_init_in),
    .aurora_init_clk(aurora_init_clk),
    .aurora_pma_init_out(aurora_pma_init_out),
    .aurora_mmcm_not_locked(aurora_mmcm_not_locked),
    .aurora_reset_pb(aurora_reset_pb),
    .axi_c2c_config_error_out(axi_c2c_config_error_out),
    .axi_c2c_link_status_out(axi_c2c_link_status_out),
    .axi_c2c_multi_bit_error_out(axi_c2c_multi_bit_error_out),
    .axi_c2c_link_error_out(axi_c2c_link_error_out),
    .m_aclk_out(),
    .s_axi_lite_aclk(s_axi_lite_aclk),
    .s_axi_lite_awaddr(s_axi_lite_awaddr),
    .s_axi_lite_awprot(s_axi_lite_awprot),
    .s_axi_lite_awvalid(s_axi_lite_awvalid),
    .s_axi_lite_awready(s_axi_lite_awready),
    .s_axi_lite_wdata(s_axi_lite_wdata),
    .s_axi_lite_wstrb(s_axi_lite_wstrb),
    .s_axi_lite_wvalid(s_axi_lite_wvalid),
    .s_axi_lite_wready(s_axi_lite_wready),
    .s_axi_lite_bresp(s_axi_lite_bresp),
    .s_axi_lite_bvalid(s_axi_lite_bvalid),
    .s_axi_lite_bready(s_axi_lite_bready),
    .s_axi_lite_araddr(s_axi_lite_araddr),
    .s_axi_lite_arprot(s_axi_lite_arprot),
    .s_axi_lite_arvalid(s_axi_lite_arvalid),
    .s_axi_lite_arready(s_axi_lite_arready),
    .s_axi_lite_rdata(s_axi_lite_rdata),
    .s_axi_lite_rresp(s_axi_lite_rresp),
    .s_axi_lite_rvalid(s_axi_lite_rvalid),
    .s_axi_lite_rready(s_axi_lite_rready),
    .m_axi_lite_aclk(1'B0),
    .m_axi_lite_awaddr(),
    .m_axi_lite_awprot(),
    .m_axi_lite_awvalid(),
    .m_axi_lite_awready(1'B0),
    .m_axi_lite_wdata(),
    .m_axi_lite_wstrb(),
    .m_axi_lite_wvalid(),
    .m_axi_lite_wready(1'B0),
    .m_axi_lite_bresp(2'B0),
    .m_axi_lite_bvalid(1'B0),
    .m_axi_lite_bready(),
    .m_axi_lite_araddr(),
    .m_axi_lite_arprot(),
    .m_axi_lite_arvalid(),
    .m_axi_lite_arready(1'B0),
    .m_axi_lite_rdata(32'B0),
    .m_axi_lite_rresp(2'B0),
    .m_axi_lite_rvalid(1'B0),
    .m_axi_lite_rready()
  );
endmodule
