EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:lpc802m001jdh16
LIBS:thvd1500
LIBS:icm-20689
LIBS:ft234xd
LIBS:mic5504
LIBS:IMUTracker-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L THVD1500 U4
U 1 1 5C46E12F
P 6050 3800
F 0 "U4" H 6150 3500 60  0000 C CNN
F 1 "THVD1500" H 6300 4100 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6050 3800 60  0001 C CNN
F 3 "" H 6050 3800 60  0001 C CNN
	1    6050 3800
	1    0    0    -1  
$EndComp
$Comp
L FT234XD U3
U 1 1 5C46F6BB
P 5900 5600
F 0 "U3" H 6150 5250 60  0000 C CNN
F 1 "FT234XD" H 6250 5950 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-12-1EP_3x3mm_Pitch0.45mm" H 5900 5600 60  0001 C CNN
F 3 "" H 5900 5600 60  0001 C CNN
	1    5900 5600
	-1   0    0    -1  
$EndComp
$Comp
L MIC5504-1.8YM5-TR U1
U 1 1 5C46FA53
P 1850 1550
F 0 "U1" H 1950 1200 60  0000 C CNN
F 1 "MIC5504-1.8YM5-TR" H 1850 1800 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 1850 1550 60  0001 C CNN
F 3 "" H 1850 1550 60  0001 C CNN
	1    1850 1550
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR01
U 1 1 5C46FC81
P 6050 1150
F 0 "#PWR01" H 6050 1000 50  0001 C CNN
F 1 "+1V8" H 6050 1290 50  0000 C CNN
F 2 "" H 6050 1150 50  0001 C CNN
F 3 "" H 6050 1150 50  0001 C CNN
	1    6050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1150 6050 1350
Wire Wire Line
	6150 1350 6150 1250
Wire Wire Line
	6150 1250 6050 1250
Connection ~ 6050 1250
Wire Wire Line
	5350 1600 4850 1600
Text Label 5000 1600 0    60   ~ 0
MISO
Wire Wire Line
	5350 1700 4850 1700
Text Label 5000 1700 0    60   ~ 0
MOSI
Wire Wire Line
	5350 1800 4850 1800
Text Label 5000 1800 0    60   ~ 0
SCK
Wire Wire Line
	5350 1900 4850 1900
Text Label 5050 1900 0    60   ~ 0
~SS
Wire Wire Line
	5350 2100 4850 2100
Text Label 5000 2100 0    60   ~ 0
INT
$Comp
L C C9
U 1 1 5C46FE82
P 7000 1950
F 0 "C9" H 7025 2050 50  0000 L CNN
F 1 "0.1u" H 7025 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7038 1800 50  0001 C CNN
F 3 "" H 7000 1950 50  0001 C CNN
	1    7000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1700 7000 1700
Wire Wire Line
	7000 1700 7000 1800
$Comp
L GND #PWR02
U 1 1 5C46FEDF
P 7000 2200
F 0 "#PWR02" H 7000 1950 50  0001 C CNN
F 1 "GND" H 7000 2050 50  0000 C CNN
F 2 "" H 7000 2200 50  0001 C CNN
F 3 "" H 7000 2200 50  0001 C CNN
	1    7000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2200 7000 2100
$Comp
L C C12
U 1 1 5C46FF7F
P 7300 1100
F 0 "C12" H 7325 1200 50  0000 L CNN
F 1 "0.1u" H 7325 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7338 950 50  0001 C CNN
F 3 "" H 7300 1100 50  0001 C CNN
	1    7300 1100
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR03
U 1 1 5C46FFDE
P 7300 850
F 0 "#PWR03" H 7300 700 50  0001 C CNN
F 1 "+1V8" H 7300 990 50  0000 C CNN
F 2 "" H 7300 850 50  0001 C CNN
F 3 "" H 7300 850 50  0001 C CNN
	1    7300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 850  7300 950 
