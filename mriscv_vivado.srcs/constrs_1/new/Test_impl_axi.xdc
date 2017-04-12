## This file is a general .xdc for the Nexys4 DDR Rev. C
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports CLK]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK]


#Switches

set_property PACKAGE_PIN J15 [get_ports {completogpio_pindata[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_pindata[7]}]
set_property PACKAGE_PIN L16 [get_ports {completogpio_pindata[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_pindata[6]}]
set_property PACKAGE_PIN M13 [get_ports {completogpio_pindata[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_pindata[5]}]
set_property PACKAGE_PIN R15 [get_ports {completogpio_pindata[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_pindata[4]}]
set_property PACKAGE_PIN R17 [get_ports {completogpio_pindata[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_pindata[3]}]
set_property PACKAGE_PIN T18 [get_ports {completogpio_pindata[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_pindata[2]}]
set_property PACKAGE_PIN U18 [get_ports {completogpio_pindata[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_pindata[1]}]
set_property PACKAGE_PIN R13 [get_ports {completogpio_pindata[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_pindata[0]}]
set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { ADC_interface_AXI_DATA[3] }]; #IO_L24N_T3_34 Sch=sw[8]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { ADC_interface_AXI_DATA[4] }]; #IO_25_34 Sch=sw[9]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ADC_interface_AXI_DATA[5] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { ADC_interface_AXI_DATA[6] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { ADC_interface_AXI_DATA[7] }]; #IO_L24P_T3_35 Sch=sw[12]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { ADC_interface_AXI_DATA[8] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { ADC_interface_AXI_DATA[9] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
#set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports RST_CLK]


# LEDs

set_property PACKAGE_PIN H17 [get_ports {completogpio_datanw[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_datanw[7]}]
set_property PACKAGE_PIN K15 [get_ports {completogpio_datanw[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_datanw[6]}]
set_property PACKAGE_PIN J13 [get_ports {completogpio_datanw[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_datanw[5]}]
set_property PACKAGE_PIN N14 [get_ports {completogpio_datanw[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_datanw[4]}]
set_property PACKAGE_PIN R18 [get_ports {completogpio_datanw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_datanw[3]}]
set_property PACKAGE_PIN V17 [get_ports {completogpio_datanw[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_datanw[2]}]
set_property PACKAGE_PIN U17 [get_ports {completogpio_datanw[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_datanw[1]}]
set_property PACKAGE_PIN U16 [get_ports {completogpio_datanw[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_datanw[0]}]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { completogpio_Rx[0] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { completogpio_Rx[1] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports master_CEB]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports master_SCLK]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports master_DATA]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports RST_N]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports PICORV_RST_ALL]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports trap]

set_property PACKAGE_PIN R12 [get_ports {completogpio_Rx[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Rx[2]}]
set_property PACKAGE_PIN M16 [get_ports {completogpio_Rx[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Rx[3]}]
set_property PACKAGE_PIN N15 [get_ports {completogpio_Rx[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Rx[4]}]
set_property PACKAGE_PIN G14 [get_ports {completogpio_Rx[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Rx[5]}]
set_property PACKAGE_PIN R11 [get_ports {completogpio_Rx[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Rx[6]}]
set_property PACKAGE_PIN N16 [get_ports {completogpio_Rx[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Rx[7]}]


##7 segment display

set_property PACKAGE_PIN T10 [get_ports {completogpio_Tx[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Tx[7]}]
set_property PACKAGE_PIN R10 [get_ports {completogpio_Tx[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Tx[6]}]
set_property PACKAGE_PIN K16 [get_ports {completogpio_Tx[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Tx[5]}]
set_property PACKAGE_PIN K13 [get_ports {completogpio_Tx[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Tx[4]}]
set_property PACKAGE_PIN P15 [get_ports {completogpio_Tx[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Tx[3]}]
set_property PACKAGE_PIN T11 [get_ports {completogpio_Tx[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Tx[2]}]
set_property PACKAGE_PIN L18 [get_ports {completogpio_Tx[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Tx[1]}]
set_property PACKAGE_PIN H15 [get_ports {completogpio_Tx[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_Tx[0]}]

set_property PACKAGE_PIN J17 [get_ports {completogpio_DSE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_DSE[0]}]
set_property PACKAGE_PIN J18 [get_ports {completogpio_DSE[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_DSE[1]}]
set_property PACKAGE_PIN T9 [get_ports {completogpio_DSE[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_DSE[2]}]
set_property PACKAGE_PIN J14 [get_ports {completogpio_DSE[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_DSE[3]}]
set_property PACKAGE_PIN P14 [get_ports {completogpio_DSE[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_DSE[4]}]
set_property PACKAGE_PIN T14 [get_ports {completogpio_DSE[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_DSE[5]}]
set_property PACKAGE_PIN K2 [get_ports {completogpio_DSE[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_DSE[6]}]
set_property PACKAGE_PIN U13 [get_ports {completogpio_DSE[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {completogpio_DSE[7]}]


##Buttons

set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports RST]

set_property PACKAGE_PIN N17 [get_ports {ADC_interface_AXI_DATA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_interface_AXI_DATA[2]}]
set_property PACKAGE_PIN M18 [get_ports {ADC_interface_AXI_DATA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_interface_AXI_DATA[1]}]
set_property PACKAGE_PIN P17 [get_ports {ADC_interface_AXI_DATA[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_interface_AXI_DATA[0]}]
#set_property PACKAGE_PIN M17 [get_ports {ADC_interface_AXI_DATA[8]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ADC_interface_AXI_DATA[8]}]
#set_property PACKAGE_PIN P18 [get_ports {ADC_interface_AXI_DATA[9]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ADC_interface_AXI_DATA[9]}]


##Pmod Headers


##Pmod Header JA

set_property PACKAGE_PIN C17 [get_ports {spi_axi_slave_CEB}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_axi_slave_CEB}]
#set_property PULLUP true [get_ports {spi_axi_slave_CEB}]
set_property PACKAGE_PIN D18 [get_ports {spi_axi_slave_SCLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_axi_slave_SCLK}]
#set_property PULLUP true [get_ports {spi_axi_slave_SCLK}]
set_property PACKAGE_PIN E18 [get_ports {spi_axi_slave_DATA}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_axi_slave_DATA}]
#set_property PULLUP true [get_ports {spi_axi_slave_DATA}]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { JA[4] }]; #IO_L18N_T2_A23_15 Sch=ja[4]
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { JA[7] }]; #IO_L16N_T2_A27_15 Sch=ja[7]
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { JA[8] }]; #IO_L16P_T2_A28_15 Sch=ja[8]
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { JA[9] }]; #IO_L22N_T3_A16_15 Sch=ja[9]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { JA[10] }]; #IO_L22P_T3_A17_15 Sch=ja[10]


##Pmod Header JB

set_property PACKAGE_PIN D14 [get_ports spi_axi_master_DOUT]
set_property IOSTANDARD LVCMOS33 [get_ports spi_axi_master_DOUT]
set_property PULLUP true [get_ports spi_axi_master_DOUT]
set_property PACKAGE_PIN F16 [get_ports spi_axi_master_CEB]
set_property IOSTANDARD LVCMOS33 [get_ports spi_axi_master_CEB]
set_property PULLUP true [get_ports spi_axi_master_CEB]
set_property PACKAGE_PIN G16 [get_ports spi_axi_master_DATA]
set_property IOSTANDARD LVCMOS33 [get_ports spi_axi_master_DATA]
set_property PULLUP true [get_ports spi_axi_master_DATA]
set_property PACKAGE_PIN H14 [get_ports spi_axi_master_SCLK]
set_property IOSTANDARD LVCMOS33 [get_ports spi_axi_master_SCLK]
set_property PULLUP true [get_ports spi_axi_master_SCLK]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets { spi_axi_master_SCLK_IBUF }];
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets master_SCLK_OBUF]
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { JB[7] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { JB[8] }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { JB[9] }]; #IO_0_15 Sch=jb[9]
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { JB[10] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


##Pmod Header JC

set_property PACKAGE_PIN K1 [get_ports {DAC_interface_AXI_DATA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[4]}]
set_property PACKAGE_PIN F6 [get_ports {DAC_interface_AXI_DATA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[5]}]
set_property PACKAGE_PIN J2 [get_ports {DAC_interface_AXI_DATA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[6]}]
set_property PACKAGE_PIN G6 [get_ports {DAC_interface_AXI_DATA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[7]}]
set_property PACKAGE_PIN E7 [get_ports {DAC_interface_AXI_DATA[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[8]}]
set_property PACKAGE_PIN J3 [get_ports {DAC_interface_AXI_DATA[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[9]}]
set_property PACKAGE_PIN J4 [get_ports {DAC_interface_AXI_DATA[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[10]}]
set_property PACKAGE_PIN E6 [get_ports {DAC_interface_AXI_DATA[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[11]}]


##Pmod Header JD

set_property PACKAGE_PIN H4 [get_ports {DAC_interface_AXI_DATA[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[0]}]
set_property PACKAGE_PIN H1 [get_ports {DAC_interface_AXI_DATA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[1]}]
set_property PACKAGE_PIN G1 [get_ports {DAC_interface_AXI_DATA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[2]}]
set_property PACKAGE_PIN G3 [get_ports {DAC_interface_AXI_DATA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DAC_interface_AXI_DATA[3]}]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { JD[7] }]; #IO_L15P_T2_DQS_35 Sch=jd[7]
#set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { JD[8] }]; #IO_L20P_T3_35 Sch=jd[8]
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { JD[9] }]; #IO_L15N_T2_DQS_35 Sch=jd[9]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { JD[10] }]; #IO_L13N_T2_MRCC_35 Sch=jd[10]


##Pmod Header JXADC

#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVDS     } [get_ports { VAUXN[0] }]; #IO_L9N_T1_DQS_AD3N_15 Sch=xa_n[1]
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVDS     } [get_ports { VAUXP[0] }]; #IO_L9P_T1_DQS_AD3P_15 Sch=xa_p[1]
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVDS     } [get_ports { VAUXN[1] }]; #IO_L8N_T1_AD10N_15 Sch=xa_n[2]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVDS     } [get_ports { VAUXP[1] }]; #IO_L8P_T1_AD10P_15 Sch=xa_p[2]
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVDS     } [get_ports { VAUXN[2] }]; #IO_L7N_T1_AD2N_15 Sch=xa_n[3]
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVDS     } [get_ports { VAUXP[2] }]; #IO_L7P_T1_AD2P_15 Sch=xa_p[3]
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVDS     } [get_ports { VAUXN[3] }]; #IO_L10N_T1_AD11N_15 Sch=xa_n[4]
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVDS     } [get_ports { VAUXP[3] }]; #IO_L10P_T1_AD11P_15 Sch=xa_p[4]


##VGA Connector

#set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { VGA_R[0] }]; #IO_L8N_T1_AD14N_35 Sch=vga_r[0]
#set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { VGA_R[1] }]; #IO_L7N_T1_AD6N_35 Sch=vga_r[1]
#set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { VGA_R[2] }]; #IO_L1N_T0_AD4N_35 Sch=vga_r[2]
#set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { VGA_R[3] }]; #IO_L8P_T1_AD14P_35 Sch=vga_r[3]

#set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { VGA_G[0] }]; #IO_L1P_T0_AD4P_35 Sch=vga_g[0]
#set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { VGA_G[1] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=vga_g[1]
#set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { VGA_G[2] }]; #IO_L2N_T0_AD12N_35 Sch=vga_g[2]
#set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports { VGA_G[3] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=vga_g[3]

#set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { VGA_B[0] }]; #IO_L2P_T0_AD12P_35 Sch=vga_b[0]
#set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { VGA_B[1] }]; #IO_L4N_T0_35 Sch=vga_b[1]
#set_property -dict { PACKAGE_PIN D7    IOSTANDARD LVCMOS33 } [get_ports { VGA_B[2] }]; #IO_L6N_T0_VREF_35 Sch=vga_b[2]
#set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports { VGA_B[3] }]; #IO_L4P_T0_35 Sch=vga_b[3]

#set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { VGA_HS }]; #IO_L4P_T0_15 Sch=vga_hs
#set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { VGA_VS }]; #IO_L3N_T0_DQS_AD1N_15 Sch=vga_vs


##Micro SD Connector

#set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { SD_RESET }]; #IO_L14P_T2_SRCC_35 Sch=sd_reset
#set_property -dict { PACKAGE_PIN A1    IOSTANDARD LVCMOS33 } [get_ports { SD_CD }]; #IO_L9N_T1_DQS_AD7N_35 Sch=sd_cd
#set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { SD_SCK }]; #IO_L9P_T1_DQS_AD7P_35 Sch=sd_sck
#set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { SD_CMD }]; #IO_L16N_T2_35 Sch=sd_cmd
#set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[0] }]; #IO_L16P_T2_35 Sch=sd_dat[0]
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[1] }]; #IO_L18N_T2_35 Sch=sd_dat[1]
#set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[2] }]; #IO_L18P_T2_35 Sch=sd_dat[2]
#set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[3] }]; #IO_L14N_T2_SRCC_35 Sch=sd_dat[3]


##Accelerometer

#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { ACL_MISO }]; #IO_L11P_T1_SRCC_15 Sch=acl_miso
#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { ACL_MOSI }]; #IO_L5N_T0_AD9N_15 Sch=acl_mosi
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { ACL_SCLK }]; #IO_L14P_T2_SRCC_15 Sch=acl_sclk
#set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { ACL_CSN }]; #IO_L12P_T1_MRCC_15 Sch=acl_csn
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { ACL_INT[1] }]; #IO_L2P_T0_AD8P_15 Sch=acl_int[1]
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { ACL_INT[2] }]; #IO_L20P_T3_A20_15 Sch=acl_int[2]


##Temperature Sensor

#set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { TMP_SCL }]; #IO_L1N_T0_AD0N_15 Sch=tmp_scl
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { TMP_SDA }]; #IO_L12N_T1_MRCC_15 Sch=tmp_sda
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { TMP_INT }]; #IO_L6N_T0_VREF_15 Sch=tmp_int
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { TMP_CT }]; #IO_L2N_T0_AD8N_15 Sch=tmp_ct

##Omnidirectional Microphone

#set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { M_CLK }]; #IO_25_35 Sch=m_clk
#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { M_DATA }]; #IO_L24N_T3_35 Sch=m_data
#set_property -dict { PACKAGE_PIN F5    IOSTANDARD LVCMOS33 } [get_ports { M_LRSEL }]; #IO_0_35 Sch=m_lrsel


##PWM Audio Amplifier

#set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { AUD_PWM }]; #IO_L4N_T0_15 Sch=aud_pwm
#set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { AUD_SD }]; #IO_L6P_T0_15 Sch=aud_sd


##USB-RS232 Interface

#set_property PACKAGE_PIN C4 [get_ports {GPIO_pin[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_pin[1]}]
#set_property PACKAGE_PIN D4 [get_ports {GPIO_pin[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_pin[0]}]
#set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS33} [get_ports UART_CTS]
#set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports UART_RTS]

##USB HID (PS/2)

#set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { PS2_CLK }]; #IO_L13P_T2_MRCC_35 Sch=ps2_clk
#set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { PS2_DATA }]; #IO_L10N_T1_AD15N_35 Sch=ps2_data


##SMSC Ethernet PHY

#set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { ETH_MDC }]; #IO_L11P_T1_SRCC_16 Sch=eth_mdc
#set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { ETH_MDIO }]; #IO_L14N_T2_SRCC_16 Sch=eth_mdio
#set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { ETH_RSTN }]; #IO_L10P_T1_AD15P_35 Sch=eth_rstn
#set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { ETH_CRSDV }]; #IO_L6N_T0_VREF_16 Sch=eth_crsdv
#set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXERR }]; #IO_L13N_T2_MRCC_16 Sch=eth_rxerr
#set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXD[0] }]; #IO_L13P_T2_MRCC_16 Sch=eth_rxd[0]
#set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXD[1] }]; #IO_L19N_T3_VREF_16 Sch=eth_rxd[1]
#set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { ETH_TXEN }]; #IO_L11N_T1_SRCC_16 Sch=eth_txen
#set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { ETH_TXD[0] }]; #IO_L14P_T2_SRCC_16 Sch=eth_txd[0]
#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { ETH_TXD[1] }]; #IO_L12N_T1_MRCC_16 Sch=eth_txd[1]
#set_property -dict { PACKAGE_PIN D5    IOSTANDARD LVCMOS33 } [get_ports { ETH_REFCLK }]; #IO_L11P_T1_SRCC_35 Sch=eth_refclk
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { ETH_INTN }]; #IO_L12P_T1_MRCC_16 Sch=eth_intn


##Quad SPI Flash

#set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports ROM_SDO]
#set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports ROM_SDI]
#set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports ROM_WP]
#set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports ROM_HLD]
#set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS33} [get_ports ROM_CS]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets master_SCLK_OBUF]