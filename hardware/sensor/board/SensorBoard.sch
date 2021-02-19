EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date "2021-01-24"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_USB:FT232H U2
U 1 1 600D2CE0
P 5700 3600
F 0 "U2" H 5700 5281 50  0000 C CNN
F 1 "FT232H" H 5700 5190 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 5700 3600 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232H.pdf" H 5700 3600 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:93LCxxBxxOT U1
U 1 1 600D70A4
P 2000 4700
F 0 "U1" H 2000 5181 50  0000 C CNN
F 1 "93LC56BT-I/OT" H 2000 5090 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2000 4700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001749K.pdf" H 2000 4700 50  0001 C CNN
	1    2000 4700
	1    0    0    -1  
$EndComp
Text GLabel 4750 3700 0    50   BiDi ~ 0
EECS
Text GLabel 4750 3800 0    50   Output ~ 0
EECLK
Text GLabel 4750 3900 0    50   BiDi ~ 0
EEDATA
Text GLabel 4750 3000 0    50   BiDi ~ 0
D-
Text GLabel 4750 3100 0    50   BiDi ~ 0
D+
$Comp
L Device:R_US R4
U 1 1 600DAD2C
P 4400 3300
F 0 "R4" V 4195 3300 50  0000 C CNN
F 1 "10k" V 4286 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4440 3290 50  0001 C CNN
F 3 "~" H 4400 3300 50  0001 C CNN
F 4 "ERJ-PA3J103V" H 4400 3300 50  0001 C CNN "Digikey Item"
	1    4400 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 3300 4800 3300
Text GLabel 4250 3300 0    50   BiDi ~ 0
VCC3V3
$Comp
L Device:R_US R3
U 1 1 600DC97C
P 4050 3650
F 0 "R3" H 4118 3696 50  0000 L CNN
F 1 "12k/1%" H 4118 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4090 3640 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Panasonic%20Resistors%20Thermistors%20PDFs/ERJ-PA3_Series_NPI.pdf" H 4050 3650 50  0001 C CNN
F 4 "ERJ-PA3F1202V" H 4050 3650 50  0001 C CNN "Digikey Item"
	1    4050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3500 4050 3500
$Comp
L power:GND #PWR0101
U 1 1 600DEE23
P 4050 3800
F 0 "#PWR0101" H 4050 3550 50  0001 C CNN
F 1 "GND" H 4055 3627 50  0000 C CNN
F 2 "" H 4050 3800 50  0001 C CNN
F 3 "" H 4050 3800 50  0001 C CNN
	1    4050 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 600E52A5
P 4200 4300
F 0 "Y1" V 4154 4544 50  0000 L CNN
F 1 "12MHz" V 4245 4544 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_2520-4Pin_2.5x2.0mm" H 4200 4300 50  0001 C CNN
F 3 "~" H 4200 4300 50  0001 C CNN
F 4 "ABM10-167-12.000MHZ-T3" H 4200 4300 50  0001 C CNN "Digikey Item"
	1    4200 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 4100 4200 4150
Wire Wire Line
	4200 4100 3800 4100
Wire Wire Line
	3800 4100 3800 4600
Connection ~ 4200 4100
$Comp
L Device:C C2
U 1 1 600E7F64
P 3800 4750
F 0 "C2" H 3915 4796 50  0000 L CNN
F 1 "27pF" H 3915 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3838 4600 50  0001 C CNN
F 3 "~" H 3800 4750 50  0001 C CNN
F 4 "CL10C270JB81PNC" H 3800 4750 50  0001 C CNN "Digikey Item"
	1    3800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 600E859F
P 4200 4750
F 0 "C4" H 4315 4796 50  0000 L CNN
F 1 "27pF" H 4315 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4238 4600 50  0001 C CNN
F 3 "~" H 4200 4750 50  0001 C CNN
F 4 "CL10C270JB81PNC" H 4200 4750 50  0001 C CNN "Digikey Item"
	1    4200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4300 4000 5000
Wire Wire Line
	4000 5000 3800 5000
Wire Wire Line
	3800 5000 3800 4900
Wire Wire Line
	4200 5000 4200 4900
Connection ~ 4000 5000
Wire Wire Line
	4400 4300 4400 5000
Wire Wire Line
	4400 5000 4200 5000
Connection ~ 4200 5000
Wire Wire Line
	4800 4700 4650 4700
Wire Wire Line
	4650 4700 4650 5150
$Comp
L power:GND #PWR0102
U 1 1 600EB2F0
P 4650 5150
F 0 "#PWR0102" H 4650 4900 50  0001 C CNN
F 1 "GND" H 4655 4977 50  0000 C CNN
F 2 "" H 4650 5150 50  0001 C CNN
F 3 "" H 4650 5150 50  0001 C CNN
	1    4650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5100 5600 5100