$Comp
L GND #PWR04
U 1 1 5C4700F0
P 7300 1350
F 0 "#PWR04" H 7300 1100 50  0001 C CNN
F 1 "GND" H 7300 1200 50  0000 C CNN
F 2 "" H 7300 1350 50  0001 C CNN
F 3 "" H 7300 1350 50  0001 C CNN
	1    7300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1350 7300 1250
Text Notes 7500 1150 0    60   ~ 0
VDDIO
$Comp
L C C8
U 1 1 5C4701ED
P 6950 1100
F 0 "C8" H 6975 1200 50  0000 L CNN
F 1 "0.1u" H 6975 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6988 950 50  0001 C CNN
F 3 "" H 6950 1100 50  0001 C CNN
	1    6950 1100
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR05
U 1 1 5C4701F3
P 6950 850
F 0 "#PWR05" H 6950 700 50  0001 C CNN
F 1 "+1V8" H 6950 990 50  0000 C CNN
F 2 "" H 6950 850 50  0001 C CNN
F 3 "" H 6950 850 50  0001 C CNN
	1    6950 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 850  6950 950 
$Comp
L GND #PWR06
U 1 1 5C4701FA
P 6950 1350
F 0 "#PWR06" H 6950 1100 50  0001 C CNN
F 1 "GND" H 6950 1200 50  0000 C CNN
F 2 "" H 6950 1350 50  0001 C CNN
F 3 "" H 6950 1350 50  0001 C CNN
	1    6950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1250 6950 1350
Text Notes 6650 1150 0    60   ~ 0
VDD
$Comp
L +5V #PWR07
U 1 1 5C47090B
P 6050 3300
F 0 "#PWR07" H 6050 3150 50  0001 C CNN
F 1 "+5V" H 6050 3440 50  0000 C CNN
F 2 "" H 6050 3300 50  0001 C CNN
F 3 "" H 6050 3300 50  0001 C CNN
	1    6050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3300 6050 3400
$Comp
L GND #PWR08
U 1 1 5C470973
P 6050 4300
F 0 "#PWR08" H 6050 4050 50  0001 C CNN
F 1 "GND" H 6050 4150 50  0000 C CNN
F 2 "" H 6050 4300 50  0001 C CNN
F 3 "" H 6050 4300 50  0001 C CNN
	1    6050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4300 6050 4200
$Comp
L R R2
U 1 1 5C4709EF
P 6800 3800
F 0 "R2" V 6880 3800 50  0000 C CNN
F 1 "120" V 6800 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6730 3800 50  0001 C CNN
F 3 "" H 6800 3800 50  0001 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3750 6650 3750
Wire Wire Line
	6650 3750 6650 3500
Wire Wire Line
	6650 3500 7300 3500
Wire Wire Line
	6800 3500 6800 3650
Wire Wire Line
	6500 3850 6650 3850
Wire Wire Line
	6650 3850 6650 4100
Wire Wire Line
	6650 4100 7300 4100
Wire Wire Line
	6800 4100 6800 3950
Connection ~ 6800 3500
Connection ~ 6800 4100
$Comp
L USB_OTG J4
U 1 1 5C47105A
P 8450 5700
F 0 "J4" H 8250 6150 50  0000 L CNN
F 1 "USB_OTG" H 8250 6050 50  0000 L CNN
F 2 "ZX62-B-5PA:ZX62-B-5PA" H 8600 5650 50  0001 C CNN
F 3 "" H 8600 5650 50  0001 C CNN
	1    8450 5700
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5C4713BA
P 8450 6300
F 0 "#PWR09" H 8450 6050 50  0001 C CNN
F 1 "GND" H 8450 6150 50  0000 C CNN
F 2 "" H 8450 6300 50  0001 C CNN
F 3 "" H 8450 6300 50  0001 C CNN
	1    8450 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 6100 8450 6300
Wire Wire Line
	8550 6200 8550 6100
Wire Wire Line
	8100 6200 8550 6200
Connection ~ 8450 6200
Wire Wire Line
	8150 5900 8100 5900
