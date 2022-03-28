// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mmWaveStreamer_mmWaveStreamer,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.704000,HLS_SYN_LAT=165,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=136,HLS_SYN_LUT=250,HLS_VERSION=2020_2}" *)

module mmWaveStreamer (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        points_in_address0,
        points_in_ce0,
        points_in_q0,
        stream_out_TDATA,
        stream_out_TVALID,
        stream_out_TREADY,
        stream_out_TKEEP,
        stream_out_TSTRB,
        stream_out_TLAST
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_pp0_stage0 = 8'd2;
parameter    ap_ST_fsm_state4 = 8'd4;
parameter    ap_ST_fsm_pp1_stage0 = 8'd8;
parameter    ap_ST_fsm_pp1_stage1 = 8'd16;
parameter    ap_ST_fsm_pp1_stage2 = 8'd32;
parameter    ap_ST_fsm_pp1_stage3 = 8'd64;
parameter    ap_ST_fsm_state11 = 8'd128;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] points_in_address0;
output   points_in_ce0;
input  [127:0] points_in_q0;
output  [31:0] stream_out_TDATA;
output   stream_out_TVALID;
input   stream_out_TREADY;
output  [3:0] stream_out_TKEEP;
output  [3:0] stream_out_TSTRB;
output  [0:0] stream_out_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg points_in_ce0;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    stream_out_TDATA_blk_n;
wire    ap_CS_fsm_pp1_stage1;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_pp1_stage1;
reg   [0:0] icmp_ln20_reg_259;
wire    ap_CS_fsm_pp1_stage2;
wire    ap_block_pp1_stage2;
wire    ap_CS_fsm_pp1_stage3;
wire    ap_block_pp1_stage3;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] icmp_ln20_reg_259_pp1_iter1_reg;
reg   [5:0] i_reg_138;
reg   [5:0] i_1_reg_149;
wire   [5:0] add_ln13_fu_160_p2;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln13_fu_166_p2;
reg   [0:0] icmp_ln13_reg_240;
wire   [63:0] i_cast_fu_172_p1;
reg   [63:0] i_cast_reg_244;
wire   [5:0] add_ln20_fu_177_p2;
reg   [5:0] add_ln20_reg_254;
wire    ap_block_state5_pp1_stage0_iter0;
reg    ap_block_state9_pp1_stage0_iter1;
reg    ap_block_state9_io;
reg    ap_block_pp1_stage0_11001;
wire   [0:0] icmp_ln20_fu_183_p2;
wire   [0:0] cmp5_i_fu_194_p2;
reg   [0:0] cmp5_i_reg_268;
wire   [31:0] trunc_ln708_fu_200_p1;
reg    ap_block_state6_pp1_stage1_iter0;
reg    ap_block_state6_io;
reg    ap_block_state10_pp1_stage1_iter1;
reg    ap_block_state10_io;
reg    ap_block_pp1_stage1_11001;
reg   [31:0] p_Result_1_reg_278;
reg   [31:0] p_Result_2_reg_283;
reg   [31:0] p_Result_3_reg_288;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_state4;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state5;
reg    ap_block_state8_pp1_stage3_iter0;
reg    ap_block_state8_io;
reg    ap_block_pp1_stage3_subdone;
reg    ap_block_pp1_stage1_subdone;
reg   [4:0] points_buffer_V_address0;
reg    points_buffer_V_ce0;
reg    points_buffer_V_we0;
wire   [127:0] points_buffer_V_q0;
reg   [5:0] ap_phi_mux_i_1_phi_fu_153_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] i_1_cast_fu_189_p1;
reg    ap_block_pp1_stage1_01001;
reg    ap_block_state7_pp1_stage2_iter0;
reg    ap_block_pp1_stage2_01001;
reg    ap_block_pp1_stage3_01001;
reg    ap_block_pp1_stage0_01001;
reg    ap_block_state7_io;
reg    ap_block_pp1_stage2_11001;
reg    ap_block_pp1_stage3_11001;
wire    ap_CS_fsm_state11;
wire    regslice_both_stream_out_V_data_V_U_apdone_blk;
reg   [7:0] ap_NS_fsm;
reg    ap_block_pp1_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg   [31:0] stream_out_TDATA_int_regslice;
reg    stream_out_TVALID_int_regslice;
wire    stream_out_TREADY_int_regslice;
wire    regslice_both_stream_out_V_data_V_U_vld_out;
wire    regslice_both_stream_out_V_keep_V_U_apdone_blk;
wire    regslice_both_stream_out_V_keep_V_U_ack_in_dummy;
wire    regslice_both_stream_out_V_keep_V_U_vld_out;
wire    regslice_both_stream_out_V_strb_V_U_apdone_blk;
wire    regslice_both_stream_out_V_strb_V_U_ack_in_dummy;
wire    regslice_both_stream_out_V_strb_V_U_vld_out;
wire    regslice_both_stream_out_V_last_V_U_apdone_blk;
reg   [0:0] stream_out_TLAST_int_regslice;
wire    regslice_both_stream_out_V_last_V_U_ack_in_dummy;
wire    regslice_both_stream_out_V_last_V_U_vld_out;
reg    ap_condition_266;
reg    ap_condition_272;
reg    ap_condition_277;
reg    ap_condition_283;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

