vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/lib_cdc_v1_0_2
vlib msim/interrupt_control_v3_1_4
vlib msim/axi_gpio_v2_0_11
vlib msim/lib_pkg_v1_0_2
vlib msim/axi_timer_v2_0_11
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_uartlite_v2_0_13
vlib msim/fifo_generator_v13_1_1
vlib msim/lib_fifo_v1_0_5
vlib msim/blk_mem_gen_v8_3_3
vlib msim/lib_bmg_v1_0_5
vlib msim/axi_datamover_v5_1_11
vlib msim/axi_vdma_v6_2_8
vlib msim/mdm_v3_2_6
vlib msim/microblaze_v9_6_1
vlib msim/axi_intc_v4_1_7
vlib msim/lmb_bram_if_cntlr_v4_0_9
vlib msim/lmb_v10_v3_0_8
vlib msim/proc_sys_reset_v5_0_9
vlib msim/fifo_generator_v13_0_3
vlib msim/v_tc_v6_1_8
vlib msim/v_vid_in_axi4s_v4_0_3
vlib msim/v_axi4s_vid_out_v4_0_3
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_9
vlib msim/axi_data_fifo_v2_1_8
vlib msim/axi_crossbar_v2_1_10
vlib msim/axi_protocol_converter_v2_1_9
vlib msim/axi_clock_converter_v2_1_8
vlib msim/axi_dwidth_converter_v2_1_9

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_11 msim/axi_gpio_v2_0_11
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap axi_timer_v2_0_11 msim/axi_timer_v2_0_11
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_13 msim/axi_uartlite_v2_0_13
vmap fifo_generator_v13_1_1 msim/fifo_generator_v13_1_1
vmap lib_fifo_v1_0_5 msim/lib_fifo_v1_0_5
vmap blk_mem_gen_v8_3_3 msim/blk_mem_gen_v8_3_3
vmap lib_bmg_v1_0_5 msim/lib_bmg_v1_0_5
vmap axi_datamover_v5_1_11 msim/axi_datamover_v5_1_11
vmap axi_vdma_v6_2_8 msim/axi_vdma_v6_2_8
vmap mdm_v3_2_6 msim/mdm_v3_2_6
vmap microblaze_v9_6_1 msim/microblaze_v9_6_1
vmap axi_intc_v4_1_7 msim/axi_intc_v4_1_7
vmap lmb_bram_if_cntlr_v4_0_9 msim/lmb_bram_if_cntlr_v4_0_9
vmap lmb_v10_v3_0_8 msim/lmb_v10_v3_0_8
vmap proc_sys_reset_v5_0_9 msim/proc_sys_reset_v5_0_9
vmap fifo_generator_v13_0_3 msim/fifo_generator_v13_0_3
vmap v_tc_v6_1_8 msim/v_tc_v6_1_8
vmap v_vid_in_axi4s_v4_0_3 msim/v_vid_in_axi4s_v4_0_3
vmap v_axi4s_vid_out_v4_0_3 msim/v_axi4s_vid_out_v4_0_3
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_9 msim/axi_register_slice_v2_1_9
vmap axi_data_fifo_v2_1_8 msim/axi_data_fifo_v2_1_8
vmap axi_crossbar_v2_1_10 msim/axi_crossbar_v2_1_10
vmap axi_protocol_converter_v2_1_9 msim/axi_protocol_converter_v2_1_9
vmap axi_clock_converter_v2_1_8 msim/axi_clock_converter_v2_1_8
vmap axi_dwidth_converter_v2_1_9 msim/axi_dwidth_converter_v2_1_9

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/axi_dynclk_v1_0/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -64 \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/axi_dynclk_v1_0/src/axi_dynclk_S00_AXI.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/axi_dynclk_v1_0/src/axi_dynclk.vhd" \
"../../../bd/hdmi/ip/hdmi_axi_dynclk_0_0/sim/hdmi_axi_dynclk_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work lib_cdc_v1_0_2 -64 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work interrupt_control_v3_1_4 -64 \
"../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_gpio_v2_0_11 -64 \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd" \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_axi_gpio_video_0/sim/hdmi_axi_gpio_video_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work axi_timer_v2_0_11 -64 \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/counter_f.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/mux_onehot_f.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/tc_types.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/timer_control.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/count_module.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/tc_core.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/axi_timer.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_axi_timer_0_0/sim/hdmi_axi_timer_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_uartlite_v2_0_13 -64 \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/dynshreg_i_f.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_tx.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_rx.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/baudrate.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_core.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/axi_uartlite.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_axi_uartlite_0_0/sim/hdmi_axi_uartlite_0_0.vhd" \