Wire Wire Line
	8100 5900 8100 6200
$Comp
L +5V #PWR010
U 1 1 5C4714FA
P 8050 5300
F 0 "#PWR010" H 8050 5150 50  0001 C CNN
F 1 "+5V" H 8050 5440 50  0000 C CNN
F 2 "" H 8050 5300 50  0001 C CNN
F 3 "" H 8050 5300 50  0001 C CNN
	1    8050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5300 8050 5500
Wire Wire Line
	8050 5500 8150 5500
Wire Wire Line
	6650 5500 6550 5500
Wire Wire Line
	6650 5050 6650 5500
Wire Wire Line
	6650 5400 6550 5400
Wire Wire Line
	5950 4950 5950 5150
Wire Wire Line
	5950 5050 6750 5050
Connection ~ 6650 5400
$Comp
L R R3
U 1 1 5C471826
P 7200 5700
F 0 "R3" V 7280 5700 50  0000 C CNN
F 1 "27" V 7200 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7130 5700 50  0001 C CNN
F 3 "" H 7200 5700 50  0001 C CNN
	1    7200 5700
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5C4718D7
P 7200 5800
F 0 "R4" V 7280 5800 50  0000 C CNN
F 1 "27" V 7200 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7130 5800 50  0001 C CNN
F 3 "" H 7200 5800 50  0001 C CNN
	1    7200 5800
	0    -1   1    0   
$EndComp
Wire Wire Line
	7050 5800 6550 5800
Wire Wire Line
	6550 5700 7050 5700
$Comp
L C C10
U 1 1 5C4719D4
P 7400 6050
F 0 "C10" H 7425 6150 50  0000 L CNN
F 1 "47p" H 7425 5950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7438 5900 50  0001 C CNN
F 3 "" H 7400 6050 50  0001 C CNN
	1    7400 6050
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5C471A23
P 7600 6050
F 0 "C11" H 7625 6150 50  0000 L CNN
F 1 "47p" H 7625 5950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7638 5900 50  0001 C CNN
F 3 "" H 7600 6050 50  0001 C CNN
	1    7600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5800 8150 5800
Wire Wire Line
	7400 5800 7400 5900
Wire Wire Line
	7600 5900 7600 5700
Wire Wire Line
	7350 5700 8150 5700
Connection ~ 7400 5800
Connection ~ 7600 5700
$Comp
L GND #PWR011
U 1 1 5C471CC2
P 7400 6300
F 0 "#PWR011" H 7400 6050 50  0001 C CNN
F 1 "GND" H 7400 6150 50  0000 C CNN
F 2 "" H 7400 6300 50  0001 C CNN
F 3 "" H 7400 6300 50  0001 C CNN
	1    7400 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6200 7400 6300
Wire Wire Line
	7600 6200 7600 6250
Wire Wire Line
	7600 6250 7400 6250
Connection ~ 7400 6250
$Comp
L +3.3V #PWR012
U 1 1 5C471E74
P 5950 4950
F 0 "#PWR012" H 5950 4800 50  0001 C CNN
F 1 "+3.3V" H 5950 5090 50  0000 C CNN
F 2 "" H 5950 4950 50  0001 C CNN
F 3 "" H 5950 4950 50  0001 C CNN
	1    5950 4950
	1    0    0    -1  
$EndComp
Connection ~ 5950 5050
$Comp
L GND #PWR013
U 1 1 5C471F5B
P 5850 6150
F 0 "#PWR013" H 5850 5900 50  0001 C CNN
F 1 "GND" H 5850 6000 50  0000 C CNN
F 2 "" H 5850 6150 50  0001 C CNN
F 3 "" H 5850 6150 50  0001 C CNN
	1    5850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6050 5850 6150
Wire Wire Line
	5950 6050 5950 6100
Wire Wire Line
	5950 6100 5850 6100