mmWaveStreamer_points_buffer_V #(
    .DataWidth( 128 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
points_buffer_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(points_buffer_V_address0),
    .ce0(points_buffer_V_ce0),
    .we0(points_buffer_V_we0),
    .d0(points_in_q0),
    .q0(points_buffer_V_q0)
);

mmWaveStreamer_regslice_both #(
    .DataWidth( 32 ))
regslice_both_stream_out_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(stream_out_TDATA_int_regslice),
    .vld_in(stream_out_TVALID_int_regslice),
    .ack_in(stream_out_TREADY_int_regslice),
    .data_out(stream_out_TDATA),
    .vld_out(regslice_both_stream_out_V_data_V_U_vld_out),
    .ack_out(stream_out_TREADY),
    .apdone_blk(regslice_both_stream_out_V_data_V_U_apdone_blk)
);

mmWaveStreamer_regslice_both #(
    .DataWidth( 4 ))
regslice_both_stream_out_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(4'd15),
    .vld_in(stream_out_TVALID_int_regslice),
    .ack_in(regslice_both_stream_out_V_keep_V_U_ack_in_dummy),
    .data_out(stream_out_TKEEP),
    .vld_out(regslice_both_stream_out_V_keep_V_U_vld_out),
    .ack_out(stream_out_TREADY),
    .apdone_blk(regslice_both_stream_out_V_keep_V_U_apdone_blk)
);

mmWaveStreamer_regslice_both #(
    .DataWidth( 4 ))
regslice_both_stream_out_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(4'd0),
    .vld_in(stream_out_TVALID_int_regslice),
    .ack_in(regslice_both_stream_out_V_strb_V_U_ack_in_dummy),
    .data_out(stream_out_TSTRB),
    .vld_out(regslice_both_stream_out_V_strb_V_U_vld_out),
    .ack_out(stream_out_TREADY),
    .apdone_blk(regslice_both_stream_out_V_strb_V_U_apdone_blk)
);

mmWaveStreamer_regslice_both #(
    .DataWidth( 1 ))