Connection ~ 5500 5100
Wire Wire Line
	5700 5100 5800 5100
Wire Wire Line
	5600 5100 5700 5100
Connection ~ 5600 5100
Connection ~ 5700 5100
Wire Wire Line
	5900 5100 5800 5100
Connection ~ 5800 5100
$Comp
L power:GND #PWR0103
U 1 1 600EE1BC
P 5800 5150
F 0 "#PWR0103" H 5800 4900 50  0001 C CNN
F 1 "GND" H 5805 4977 50  0000 C CNN
F 2 "" H 5800 5150 50  0001 C CNN
F 3 "" H 5800 5150 50  0001 C CNN
	1    5800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5000 4100 5000
Wire Wire Line
	4100 5150 4100 5000
Connection ~ 4100 5000
Wire Wire Line
	4100 5000 4200 5000
$Comp
L power:GND #PWR0104
U 1 1 600F0CC4
P 4100 5150
F 0 "#PWR0104" H 4100 4900 50  0001 C CNN
F 1 "GND" H 4105 4977 50  0000 C CNN
F 2 "" H 4100 5150 50  0001 C CNN
F 3 "" H 4100 5150 50  0001 C CNN
	1    4100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4100 4200 4100
Wire Wire Line
	4200 4450 4200 4500
Wire Wire Line
	4800 4500 4200 4500
Connection ~ 4200 4500
Wire Wire Line
	4200 4500 4200 4600
Wire Wire Line
	4800 2400 4550 2400
Wire Wire Line
	4550 2400 4550 1900
Text GLabel 4550 1900 1    50   Input ~ 0
VREGIN
Wire Wire Line
	4800 2600 4350 2600
Wire Wire Line
	4350 2600 4350 1900
Text GLabel 4350 1900 1    50   Output ~ 0
VCC3V3
Wire Wire Line
	4800 2700 4150 2700
Wire Wire Line
	4150 2700 4150 1900
Text GLabel 4150 1900 1    50   BiDi ~ 0
VCORE
$Comp
L Device:C C3
U 1 1 600FCC8C
P 4000 2800
F 0 "C3" V 3748 2800 50  0000 C CNN
F 1 "0.1uF" V 3839 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4038 2650 50  0001 C CNN
F 3 "~" H 4000 2800 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 4000 2800 50  0001 C CNN "Digikey Item"
	1    4000 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2800 4800 2800
Wire Wire Line
	3850 2800 3700 2800
Wire Wire Line
	3700 2800 3700 2850
$Comp
L power:GND #PWR0105
U 1 1 600FF372
P 3700 2850
F 0 "#PWR0105" H 3700 2600 50  0001 C CNN
F 1 "GND" H 3705 2677 50  0000 C CNN
F 2 "" H 3700 2850 50  0001 C CNN
F 3 "" H 3700 2850 50  0001 C CNN
	1    3700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2050 5400 2050
Wire Wire Line
	5400 2050 5400 1900
Text GLabel 5400 1900 1    50   BiDi ~ 0
VPHY
Text GLabel 5600 1900 1    50   BiDi ~ 0
VPLL
Text GLabel 5800 1900 1    50   BiDi ~ 0
VCCIO
Connection ~ 5800 2050
Wire Wire Line
	5800 2050 5800 1900
Wire Wire Line
	6600 3300 6700 3300
Wire Wire Line
	6700 3300 6700 3400
Wire Wire Line
	6700 3400 6600 3400
Connection ~ 6700 3400
Wire Wire Line
	6700 3700 6600 3700
Wire Wire Line
	6700 3700 6700 3800
Wire Wire Line
	6700 3800 6600 3800
Connection ~ 6700 3700
Wire Wire Line
	6700 3800 6700 3900
Wire Wire Line
	6700 3900 6600 3900
Connection ~ 6700 3800
Wire Wire Line
	6700 3900 6700 4000
Wire Wire Line
	6700 4000 6600 4000
Connection ~ 6700 3900
Wire Wire Line
	6700 4000 6700 4100
Wire Wire Line
	6700 4100 6600 4100
Connection ~ 6700 4000
Wire Wire Line
	6700 4100 6700 4200
Wire Wire Line
	6700 4200 6600 4200
Connection ~ 6700 4100
$Comp
L power:GND #PWR0106
U 1 1 6010D6D0
P 6700 4200
F 0 "#PWR0106" H 6700 3950 50  0001 C CNN
F 1 "GND" H 6705 4027 50  0000 C CNN
F 2 "" H 6700 4200 50  0001 C CNN
F 3 "" H 6700 4200 50  0001 C CNN
	1    6700 4200
	1    0    0    -1  
