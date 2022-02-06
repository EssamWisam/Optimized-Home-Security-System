
// 	Mon Jan  3 13:26:50 2022
//	vlsi
//	localhost.localdomain

module logic_hw (clk, rst, inp, outp, disp);

output [2:0] disp;
output [5:0] outp;
input clk;
input [9:0] inp;
input rst;
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


MUX2_X1 i_0_1_3 (.Z (n_0_11), .A (n_0_2), .B (n_0_9), .S (n_0_5));
MUX2_X1 i_0_1_2 (.Z (n_0_12), .A (n_0_1), .B (n_0_6), .S (n_0_5));
MUX2_X1 i_0_1_1 (.Z (n_0_13), .A (n_0_24), .B (n_0_9), .S (n_0_7));
MUX2_X1 i_0_1_0 (.Z (n_0_23), .A (n_0_0), .B (n_0_8), .S (n_0_7));
OR2_X1 i_0_0_38 (.ZN (n_0_16), .A1 (n_0_18), .A2 (n_0_20));
NOR3_X1 i_0_0_37 (.ZN (n_0_18), .A1 (n_0_3), .A2 (inp[5]), .A3 (n_0_0_19));
AOI21_X1 i_0_0_36 (.ZN (n_0_15), .A (n_0_0_10), .B1 (n_0_0_11), .B2 (n_0_0_22));
NAND2_X1 i_0_0_35 (.ZN (n_0_0_22), .A1 (n_0_0_7), .A2 (n_0_0_15));
OAI21_X1 i_0_0_34 (.ZN (n_0_14), .A (n_0_8), .B1 (rst), .B2 (n_0_0_21));
OAI211_X1 i_0_0_33 (.ZN (n_0_0_21), .A (n_0_0_4), .B (n_0_0_7), .C1 (n_0_0_20), .C2 (n_0_0_15));
INV_X1 i_0_0_32 (.ZN (n_0_0_20), .A (n_0_0_19));
OR3_X1 i_0_0_31 (.ZN (n_0_0_19), .A1 (n_0_0_18), .A2 (inp[4]), .A3 (inp[3]));
AND3_X1 i_0_0_30 (.ZN (n_0_0_18), .A1 (inp[2]), .A2 (inp[1]), .A3 (inp[0]));
NOR2_X1 i_0_0_29 (.ZN (n_0_8), .A1 (n_0_19), .A2 (n_0_22));
NOR3_X1 i_0_0_28 (.ZN (n_0_19), .A1 (n_0_0_10), .A2 (n_0_0_17), .A3 (n_0_0_6));
INV_X1 i_0_0_27 (.ZN (n_0_0_17), .A (n_0_0_4));
NOR2_X1 i_0_0_26 (.ZN (n_0_17), .A1 (n_0_3), .A2 (n_0_0_16));
INV_X1 i_0_0_25 (.ZN (n_0_0_16), .A (n_0_0_15));
NAND2_X1 i_0_0_24 (.ZN (n_0_0_15), .A1 (n_0_0_13), .A2 (n_0_0_14));
INV_X1 i_0_0_23 (.ZN (n_0_0_14), .A (inp[5]));
NAND3_X1 i_0_0_22 (.ZN (n_0_0_13), .A1 (inp[2]), .A2 (inp[4]), .A3 (inp[3]));
OR2_X1 i_0_0_21 (.ZN (n_0_3), .A1 (n_0_0_8), .A2 (rst));
NOR2_X1 i_0_0_20 (.ZN (n_0_9), .A1 (n_0_21), .A2 (n_0_22));
NOR2_X1 i_0_0_19 (.ZN (n_0_22), .A1 (n_0_0_2), .A2 (rst));
NAND3_X1 i_0_0_18 (.ZN (n_0_7), .A1 (n_0_0_8), .A2 (n_0_0_9), .A3 (i));
OR2_X1 i_0_0_17 (.ZN (n_0_6), .A1 (n_0_21), .A2 (n_0_20));
NOR3_X1 i_0_0_16 (.ZN (n_0_20), .A1 (n_0_0_10), .A2 (n_0_0_7), .A3 (n_0_0_12));
INV_X1 i_0_0_15 (.ZN (n_0_0_12), .A (n_0_0_11));
AND2_X1 i_0_0_14 (.ZN (n_0_0_11), .A1 (n_0_0_4), .A2 (n_0_0_6));
NOR2_X1 i_0_0_13 (.ZN (n_0_21), .A1 (n_0_0_10), .A2 (n_0_0_4));
NAND2_X1 i_0_0_12 (.ZN (n_0_0_10), .A1 (n_0_0_2), .A2 (n_0_0_9));
INV_X1 i_0_0_11 (.ZN (n_0_0_9), .A (rst));
NAND2_X1 i_0_0_10 (.ZN (n_0_5), .A1 (n_0_0_8), .A2 (n_0_4));
NAND4_X1 i_0_0_9 (.ZN (n_0_0_8), .A1 (n_0_0_2), .A2 (n_0_0_4), .A3 (n_0_0_6), .A4 (n_0_0_7));
OAI21_X1 i_0_0_8 (.ZN (n_0_0_7), .A (inp[7]), .B1 (n_0_0_3), .B2 (n_0_0_5));
OAI21_X1 i_0_0_7 (.ZN (n_0_0_6), .A (inp[6]), .B1 (n_0_0_1), .B2 (n_0_0_5));
NAND2_X1 i_0_0_6 (.ZN (n_0_0_5), .A1 (n_0_2), .A2 (n_0_24));
OAI21_X1 i_0_0_5 (.ZN (n_0_0_4), .A (inp[8]), .B1 (n_0_0_0), .B2 (n_0_0_3));
NAND2_X1 i_0_0_4 (.ZN (n_0_0_3), .A1 (n_0_1), .A2 (n_0_0));
OAI21_X1 i_0_0_3 (.ZN (n_0_0_2), .A (inp[9]), .B1 (n_0_0_0), .B2 (n_0_0_1));
OR2_X1 i_0_0_2 (.ZN (n_0_0_1), .A1 (n_0_1), .A2 (n_0_0));
OR2_X1 i_0_0_1 (.ZN (n_0_0_0), .A1 (n_0_2), .A2 (n_0_24));
NOR2_X1 i_0_0_0 (.ZN (n_0_4), .A1 (rst), .A2 (i));
MUX2_X1 i_reg_enable_mux_0 (.Z (n_0_10), .A (i), .B (n_0_4), .S (n_0_3));
DFF_X1 i_reg (.Q (i), .CK (clk), .D (n_0_10));
DFF_X1 \last_visited_2_reg[1]  (.Q (n_0_2), .CK (clk), .D (n_0_11));
DFF_X1 \last_visited_2_reg[0]  (.Q (n_0_1), .CK (clk), .D (n_0_12));
DFF_X1 \last_visited_1_reg[1]  (.Q (n_0_24), .CK (clk), .D (n_0_13));
DFF_X1 \last_visited_1_reg[0]  (.Q (n_0_0), .CK (clk), .D (n_0_23));
DFF_X1 \outpp_reg[0]  (.Q (outp[0]), .CK (clk), .D (n_0_17));
DFF_X1 \outpp_reg[1]  (.Q (outp[1]), .CK (clk), .D (n_0_18));
DFF_X1 \outpp_reg[2]  (.Q (outp[2]), .CK (clk), .D (n_0_19));
DFF_X1 \outpp_reg[3]  (.Q (outp[3]), .CK (clk), .D (n_0_20));
DFF_X1 \outpp_reg[4]  (.Q (outp[4]), .CK (clk), .D (n_0_21));
DFF_X1 \outpp_reg[5]  (.Q (outp[5]), .CK (clk), .D (n_0_22));
DFF_X1 \dispp_reg[0]  (.Q (disp[0]), .CK (clk), .D (n_0_14));
DFF_X1 \dispp_reg[1]  (.Q (disp[1]), .CK (clk), .D (n_0_15));
DFF_X1 \dispp_reg[2]  (.Q (disp[2]), .CK (clk), .D (n_0_16));

endmodule //logic_hw