Connection ~ 5850 6100
$Comp
L +5V #PWR014
U 1 1 5C472271
P 5700 4950
F 0 "#PWR014" H 5700 4800 50  0001 C CNN
F 1 "+5V" H 5700 5090 50  0000 C CNN
F 2 "" H 5700 4950 50  0001 C CNN
F 3 "" H 5700 4950 50  0001 C CNN
	1    5700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4950 5700 5050
Wire Wire Line
	5550 5050 5850 5050
Wire Wire Line
	5850 5050 5850 5150
$Comp
L C C7
U 1 1 5C472340
P 6900 5050
F 0 "C7" H 6925 5150 50  0000 L CNN
F 1 "0.1u" H 6925 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6938 4900 50  0001 C CNN
F 3 "" H 6900 5050 50  0001 C CNN
	1    6900 5050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 5C472528
P 7100 5150
F 0 "#PWR015" H 7100 4900 50  0001 C CNN
F 1 "GND" H 7100 5000 50  0000 C CNN
F 2 "" H 7100 5150 50  0001 C CNN
F 3 "" H 7100 5150 50  0001 C CNN
	1    7100 5150
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5C472929
P 5400 5050
F 0 "C6" H 5425 5150 50  0000 L CNN
F 1 "0.01u" H 5425 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5438 4900 50  0001 C CNN
F 3 "" H 5400 5050 50  0001 C CNN
	1    5400 5050
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR016
U 1 1 5C472AA0
P 5150 5100
F 0 "#PWR016" H 5150 4850 50  0001 C CNN
F 1 "GND" H 5150 4950 50  0000 C CNN
F 2 "" H 5150 5100 50  0001 C CNN
F 3 "" H 5150 5100 50  0001 C CNN
	1    5150 5100
	1    0    0    -1  
$EndComp
Connection ~ 5700 5050
Wire Wire Line
	5250 5050 5150 5050
Wire Wire Line
	5150 5050 5150 5100
Connection ~ 6650 5050
Wire Wire Line
	7050 5050 7100 5050
Wire Wire Line
	7100 5050 7100 5150
$Comp
L +5V #PWR017
U 1 1 5C473853
P 1200 1300
F 0 "#PWR017" H 1200 1150 50  0001 C CNN
F 1 "+5V" H 1200 1440 50  0000 C CNN
F 2 "" H 1200 1300 50  0001 C CNN
F 3 "" H 1200 1300 50  0001 C CNN
	1    1200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1300 1200 1700
Wire Wire Line
	1200 1500 1400 1500
Wire Wire Line
	1200 1600 1400 1600
Connection ~ 1200 1500
$Comp
L +1V8 #PWR018
U 1 1 5C47399C
P 2500 1300
F 0 "#PWR018" H 2500 1150 50  0001 C CNN
F 1 "+1V8" H 2500 1440 50  0000 C CNN
F 2 "" H 2500 1300 50  0001 C CNN
F 3 "" H 2500 1300 50  0001 C CNN
	1    2500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1300 2500 1700
Wire Wire Line
	2500 1500 2300 1500
$Comp
L GND #PWR019
U 1 1 5C473A6B
P 1850 2300
F 0 "#PWR019" H 1850 2050 50  0001 C CNN
F 1 "GND" H 1850 2150 50  0000 C CNN
F 2 "" H 1850 2300 50  0001 C CNN
F 3 "" H 1850 2300 50  0001 C CNN
	1    1850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2000 1850 2300
$Comp
L C C1
U 1 1 5C473B3C
P 1200 1850
F 0 "C1" H 1225 1950 50  0000 L CNN
F 1 "1u" H 1225 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1238 1700 50  0001 C CNN
F 3 "" H 1200 1850 50  0001 C CNN
	1    1200 1850
	1    0    0    -1  
$EndComp
Connection ~ 1200 1600
Wire Wire Line
	1200 2000 1200 2150
Wire Wire Line
	1200 2150 2500 2150