$EndComp
Connection ~ 6700 4200
Text GLabel 2000 3950 1    50   BiDi ~ 0
VCCIO
Wire Wire Line
	2000 3950 2000 4100
Wire Wire Line
	2000 5000 2000 5100
$Comp
L power:GND #PWR0107
U 1 1 60110E20
P 2000 5100
F 0 "#PWR0107" H 2000 4850 50  0001 C CNN
F 1 "GND" H 2005 4927 50  0000 C CNN
F 2 "" H 2000 5100 50  0001 C CNN
F 3 "" H 2000 5100 50  0001 C CNN
	1    2000 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 601110AF
P 1250 4700
F 0 "C1" H 1365 4746 50  0000 L CNN
F 1 "0.1uF" H 1365 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1288 4550 50  0001 C CNN
F 3 "~" H 1250 4700 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 1250 4700 50  0001 C CNN "Digikey Item"
	1    1250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4550 1250 4100
Wire Wire Line
	1250 4100 2000 4100
Connection ~ 2000 4100
Wire Wire Line
	2000 4100 2000 4400
Wire Wire Line
	1250 4850 1250 5100
Wire Wire Line
	1250 5100 2000 5100
Connection ~ 2000 5100
Wire Wire Line
	2600 4100 2000 4100
Wire Wire Line
	2600 4400 2600 4800
Wire Wire Line
	2600 4800 2400 4800
$Comp
L Device:R_US R2
U 1 1 6011B513
P 2750 4800
F 0 "R2" V 2850 4800 50  0000 C CNN
F 1 "2k" V 2950 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2790 4790 50  0001 C CNN
F 3 "~" H 2750 4800 50  0001 C CNN
F 4 "‎ERJ-PA3J202V‎" H 2750 4800 50  0001 C CNN "Digikey Item"
	1    2750 4800
	0    1    1    0   
$EndComp
Connection ~ 2600 4800
Wire Wire Line
	2400 4700 3000 4700
Wire Wire Line
	3000 4700 3000 4800
Wire Wire Line
	3000 4800 2900 4800
Connection ~ 3000 4700
Wire Wire Line
	3000 4700 3050 4700
Text GLabel 3050 4700 2    50   BiDi ~ 0
EEDATA
Text GLabel 3050 4600 2    50   BiDi ~ 0
EECLK
Text GLabel 3050 4400 2    50   BiDi ~ 0
EECS
Wire Wire Line
	1600 4600 1550 4600
Wire Wire Line
	1550 4600 1550 4400
$Comp
L Device:R_US R1
U 1 1 6011606A
P 2600 4250
F 0 "R1" H 2668 4296 50  0000 L CNN
F 1 "10k" H 2668 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2640 4240 50  0001 C CNN
F 3 "~" H 2600 4250 50  0001 C CNN
F 4 "ERJ-PA3J103V" H 2600 4250 50  0001 C CNN "Digikey Item"
	1    2600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4400 3050 4400
Wire Wire Line
	5500 2050 5500 2100
Wire Wire Line
	5600 1900 5600 2100
Wire Wire Line
	2400 4600 3050 4600
Wire Wire Line
	5800 5150 5800 5100
Wire Wire Line
	4750 3900 4800 3900
Wire Wire Line
	4800 3800 4750 3800
Wire Wire Line
	4800 3700 4750 3700
Wire Wire Line
	4750 3000 4800 3000
Wire Wire Line
	4750 3100 4800 3100
Wire Wire Line
	5900 2100 5900 2050
Wire Wire Line
	5900 2050 5800 2050
Wire Wire Line
	5800 2100 5800 2050
Wire Wire Line
	5700 2100 5700 2050
Wire Wire Line
	5700 2050 5800 2050
$Comp
L Connector:USB_B_Mini J1
U 1 1 60182EF2
P 1050 2050
F 0 "J1" H 1107 2517 50  0000 C CNN
F 1 "USB_B_Mini" H 1107 2426 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Wuerth_65100516121_Horizontal" H 1200 2000 50  0001 C CNN
F 3 "~" H 1200 2000 50  0001 C CNN
F 4 "‎65100516121‎" H 1050 2050 50  0001 C CNN "Digikey Item"
	1    1050 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB1
U 1 1 60185E81
P 1500 1550
F 0 "FB1" H 1637 1596 50  0000 L CNN
F 1 "600R 0.5A" H 1637 1505 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 1430 1550 50  0001 C CNN
F 3 "~" H 1500 1550 50  0001 C CNN
F 4 "BLM18AG601SN1D‎" H 1500 1550 50  0001 C CNN "Digikey Item"
	1    1500 1550
	1    0    0    -1  
