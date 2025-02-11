v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -190 10 -190 30 {lab=v_inp}
N -190 10 -150 10 {lab=v_inp}
N -190 90 -190 110 {lab=GND}
N 180 -130 180 -110 {lab=#net1}
N 180 -50 180 -30 {lab=GND}
N 150 -130 150 -10 {lab=#net1}
N 150 -130 180 -130 {lab=#net1}
N 150 10 190 10 {lab=v_out}
N 190 10 190 30 {lab=v_out}
N 190 90 190 110 {lab=GND}
N -220 -40 -220 -20 {lab=GND}
N -150 -100 -150 -10 {lab=v_inn}
N -220 -100 -150 -100 {lab=v_inn}
C {OTA_test.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -190 60 0 0 {name=V1 value="AC 1 DC 0" savecurrent=false}
C {gnd.sym} -190 110 0 0 {name=l1 lab=GND}
C {vsource.sym} 180 -80 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 180 -30 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 190 10 2 0 {name=p1 sig_type=std_logic lab=v_out}
C {code_shown.sym} -662.5 -380 0 0 {name = s1
value = "
* OTA as Comparator

*Transient Analysis to Observe Output Behavior
*.tran 100n 2000u




.control
  save all
  ac dec 101 1 100MEG
  run
  *op
  *print v(v_inn) - v(v_inp)
  *print v(v_out)
  plot v_out
  plot v(v_inp)-v(v_inn)
  plot 20*log10(v_out/v_inp)
.endc


"



}
C {code_shown.sym} -637.5 37.5 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_pin.sym} -190 20 0 0 {name=p2 sig_type=std_logic lab=v_inp}
C {capa.sym} 190 60 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 190 110 0 0 {name=l4 lab=GND}
C {vsource.sym} -220 -70 0 0 {name=V3 value="0" savecurrent=false}
C {gnd.sym} -220 -20 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -180 -100 1 0 {name=p3 sig_type=std_logic lab=v_inn}
