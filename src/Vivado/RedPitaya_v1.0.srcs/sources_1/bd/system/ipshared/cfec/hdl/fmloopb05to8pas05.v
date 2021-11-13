`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block FmLoopB05to8pas05/FmLoopBeta05to8pas05
module fmloopb05to8pas05_fmloopbeta05to8pas05 (
  input [4-1:0] selbeta05to5pas05,
  input clk_1,
  input ce_1,
  output [10-1:0] fmout
);
  wire [10-1:0] rom10_data_net;
  wire [10-1:0] counter_op_net;
  wire [10-1:0] mux_y_net;
  wire [4-1:0] beta_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] rom15_data_net;
  wire [10-1:0] rom11_data_net;
  wire [10-1:0] rom_data_net;
  wire [10-1:0] rom13_data_net;
  wire [10-1:0] rom1_data_net;
  wire [10-1:0] rom2_data_net;
  wire [10-1:0] rom3_data_net;
  wire [10-1:0] rom14_data_net;
  wire [10-1:0] rom12_data_net;
  wire [10-1:0] rom9_data_net;
  wire [10-1:0] rom5_data_net;
  wire [10-1:0] rom4_data_net;
  wire [10-1:0] rom8_data_net;
  wire [10-1:0] rom7_data_net;
  wire [10-1:0] rom6_data_net;
  assign fmout = mux_y_net;
  assign beta_net = selbeta05to5pas05;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i0"),
    .latency(1)
  )
  rom10 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom10_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i1"),
    .latency(1)
  )
  rom11 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom11_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i2"),
    .latency(1)
  )
  rom12 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom12_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i3"),
    .latency(1)
  )
  rom13 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom13_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i4"),
    .latency(1)
  )
  rom14 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom14_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i5"),
    .latency(1)
  )
  rom15 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom15_data_net)
  );
  fmloopb05to8pas05_xlcounter_limit #(
    .cnt_15_0(624),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("fmloopb05to8pas05_c_counter_binary_v12_0_i0"),
    .count_limited(1),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter (
    .en(1'b1),
    .rst(1'b0),
    .clr(1'b0),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_mux_667df040ee mux (
    .clr(1'b0),
    .sel(beta_net),
    .d0(rom_data_net),
    .d1(rom1_data_net),
    .d2(rom2_data_net),
    .d3(rom3_data_net),
    .d4(rom4_data_net),
    .d5(rom5_data_net),
    .d6(rom6_data_net),
    .d7(rom7_data_net),
    .d8(rom8_data_net),
    .d9(rom9_data_net),
    .d10(rom10_data_net),
    .d11(rom11_data_net),
    .d12(rom12_data_net),
    .d13(rom13_data_net),
    .d14(rom14_data_net),
    .d15(rom15_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i6"),
    .latency(1)
  )
  rom (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i7"),
    .latency(1)
  )
  rom1 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i8"),
    .latency(1)
  )
  rom2 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom2_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i9"),
    .latency(1)
  )
  rom3 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom3_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i10"),
    .latency(1)
  )
  rom4 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom4_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i11"),
    .latency(1)
  )
  rom5 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom5_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i12"),
    .latency(1)
  )
  rom6 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom6_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i13"),
    .latency(1)
  )
  rom7 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom7_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i14"),
    .latency(1)
  )
  rom8 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom8_data_net)
  );
  fmloopb05to8pas05_xlsprom #(
    .c_address_width(10),
    .c_width(10),
    .core_name0("fmloopb05to8pas05_blk_mem_gen_i15"),
    .latency(1)
  )
  rom9 (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom9_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block FmLoopB05to8pas05_struct
module fmloopb05to8pas05_struct (
  input [4-1:0] beta,
  input clk_1,
  input ce_1,
  output [10-1:0] fm_out
);
  wire ce_net;
  wire [10-1:0] mux_y_net;
  wire [4-1:0] beta_net;
  wire clk_net;
  assign beta_net = beta;
  assign fm_out = mux_y_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  fmloopb05to8pas05_fmloopbeta05to8pas05 fmloopbeta05to8pas05 (
    .selbeta05to5pas05(beta_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .fmout(mux_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module fmloopb05to8pas05_default_clock_driver (
  input fmloopb05to8pas05_sysclk,
  input fmloopb05to8pas05_sysce,
  input fmloopb05to8pas05_sysclr,
  output fmloopb05to8pas05_clk1,
  output fmloopb05to8pas05_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(fmloopb05to8pas05_sysclk),
    .sysce(fmloopb05to8pas05_sysce),
    .sysclr(fmloopb05to8pas05_sysclr),
    .clk(fmloopb05to8pas05_clk1),
    .ce(fmloopb05to8pas05_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "fmloopb05to8pas05,sysgen_core_2018_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z010,speed=-1,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=1,system_simulink_period=8e-09,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=5e-05,counter=1,mux=1,sprom=16,}" *)
module fmloopb05to8pas05 (
  input [4-1:0] beta,
  input clk,
  output [10-1:0] fm_out
);
  wire clk_1_net;
  wire ce_1_net;
  fmloopb05to8pas05_default_clock_driver fmloopb05to8pas05_default_clock_driver (
    .fmloopb05to8pas05_sysclk(clk),
    .fmloopb05to8pas05_sysce(1'b1),
    .fmloopb05to8pas05_sysclr(1'b0),
    .fmloopb05to8pas05_clk1(clk_1_net),
    .fmloopb05to8pas05_ce1(ce_1_net)
  );
  fmloopb05to8pas05_struct fmloopb05to8pas05_struct (
    .beta(beta),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .fm_out(fm_out)
  );
endmodule