$EndComp
Text GLabel 1500 1150 1    50   BiDi ~ 0
VBUS
Wire Wire Line
	1500 1400 1500 1150
Wire Wire Line
	1500 1700 1500 1850
NoConn ~ 1350 2250
$Comp
L Device:R_US R5
U 1 1 6018E9B0
P 2500 2050
F 0 "R5" V 2295 2050 50  0000 C CNN
F 1 "0k" V 2386 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2540 2040 50  0001 C CNN
F 3 "~" H 2500 2050 50  0001 C CNN
F 4 "ERJ-3GEY0R00V" H 2500 2050 50  0001 C CNN "Digikey Item"
	1    2500 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 6018F62D
P 2500 2350
F 0 "R6" V 2295 2350 50  0000 C CNN
F 1 "0k" V 2386 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2540 2340 50  0001 C CNN
F 3 "~" H 2500 2350 50  0001 C CNN
F 4 "ERJ-3GEY0R00V" H 2500 2350 50  0001 C CNN "Digikey Item"
	1    2500 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 2050 1900 2050
Wire Wire Line
	1350 2150 2250 2150
Wire Wire Line
	2250 2150 2250 2350
Wire Wire Line
	2250 2350 2350 2350
Text GLabel 2750 2050 2    50   BiDi ~ 0
D+
Text GLabel 2750 2350 2    50   BiDi ~ 0
D-
Wire Wire Line
	2650 2050 2750 2050
Wire Wire Line
	2650 2350 2750 2350
$Comp
L Device:C C5
U 1 1 6019F59A
P 1500 2550
F 0 "C5" H 1615 2596 50  0000 L CNN
F 1 "10nF" H 1615 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1538 2400 50  0001 C CNN
F 3 "~" H 1500 2550 50  0001 C CNN
F 4 "CL10B103KB8NNNC" H 1500 2550 50  0001 C CNN "Digikey Item"
	1    1500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2400 1500 1850
Connection ~ 1500 1850
Wire Wire Line
	1050 2450 1050 2750
Wire Wire Line
	1050 2750 1500 2750
Wire Wire Line
	1500 2750 1500 2700
$Comp
L Device:D_TVS D1
U 1 1 601A6CDE
P 1900 2550
F 0 "D1" V 1854 2630 50  0000 L CNN
F 1 "D_TVS" V 1945 2630 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 1900 2550 50  0001 C CNN
F 3 "~" H 1900 2550 50  0001 C CNN
F 4 "PGB1010603MR‎" H 1900 2550 50  0001 C CNN "Digikey Item"
	1    1900 2550
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D2
U 1 1 601BC2D6
P 2250 2550
F 0 "D2" V 2204 2630 50  0000 L CNN
F 1 "D_TVS" V 2295 2630 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2250 2550 50  0001 C CNN
F 3 "~" H 2250 2550 50  0001 C CNN
F 4 "PGB1010603MR‎" H 2250 2550 50  0001 C CNN "Digikey Item"
	1    2250 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 2400 2250 2350
Connection ~ 2250 2350
Wire Wire Line
	1900 2400 1900 2050
Connection ~ 1900 2050
Wire Wire Line
	1900 2050 2350 2050
Wire Wire Line
	1900 2700 1900 2750
Wire Wire Line
	1900 2750 1700 2750
Connection ~ 1500 2750
Wire Wire Line
	2250 2700 2250 2750
Wire Wire Line
	2250 2750 1900 2750
Connection ~ 1900 2750
NoConn ~ 950  2450
$Comp
L power:GND #PWR01
U 1 1 601CEA94
P 1700 2850
F 0 "#PWR01" H 1700 2600 50  0001 C CNN
F 1 "GND" H 1705 2677 50  0000 C CNN
F 2 "" H 1700 2850 50  0001 C CNN
F 3 "" H 1700 2850 50  0001 C CNN
	1    1700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2850 1700 2750
Connection ~ 1700 2750
Wire Wire Line
	1700 2750 1500 2750
$Comp
L power:GND #PWR0108
U 1 1 601DAD05
P 1150 7000
F 0 "#PWR0108" H 1150 6750 50  0001 C CNN
F 1 "GND" H 1155 6827 50  0000 C CNN
F 2 "" H 1150 7000 50  0001 C CNN
F 3 "" H 1150 7000 50  0001 C CNN
	1    1150 7000
	1    0    0    -1  
$EndComp
Text GLabel 1150 6500 1    50   BiDi ~ 0
VREGIN
Wire Wire Line
	1150 6900 1150 6950
