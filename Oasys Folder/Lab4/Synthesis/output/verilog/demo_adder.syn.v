/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 11:06:22 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1210716779 */

module logic_hw(clk, rst, inp, outp, disp);
   input clk;
   input rst;
   input [9:0]inp;
   output [5:0]outp;
   output [2:0]disp;

   wire n_0_0;
   wire n_0_24;
   wire n_0_1;
   wire n_0_2;
   wire i;
   wire n_0_10;
   wire n_0_4;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_5;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_21;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_20;
   wire n_0_6;
   wire n_0_7;
   wire n_0_22;
   wire n_0_9;
   wire n_0_3;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_17;
   wire n_0_0_17;
   wire n_0_19;
   wire n_0_8;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_14;
   wire n_0_0_22;
   wire n_0_15;
   wire n_0_18;
   wire n_0_16;
   wire n_0_23;
   wire n_0_13;
   wire n_0_12;
   wire n_0_11;

   DFF_X1 \dispp_reg[2]  (.D(n_0_16), .CK(clk), .Q(disp[2]), .QN());
   DFF_X1 \dispp_reg[1]  (.D(n_0_15), .CK(clk), .Q(disp[1]), .QN());
   DFF_X1 \dispp_reg[0]  (.D(n_0_14), .CK(clk), .Q(disp[0]), .QN());
   DFF_X1 \outpp_reg[5]  (.D(n_0_22), .CK(clk), .Q(outp[5]), .QN());
   DFF_X1 \outpp_reg[4]  (.D(n_0_21), .CK(clk), .Q(outp[4]), .QN());
   DFF_X1 \outpp_reg[3]  (.D(n_0_20), .CK(clk), .Q(outp[3]), .QN());
   DFF_X1 \outpp_reg[2]  (.D(n_0_19), .CK(clk), .Q(outp[2]), .QN());
   DFF_X1 \outpp_reg[1]  (.D(n_0_18), .CK(clk), .Q(outp[1]), .QN());
   DFF_X1 \outpp_reg[0]  (.D(n_0_17), .CK(clk), .Q(outp[0]), .QN());
   DFF_X1 \last_visited_1_reg[0]  (.D(n_0_23), .CK(clk), .Q(n_0_0), .QN());
   DFF_X1 \last_visited_1_reg[1]  (.D(n_0_13), .CK(clk), .Q(n_0_24), .QN());
   DFF_X1 \last_visited_2_reg[0]  (.D(n_0_12), .CK(clk), .Q(n_0_1), .QN());
   DFF_X1 \last_visited_2_reg[1]  (.D(n_0_11), .CK(clk), .Q(n_0_2), .QN());
   DFF_X1 i_reg (.D(n_0_10), .CK(clk), .Q(i), .QN());
   MUX2_X1 i_reg_enable_mux_0 (.A(i), .B(n_0_4), .S(n_0_3), .Z(n_0_10));
   NOR2_X1 i_0_0_0 (.A1(rst), .A2(i), .ZN(n_0_4));
   OR2_X1 i_0_0_1 (.A1(n_0_2), .A2(n_0_24), .ZN(n_0_0_0));
   OR2_X1 i_0_0_2 (.A1(n_0_1), .A2(n_0_0), .ZN(n_0_0_1));
   OAI21_X1 i_0_0_3 (.A(inp[9]), .B1(n_0_0_0), .B2(n_0_0_1), .ZN(n_0_0_2));
   NAND2_X1 i_0_0_4 (.A1(n_0_1), .A2(n_0_0), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_5 (.A(inp[8]), .B1(n_0_0_0), .B2(n_0_0_3), .ZN(n_0_0_4));
   NAND2_X1 i_0_0_6 (.A1(n_0_2), .A2(n_0_24), .ZN(n_0_0_5));
   OAI21_X1 i_0_0_7 (.A(inp[6]), .B1(n_0_0_1), .B2(n_0_0_5), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_8 (.A(inp[7]), .B1(n_0_0_3), .B2(n_0_0_5), .ZN(n_0_0_7));
   NAND4_X1 i_0_0_9 (.A1(n_0_0_2), .A2(n_0_0_4), .A3(n_0_0_6), .A4(n_0_0_7), 
      .ZN(n_0_0_8));
   NAND2_X1 i_0_0_10 (.A1(n_0_0_8), .A2(n_0_4), .ZN(n_0_5));
   INV_X1 i_0_0_11 (.A(rst), .ZN(n_0_0_9));
   NAND2_X1 i_0_0_12 (.A1(n_0_0_2), .A2(n_0_0_9), .ZN(n_0_0_10));
   NOR2_X1 i_0_0_13 (.A1(n_0_0_10), .A2(n_0_0_4), .ZN(n_0_21));
   AND2_X1 i_0_0_14 (.A1(n_0_0_4), .A2(n_0_0_6), .ZN(n_0_0_11));
   INV_X1 i_0_0_15 (.A(n_0_0_11), .ZN(n_0_0_12));
   NOR3_X1 i_0_0_16 (.A1(n_0_0_10), .A2(n_0_0_7), .A3(n_0_0_12), .ZN(n_0_20));
   OR2_X1 i_0_0_17 (.A1(n_0_21), .A2(n_0_20), .ZN(n_0_6));
   NAND3_X1 i_0_0_18 (.A1(n_0_0_8), .A2(n_0_0_9), .A3(i), .ZN(n_0_7));
   NOR2_X1 i_0_0_19 (.A1(n_0_0_2), .A2(rst), .ZN(n_0_22));
   NOR2_X1 i_0_0_20 (.A1(n_0_21), .A2(n_0_22), .ZN(n_0_9));
   OR2_X1 i_0_0_21 (.A1(n_0_0_8), .A2(rst), .ZN(n_0_3));
   NAND3_X1 i_0_0_22 (.A1(inp[2]), .A2(inp[4]), .A3(inp[3]), .ZN(n_0_0_13));
   INV_X1 i_0_0_23 (.A(inp[5]), .ZN(n_0_0_14));
   NAND2_X1 i_0_0_24 (.A1(n_0_0_13), .A2(n_0_0_14), .ZN(n_0_0_15));
   INV_X1 i_0_0_25 (.A(n_0_0_15), .ZN(n_0_0_16));
   NOR2_X1 i_0_0_26 (.A1(n_0_3), .A2(n_0_0_16), .ZN(n_0_17));
   INV_X1 i_0_0_27 (.A(n_0_0_4), .ZN(n_0_0_17));
   NOR3_X1 i_0_0_28 (.A1(n_0_0_10), .A2(n_0_0_17), .A3(n_0_0_6), .ZN(n_0_19));
   NOR2_X1 i_0_0_29 (.A1(n_0_19), .A2(n_0_22), .ZN(n_0_8));
   AND3_X1 i_0_0_30 (.A1(inp[2]), .A2(inp[1]), .A3(inp[0]), .ZN(n_0_0_18));
   OR3_X1 i_0_0_31 (.A1(n_0_0_18), .A2(inp[4]), .A3(inp[3]), .ZN(n_0_0_19));
   INV_X1 i_0_0_32 (.A(n_0_0_19), .ZN(n_0_0_20));
   OAI211_X1 i_0_0_33 (.A(n_0_0_4), .B(n_0_0_7), .C1(n_0_0_20), .C2(n_0_0_15), 
      .ZN(n_0_0_21));
   OAI21_X1 i_0_0_34 (.A(n_0_8), .B1(rst), .B2(n_0_0_21), .ZN(n_0_14));
   NAND2_X1 i_0_0_35 (.A1(n_0_0_7), .A2(n_0_0_15), .ZN(n_0_0_22));
   AOI21_X1 i_0_0_36 (.A(n_0_0_10), .B1(n_0_0_11), .B2(n_0_0_22), .ZN(n_0_15));
   NOR3_X1 i_0_0_37 (.A1(n_0_3), .A2(inp[5]), .A3(n_0_0_19), .ZN(n_0_18));
   OR2_X1 i_0_0_38 (.A1(n_0_18), .A2(n_0_20), .ZN(n_0_16));
   MUX2_X1 i_0_1_0 (.A(n_0_0), .B(n_0_8), .S(n_0_7), .Z(n_0_23));
   MUX2_X1 i_0_1_1 (.A(n_0_24), .B(n_0_9), .S(n_0_7), .Z(n_0_13));
   MUX2_X1 i_0_1_2 (.A(n_0_1), .B(n_0_6), .S(n_0_5), .Z(n_0_12));
   MUX2_X1 i_0_1_3 (.A(n_0_2), .B(n_0_9), .S(n_0_5), .Z(n_0_11));
endmodule
