v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 460 -480 540 -480 {lab=#net1}
N 360 -380 360 -300 {lab=#net1}
N 580 -360 580 -300 {lab=Vout}
N 360 -380 460 -380 {lab=#net1}
N 360 -450 360 -380 {lab=#net1}
N 460 -480 460 -380 {lab=#net1}
N 400 -480 460 -480 {lab=#net1}
N 360 -240 360 -180 {lab=#net2}
N 580 -240 580 -180 {lab=#net2}
N 480 -180 580 -180 {lab=#net2}
N 580 -360 650 -360 {lab=Vout}
N 580 -450 580 -360 {lab=Vout}
N 360 -580 360 -510 {lab=Vdd}
N 580 -580 580 -510 {lab=Vdd}
N 280 -270 320 -270 {lab=Vinp}
N 480 -180 480 -120 {lab=#net2}
N 360 -180 480 -180 {lab=#net2}
N 480 -50 480 -30 {lab=GND}
N -60 -50 -60 -30 {lab=GND}
N 60 -90 440 -90 {lab=#net3}
N -60 -200 -60 -120 {lab=#net3}
N -60 -580 -60 -430 {lab=Vdd}
N 60 -200 60 -90 {lab=#net3}
N -20 -90 60 -90 {lab=#net3}
N -60 -200 60 -200 {lab=#net3}
N -60 -370 -60 -200 {lab=#net3}
N 620 -270 650 -270 {lab=Vinn}
N 470 -580 580 -580 {lab=Vdd}
N 470 -590 470 -580 {lab=Vdd}
N 360 -580 470 -580 {lab=Vdd}
N 470 -270 580 -270 {lab=GND}
N 470 -270 470 -260 {lab=GND}
N 360 -270 470 -270 {lab=GND}
N -120 -90 -60 -90 {lab=GND}
N -120 -90 -120 -50 {lab=GND}
N -120 -50 -60 -50 {lab=GND}
N -60 -60 -60 -50 {lab=GND}
N 480 -90 570 -90 {lab=GND}
N 570 -90 570 -50 {lab=GND}
N 480 -50 570 -50 {lab=GND}
N 480 -60 480 -50 {lab=GND}
N 580 -580 670 -580 {lab=Vdd}
N 580 -480 670 -480 {lab=Vdd}
N 670 -580 670 -480 {lab=Vdd}
N 270 -480 360 -480 {lab=Vdd}
N 270 -580 360 -580 {lab=Vdd}
N 270 -580 270 -480 {lab=Vdd}
N -60 -580 270 -580 {lab=Vdd}
C {opin.sym} 650 -360 0 0 {name=p1 lab=Vout}
C {gnd.sym} 480 -30 0 0 {name=l1 lab=GND}
C {gnd.sym} -60 -30 0 1 {name=l2 lab=GND}
C {isource.sym} -60 -400 0 0 {name=I_basis value=20u pwl(0 0 10u 0 11u 20u)"}
C {sg13g2_pr/sg13_lv_nmos.sym} 340 -270 0 0 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 460 -90 0 0 {name=M5
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -40 -90 0 1 {name=M6
l=5u
w=2.5u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -480 0 0 {name=M4
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -480 0 1 {name=M3
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 470 -590 3 0 {name=p4 lab=Vdd}
C {ipin.sym} 280 -270 0 0 {name=p6 lab=Vinp}
C {ipin.sym} 650 -270 0 1 {name=p2 lab=Vinn}
C {gnd.sym} 470 -260 0 0 {name=l3 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -270 0 1 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