vlog -work fifo_generator_v13_1_1 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/fifo_generator_v13_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -64 \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_5 -64 \
"../../../ipstatic/lib_fifo_v1_0/hdl/src/vhdl/async_fifo_fg.vhd" \
"../../../ipstatic/lib_fifo_v1_0/hdl/src/vhdl/sync_fifo_fg.vhd" \

vlog -work blk_mem_gen_v8_3_3 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.v" \

vcom -work lib_bmg_v1_0_5 -64 \
"../../../ipstatic/lib_bmg_v1_0/hdl/src/vhdl/blk_mem_gen_wrapper.vhd" \

vcom -work axi_datamover_v5_1_11 -64 \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_reset.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_afifo_autord.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_sfifo_autord.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_fifo.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_cmd_status.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_scc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_strb_gen2.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_pcc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_addr_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rdmux.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rddata_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rd_status_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_demux.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wrdata_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_status_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_skid2mm_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_skid_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rd_sf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_sf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_stbs_set.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_stbs_set_nodre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_ibttcc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_indet_btt.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux2_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux4_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux8_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_dre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_dre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_ms_strb_set.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mssai_skid_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_slice.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_scatter.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_realign.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_basic_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_omit_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_full_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_basic_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_omit_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_full_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover.vhd" \

vlog -work axi_vdma_v6_2_8 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_axis2vector.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_vector2axis.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axisc_register_slice.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axis_register_slice.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_upsizer.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_downsizer.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axis_dwidth_converter.v" \

vcom -work axi_vdma_v6_2_8 -64 \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_pkg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_pntr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_afifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_queue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_noqueue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_q_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_queue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_noqueue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_q_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_intrpt.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_pkg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vid_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sg_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reset.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_rst_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_lite_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_register.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_regdirect.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_intrpt.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sof_gen.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_skid_buf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sfifo.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sfifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo_builtin.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mm2s_linebuf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_s2mm_linebuf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_blkmem.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_fsync_gen.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vregister.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vregister_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sgregister.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vaddrreg_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vaddrreg_mux_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vidreg_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vidreg_module_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_genlock_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_greycoder.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_genlock_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sg_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sts_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mngr_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mm2s_axis_dwidth_converter.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_s2mm_axis_dwidth_converter.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_axi_vdma_0_0/sim/hdmi_axi_vdma_0_0.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/SyncBase.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/EEPROM_8b.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/TWI_SlaveCtl.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/GlitchFilter.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/SyncAsync.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/DVI_Constants.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/SyncAsyncReset.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/PhaseAlign.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/InputSERDES.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/ChannelBond.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/ResyncToBUFG.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/TMDS_Decoder.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/TMDS_Clocking.vhd" \
"../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/digilentinc.com/dvi2rgb_v1_5/src/dvi2rgb.vhd" \
"../../../bd/hdmi/ip/hdmi_dvi2rgb_0_0/sim/hdmi_dvi2rgb_0_0.vhd" \

vcom -work mdm_v3_2_6 -64 \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_mdm_1_0/sim/hdmi_mdm_1_0.vhd" \

vcom -work microblaze_v9_6_1 -64 \
"../../../ipstatic/microblaze_v9_6/hdl/microblaze_v9_6_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_microblaze_0_0/sim/hdmi_microblaze_0_0.vhd" \

vcom -work axi_intc_v4_1_7 -64 \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/double_synchronizer.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/shared_ram_ivar.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/pulse_synchronizer.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/intc_core.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/axi_intc.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_microblaze_0_axi_intc_0/sim/hdmi_microblaze_0_axi_intc_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_9 -64 \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_dlmb_bram_if_cntlr_0/sim/hdmi_dlmb_bram_if_cntlr_0.vhd" \

