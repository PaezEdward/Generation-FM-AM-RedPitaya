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
module sysgen_mux_042b8f118d (
  input [(4 - 1):0] sel,
  input [(10 - 1):0] d0,
  input [(10 - 1):0] d1,
  input [(10 - 1):0] d2,
  input [(10 - 1):0] d3,
  input [(10 - 1):0] d4,
  input [(10 - 1):0] d5,
  input [(10 - 1):0] d6,
  input [(10 - 1):0] d7,
  input [(10 - 1):0] d8,
  input [(10 - 1):0] d9,
  output [(10 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(4 - 1):0] sel_1_20;
  wire [(10 - 1):0] d0_1_24;
  wire [(10 - 1):0] d1_1_27;
  wire [(10 - 1):0] d2_1_30;
  wire [(10 - 1):0] d3_1_33;
  wire [(10 - 1):0] d4_1_36;
  wire [(10 - 1):0] d5_1_39;
  wire [(10 - 1):0] d6_1_42;
  wire [(10 - 1):0] d7_1_45;
  wire [(10 - 1):0] d8_1_48;
  wire [(10 - 1):0] d9_1_51;
  localparam [(10 - 1):0] const_value = 10'b0000000000;
  reg [(10 - 1):0] pipe_32_22[0:(1 - 1)];
  initial
    begin
      pipe_32_22[0] = 10'b0000000000;
    end
  wire [(10 - 1):0] pipe_32_22_front_din;
  wire [(10 - 1):0] pipe_32_22_back;
  wire pipe_32_22_push_front_pop_back_en;
  reg [(10 - 1):0] unregy_join_6_1;
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
  assign pipe_32_22_back = pipe_32_22[0];
  always @(posedge clk)
    begin:proc_pipe_32_22
      integer i;
      if (((ce == 1'b1) && (pipe_32_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_32_22[0] <= pipe_32_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or d4_1_36 or d5_1_39 or d6_1_42 or d7_1_45 or d8_1_48 or d9_1_51 or sel_1_20)
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
        default:
          begin
            unregy_join_6_1 = d9_1_51;
          end
      endcase
    end
  assign pipe_32_22_front_din = unregy_join_6_1;
  assign pipe_32_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_32_22_back;
endmodule
module amloopm01to1pas01_xlcounter_limit (ce, clr, clk, op, up, en, rst);
 
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



if (core_name0 == "amloopm01to1pas01_c_counter_binary_v12_0_i0") 
     begin:comp0
amloopm01to1pas01_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate
 
 endmodule

module amloopm01to1pas01_xlsprom (addr, en, rst, ce, clk, data);
 
    parameter core_name0= "";
    parameter latency= 1;
    parameter c_width= 12;
    parameter c_address_width= 4;
 
    input [c_address_width-1:0] addr;
    input en;
    input rst;
    input ce;
    input clk;
    output [c_width-1:0] data;
 
    wire [c_address_width-1:0] core_addr;
    wire [c_width-1:0] core_data_out;
    wire  core_ce, sinit;
 
    assign core_addr = addr;
    
    assign core_ce = ce & en;
    assign sinit = rst & ce;
 
 generate
 


if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i0") 
     begin:comp0
amloopm01to1pas01_blk_mem_gen_i0 core_instance0 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i1") 
     begin:comp1
amloopm01to1pas01_blk_mem_gen_i1 core_instance1 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i2") 
     begin:comp2
amloopm01to1pas01_blk_mem_gen_i2 core_instance2 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i3") 
     begin:comp3
amloopm01to1pas01_blk_mem_gen_i3 core_instance3 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i4") 
     begin:comp4
amloopm01to1pas01_blk_mem_gen_i4 core_instance4 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i5") 
     begin:comp5
amloopm01to1pas01_blk_mem_gen_i5 core_instance5 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i6") 
     begin:comp6
amloopm01to1pas01_blk_mem_gen_i6 core_instance6 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i7") 
     begin:comp7
amloopm01to1pas01_blk_mem_gen_i7 core_instance7 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i8") 
     begin:comp8
amloopm01to1pas01_blk_mem_gen_i8 core_instance8 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

if (core_name0 == "amloopm01to1pas01_blk_mem_gen_i9") 
     begin:comp9
amloopm01to1pas01_blk_mem_gen_i9 core_instance9 ( 
    .addra(core_addr),
    .clka(clk),
    .ena(core_ce),
    .douta(core_data_out) 
       ); 
     end 

 if (latency > 1)
      begin:latency_test
 	synth_reg # (c_width, latency-1) 
 	  reg1 (
 	       .i(core_data_out), 
 	       .ce(core_ce),
 	       .clr(1'b0),
 	       .clk(clk),
 	       .o(data));
      end
     
    if (latency <= 1)
      begin:latency_1
 	assign data = core_data_out;
      end
 
 endgenerate
 
 endmodule
 