$Comp
L Device:C C7
U 1 1 601E3850
P 2100 6750
F 0 "C7" H 2215 6796 50  0000 L CNN
F 1 "0.1uF" H 2215 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2138 6600 50  0001 C CNN
F 3 "~" H 2100 6750 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 2100 6750 50  0001 C CNN "Digikey Item"
	1    2100 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB2
U 1 1 601E3E42
P 1800 6600
F 0 "FB2" V 2074 6600 50  0000 C CNN
F 1 "600R 0.5A" V 1983 6600 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 1730 6600 50  0001 C CNN
F 3 "~" H 1800 6600 50  0001 C CNN
F 4 "BLM18AG601SN1D‎" H 1800 6600 50  0001 C CNN "Digikey Item"
	1    1800 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 6600 2100 6600
$Comp
L power:GND #PWR0109
U 1 1 601EA2C8
P 2100 7000
F 0 "#PWR0109" H 2100 6750 50  0001 C CNN
F 1 "GND" H 2105 6827 50  0000 C CNN
F 2 "" H 2100 7000 50  0001 C CNN
F 3 "" H 2100 7000 50  0001 C CNN
	1    2100 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6900 2100 7000
Text GLabel 1500 6500 1    50   BiDi ~ 0
VCC3V3
Wire Wire Line
	1500 6500 1500 6600
Wire Wire Line
	1500 6600 1650 6600
Text GLabel 2100 6500 1    50   BiDi ~ 0
VPHY
Wire Wire Line
	2100 6500 2100 6600
Connection ~ 2100 6600
$Comp
L Device:C C8
U 1 1 601FF0BF
P 3050 6750
F 0 "C8" H 3165 6796 50  0000 L CNN
F 1 "0.1uF" H 3165 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 6600 50  0001 C CNN
F 3 "~" H 3050 6750 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 3050 6750 50  0001 C CNN "Digikey Item"
	1    3050 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB3
U 1 1 601FF0C5
P 2750 6600
F 0 "FB3" V 3024 6600 50  0000 C CNN
F 1 "600R 0.5A" V 2933 6600 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 2680 6600 50  0001 C CNN
F 3 "~" H 2750 6600 50  0001 C CNN
F 4 "BLM18AG601SN1D‎" H 2750 6600 50  0001 C CNN "Digikey Item"
	1    2750 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 6600 3050 6600
$Comp
L power:GND #PWR0110
U 1 1 601FF0CC
P 3050 7000
F 0 "#PWR0110" H 3050 6750 50  0001 C CNN
F 1 "GND" H 3055 6827 50  0000 C CNN
F 2 "" H 3050 7000 50  0001 C CNN
F 3 "" H 3050 7000 50  0001 C CNN
	1    3050 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6900 3050 7000
Text GLabel 2450 6500 1    50   BiDi ~ 0
VCC3V3
Wire Wire Line
	2450 6500 2450 6600
Wire Wire Line
	2450 6600 2600 6600
Text GLabel 3050 6500 1    50   BiDi ~ 0
VPLL
Wire Wire Line
	3050 6500 3050 6600
Connection ~ 3050 6600
$Comp
L Device:C C9
U 1 1 602043C4
P 3900 6750
F 0 "C9" H 4015 6796 50  0000 L CNN
F 1 "0.1uF" H 4015 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3938 6600 50  0001 C CNN
F 3 "~" H 3900 6750 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 3900 6750 50  0001 C CNN "Digikey Item"
	1    3900 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 602043CA
P 3900 7000
F 0 "#PWR0111" H 3900 6750 50  0001 C CNN
F 1 "GND" H 3905 6827 50  0000 C CNN
F 2 "" H 3900 7000 50  0001 C CNN
F 3 "" H 3900 7000 50  0001 C CNN
	1    3900 7000
	1    0    0    -1  
$EndComp
Text GLabel 3900 6500 1    50   BiDi ~ 0
VCC3V3
Wire Wire Line
	3900 6500 3900 6600
Wire Wire Line
	3900 6900 3900 6950
$Comp
L Device:C C10
U 1 1 602095A9
P 4450 6750
F 0 "C10" H 4565 6796 50  0000 L CNN
F 1 "0.1uF" H 4565 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4488 6600 50  0001 C CNN
F 3 "~" H 4450 6750 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 4450 6750 50  0001 C CNN "Digikey Item"
	1    4450 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 602095AF
P 4450 7000
F 0 "#PWR0112" H 4450 6750 50  0001 C CNN
F 1 "GND" H 4455 6827 50  0000 C CNN
F 2 "" H 4450 7000 50  0001 C CNN
F 3 "" H 4450 7000 50  0001 C CNN
	1    4450 7000
	1    0    0    -1  
$EndComp
Text GLabel 4450 6500 1    50   BiDi ~ 0
VCORE
Wire Wire Line
	4450 6500 4450 6600
