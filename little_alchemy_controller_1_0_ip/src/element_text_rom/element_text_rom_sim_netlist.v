// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 11 15:34:42 2025
// Host        : DESKTOP-HGPH7G8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top element_text_rom -prefix
//               element_text_rom_ element_text_rom_sim_netlist.v
// Design      : element_text_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "element_text_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module element_text_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.26901 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "element_text_rom.mem" *) 
  (* C_INIT_FILE_NAME = "element_text_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8640" *) 
  (* C_READ_DEPTH_B = "8640" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "8640" *) 
  (* C_WRITE_DEPTH_B = "8640" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  element_text_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 58224)
`pragma protect data_block
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
dabVuIQGTrHWVKHJj+VfmDRAIah42LyEaoQq
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
