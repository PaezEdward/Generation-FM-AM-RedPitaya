//-----------------------------------------------------------------
// System Generator version 2018.2 Verilog source file.
//
// Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module carredephase180max_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
  (input [width-1:0] d,
   input ce, clk, en, rst,
   output [width-1:0] q);

generate
  if ((latency == 0) || ((reg_retiming == 0) && (reset == 0)))
  begin:srl_delay
    synth_reg # (width, latency)
      reg1 (
        .i(d),
        .ce(ce & en),
        .clr(1'b0),
        .clk(clk),
        .o(q));
  end

  if ((latency>=1) && ((reg_retiming) || (reset)))
  begin:reg_delay
    synth_reg_reg # (width, latency)
      reg2 (
        .i(d),
        .ce(ce & en),
        .clr(rst),
        .clk(clk),
        .o(q));
  end
endgenerate
endmodule
`timescale 1 ns / 10 ps
module carredephase180max_xlregister (d, rst, en, ce, clk, q);
   parameter d_width = 5;
   parameter init_value = 'b0;

   input [d_width-1:0] d;
   input rst, en, ce, clk;
   output [d_width-1:0] q;

   wire internal_clr, internal_ce;

   assign internal_clr = rst & ce;
   assign internal_ce  = ce & en;

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst(.i(d),
                  .ce(internal_ce),
                  .clr(internal_clr),
                  .clk(clk),
                  .o(q));
endmodule

`timescale 1 ns / 10 ps
module sysgen_mcode_block_0a7bb6df46 (
  input [(9 - 1):0] compte,
  output [(1 - 1):0] z,
  input clk,
  input ce,
  input clr);
  wire [(9 - 1):0] compte_1_26;
  localparam [(1 - 1):0] const_value = 1'b0;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  localparam [(8 - 1):0] const_value_x_000001 = 8'b10110011;
  localparam [(9 - 1):0] const_value_x_000002 = 9'b010110011;
  wire rel_2_6;
  reg [(1 - 1):0] z_join_2_3;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b1;
  assign compte_1_26 = compte;
  assign rel_2_6 = compte_1_26 <= const_value_x_000002;
  always @(rel_2_6)
    begin:proc_if_2_3
      if (rel_2_6)
        begin
          z_join_2_3 = const_value_x_000003;
        end
      else 
        begin
          z_join_2_3 = const_value_x_000004;
        end
    end
  assign z = z_join_2_3;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_a26dbdb0c0 (
  input [(4 - 1):0] sel,
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  input [(1 - 1):0] d3,
  input [(1 - 1):0] d4,
  input [(1 - 1):0] d5,
  input [(1 - 1):0] d6,
  input [(1 - 1):0] d7,
  input [(1 - 1):0] d8,
  input [(1 - 1):0] d9,
  input [(1 - 1):0] d10,
  input [(1 - 1):0] d11,
  input [(1 - 1):0] d12,
  input [(1 - 1):0] d13,
  input [(1 - 1):0] d14,
  input [(1 - 1):0] d15,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(4 - 1):0] sel_1_20;
  wire [(1 - 1):0] d0_1_24;
  wire [(1 - 1):0] d1_1_27;
  wire [(1 - 1):0] d2_1_30;
  wire [(1 - 1):0] d3_1_33;
  wire [(1 - 1):0] d4_1_36;
  wire [(1 - 1):0] d5_1_39;
  wire [(1 - 1):0] d6_1_42;
  wire [(1 - 1):0] d7_1_45;
  wire [(1 - 1):0] d8_1_48;
  wire [(1 - 1):0] d9_1_51;
  wire [(1 - 1):0] d10_1_54;
  wire [(1 - 1):0] d11_1_58;
  wire [(1 - 1):0] d12_1_62;
  wire [(1 - 1):0] d13_1_66;
  wire [(1 - 1):0] d14_1_70;
  wire [(1 - 1):0] d15_1_74;
  localparam [(1 - 1):0] const_value = 1'b0;
  reg [(1 - 1):0] pipe_44_22[0:(1 - 1)];
  initial
    begin
      pipe_44_22[0] = 1'b0;
    end
  wire [(1 - 1):0] pipe_44_22_front_din;
  wire [(1 - 1):0] pipe_44_22_back;
  wire pipe_44_22_push_front_pop_back_en;
  reg [(1 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign d4_1_36 = d4;
  assign d5_1_39 = d5;
  assign d6_1_42 = d6;
  assign d7_1_45 = d7;
  assign d8_1_48 = d8;
  assign d9_1_51 = d9;
  assign d10_1_54 = d10;
  assign d11_1_58 = d11;
  assign d12_1_62 = d12;
  assign d13_1_66 = d13;
  assign d14_1_70 = d14;
  assign d15_1_74 = d15;
  assign pipe_44_22_back = pipe_44_22[0];
  always @(posedge clk)
    begin:proc_pipe_44_22
      integer i;
      if (((ce == 1'b1) && (pipe_44_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_44_22[0] <= pipe_44_22_front_din;
        end
    end
  always @(d0_1_24 or d10_1_54 or d11_1_58 or d12_1_62 or d13_1_66 or d14_1_70 or d15_1_74 or d1_1_27 or d2_1_30 or d3_1_33 or d4_1_36 or d5_1_39 or d6_1_42 or d7_1_45 or d8_1_48 or d9_1_51 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        4'b0000 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        4'b0001 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        4'b0010 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        4'b0011 :
          begin
            unregy_join_6_1 = d3_1_33;
          end
        4'b0100 :
          begin
            unregy_join_6_1 = d4_1_36;
          end
        4'b0101 :
          begin
            unregy_join_6_1 = d5_1_39;
          end
        4'b0110 :
          begin
            unregy_join_6_1 = d6_1_42;
          end
        4'b0111 :
          begin
            unregy_join_6_1 = d7_1_45;
          end
        4'b1000 :
          begin
            unregy_join_6_1 = d8_1_48;
          end
        4'b1001 :
          begin
            unregy_join_6_1 = d9_1_51;
          end
        4'b1010 :
          begin
            unregy_join_6_1 = d10_1_54;
          end
        4'b1011 :
          begin
            unregy_join_6_1 = d11_1_58;
          end
        4'b1100 :
          begin
            unregy_join_6_1 = d12_1_62;
          end
        4'b1101 :
          begin
            unregy_join_6_1 = d13_1_66;
          end
        4'b1110 :
          begin
            unregy_join_6_1 = d14_1_70;
          end
        default:
          begin
            unregy_join_6_1 = d15_1_74;
          end
      endcase
    end
  assign pipe_44_22_front_din = unregy_join_6_1;
  assign pipe_44_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_44_22_back;
endmodule
module carredephase180max_xlcounter_limit (ce, clr, clk, op, up, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 parameter cnt_63_48 = 0;
 parameter cnt_47_32 = 0;
 parameter cnt_31_16 = 0;
 parameter cnt_15_0  = 0;
 parameter count_limited= 0;
 
    input  ce, clr, clk;
    input rst, en;  
    input up;
    output [op_width-1:0] op;
 
 parameter [63:0] cnt_to = { cnt_63_48[15:0], cnt_47_32[15:0], cnt_31_16[15:0], cnt_15_0[15:0]};
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
    
 reg op_thresh0;
 wire core_sinit, core_ce;
 wire rst_overrides_en;
 wire [op_width-1:0] op_net;
 
    assign op = op_net;
    assign core_ce = ce & en;
    assign rst_overrides_en = rst | en;
    
 generate
 
    if (count_limited == 1)
      begin :limit
 	always @(op_net)
 	  begin:eq_cnt_to
 	     op_thresh0 = (op_net == cnt_to[op_width-1:0])? 1'b1 : 1'b0;
 	  end
         assign core_sinit = (op_thresh0 | clr | rst) & ce & rst_overrides_en;
      end
    if (count_limited == 0)
      begin :no_limit
 	assign core_sinit = (clr | rst) & ce & rst_overrides_en;
      end



if (core_name0 == "carredephase180max_c_counter_binary_v12_0_i0") 
     begin:comp0
carredephase180max_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate
 
 endmodule