Wire Wire Line
	4450 6900 4450 7000
$Comp
L Device:C C12
U 1 1 6020EBE7
P 5400 6750
F 0 "C12" H 5515 6796 50  0000 L CNN
F 1 "0.1uF" H 5515 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5438 6600 50  0001 C CNN
F 3 "~" H 5400 6750 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 5400 6750 50  0001 C CNN "Digikey Item"
	1    5400 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6020EBED
P 5400 7000
F 0 "#PWR0113" H 5400 6750 50  0001 C CNN
F 1 "GND" H 5405 6827 50  0000 C CNN
F 2 "" H 5400 7000 50  0001 C CNN
F 3 "" H 5400 7000 50  0001 C CNN
	1    5400 7000
	1    0    0    -1  
$EndComp
Text GLabel 5400 6500 1    50   Input ~ 0
VCCIO
Wire Wire Line
	5400 6500 5400 6550
Wire Wire Line
	5400 6900 5400 6950
$Comp
L Device:C C11
U 1 1 60225E97
P 4950 6750
F 0 "C11" H 5065 6796 50  0000 L CNN
F 1 "0.1uF" H 5065 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4988 6600 50  0001 C CNN
F 3 "~" H 4950 6750 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 4950 6750 50  0001 C CNN "Digikey Item"
	1    4950 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 60226360
P 5900 6750
F 0 "C13" H 6015 6796 50  0000 L CNN
F 1 "0.1uF" H 6015 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5938 6600 50  0001 C CNN
F 3 "~" H 5900 6750 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 5900 6750 50  0001 C CNN "Digikey Item"
	1    5900 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6600 4950 6550
Wire Wire Line
	4950 6550 5400 6550
Connection ~ 5400 6550
Wire Wire Line
	5400 6550 5400 6600
Wire Wire Line
	5400 6550 5900 6550
Wire Wire Line
	5900 6550 5900 6600
Wire Wire Line
	5900 6900 5900 6950
Wire Wire Line
	5900 6950 5400 6950
Connection ~ 5400 6950
Wire Wire Line
	5400 6950 5400 7000
Wire Wire Line
	5400 6950 4950 6950
Wire Wire Line
	4950 6950 4950 6900
Wire Wire Line
	6700 3400 6700 3700
Text GLabel 7000 3500 2    50   BiDi ~ 0
VCC3V3
Wire Wire Line
	6200 5100 6300 5100
Wire Wire Line
	5400 5100 5500 5100
NoConn ~ 6600 2500
NoConn ~ 6600 2600
NoConn ~ 6600 2700
NoConn ~ 6600 2800
NoConn ~ 6600 2900
NoConn ~ 6600 3000
NoConn ~ 6600 3100
Text GLabel 7000 2400 2    50   Input ~ 0
DIR
Wire Wire Line
	7000 2400 6600 2400
Text GLabel 7000 3600 2    50   Input ~ 0
WR#
Wire Wire Line
	5300 5100 5400 5100
Connection ~ 5400 5100
Wire Wire Line
	5900 5100 6000 5100
Connection ~ 5900 5100
Wire Wire Line
	6000 5100 6100 5100
Connection ~ 6000 5100
Wire Wire Line
	6100 5100 6200 5100
Connection ~ 6100 5100
Connection ~ 6200 5100
$Comp
L 74xGxx:74LVC2G17 U3
U 1 1 603296FF
P 8600 3100
F 0 "U3" H 8575 3367 50  0000 C CNN
F 1 "74LVC2G17" H 8575 3276 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 8600 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8600 3100 50  0001 C CNN
	1    8600 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G374 U4
U 1 1 6033112C
P 9400 3450
F 0 "U4" H 9400 3767 50  0000 C CNN
F 1 "74LVC1G374" H 9400 3676 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 9400 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9400 3450 50  0001 C CNN
	1    9400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3350 9150 3350
Wire Wire Line
	9000 3850 9000 3550
Wire Wire Line
	9000 3550 9150 3550
$Comp
L 74xGxx:74LVC1G04 U5
U 1 1 60350DE0
P 9400 4150
F 0 "U5" H 9375 4417 50  0000 C CNN
F 1 "74LVC1G04" H 9375 4326 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9400 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9400 4150 50  0001 C CNN
	1    9400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4150 9000 4150
Wire Wire Line
	9000 4150 9000 3850
Connection ~ 9000 3850
$Comp
L power:GND #PWR03
U 1 1 60358D53
P 9750 3750
F 0 "#PWR03" H 9750 3500 50  0001 C CNN
F 1 "GND" H 9755 3577 50  0000 C CNN
F 2 "" H 9750 3750 50  0001 C CNN
F 3 "" H 9750 3750 50  0001 C CNN
	1    9750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3750 9750 3700
