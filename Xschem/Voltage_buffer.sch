v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 10 170 40 {lab=Vout}
N 200 -160 260 -160 {lab=#net1}
N 260 -160 260 -10 {lab=#net1}
N 170 -10 260 -10 {lab=#net1}
N -210 100 260 100 {lab=GND}
N -210 100 -210 160 {lab=GND}
N 260 10 260 40 {lab=Vout}
N 170 10 260 10 {lab=Vout}
N 200 -100 200 -80 {lab=GND}
N -210 70 -210 100 {lab=GND}
N -210 10 -130 10 {lab=Vin}
N -150 40 170 40 {lab=Vout}
N -150 -10 -130 -10 {lab=Vout}
N -150 -10 -150 40 {lab=Vout}
C {vsource.sym} -210 40 0 0 {name=Vin value="dc 0.8 ac 1"}
C {gnd.sym} -210 160 0 0 {name=l1 lab=GND}
C {vsource.sym} 200 -130 0 0 {name=Vdd value=1.5}
C {capa.sym} 260 70 0 0 {name=C1
value=50f}
C {gnd.sym} 200 -80 0 0 {name=l2 lab=GND}
C {code_shown.sym} -570 -290 0 0 {name=s1 only_toplevel=false 
value="
.temp 27
.control
save all
op

dc Vin 0.7 0.9 0.01
plot Vin
plot Vout
plot v(Vout) vs v(Vin)
plot 20*log10(Vout)

.endc
"}
C {lab_pin.sym} 260 20 0 1 {name=p1 sig_type=std_logic lab=Vout}
C {lab_pin.sym} -200 10 3 1 {name=p2 sig_type=std_logic lab=Vin}
C {OTA_test.sym} 20 0 0 0 {name=x1}
C {code_shown.sym} -590 10 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