Connection ~ 1850 2150
$Comp
L C C4
U 1 1 5C473CC7
P 2500 1850
F 0 "C4" H 2525 1950 50  0000 L CNN
F 1 "1u" H 2525 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2538 1700 50  0001 C CNN
F 3 "" H 2500 1850 50  0001 C CNN
	1    2500 1850
	1    0    0    -1  
$EndComp
Connection ~ 2500 1500
Wire Wire Line
	2500 2150 2500 2000
Wire Wire Line
	5250 5400 4700 5400
Text Label 4800 5500 0    60   ~ 0
RX_485
Wire Wire Line
	5250 5500 4700 5500
Text Label 4800 5400 0    60   ~ 0
TX_485
Wire Wire Line
	5050 3650 5600 3650
Text Label 5150 3650 0    60   ~ 0
RX_485
Wire Wire Line
	5600 3750 5050 3750
Text Label 5150 3750 0    60   ~ 0
TX_485
Wire Wire Line
	5050 3950 5600 3950
Text Label 5100 3950 0    60   ~ 0
DE/~RE
$Comp
L +1V8 #PWR020
U 1 1 5C4756B4
P 2550 4850
F 0 "#PWR020" H 2550 4700 50  0001 C CNN
F 1 "+1V8" H 2550 4990 50  0000 C CNN
F 2 "" H 2550 4850 50  0001 C CNN
F 3 "" H 2550 4850 50  0001 C CNN
	1    2550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4850 2550 4950
Wire Wire Line
	2650 4950 2650 4900
Wire Wire Line
	2650 4900 2550 4900
Connection ~ 2550 4900
$Comp
L GND #PWR021
U 1 1 5C4758B6
P 2550 6250
F 0 "#PWR021" H 2550 6000 50  0001 C CNN
F 1 "GND" H 2550 6100 50  0000 C CNN
F 2 "" H 2550 6250 50  0001 C CNN
F 3 "" H 2550 6250 50  0001 C CNN
	1    2550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6250 2550 6150
Text Label 6950 3500 0    60   ~ 0
485+
Text Label 6950 4100 0    60   ~ 0
485-
$Comp
L C C3
U 1 1 5C4761B6
P 2050 4550
F 0 "C3" H 2075 4650 50  0000 L CNN
F 1 "0.1u" H 2075 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2088 4400 50  0001 C CNN
F 3 "" H 2050 4550 50  0001 C CNN
	1    2050 4550
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5C47624E
P 1750 4550
F 0 "C2" H 1775 4650 50  0000 L CNN
F 1 "0.01u" H 1775 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1788 4400 50  0001 C CNN
F 3 "" H 1750 4550 50  0001 C CNN
	1    1750 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5C476343
P 1750 4800
F 0 "#PWR022" H 1750 4550 50  0001 C CNN
F 1 "GND" H 1750 4650 50  0000 C CNN
F 2 "" H 1750 4800 50  0001 C CNN
F 3 "" H 1750 4800 50  0001 C CNN
	1    1750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4700 1750 4800
Wire Wire Line
	2050 4700 2050 4750
Wire Wire Line
	2050 4750 1750 4750
Connection ~ 1750 4750
$Comp
L +1V8 #PWR023
U 1 1 5C476514
P 1750 4300
F 0 "#PWR023" H 1750 4150 50  0001 C CNN
F 1 "+1V8" H 1750 4440 50  0000 C CNN
F 2 "" H 1750 4300 50  0001 C CNN
F 3 "" H 1750 4300 50  0001 C CNN
	1    1750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4300 1750 4400
Wire Wire Line
	2050 4400 2050 4350
Wire Wire Line
	2050 4350 1750 4350
Connection ~ 1750 4350
Text Notes 1750 6600 0    60   ~ 0
PIO0_2, 3, 7, 12 are not 5V tolerant
Wire Wire Line
	3350 5750 3850 5750
Text Label 1400 5650 0    60   ~ 0
RX_485
Wire Wire Line
	3350 5650 3850 5650
Text Label 3450 5450 0    60   ~ 0
TX_485
Wire Wire Line
	3350 5550 3850 5550