vcom -work lmb_v10_v3_0_8 -64 \
"../../../ipstatic/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_dlmb_v10_0/sim/hdmi_dlmb_v10_0.vhd" \
"../../../bd/hdmi/ip/hdmi_ilmb_bram_if_cntlr_0/sim/hdmi_ilmb_bram_if_cntlr_0.vhd" \
"../../../bd/hdmi/ip/hdmi_ilmb_v10_0/sim/hdmi_ilmb_v10_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_lmb_bram_0/sim/hdmi_lmb_bram_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ipshared/xilinx.com/xlconcat_v2_1/xlconcat.vhd" \
"../../../bd/hdmi/ip/hdmi_microblaze_0_xlconcat_0/sim/hdmi_microblaze_0_xlconcat_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/hdmi_mig_7series_0_0_mig_sim.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/hdmi_mig_7series_0_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ipshared/digilentinc.com/rgb2dvi_v1_2/src/ClockGen.vhd" \
"../../../bd/hdmi/ipshared/digilentinc.com/rgb2dvi_v1_2/src/OutputSERDES.vhd" \
"../../../bd/hdmi/ipshared/digilentinc.com/rgb2dvi_v1_2/src/TMDS_Encoder.vhd" \
"../../../bd/hdmi/ipshared/digilentinc.com/rgb2dvi_v1_2/src/rgb2dvi.vhd" \
"../../../bd/hdmi/ip/hdmi_rgb2dvi_0_0/sim/hdmi_rgb2dvi_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_9 -64 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_rst_mig_7series_0_100M_0/sim/hdmi_rst_mig_7series_0_100M_0.vhd" \
"../../../bd/hdmi/ip/hdmi_rst_mig_7series_0_pxl_0/sim/hdmi_rst_mig_7series_0_pxl_0.vhd" \

vcom -work fifo_generator_v13_0_3 -64 \
"../../../ipstatic/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../ipstatic/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vcom -work v_tc_v6_1_8 -64 \
"../../../ipstatic/v_tc_v6_1/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_3 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/v_vid_in_axi4s_v4_0/hdl/verilog/v_vid_in_axi4s_v4_0_coupler.v" \
"../../../ipstatic/v_vid_in_axi4s_v4_0/hdl/verilog/v_vid_in_axi4s_v4_0_formatter.v" \
"../../../ipstatic/v_vid_in_axi4s_v4_0/hdl/verilog/v_vid_in_axi4s_v4_0.v" \

