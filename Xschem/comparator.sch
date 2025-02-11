v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -400 250 -400 {lab=Vout}
N 240 -500 240 -480 {lab=GND}
N -130 -430 -130 -420 {lab=Vinn}
N -140 -400 -140 -340 {lab=Vinp}
N -140 -400 -130 -400 {lab=Vinp}
N -250 -430 -130 -430 {lab=Vinn}
N 170 -420 240 -420 {lab=#net1}
N -250 -430 -250 -340 {lab=Vinn}
N -250 -280 -250 -250 {lab=GND}
N -250 -250 -140 -250 {lab=GND}
N -140 -280 -140 -250 {lab=GND}
N 210 -400 210 -350 {lab=Vout}
N 170 -400 210 -400 {lab=Vout}
N -140 -250 210 -250 {lab=GND}
N 210 -290 210 -250 {lab=GND}
C {code_shown.sym} -542.5 -790 0 0 {name = s1
value = "
* OTA as Comparator

*Transient Analysis to Observe Output Behavior
.tran 0.01ms 15ms


.control
  save all
  run
  plot V (Vout) V (Vinn) V (Vinp)
  plot Vinp
  plot Vout
.endc


"



}
C {lab_pin.sym} 245 -400 0 1 {name=p1 sig_type=std_logic lab=Vout}
C {code_shown.sym} -527.5 -502.5 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {gnd.sym} -192.5 -250 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -250 -380 0 0 {name=p3 sig_type=std_logic lab=Vinn}
C {vsource.sym} -250 -310 0 0 {name=V1 value="dc 0.4" savecurrent=false}
C {vsource.sym} -140 -310 0 0 {name=V2 value="SIN(0 0.8 300)" savecurrent=false}
C {lab_pin.sym} -140 -380 0 0 {name=p2 sig_type=std_logic lab=Vinp}
C {vsource.sym} 240 -450 2 1 {name=Vdd value=1.5 savecurrent=false}
C {gnd.sym} 240 -500 2 1 {name=l2 lab=GND}
C {OTA_test.sym} 20 -410 0 0 {name=x1}
C {capa.sym} 210 -320 0 0 {name=C1
m=1
value=187f
footprint=1206
device="ceramic capacitor"}