Text Label 1400 5350 0    60   ~ 0
DE/~RE
Wire Wire Line
	3350 5450 3850 5450
Text Label 3450 5750 0    60   ~ 0
~SS
Wire Wire Line
	1250 5350 1750 5350
Text Label 3450 5650 0    60   ~ 0
SCK
Wire Wire Line
	3350 5350 3850 5350
Text Label 1450 5850 0    60   ~ 0
MOSI
Text Label 3450 5550 0    60   ~ 0
MISO
Wire Wire Line
	1750 5850 1400 5850
Text Label 1500 5250 0    60   ~ 0
INT
$Comp
L R R1
U 1 1 5C47C398
P 800 5350
F 0 "R1" V 880 5350 50  0000 C CNN
F 1 "2k" V 800 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 730 5350 50  0001 C CNN
F 3 "" H 800 5350 50  0001 C CNN
	1    800  5350
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5C47C58F
P 800 5750
F 0 "D1" H 800 5850 50  0000 C CNN
F 1 "LED" H 800 5650 50  0000 C CNN
F 2 "LEDs:LED_0603" H 800 5750 50  0001 C CNN
F 3 "" H 800 5750 50  0001 C CNN
	1    800  5750
	0    -1   -1   0   
$EndComp
$Comp
L ICM-20948 U5
U 1 1 5C47E41D
P 6100 1850
F 0 "U5" H 6400 1450 60  0000 C CNN
F 1 "ICM-20948" H 6450 2250 60  0000 C CNN
F 2 "ICM20948:ICM20948" H 6100 1850 60  0001 C CNN
F 3 "" H 6100 1850 60  0001 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
NoConn ~ 6850 1800
NoConn ~ 6850 1900
$Comp
L +5V #PWR024
U 1 1 5C47F501
P 3250 1100
F 0 "#PWR024" H 3250 950 50  0001 C CNN
F 1 "+5V" H 3250 1240 50  0000 C CNN
F 2 "" H 3250 1100 50  0001 C CNN
F 3 "" H 3250 1100 50  0001 C CNN
	1    3250 1100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG025
U 1 1 5C47F62C
P 3550 1100
F 0 "#FLG025" H 3550 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 1250 50  0000 C CNN
F 2 "" H 3550 1100 50  0001 C CNN
F 3 "" H 3550 1100 50  0001 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1100 3250 1200
Wire Wire Line
	3250 1200 3550 1200
Wire Wire Line
	3550 1200 3550 1100
$Comp
L PWR_FLAG #FLG026
U 1 1 5C47F832
P 3400 1450
F 0 "#FLG026" H 3400 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 1600 50  0000 C CNN
F 2 "" H 3400 1450 50  0001 C CNN
F 3 "" H 3400 1450 50  0001 C CNN
	1    3400 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5C47F8CA
P 3400 1600
F 0 "#PWR027" H 3400 1350 50  0001 C CNN
F 1 "GND" H 3400 1450 50  0000 C CNN
F 2 "" H 3400 1600 50  0001 C CNN
F 3 "" H 3400 1600 50  0001 C CNN
	1    3400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1600 3400 1450
Wire Wire Line
	1750 5450 1200 5450
Wire Wire Line
	1750 5550 1200 5550
Text Label 1300 5450 0    60   ~ 0
SWCLK
Text Label 1300 5550 0    60   ~ 0
SWDIO
Wire Wire Line
	1500 6800 1950 6800
Text Label 1600 6800 0    60   ~ 0
SWCLK
Wire Wire Line
	1500 7100 1950 7100
Text Label 1600 7100 0    60   ~ 0
SWDIO
$Comp
L GND #PWR028
U 1 1 5C481266
P 1700 7550
F 0 "#PWR028" H 1700 7300 50  0001 C CNN
F 1 "GND" H 1700 7400 50  0000 C CNN
F 2 "" H 1700 7550 50  0001 C CNN
F 3 "" H 1700 7550 50  0001 C CNN
	1    1700 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7400 1700 7400