Wire Wire Line
	9750 3550 9650 3550
Text GLabel 9900 3350 2    50   Output ~ 0
DIR
Text GLabel 9900 4150 2    50   Output ~ 0
WR#
Wire Wire Line
	9900 3350 9650 3350
Wire Wire Line
	9900 4150 9650 4150
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 6037AC7B
P 8050 4550
F 0 "J2" V 7950 4500 50  0000 L CNN
F 1 "Conn_01x04_Male" V 7850 4200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8050 4550 50  0001 C CNN
F 3 "~" H 8050 4550 50  0001 C CNN
	1    8050 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6037EF7E
P 8600 4350
F 0 "#PWR02" H 8600 4100 50  0001 C CNN
F 1 "GND" H 8605 4177 50  0000 C CNN
F 2 "" H 8600 4350 50  0001 C CNN
F 3 "" H 8600 4350 50  0001 C CNN
	1    8600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4350 8250 4250
Wire Wire Line
	8250 4250 8600 4250
Wire Wire Line
	8600 4250 8600 4350
Text GLabel 9900 2500 2    50   BiDi ~ 0
VBUS
Wire Wire Line
	7950 2500 7950 4350
Wire Wire Line
	8050 4350 8050 3100
Wire Wire Line
	8050 3100 8300 3100
Wire Wire Line
	8150 4350 8150 3850
Wire Wire Line
	9000 3350 9000 3100
Wire Wire Line
	9000 3100 8850 3100
Connection ~ 8600 4250
$Comp
L power:GND #PWR0114
U 1 1 603F10BA
P 8600 3250
F 0 "#PWR0114" H 8600 3000 50  0001 C CNN
F 1 "GND" H 8605 3077 50  0000 C CNN
F 2 "" H 8600 3250 50  0001 C CNN
F 3 "" H 8600 3250 50  0001 C CNN
	1    8600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3250 8600 3200
Wire Wire Line
	9400 3600 9400 3700
Wire Wire Line
	9400 3700 9750 3700
Connection ~ 9750 3700
Wire Wire Line
	9750 3700 9750 3550
Wire Wire Line
	9400 4250 9400 4350
Wire Wire Line
	9400 4350 8600 4350
Connection ~ 8600 4350
Text GLabel 9900 2700 2    50   BiDi ~ 0
VCC3V3
Wire Wire Line
	8600 3000 8600 2700
Wire Wire Line
	8600 2700 8900 2700
Wire Wire Line
	9400 3300 9400 2700
Connection ~ 9400 2700
Wire Wire Line
	9400 2700 9900 2700
Wire Wire Line
	8600 3450 8900 3450
Wire Wire Line
	8900 3450 8900 2700
Connection ~ 8900 2700
Wire Wire Line
	8900 2700 9100 2700
Wire Wire Line
	9400 4050 9400 3900
Wire Wire Line
	9400 3900 9100 3900
Wire Wire Line
	9100 3900 9100 2700
Connection ~ 9100 2700
Wire Wire Line
	9100 2700 9400 2700
Wire Wire Line
	8050 2650 8050 2500
Connection ~ 8050 2500
Wire Wire Line
	8050 2500 7950 2500
Wire Wire Line
	8050 2950 8050 3100
Connection ~ 8050 3100
Wire Wire Line
	8850 3850 9000 3850
Wire Wire Line
	8600 3750 8600 3450
Wire Wire Line
	8600 3950 8600 4250
Wire Wire Line
	8150 3850 8250 3850
$Comp
L 74xGxx:74LVC2G17 U3
U 2 1 6032A20D
P 8600 3850
F 0 "U3" H 8575 3675 50  0000 C CNN
F 1 "74LVC2G17" H 8575 3584 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 8600 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8600 3850 50  0001 C CNN
	2    8600 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 604D01DF
P 8250 3500
F 0 "R9" H 8318 3546 50  0000 L CNN
F 1 "1k" H 8318 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8290 3490 50  0001 C CNN
F 3 "~" H 8250 3500 50  0001 C CNN
F 4 "ERJ-PA3J102V" H 8250 3500 50  0001 C CNN "Digikey Item"
	1    8250 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 604D1420
P 8050 2800
F 0 "R8" H 8118 2846 50  0000 L CNN
F 1 "1k" H 8118 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8090 2790 50  0001 C CNN
F 3 "~" H 8050 2800 50  0001 C CNN
F 4 "ERJ-PA3J102V" H 8050 2800 50  0001 C CNN "Digikey Item"
	1    8050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2500 8250 2500
Wire Wire Line
	8250 3650 8250 3850
