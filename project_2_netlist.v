// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Aug  3 22:07:49 2025
// Host        : DESKTOP-FUMT7TS running 64-bit major release  (build 9200)
// Command     : write_verilog D:/project_spi/project_2_netlist.v
// Design      : spi_wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (addr_rd,
    tx_valid,
    MISO_reg,
    clk_IBUF_BUFG,
    rx_valid_reg,
    rx_valid_reg_0,
    SR,
    ADDRBWRADDR,
    Q,
    rst_n_IBUF,
    rx_valid,
    tx_valid_reg_0,
    \bit_cnt_tx_reg[2] ,
    \bit_cnt_tx_reg[1] ,
    \bit_cnt_tx_reg[0] );
  output addr_rd;
  output tx_valid;
  output MISO_reg;
  input clk_IBUF_BUFG;
  input rx_valid_reg;
  input rx_valid_reg_0;
  input [0:0]SR;
  input [7:0]ADDRBWRADDR;
  input [9:0]Q;
  input rst_n_IBUF;
  input rx_valid;
  input tx_valid_reg_0;
  input \bit_cnt_tx_reg[2] ;
  input \bit_cnt_tx_reg[1] ;
  input \bit_cnt_tx_reg[0] ;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [9:0]Q;
  wire [0:0]SR;
  wire \__3/i__n_0 ;
  wire addr_rd;
  wire [7:0]addr_wr;
  wire \bit_cnt_tx_reg[0] ;
  wire \bit_cnt_tx_reg[1] ;
  wire \bit_cnt_tx_reg[2] ;
  wire clk_IBUF_BUFG;
  wire rst_n_IBUF;
  wire rx_valid;
  wire rx_valid_reg;
  wire rx_valid_reg_0;
  wire [7:0]tx_data;
  wire tx_valid;
  wire tx_valid_reg_0;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_3
       (.I0(tx_data[4]),
        .I1(tx_data[5]),
        .I2(\bit_cnt_tx_reg[1] ),
        .I3(tx_data[6]),
        .I4(\bit_cnt_tx_reg[0] ),
        .I5(tx_data[7]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(tx_data[0]),
        .I1(tx_data[1]),
        .I2(\bit_cnt_tx_reg[1] ),
        .I3(tx_data[2]),
        .I4(\bit_cnt_tx_reg[0] ),
        .I5(tx_data[3]),
        .O(MISO_i_4_n_0));
  MUXF7 MISO_reg_i_2
       (.I0(MISO_i_3_n_0),
        .I1(MISO_i_4_n_0),
        .O(MISO_reg),
        .S(\bit_cnt_tx_reg[2] ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h2000)) 
    \__2/i_ 
       (.I0(rst_n_IBUF),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(rx_valid),
        .O(addr_rd));
  LUT4 #(
    .INIT(16'h0200)) 
    \__3/i_ 
       (.I0(rst_n_IBUF),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(rx_valid),
        .O(\__3/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\__3/i__n_0 ),
        .D(Q[0]),
        .Q(addr_wr[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\__3/i__n_0 ),
        .D(Q[1]),
        .Q(addr_wr[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\__3/i__n_0 ),
        .D(Q[2]),
        .Q(addr_wr[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\__3/i__n_0 ),
        .D(Q[3]),
        .Q(addr_wr[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\__3/i__n_0 ),
        .D(Q[4]),
        .Q(addr_wr[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\__3/i__n_0 ),
        .D(Q[5]),
        .Q(addr_wr[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\__3/i__n_0 ),
        .D(Q[6]),
        .Q(addr_wr[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\__3/i__n_0 ),
        .D(Q[7]),
        .Q(addr_wr[7]),
        .R(\<const0> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr_wr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,ADDRBWRADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rx_valid_reg),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(rx_valid_reg_0),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(SR),
        .WEA({rst_n_IBUF,rst_n_IBUF}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
endmodule

module spi_slave
   (MISO_OBUF,
    SR,
    rx_valid,
    ADDRBWRADDR,
    Q,
    \bit_cnt_tx_reg[2]_0 ,
    \bit_cnt_tx_reg[2]_1 ,
    \bit_cnt_tx_reg[2]_2 ,
    mem_reg,
    tx_valid_reg,
    mem_reg_0,
    \bit_cnt_tx_reg[2]_3 ,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    mem_reg_i_18,
    mem_reg_i_17,
    mem_reg_i_16,
    mem_reg_i_15,
    mem_reg_i_14,
    mem_reg_i_13,
    mem_reg_i_12,
    mem_reg_i_11,
    D,
    SS_n_IBUF,
    tx_valid);
  output MISO_OBUF;
  output [0:0]SR;
  output rx_valid;
  output [7:0]ADDRBWRADDR;
  output [9:0]Q;
  output \bit_cnt_tx_reg[2]_0 ;
  output \bit_cnt_tx_reg[2]_1 ;
  output \bit_cnt_tx_reg[2]_2 ;
  output mem_reg;
  output tx_valid_reg;
  output mem_reg_0;
  input \bit_cnt_tx_reg[2]_3 ;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input mem_reg_i_18;
  input mem_reg_i_17;
  input mem_reg_i_16;
  input mem_reg_i_15;
  input mem_reg_i_14;
  input mem_reg_i_13;
  input mem_reg_i_12;
  input mem_reg_i_11;
  input [0:0]D;
  input SS_n_IBUF;
  input tx_valid;

  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]D;
  wire \FSM_gray_current_state[1]_i_1_n_0 ;
  wire \FSM_gray_current_state[2]_i_2_n_0 ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire [9:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire addr_received_i_1_n_0;
  wire addr_received_i_2_n_0;
  wire addr_received_i_3_n_0;
  wire addr_received_reg_n_0;
  wire bit_cnt_rx;
  wire \bit_cnt_rx[0]_i_1_n_0 ;
  wire \bit_cnt_rx[0]_i_2_n_0 ;
  wire \bit_cnt_rx[1]_i_1_n_0 ;
  wire \bit_cnt_rx[2]_i_1_n_0 ;
  wire \bit_cnt_rx[3]_i_2_n_0 ;
  wire \bit_cnt_rx[3]_i_3_n_0 ;
  wire \bit_cnt_rx_reg_n_0_[0] ;
  wire \bit_cnt_rx_reg_n_0_[1] ;
  wire \bit_cnt_rx_reg_n_0_[2] ;
  wire \bit_cnt_rx_reg_n_0_[3] ;
  wire \bit_cnt_tx[0]_i_1_n_0 ;
  wire \bit_cnt_tx[1]_i_1_n_0 ;
  wire \bit_cnt_tx[2]_i_1_n_0 ;
  wire \bit_cnt_tx_reg[2]_0 ;
  wire \bit_cnt_tx_reg[2]_1 ;
  wire \bit_cnt_tx_reg[2]_2 ;
  wire \bit_cnt_tx_reg[2]_3 ;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_i_11;
  wire mem_reg_i_12;
  wire mem_reg_i_13;
  wire mem_reg_i_14;
  wire mem_reg_i_15;
  wire mem_reg_i_16;
  wire mem_reg_i_17;
  wire mem_reg_i_18;
  wire [0:0]next_state;
  wire rst_n_IBUF;
  wire \rx_data[9]_i_1_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'h00000000FFFFF0BF)) 
    \FSM_gray_current_state[0]_i_1 
       (.I0(addr_received_reg_n_0),
        .I1(D),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .I5(SS_n_IBUF),
        .O(next_state));
  LUT4 #(
    .INIT(16'h5554)) 
    \FSM_gray_current_state[1]_i_1 
       (.I0(SS_n_IBUF),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .O(\FSM_gray_current_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_gray_current_state[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT6 #(
    .INIT(64'h5555555510000000)) 
    \FSM_gray_current_state[2]_i_2 
       (.I0(SS_n_IBUF),
        .I1(current_state[1]),
        .I2(addr_received_reg_n_0),
        .I3(D),
        .I4(current_state[0]),
        .I5(current_state[2]),
        .O(\FSM_gray_current_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_state),
        .Q(current_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_gray_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_gray_current_state[2]_i_2_n_0 ),
        .Q(current_state[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    MISO_i_1
       (.I0(tx_valid),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(MISO_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .D(\bit_cnt_tx_reg[2]_3 ),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h55DFDFDF55101010)) 
    addr_received_i_1
       (.I0(current_state[2]),
        .I1(bit_cnt_rx),
        .I2(addr_received_i_2_n_0),
        .I3(addr_received_i_3_n_0),
        .I4(\bit_cnt_rx[0]_i_2_n_0 ),
        .I5(addr_received_reg_n_0),
        .O(addr_received_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    addr_received_i_2
       (.I0(\bit_cnt_tx_reg[2]_0 ),
        .I1(\bit_cnt_tx_reg[2]_1 ),
        .I2(\bit_cnt_tx_reg[2]_2 ),
        .O(addr_received_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    addr_received_i_3
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(addr_received_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    addr_received_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(addr_received_i_1_n_0),
        .Q(addr_received_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h00005010)) 
    \bit_cnt_rx[0]_i_1 
       (.I0(\bit_cnt_rx_reg_n_0_[0] ),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\bit_cnt_rx[0]_i_2_n_0 ),
        .O(\bit_cnt_rx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \bit_cnt_rx[0]_i_2 
       (.I0(\bit_cnt_rx_reg_n_0_[2] ),
        .I1(\bit_cnt_rx_reg_n_0_[3] ),
        .I2(\bit_cnt_rx_reg_n_0_[1] ),
        .I3(\bit_cnt_rx_reg_n_0_[0] ),
        .O(\bit_cnt_rx[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28202828)) 
    \bit_cnt_rx[1]_i_1 
       (.I0(\bit_cnt_rx[3]_i_3_n_0 ),
        .I1(\bit_cnt_rx_reg_n_0_[1] ),
        .I2(\bit_cnt_rx_reg_n_0_[0] ),
        .I3(\bit_cnt_rx_reg_n_0_[2] ),
        .I4(\bit_cnt_rx_reg_n_0_[3] ),
        .O(\bit_cnt_rx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h008C8C8C8C000000)) 
    \bit_cnt_rx[2]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(\bit_cnt_rx_reg_n_0_[1] ),
        .I4(\bit_cnt_rx_reg_n_0_[0] ),
        .I5(\bit_cnt_rx_reg_n_0_[2] ),
        .O(\bit_cnt_rx[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bit_cnt_rx[3]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(tx_valid),
        .O(bit_cnt_rx));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28A080A0)) 
    \bit_cnt_rx[3]_i_2 
       (.I0(\bit_cnt_rx[3]_i_3_n_0 ),
        .I1(\bit_cnt_rx_reg_n_0_[2] ),
        .I2(\bit_cnt_rx_reg_n_0_[3] ),
        .I3(\bit_cnt_rx_reg_n_0_[1] ),
        .I4(\bit_cnt_rx_reg_n_0_[0] ),
        .O(\bit_cnt_rx[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hC4)) 
    \bit_cnt_rx[3]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\bit_cnt_rx[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_rx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt_rx),
        .D(\bit_cnt_rx[0]_i_1_n_0 ),
        .Q(\bit_cnt_rx_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_rx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt_rx),
        .D(\bit_cnt_rx[1]_i_1_n_0 ),
        .Q(\bit_cnt_rx_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_rx_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt_rx),
        .D(\bit_cnt_rx[2]_i_1_n_0 ),
        .Q(\bit_cnt_rx_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_rx_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt_rx),
        .D(\bit_cnt_rx[3]_i_2_n_0 ),
        .Q(\bit_cnt_rx_reg_n_0_[3] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h4C448000)) 
    \bit_cnt_tx[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(tx_valid),
        .I3(current_state[0]),
        .I4(\bit_cnt_tx_reg[2]_1 ),
        .O(\bit_cnt_tx[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70F0303080000000)) 
    \bit_cnt_tx[1]_i_1 
       (.I0(\bit_cnt_tx_reg[2]_1 ),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(tx_valid),
        .I4(current_state[0]),
        .I5(\bit_cnt_tx_reg[2]_0 ),
        .O(\bit_cnt_tx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF088800008000)) 
    \bit_cnt_tx[2]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\bit_cnt_tx_reg[2]_0 ),
        .I3(\bit_cnt_tx_reg[2]_1 ),
        .I4(\rx_data[9]_i_1_n_0 ),
        .I5(\bit_cnt_tx_reg[2]_2 ),
        .O(\bit_cnt_tx[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_tx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_cnt_tx[0]_i_1_n_0 ),
        .Q(\bit_cnt_tx_reg[2]_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_tx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_cnt_tx[1]_i_1_n_0 ),
        .Q(\bit_cnt_tx_reg[2]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_tx_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_cnt_tx[2]_i_1_n_0 ),
        .Q(\bit_cnt_tx_reg[2]_2 ),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_1
       (.I0(rx_valid),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    mem_reg_i_10
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(rx_valid),
        .I5(mem_reg_i_18),
        .O(ADDRBWRADDR[0]));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_2
       (.I0(rx_valid),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(mem_reg));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    mem_reg_i_3
       (.I0(Q[7]),
        .I1(rst_n_IBUF),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(rx_valid),
        .I5(mem_reg_i_11),
        .O(ADDRBWRADDR[7]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    mem_reg_i_4
       (.I0(Q[6]),
        .I1(rst_n_IBUF),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(rx_valid),
        .I5(mem_reg_i_12),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    mem_reg_i_5
       (.I0(Q[5]),
        .I1(rst_n_IBUF),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(rx_valid),
        .I5(mem_reg_i_13),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    mem_reg_i_6
       (.I0(Q[4]),
        .I1(rst_n_IBUF),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(rx_valid),
        .I5(mem_reg_i_14),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    mem_reg_i_7
       (.I0(Q[3]),
        .I1(rst_n_IBUF),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(rx_valid),
        .I5(mem_reg_i_15),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    mem_reg_i_8
       (.I0(Q[2]),
        .I1(rst_n_IBUF),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(rx_valid),
        .I5(mem_reg_i_16),
        .O(ADDRBWRADDR[2]));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    mem_reg_i_9
       (.I0(Q[1]),
        .I1(rst_n_IBUF),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(rx_valid),
        .I5(mem_reg_i_17),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'h20F0)) 
    \rx_data[9]_i_1 
       (.I0(current_state[0]),
        .I1(tx_valid),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[1]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[2]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[3]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[4]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[5]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[6]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[7]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[8]),
        .Q(Q[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    rx_valid_i_1
       (.I0(\bit_cnt_rx_reg_n_0_[2] ),
        .I1(\bit_cnt_rx_reg_n_0_[3] ),
        .I2(\bit_cnt_rx_reg_n_0_[0] ),
        .I3(\bit_cnt_rx_reg_n_0_[1] ),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(SR));
  LUT5 #(
    .INIT(32'hC8080808)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rst_n_IBUF),
        .I2(rx_valid),
        .I3(Q[9]),
        .I4(Q[8]),
        .O(tx_valid_reg));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module spi_wrapper
   (clk,
    rst_n,
    SS_n,
    MOSI,
    MISO);
  input clk;
  input rst_n;
  input SS_n;
  input MOSI;
  output MISO;

  wire \<const0> ;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire addr_rd;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire m1_n_1;
  wire m1_n_10;
  wire m1_n_21;
  wire m1_n_22;
  wire m1_n_23;
  wire m1_n_24;
  wire m1_n_25;
  wire m1_n_26;
  wire m1_n_3;
  wire m1_n_4;
  wire m1_n_5;
  wire m1_n_6;
  wire m1_n_7;
  wire m1_n_8;
  wire m1_n_9;
  wire m2_n_2;
  wire mem_reg_i_11_n_0;
  wire mem_reg_i_12_n_0;
  wire mem_reg_i_13_n_0;
  wire mem_reg_i_14_n_0;
  wire mem_reg_i_15_n_0;
  wire mem_reg_i_16_n_0;
  wire mem_reg_i_17_n_0;
  wire mem_reg_i_18_n_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire [9:0]rx_data;
  wire rx_valid;
  wire tx_valid;

  GND GND
       (.G(\<const0> ));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  spi_slave m1
       (.ADDRBWRADDR({m1_n_3,m1_n_4,m1_n_5,m1_n_6,m1_n_7,m1_n_8,m1_n_9,m1_n_10}),
        .D(MOSI_IBUF),
        .MISO_OBUF(MISO_OBUF),
        .Q(rx_data),
        .SR(m1_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .\bit_cnt_tx_reg[2]_0 (m1_n_21),
        .\bit_cnt_tx_reg[2]_1 (m1_n_22),
        .\bit_cnt_tx_reg[2]_2 (m1_n_23),
        .\bit_cnt_tx_reg[2]_3 (m2_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .mem_reg(m1_n_24),
        .mem_reg_0(m1_n_26),
        .mem_reg_i_11(mem_reg_i_11_n_0),
        .mem_reg_i_12(mem_reg_i_12_n_0),
        .mem_reg_i_13(mem_reg_i_13_n_0),
        .mem_reg_i_14(mem_reg_i_14_n_0),
        .mem_reg_i_15(mem_reg_i_15_n_0),
        .mem_reg_i_16(mem_reg_i_16_n_0),
        .mem_reg_i_17(mem_reg_i_17_n_0),
        .mem_reg_i_18(mem_reg_i_18_n_0),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid),
        .tx_valid_reg(m1_n_25));
  RAM m2
       (.ADDRBWRADDR({m1_n_3,m1_n_4,m1_n_5,m1_n_6,m1_n_7,m1_n_8,m1_n_9,m1_n_10}),
        .MISO_reg(m2_n_2),
        .Q(rx_data),
        .SR(m1_n_1),
        .addr_rd(addr_rd),
        .\bit_cnt_tx_reg[0] (m1_n_22),
        .\bit_cnt_tx_reg[1] (m1_n_21),
        .\bit_cnt_tx_reg[2] (m1_n_23),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .rx_valid_reg(m1_n_26),
        .rx_valid_reg_0(m1_n_24),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(m1_n_25));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_11
       (.C(clk_IBUF_BUFG),
        .CE(addr_rd),
        .D(rx_data[7]),
        .Q(mem_reg_i_11_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_12
       (.C(clk_IBUF_BUFG),
        .CE(addr_rd),
        .D(rx_data[6]),
        .Q(mem_reg_i_12_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_13
       (.C(clk_IBUF_BUFG),
        .CE(addr_rd),
        .D(rx_data[5]),
        .Q(mem_reg_i_13_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_14
       (.C(clk_IBUF_BUFG),
        .CE(addr_rd),
        .D(rx_data[4]),
        .Q(mem_reg_i_14_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_15
       (.C(clk_IBUF_BUFG),
        .CE(addr_rd),
        .D(rx_data[3]),
        .Q(mem_reg_i_15_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_16
       (.C(clk_IBUF_BUFG),
        .CE(addr_rd),
        .D(rx_data[2]),
        .Q(mem_reg_i_16_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_17
       (.C(clk_IBUF_BUFG),
        .CE(addr_rd),
        .D(rx_data[1]),
        .Q(mem_reg_i_17_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_18
       (.C(clk_IBUF_BUFG),
        .CE(addr_rd),
        .D(rx_data[0]),
        .Q(mem_reg_i_18_n_0),
        .R(\<const0> ));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