regslice_both_stream_out_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(stream_out_TLAST_int_regslice),
    .vld_in(stream_out_TVALID_int_regslice),
    .ack_in(regslice_both_stream_out_V_last_V_U_ack_in_dummy),
    .data_out(stream_out_TLAST),
    .vld_out(regslice_both_stream_out_V_last_V_U_vld_out),
    .ack_out(stream_out_TREADY),
    .apdone_blk(regslice_both_stream_out_V_last_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state5))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp1_stage1_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp1_stage1)) | ((1'b0 == ap_block_pp1_stage3_subdone) & (1'b1 == ap_CS_fsm_pp1_stage3)))) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_1_reg_149 <= 6'd0;
    end else if (((ap_enable_reg_pp1_iter1 == 1'b1) & (icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        i_1_reg_149 <= add_ln20_reg_254;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_138 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln13_fu_166_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_reg_138 <= add_ln13_fu_160_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        add_ln20_reg_254 <= add_ln20_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln20_fu_183_p2 == 1'd0))) begin
        cmp5_i_reg_268 <= cmp5_i_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln13_fu_166_p2 == 1'd0))) begin
        i_cast_reg_244[5 : 0] <= i_cast_fu_172_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln13_reg_240 <= icmp_ln13_fu_166_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        icmp_ln20_reg_259 <= icmp_ln20_fu_183_p2;
        icmp_ln20_reg_259_pp1_iter1_reg <= icmp_ln20_reg_259;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage1_11001) & (1'b1 == ap_CS_fsm_pp1_stage1))) begin
        p_Result_1_reg_278 <= {{points_buffer_V_q0[63:32]}};
        p_Result_2_reg_283 <= {{points_buffer_V_q0[95:64]}};
        p_Result_3_reg_288 <= {{points_buffer_V_q0[127:96]}};
    end
end

always @ (*) begin
    if ((icmp_ln13_fu_166_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln20_fu_183_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_stream_out_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_i_1_phi_fu_153_p4 = add_ln20_reg_254;
    end else begin
        ap_phi_mux_i_1_phi_fu_153_p4 = i_1_reg_149;
    end
end

always @ (*) begin
    if (((regslice_both_stream_out_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        points_buffer_V_address0 = i_1_cast_fu_189_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        points_buffer_V_address0 = i_cast_reg_244;
    end else begin
        points_buffer_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        points_buffer_V_ce0 = 1'b1;
    end else begin
        points_buffer_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln13_reg_240 == 1'd0))) begin
        points_buffer_V_we0 = 1'b1;
    end else begin
        points_buffer_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        points_in_ce0 = 1'b1;
    end else begin
        points_in_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp1_iter1 == 1'b1) & (icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == ap_block_pp1_stage1) & (1'b1 == ap_CS_fsm_pp1_stage1) & (icmp_ln20_reg_259_pp1_iter1_reg == 1'd0)) | ((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage3) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage3)) | ((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage2) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage2)) | ((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1)))) begin
        stream_out_TDATA_blk_n = stream_out_TREADY_int_regslice;
    end else begin
        stream_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((icmp_ln20_reg_259 == 1'd0)) begin
        if ((1'b1 == ap_condition_283)) begin
            stream_out_TDATA_int_regslice = p_Result_3_reg_288;
        end else if ((1'b1 == ap_condition_277)) begin
            stream_out_TDATA_int_regslice = p_Result_2_reg_283;
        end else if ((1'b1 == ap_condition_272)) begin
            stream_out_TDATA_int_regslice = p_Result_1_reg_278;
        end else if ((1'b1 == ap_condition_266)) begin
            stream_out_TDATA_int_regslice = trunc_ln708_fu_200_p1;
        end else begin
            stream_out_TDATA_int_regslice = 'bx;
        end
    end else begin
        stream_out_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage0_01001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        stream_out_TLAST_int_regslice = cmp5_i_reg_268;
    end else if ((((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage3_01001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage3)) | ((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage2_01001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage2)) | ((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage1_01001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1)))) begin
        stream_out_TLAST_int_regslice = 1'd0;
    end else begin
        stream_out_TLAST_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp1_iter1 == 1'b1) & (icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage3_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage3)) | ((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage2_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage2)) | ((icmp_ln20_reg_259 == 1'd0) & (1'b0 == ap_block_pp1_stage1_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1)))) begin
        stream_out_TVALID_int_regslice = 1'b1;
    end else begin
        stream_out_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln13_fu_166_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln13_fu_166_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln20_fu_183_p2 == 1'd1)) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage1;
            end else if (((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln20_fu_183_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage1 : begin
            if ((~((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == ap_block_pp1_stage1_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp1_stage1)) & (1'b0 == ap_block_pp1_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage2;
            end else if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == ap_block_pp1_stage1_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp1_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage1;
            end
        end
        ap_ST_fsm_pp1_stage2 : begin
            if ((1'b0 == ap_block_pp1_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage2;
            end
        end
        ap_ST_fsm_pp1_stage3 : begin
            if ((1'b0 == ap_block_pp1_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage3;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((regslice_both_stream_out_V_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln13_fu_160_p2 = (i_reg_138 + 6'd1);

assign add_ln20_fu_177_p2 = (ap_phi_mux_i_1_phi_fu_153_p4 + 6'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp1_stage1 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp1_stage2 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp1_stage3 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((ap_enable_reg_pp1_iter1 == 1'b1) & ((1'b1 == ap_block_state9_io) | ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((ap_enable_reg_pp1_iter1 == 1'b1) & ((1'b1 == ap_block_state9_io) | ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0))));
end

assign ap_block_pp1_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage1_01001 = (((ap_enable_reg_pp1_iter1 == 1'b1) & (stream_out_TREADY_int_regslice == 1'b0) & (icmp_ln20_reg_259_pp1_iter1_reg == 1'd0)) | ((icmp_ln20_reg_259 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (stream_out_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp1_stage1_11001 = (((ap_enable_reg_pp1_iter1 == 1'b1) & ((1'b1 == ap_block_state10_io) | ((stream_out_TREADY_int_regslice == 1'b0) & (icmp_ln20_reg_259_pp1_iter1_reg == 1'd0)))) | ((ap_enable_reg_pp1_iter0 == 1'b1) & ((1'b1 == ap_block_state6_io) | ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp1_stage1_subdone = (((ap_enable_reg_pp1_iter1 == 1'b1) & ((1'b1 == ap_block_state10_io) | ((stream_out_TREADY_int_regslice == 1'b0) & (icmp_ln20_reg_259_pp1_iter1_reg == 1'd0)))) | ((ap_enable_reg_pp1_iter0 == 1'b1) & ((1'b1 == ap_block_state6_io) | ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0)))));
end

assign ap_block_pp1_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage2_01001 = ((icmp_ln20_reg_259 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_pp1_stage2_11001 = ((ap_enable_reg_pp1_iter0 == 1'b1) & ((1'b1 == ap_block_state7_io) | ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp1_stage2_subdone = ((ap_enable_reg_pp1_iter0 == 1'b1) & ((1'b1 == ap_block_state7_io) | ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0))));
end

assign ap_block_pp1_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage3_01001 = ((icmp_ln20_reg_259 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_pp1_stage3_11001 = ((ap_enable_reg_pp1_iter0 == 1'b1) & ((1'b1 == ap_block_state8_io) | ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp1_stage3_subdone = ((ap_enable_reg_pp1_iter0 == 1'b1) & ((1'b1 == ap_block_state8_io) | ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_state10_io = ((stream_out_TREADY_int_regslice == 1'b0) & (icmp_ln20_reg_259_pp1_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_block_state10_pp1_stage1_iter1 = ((stream_out_TREADY_int_regslice == 1'b0) & (icmp_ln20_reg_259_pp1_iter1_reg == 1'd0));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_io = ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state6_pp1_stage1_iter0 = ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state7_io = ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state7_pp1_stage2_iter0 = ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state8_io = ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state8_pp1_stage3_iter0 = ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state9_io = ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state9_pp1_stage0_iter1 = ((icmp_ln20_reg_259 == 1'd0) & (stream_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_condition_266 = ((1'b0 == ap_block_pp1_stage1_01001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage1));
end

always @ (*) begin
    ap_condition_272 = ((1'b0 == ap_block_pp1_stage2_01001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage2));
end

always @ (*) begin
    ap_condition_277 = ((1'b0 == ap_block_pp1_stage3_01001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage3));
end

always @ (*) begin
    ap_condition_283 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == ap_block_pp1_stage0_01001) & (1'b1 == ap_CS_fsm_pp1_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign cmp5_i_fu_194_p2 = ((ap_phi_mux_i_1_phi_fu_153_p4 == 6'd31) ? 1'b1 : 1'b0);

assign i_1_cast_fu_189_p1 = ap_phi_mux_i_1_phi_fu_153_p4;

assign i_cast_fu_172_p1 = i_reg_138;

assign icmp_ln13_fu_166_p2 = ((i_reg_138 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln20_fu_183_p2 = ((ap_phi_mux_i_1_phi_fu_153_p4 == 6'd32) ? 1'b1 : 1'b0);

assign points_in_address0 = i_cast_fu_172_p1;

assign stream_out_TVALID = regslice_both_stream_out_V_data_V_U_vld_out;

assign trunc_ln708_fu_200_p1 = points_buffer_V_q0[31:0];

always @ (posedge ap_clk) begin
    i_cast_reg_244[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //mmWaveStreamer