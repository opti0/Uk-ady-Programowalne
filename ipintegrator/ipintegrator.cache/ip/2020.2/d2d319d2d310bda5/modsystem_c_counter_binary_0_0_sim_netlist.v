// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun  3 17:53:36 2022
// Host        : DESKTOP-L2NDSED running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ modsystem_c_counter_binary_0_0_sim_netlist.v
// Design      : modsystem_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "modsystem_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2320)
`pragma protect data_block
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
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
SZZw5RCOKRVh6+KtGw4VT3L1fN7AJ3OZ8ezHtEvF/SMMJjBkskGfLpfbK0LhgF519e4Z5eFOYlE2
wHqLB1AK0dJamEhwbKcATeXfRJvgrnCx+HcZqYZ0XuPzYA9+/ReWgHBUzUpKbfmjnN2qVR5oX2P8
q2eIRyj8F2DCeixKfL2qMn8D8RG8npqVKxg2hRZ+9u5PWOA7u7/oaZfcbPTypKCTiLUo2oqaeuw8
RmEkRO2LPRzCJrrUpjgwePSoRZ6tPlctTY4SjPSwd8jkCenJqDy5R3NM7dPNqLp8lfO5aXfyJYpt
r/+MLxDBg+lnTDuXeRCn/nB/52rTLSRWDiXWMw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YxMVo+OFws3E0F+agQUDdMpt0E/MO7wuvoS0iJPTa+BDGDtq3HqrSUW/nQfyGnJc72Ti8Nn7xNGf
KuHjm4XxiCwYIVxWUu/49X4qdeovfWjg4JJlPssNrDk0TcETigA6l734i9psF7KmbUV1TQwR0Seo
zTz0AAiWxR11GmS+OObTIgqf3p9l8+jP6N8YzQhr812HlUSYf4Ls8aW7CdJ8o1b9CtNP7Qoenig1
DTyx32y+4r+pFDtoeqPTKQ6l5N7/lQG4riuGBHCR+rj8MxgI2E8c/z4XF8J81kD2AYz0IbQhUx3Q
JHXwTJmekbmBKUgPv3ya9nGQ+PTNq02LLPc+/g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4704)
`pragma protect data_block
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
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