Wire Wire Line
	1700 7400 1700 7550
$Comp
L Conn_01x01 J1
U 1 1 5C48179B
P 1300 6800
F 0 "J1" H 1300 6900 50  0000 C CNN
F 1 "SWCLK" H 1300 6700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1300 6800 50  0001 C CNN
F 3 "" H 1300 6800 50  0001 C CNN
	1    1300 6800
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x01 J2
U 1 1 5C4818AD
P 1300 7100
F 0 "J2" H 1300 7200 50  0000 C CNN
F 1 "SWDIO" H 1300 7000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1300 7100 50  0001 C CNN
F 3 "" H 1300 7100 50  0001 C CNN
	1    1300 7100
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x01 J3
U 1 1 5C481A17
P 1300 7400
F 0 "J3" H 1300 7500 50  0000 C CNN
F 1 "GND" H 1300 7300 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1300 7400 50  0001 C CNN
F 3 "" H 1300 7400 50  0001 C CNN
	1    1300 7400
	-1   0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5C47E839
P 4700 3800
F 0 "C5" H 4725 3900 50  0000 L CNN
F 1 "0.1u" H 4725 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4738 3650 50  0001 C CNN
F 3 "" H 4700 3800 50  0001 C CNN
	1    4700 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 5C47E8E4
P 4700 3550
F 0 "#PWR029" H 4700 3400 50  0001 C CNN
F 1 "+5V" H 4700 3690 50  0000 C CNN
F 2 "" H 4700 3550 50  0001 C CNN
F 3 "" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3550 4700 3650
$Comp
L GND #PWR030
U 1 1 5C47EA7D
P 4700 4050
F 0 "#PWR030" H 4700 3800 50  0001 C CNN
F 1 "GND" H 4700 3900 50  0000 C CNN
F 2 "" H 4700 4050 50  0001 C CNN
F 3 "" H 4700 4050 50  0001 C CNN
	1    4700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3950 4700 4050
$Comp
L Conn_01x04 J5
U 1 1 5C4859F3
P 10000 1300
F 0 "J5" H 10000 1500 50  0000 C CNN
F 1 "Conn_01x04" H 10000 1000 50  0000 C CNN
F 2 "JST_PA:JST_PA_04_Angled" H 10000 1300 50  0001 C CNN
F 3 "" H 10000 1300 50  0001 C CNN
	1    10000 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5C485CB3
P 9700 1650
F 0 "#PWR031" H 9700 1400 50  0001 C CNN
F 1 "GND" H 9700 1500 50  0000 C CNN
F 2 "" H 9700 1650 50  0001 C CNN
F 3 "" H 9700 1650 50  0001 C CNN
	1    9700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1650 9700 1500
Wire Wire Line
	9700 1500 9800 1500
Wire Wire Line
	9800 1300 9400 1300
Wire Wire Line
	9800 1200 9400 1200
$Comp
L Conn_01x04 J6
U 1 1 5C4864C1
P 10000 2300
F 0 "J6" H 10000 2500 50  0000 C CNN
F 1 "Conn_01x04" H 10000 2000 50  0000 C CNN
F 2 "JST_PA:JST_PA_04_Angled" H 10000 2300 50  0001 C CNN
F 3 "" H 10000 2300 50  0001 C CNN
	1    10000 2300
	1    0    0    -1  
$EndComp
Text Label 7750 5700 0    60   ~ 0
USBD+
Text Label 7750 5800 0    60   ~ 0
USBD-
Text Label 6750 5700 0    60   ~ 0
D+
Text Label 6750 5800 0    60   ~ 0
D-
Text Label 9500 1300 0    60   ~ 0
485+
Text Label 9500 1200 0    60   ~ 0
485-
NoConn ~ 5250 5600
NoConn ~ 5250 5700
Wire Wire Line
	5250 5800 4700 5800