Connection ~ 8250 3850
Wire Wire Line
	8250 3850 8300 3850
Wire Wire Line
	8250 3350 8250 2500
Connection ~ 8250 2500
Wire Wire Line
	8250 2500 8050 2500
$Comp
L Device:C C6
U 1 1 601DA540
P 1150 6750
F 0 "C6" H 1265 6796 50  0000 L CNN
F 1 "0.1uF" H 1265 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1188 6600 50  0001 C CNN
F 3 "~" H 1150 6750 50  0001 C CNN
F 4 "CL10A104KA8NNNC" H 1150 6750 50  0001 C CNN "Digikey Item"
	1    1150 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6500 1150 6600
Wire Wire Line
	1350 1850 1500 1850
Wire Wire Line
	6600 3600 7000 3600
Wire Wire Line
	6600 3500 7000 3500
Wire Notes Line
	7500 5100 10350 5100
Wire Notes Line
	10350 5100 10350 2200
Wire Notes Line style dash_dot
	10350 2200 7500 2200
Wire Notes Line
	7500 2200 7500 5100
$Comp
L Device:CP C14
U 1 1 60613FA6
P 700 6750
F 0 "C14" H 818 6796 50  0000 L CNN
F 1 "4.7uF" H 818 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 738 6600 50  0001 C CNN
F 3 "~" H 700 6750 50  0001 C CNN
F 4 "CL10A475KP8NNNC‎" H 700 6750 50  0001 C CNN "Digikey Item"
	1    700  6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  6600 1150 6600
Connection ~ 1150 6600
Wire Wire Line
	700  6900 700  6950
Wire Wire Line
	700  6950 1150 6950
Connection ~ 1150 6950
Wire Wire Line
	1150 6950 1150 7000
Text GLabel 1650 7600 0    50   BiDi ~ 0
VCC3V3
Text GLabel 2050 7600 2    50   BiDi ~ 0
VCCIO
Wire Wire Line
	1650 7600 2050 7600
Text GLabel 2850 7600 0    50   BiDi ~ 0
VBUS
Text GLabel 3250 7600 2    50   BiDi ~ 0
VREGIN
Wire Wire Line
	2850 7600 3250 7600
$Comp
L Device:CP C15
U 1 1 6070787A
P 3500 6750
F 0 "C15" H 3618 6796 50  0000 L CNN
F 1 "4.7uF" H 3618 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 6600 50  0001 C CNN
F 3 "~" H 3500 6750 50  0001 C CNN
F 4 "CL10A475KP8NNNC‎" H 3500 6750 50  0001 C CNN "Digikey Item"
	1    3500 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6600 3900 6600
Connection ~ 3900 6600
Wire Wire Line
	3500 6900 3500 6950
Wire Wire Line
	3500 6950 3900 6950
Connection ~ 3900 6950
Wire Wire Line
	3900 6950 3900 7000
Text Label 2150 2050 2    50   ~ 0
Unfiltered_Data+
Text Label 1800 2150 2    50   ~ 0
Unfiltered_Data-
Text Notes 8600 2300 0    50   ~ 0
Quadrature Decoder
Text Label 4600 4100 0    50   ~ 0
CLK+
Text Label 4600 4500 0    50   ~ 0
CLK-
Text Label 4600 3500 0    50   ~ 0
REF
Text Label 4550 3300 0    50   ~ 0
RESET
Text Label 4550 2800 0    50   ~ 0
VCCA
Text Label 8050 4300 1    50   ~ 0
Phase1
Text Label 8150 4300 1    50   ~ 0
Phase2
$Comp
L Device:R_US R7
U 1 1 60496F71
P 9650 4300
F 0 "R7" H 9718 4346 50  0000 L CNN
F 1 "1k" H 9718 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9690 4290 50  0001 C CNN
F 3 "~" H 9650 4300 50  0001 C CNN
F 4 "ERJ-PA3J102V" H 9650 4300 50  0001 C CNN "Digikey Item"
	1    9650 4300
	1    0    0    -1  
$EndComp
Connection ~ 9650 4150
$Comp
L Device:LED D3
U 1 1 6049812D
P 9650 4600
F 0 "D3" V 9597 4680 50  0000 L CNN
F 1 "LED" V 9688 4680 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9650 4600 50  0001 C CNN
F 3 "~" H 9650 4600 50  0001 C CNN
	1    9650 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60499374
P 9650 4750
F 0 "#PWR04" H 9650 4500 50  0001 C CNN
F 1 "GND" H 9655 4577 50  0000 C CNN
F 2 "" H 9650 4750 50  0001 C CNN
F 3 "" H 9650 4750 50  0001 C CNN
	1    9650 4750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