vlog -work v_axi4s_vid_out_v4_0_3 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/v_axi4s_vid_out_v4_0/hdl/verilog/v_axi4s_vid_out_v4_0.v" \
"../../../ipstatic/v_axi4s_vid_out_v4_0/hdl/verilog/v_axi4s_vid_out_v4_0_coupler.v" \
"../../../ipstatic/v_axi4s_vid_out_v4_0/hdl/verilog/v_axi4s_vid_out_v4_0_sync.v" \
"../../../ipstatic/v_axi4s_vid_out_v4_0/hdl/verilog/v_axi4s_vid_out_v4_0_formatter.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_v_axi4s_vid_out_0_0/sim/hdmi_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_v_tc_0_0/sim/hdmi_v_tc_0_0.vhd" \
"../../../bd/hdmi/ip/hdmi_v_tc_1_0/sim/hdmi_v_tc_1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_v_vid_in_axi4s_0_0/sim/hdmi_v_vid_in_axi4s_0_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ipshared/xilinx.com/xlconstant_v1_1/xlconstant.vhd" \
"../../../bd/hdmi/ip/hdmi_xlconstant_0_0/sim/hdmi_xlconstant_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_9 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work axi_data_fifo_v2_1_8 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_10 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_xbar_0/sim/hdmi_xbar_0.v" \
"../../../bd/hdmi/ip/hdmi_xbar_1/sim/hdmi_xbar_1.v" \
"../../../bd/hdmi/ipshared/utoronto.ca/block_detector_v1_0/hdl/block_detector_v1_0_S00_AXI.v" \
"../../../bd/hdmi/ipshared/utoronto.ca/block_detector_v1_0/hdl/block_detector_v1_0.v" \
"../../../bd/hdmi/ip/hdmi_block_detector_0_0/sim/hdmi_block_detector_0_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/ip/hdmi_axi_uartlite_1_0/sim/hdmi_axi_uartlite_1_0.vhd" \
"../../../bd/hdmi/ip/hdmi_ila_0_0/sim/hdmi_ila_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_block_detector_1_0/sim/hdmi_block_detector_1_0.v" \
"../../../bd/hdmi/ip/hdmi_block_detector_2_0/sim/hdmi_block_detector_2_0.v" \
"../../../bd/hdmi/ip/hdmi_block_detector_3_0/sim/hdmi_block_detector_3_0.v" \
"../../../bd/hdmi/ipshared/xilinx.com/draw_v1_0/hdl/draw_v1_0_S00_AXI.v" \
"../../../bd/hdmi/ipshared/xilinx.com/draw_v1_0/hdl/draw_v1_0_S00_AXIS.v" \
"../../../bd/hdmi/ipshared/xilinx.com/draw_v1_0/hdl/draw_v1_0_M00_AXIS.v" \
"../../../bd/hdmi/ipshared/xilinx.com/draw_v1_0/hdl/draw_v1_0.v" \
"../../../bd/hdmi/ip/hdmi_draw_0_1/sim/hdmi_draw_0_1.v" \
"../../../bd/hdmi/ipshared/utoronto.ca/face_swap_v1_0/hdl/face_swap_v1_0_S00_AXI.v" \
"../../../bd/hdmi/ipshared/utoronto.ca/face_swap_v1_0/hdl/face_swap_v1_0.v" \
"../../../bd/hdmi/ip/hdmi_face_swap_0_0/sim/hdmi_face_swap_0_0.v" \
"../../../bd/hdmi/ipshared/xilinx.com/overlay_v1_0/hdl/overlay_v1_0_S00_AXI.v" \
"../../../bd/hdmi/ipshared/xilinx.com/overlay_v1_0/hdl/overlay_v1_0.v" \
"../../../bd/hdmi/ip/hdmi_overlay_0_0/sim/hdmi_overlay_0_0.v" \
"../../../bd/hdmi/ip/hdmi_overlay_1_0/sim/hdmi_overlay_1_0.v" \
"../../../bd/hdmi/ip/hdmi_blk_mem_gen_1_0/sim/hdmi_blk_mem_gen_1_0.v" \
"../../../bd/hdmi/ip/hdmi_blk_mem_gen_2_0/sim/hdmi_blk_mem_gen_2_0.v" \
"../../../bd/hdmi/ip/hdmi_blk_mem_gen_0_0/sim/hdmi_blk_mem_gen_0_0.v" \
"../../../bd/hdmi/ip/hdmi_s00_regslice_0/sim/hdmi_s00_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_s01_regslice_0/sim/hdmi_s01_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_s02_regslice_0/sim/hdmi_s02_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_s03_regslice_0/sim/hdmi_s03_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_m00_regslice_0/sim/hdmi_m00_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_tier2_xbar_0_0/sim/hdmi_tier2_xbar_0_0.v" \
"../../../bd/hdmi/ip/hdmi_tier2_xbar_1_0/sim/hdmi_tier2_xbar_1_0.v" \
"../../../bd/hdmi/ip/hdmi_tier2_xbar_2_0/sim/hdmi_tier2_xbar_2_0.v" \

vlog -work axi_protocol_converter_v2_1_9 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work axi_clock_converter_v2_1_8 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_clock_converter_v2_1/hdl/verilog/axi_clock_converter_v2_1_axic_sync_clock_converter.v" \
"../../../ipstatic/axi_clock_converter_v2_1/hdl/verilog/axi_clock_converter_v2_1_axic_sample_cycle_ratio.v" \
"../../../ipstatic/axi_clock_converter_v2_1/hdl/verilog/axi_clock_converter_v2_1_axi_clock_converter.v" \

vlog -work axi_dwidth_converter_v2_1_9 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_a_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_a_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer_pktfifo.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer_pktfifo.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_top.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../hdmi.srcs/sources_1/bd/hdmi/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_auto_ds_0/sim/hdmi_auto_ds_0.v" \
"../../../bd/hdmi/ip/hdmi_auto_rs_w_0/sim/hdmi_auto_rs_w_0.v" \
"../../../bd/hdmi/ip/hdmi_auto_us_0/sim/hdmi_auto_us_0.v" \
"../../../bd/hdmi/ip/hdmi_auto_rs_w_1/sim/hdmi_auto_rs_w_1.v" \
"../../../bd/hdmi/ip/hdmi_auto_us_1/sim/hdmi_auto_us_1.v" \
"../../../bd/hdmi/ip/hdmi_auto_rs_w_2/sim/hdmi_auto_rs_w_2.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/hdmi/hdl/hdmi.vhd" \

vlog -work xil_defaultlib "glbl.v"

