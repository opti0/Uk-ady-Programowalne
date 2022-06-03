// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun  3 17:53:37 2022
// Host        : DESKTOP-L2NDSED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Maciek/Documents/uklady_programowalne/ipintegrator/ipintegrator.gen/sources_1/bd/modsystem/ip/modsystem_c_counter_binary_0_0/modsystem_c_counter_binary_0_0_sim_netlist.v
// Design      : modsystem_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "modsystem_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module modsystem_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN modsystem_CLK, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 4}" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  modsystem_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
WpplON9gajPqZwUKldyuoeqmBpIPSBxYcr5JWxrDlqNhqbxliKwmPwmbmeArplvGzrWaKVJ8yMLk
xTgTAsmnRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PywlUwtIgAXcje485P53GElPqY0h5tEj5ZDYGG4C1L/pCl1vhbCpI4Lfv1uBUhTCUgt0vUUApdRs
K2IImoVdVbz1EI11gNNCxuGNEsj4QbnWfiiRUf8TsfVO4gWgHDJkD4RJc+jcEVx/ZrSadMs2mHy7
KNZCnUFKCidfdRy/hkw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
unxmOFx/kGsfl24PCNNEZkygDDk8LvPrdhRZmBKwU8hEl0IYKnNbmVzy0GX33C+cHqleOLdJYv/h
wKQu75v68Cl8qlEV1Vqfa7UnK7q4w6bLjBa9BHtnG7S/H0Ywr54xnAXnSKvxTDfYX2sDgkcwSXoh
X0q3YhQRNlz6nKs2p675XjlEojeW92VNoWv8pHj8MG/qmJ8VohHbQpf0YxozMcZpH0CF/Ozm/fua
Vyb99q8DdEkMUxP21j9+F/I46Pbkcvq9zC2FY4Mv+gYZfH461p3qA1P0UNBQRmRRkOCCOAxz3PHk
qsrTTWDzAK0GxdzwQ7cbJFKBbdBVaV6+4memyA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pA50PpjJaJ8uV4EV7d4QCm5ucA0irsAJKsW/2yhM7uxfdfY6+ycy5Dlu6AXQj787AwSOkZjihqnA
0ZuEvQsnWN+aN5ZJgO/zI+HLHFGLXVZBK4YXwqHRk9mh8mtXkERd+D/Ig8IyNAjqeNFZtCo2lzge
AowqsmCoC67eYhNG5p9fzPjDy5k+MEVGOvXR621zFn4wRLcANXbLLaqTgDI902JfKeuW3HE+NVjz
0kcqt1g2MHeO7vwLhiZFHoP5uU7phxW1PW5Y7GQhQXmnbxXYl2WKNQoAt9enH/W7IaH1Se4RY/MA
HR2SD6NxDpfgAqD/XrFGW0hzhzJlI6XWA2wiLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z2C5b5Vf7eNgxsVgM+blog4oljuJGPE5amBDDw4IFWKEcJNxmK8iNsR1/nSU618rRzWshK/Fg8uY
H1Fs2nnnxOsbeSPfDz60zapynorXwzsi0dI/KtefB5PI8A9PzP9LZmPF5GoKgCyeO5RXGRNhstIX
p1ezoG0hvuiDRGjlMKc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
et3u9Nh2LCj8dZdn07LM2qUls9+keyt7JsISbFOsxR6cpH5B16zv97Rzwn74yMYiUBGAvUZ1T1v0
O4vr5rGCW0AQjy4M5nemZ9M6vuyPMPAob/tFs+R7Jb9fpt8qHPEH64ni3rOSEVPe07L1FARbFVCK
LUHHDuIaqTmTbQ20cYPgWi7rOJGYZaRI6TwujcBF5oJDmg+gry6t509xfzd/HPgX+tLX6NJuYBCP
ePAG3UjlqodSXw8U64081MNLzzmsSrNe2EnZfEXP2ODfphEFJ/9pYKdR8lyWMJQ6+Pu3vdvO+IIy
c0Cghu/ZzVtvJ7/zrgoR8hCFeuBzbeRvdhR5Fg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m2Nc/hOcqeBJFQqyL9SEkYAeLvPo2q4UIb79AxfyebsFVgipkPXe9Fr2Ly0oEBcpASNJVxE/qNX1
ncav7fcSQJ3AUai6lNvLIkrtdkVBATFfCbWr3T9gTPaXD1ZY1pnli57FrU8DixIaFRoeIg2lfWgX
Ejddks6fcCByoDETUKwOz1fhlUulegwij55Z9od8zC/RPnW2JzX7L7mQWAla4j7M4VzHtS/8AzAP
IcrhT+J0DDWfBDrYcYDo/5IL9X+cSnPrj3CzqrbyEBZ9J0tyVT8g9z9bEph9htiA9EuYQVcpbIB1
qmVC7LtsXr7t9qeijbb4dFcovnX3H5CRc3Xybg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UPKDuDrUpCqZq5As9ryjcITL7qO0/Aj65ai6MGkRJ5fsdrAIoRtKd/gZdMexAxpHxy5h8KvNWciR
45oibPZHqHo46BRzAtonK7cDtSPx2RaIzOvjoexdDjwbvwPqiCJhCul2J8EsDU1WPbSUWx7vpKn+
MYAq9BJrKBfkewHr8CqWmQugmrAbTxft49DV5mIiIEOhVCOTMV21e+pl1SODhXcx/d88X1XTvMY+
OkEL+ZPfyhoGAg9Tj5WjHVoAT0XcCjHObI3kOJqt3hPr2RYm1+yghuhT5ntdvMHa6iEBG/En+ah4
sN9yhdXkV5VsiSpxp/EsAX5tQkOiDZCtXXHNeQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rBmtHpx5e1XZPx6PBIEZ/58/PYTolg3kUSJ5yidwAgHM+vcWKSyMd/LXtLj20j7EpJVceIapdGYF
4nkL9OaJnw2p3gO+zvHk44FY2WlPcGjJ9qy4Z8049p1vFldJbTCwn8j2kMzXfA1XD0ll2p+WVUVI
EDJhvfyMnZOPwoecUCmOKjFhw7Oe93CtOZTTQI+gL+gADbsYMQ4cpMYr3spVh2jDfyhZRzb4Bm5h
ZlvJFfItmnW4/YJNUbQXoE22pLPLOaoAtOONuU5fFYk7jrQlcGNSRbnIf7aS7oW0kJmbes5lzfoD
QmLyp2jy+Pig+uTYrKUU4x0GRLNhdkoO25o5ew==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2352)
`pragma protect data_block
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
vUIlnAu+MA0kkwu4OGgM
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R+TTV2BAhe9Ek8IveLCAIK+vyB2qa4TorazWyGCbrxCKkVhTBvAD6RqPeP/JqtRuh2zDPzraR9rT
gUyNSWD83A==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XM2mYTm+gCT0AhW4S5p7IlzH34WHm/fa2tLSENK5xQp44huwLBqk+dBcYbe4GM+6wqA3pzoUNE9T
SluI3P6DpsOt14ispiaJSciB+VdlU+Q0e63sKyfq++TGO3CTW5OhLIxojUbYrTbdY4WbGkk4yG0Y
qGwauBBx1uBueCA2GC4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M9U+BjMD5E96pT2zTDB1OSiHn8IS+G+aDNa3MIF/jeClLSPAOJwufjuzRcyAtwx0354Pb7AaFOwR
6CcoWPQM1dcUC6avyG/0PRrtZP/KpXS3/9PiWsaFHPYVLfqBMCUDoraXwfpfMxmOy8hD0iI6TtWc
j1xJUXVsbv+kqOeTUloYmwdRx/8cs46FvZfnFpiZXMFMsTsT9zvmCyNxiZefgFKT064BWsCkg2fa
W2IXperFJQzpE9mXVwGSjl6xDUp55esPyEPcDI4xy0T+q2KtBQj2Qn2DJRZ8DKAvjXNQmo/tbweh
l+RGgbFge035kxDZ/t5pFweR/SYowAMdG2yOwA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
absLoVdCG0/WeiZ9M4NtAUjz+XnLze4vahkoVw40DL65GHoB/ikdBh+LyLQ7V3LckxaJp7Ihe1ow
2yXZZfuygvynBc+n/CI1EDwjo64cUTgVLg6gqySahs3D5Xkp8kFBBxARQmdoErJqqhefej6SXrxx
13OxNfq4vRGx7YG4l2M61gUhVtUX9poQdq5dxitmrLXD1kpdnUsj/YIpVBaLv/TBn9G44WiyRNIK
ojx9q2JyYKiWBfcBh+fpJV9PudrBUPMu8kvWsRizFr+r8Ya09D3o9iJUZ6FWOBiFsidvZNgmp1u/
nv56cp+qpaTesLtwmKiZbrhQtq6YXQvzPpDQXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t2oJ825g01R4DfbjT3g+VDPmL9PAyVC2t8Ozl94Xb2xucD77bNiPcvutyZFkA0lqWfRMp8Z3kkTE
OOo/FpGS3c1SP04/jMKLZD9E7DL6iVBRfxa3itPHxsSD0RAP4yPHw3yCiIsmB0q25x8+so3h/QOv
DKZh98m5ku9UnG+pY6c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
koDeaCPE+GNu9rMKu+nnX8UvNKbOa7mKCRwRUXCmZNo0yL7JuxnKQiStr89+6Ws9bOIbY8P6XKLC
WoSokcQl2MIZuh7gUJ+LQSPTB9HIkHPuGGPibAaiYY3e/6TBvv0+QG5gTvuf18Nz0UQyxRzNBFY7
2e0fNw+zoh4XJubbVaqqBBqTNyIM/naqx2G+DBhvJF/RlcpsJUe2eVt+uttis5ukRD1ndenp7rvA
+Ub6MDtoxunfFJsXEQ8QZkuZiT5XfcmJdkquGywSafJqKksYNJZpGleQnak/ePqKq8cYIbfpqOo1
MlqTFX2khe/WU/cqsW+5jXmRAgWueTOvg5hW2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wZaMVki09KtetQFaQKbOEpc8bkgxHSc8zyuzh+dwZ44uN2hbx3K7ITnC8dDkn3EMZGwk7C0u4eBt
eru14n5jQ1LfuUg4cKuwRNAgFxc7GaymqPYSRK9OQZHWZ+w6Alh4X9YWb6UVcsv4sCJA8YT9QeZ2
8PJYA3L+OY2t8Dcx3JcdLeVgMWDrP/zfpXyfMdPpwgBSSCqJHFsYdlG06onoQq2DDJ/SpC0W2oHU
JJAOTss7Cf3giWx2XTrorU5k4KbClTaEv4QAsogatkMf+oa9OfJQg5b7OUNbNqSzTV2IvRXtKIBC
N3mFkAtau93JXZzbow8bF+Y708RmUyIR5AX9og==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gidhQdKtgCKZpycO58SKONz/x64JxoYiDvm7CY7FhAgR8N3zqVR49qh/d9ImLGjAjXhz9ISSvhiE
1TpzIsqbVIoSEHhHCsw8fW3eNfjSKG9+5c0qMghoZBwnf9txWcso6wczPV8wSYfFgOnId+/H4w2u
MtSdrp2j2HeGCN7hmduXDeRIcLF+ekxNNZVk0wscD3yxYdFDWscebLgM1N+Cx8uwWvloVVe1fNSl
IBecuxue/tBnCdqw10D1fC8gGorhdNUhO2bTYqZL/+voIIAXkux7Z0BGx6B2uSJYuZ0j2LS23yyk
r0QDrL3YOpbEPBbFhTy9LQz59rkITBRhVeBqVg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lv7TtlI9EkMH+4ifu40NSGcF5VLP+fQr0uBXzvHjgpvggoEPEBlbTyXFtewlIbLNuHO4GjqSxFa3
oGjcKGgjJ4JKEHh9NZ/42sDCCnN1TS1zrfhPhpg3aJ3aGsOq5GxB6oAuNGvsTC7HgKk9lvgZfAiC
9ubfhd8fCUCrbS2jYuGLkpNxtwRxEbxLfMa6l2yusSJt8g6sfH0aGGBJWZjKnUZ1SyA1DmzZW3ox
o1AE17uwesEX5+JGPaqlsN+jLpbHhpv24GF4NS806LjJrXOO9qXbZScc78Z/R2xMBhLYAC0AHR8o
o8hlz9kYq3NSGSCdEMOcxNjVxDMYBrdZ+Lc+ag==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bdek7GjZg0fRxZS3YonRyLcM7Aa0zBGcgc9pqCKFQ5TrZDhc0Bh3n2BJ3eeYaHfO79nEM8WBXXYV
6T16tdnIJG3KdZ4i2pCQcyqTaXM/pMgm2zoiUTKrAkplBj3QrUYdrQjDVhxNnspZ3IdrvI2S0upQ
mrmiQisDdhIczkWXtpxRuiUC9jYty3Tbynlro6PnNZPXOF7jVECFwB3RRSms5pwABkZpWxaOGstl
JBGkm+0FM8WLzFmOCVEzXKeDzt5AeN54yBs9y1U+jKr7TSQzLZNaUj1At3EnJb0bPO0TtxC2HRJB
SnACkxkEnWXxHj76DoQpzMjaWZrysUwBG7ArtA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lSX0iGnKJLy+8zd3gvMsSlwBcW1CYa229gs34SKqfuWWZB1W6OQftqJkoDCohZRasKr4cF7nt5jh
fGtPWirZNH5huXgi//7flSemnNNP08WbaPIfZEyoEwze7SnIjwwz5qqsBgi/ds1eDoD9SUWmuuqF
rnj0bKL34nMmz8xF33O204sGHgWWFBQnJwLtyxXvMCC7SH5KPfEOMCIa+BNpxm58AIkHY8bUCzIZ
BM58Avro5MxdQTkjaVPLLkSV+haQ8w3wtj6wz0krrcMCyMiTFnCF6dzlFMSF0yN+vRGCiiJWiOK3
2VkctVhAHThyfS+5C+iBdYdkLjnSCfDwxGP4Qg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4912)
`pragma protect data_block
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
J0W7KaveaTcVpg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