Text Label 4800 5800 0    60   ~ 0
DE/~RE
Wire Wire Line
	5600 3850 5500 3850
Wire Wire Line
	5500 3850 5500 3950
Connection ~ 5500 3950
$Comp
L GND #PWR032
U 1 1 5C497981
P 6100 2550
F 0 "#PWR032" H 6100 2300 50  0001 C CNN
F 1 "GND" H 6100 2400 50  0000 C CNN
F 2 "" H 6100 2550 50  0001 C CNN
F 3 "" H 6100 2550 50  0001 C CNN
	1    6100 2550
	1    0    0    -1  
$EndComp
Text Label 3500 5350 0    60   ~ 0
LED
Wire Wire Line
	800  5500 800  5600
Wire Wire Line
	800  5200 800  5100
Wire Wire Line
	800  5100 550  5100
Text Label 600  5100 0    60   ~ 0
LED
$Comp
L GND #PWR033
U 1 1 5C4DD07D
P 800 6000
F 0 "#PWR033" H 800 5750 50  0001 C CNN
F 1 "GND" H 800 5850 50  0000 C CNN
F 2 "" H 800 6000 50  0001 C CNN
F 3 "" H 800 6000 50  0001 C CNN
	1    800  6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6000 800  5900
$Comp
L LPC802M001JDH16 U2
U 1 1 5C46E023
P 2550 5450
F 0 "U2" H 2700 4850 60  0000 C CNN
F 1 "LPC802M001JDH16" H 3150 5850 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 2550 5450 60  0001 C CNN
F 3 "" H 2550 5450 60  0001 C CNN
	1    2550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5650 1350 5650
$Comp
L +5V #PWR034
U 1 1 5C57E337
P 9250 1200
F 0 "#PWR034" H 9250 1050 50  0001 C CNN
F 1 "+5V" H 9250 1340 50  0000 C CNN
F 2 "" H 9250 1200 50  0001 C CNN
F 3 "" H 9250 1200 50  0001 C CNN
	1    9250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1200 9250 1400
Wire Wire Line
	9250 1400 9800 1400
$Comp
L GND #PWR035
U 1 1 5C57E57C
P 9700 2650
F 0 "#PWR035" H 9700 2400 50  0001 C CNN
F 1 "GND" H 9700 2500 50  0000 C CNN
F 2 "" H 9700 2650 50  0001 C CNN
F 3 "" H 9700 2650 50  0001 C CNN
	1    9700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2650 9700 2500
Wire Wire Line
	9700 2500 9800 2500
Wire Wire Line
	9800 2300 9400 2300
Wire Wire Line
	9800 2200 9400 2200
Text Label 9500 2300 0    60   ~ 0
485+
Text Label 9500 2200 0    60   ~ 0
485-
$Comp
L +5V #PWR036
U 1 1 5C57E588
P 9250 2200
F 0 "#PWR036" H 9250 2050 50  0001 C CNN
F 1 "+5V" H 9250 2340 50  0000 C CNN
F 2 "" H 9250 2200 50  0001 C CNN
F 3 "" H 9250 2200 50  0001 C CNN
	1    9250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2200 9250 2400
Wire Wire Line
	9250 2400 9800 2400
NoConn ~ 1750 5750
Wire Wire Line
	1750 5250 1250 5250
$Comp
L GND #PWR037
U 1 1 5C57FE65
P 4650 2200
F 0 "#PWR037" H 4650 1950 50  0001 C CNN
F 1 "GND" H 4650 2050 50  0000 C CNN
F 2 "" H 4650 2200 50  0001 C CNN
F 3 "" H 4650 2200 50  0001 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2200 4650 2000
Wire Wire Line
	4650 2000 5350 2000
NoConn ~ 3350 5250
Wire Wire Line
	6050 2350 6050 2450
Wire Wire Line
	6050 2450 6150 2450
Wire Wire Line
	6150 2450 6150 2350
Wire Wire Line
	6100 2550 6100 2450
Connection ~ 6100 2450
$EndSCHEMATC
