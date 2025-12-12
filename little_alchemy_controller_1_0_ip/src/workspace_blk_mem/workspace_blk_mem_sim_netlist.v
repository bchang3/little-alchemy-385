// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 11 22:38:26 2025
// Host        : DESKTOP-HGPH7G8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/warre/ip_repo/little_alchemy_controller_1_0/src/workspace_blk_mem/workspace_blk_mem_sim_netlist.v
// Design      : workspace_blk_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "workspace_blk_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module workspace_blk_mem
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "workspace_blk_mem.mem" *) 
  (* C_INIT_FILE_NAME = "workspace_blk_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "930" *) 
  (* C_READ_DEPTH_B = "930" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "930" *) 
  (* C_WRITE_DEPTH_B = "930" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  workspace_blk_mem_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19824)
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
