v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -960 -140 -960 -120 {
lab=GND}
N -960 -240 -960 -200 {p1
lab=p1}
N -600 -140 -600 -120 {
lab=GND}
N -600 -240 -600 -200 {p1
lab=p2}
N -210 -140 -210 -120 {
lab=GND}
N -210 -240 -210 -200 {p1
lab=VDD}
N -100 -140 -100 -120 {
lab=GND}
N -100 -240 -100 -200 {p1
lab=VSS}
N -810 40 -810 70 {
lab=p1}
N -830 50 -830 70 {
lab=GND}
N -740 110 -700 110 {
lab=#net1}
N -950 110 -840 110 {
lab=vi}
N -950 110 -950 170 {
lab=vi}
N -950 230 -950 250 {
lab=GND}
N -510 40 -510 70 {
lab=p2}
N -530 50 -530 70 {
lab=GND}
N -580 110 -540 110 {
lab=#net2}
N -810 220 -780 220 {
lab=GND}
N -810 220 -810 250 {
lab=GND}
N -810 200 -780 200 {
lab=p2}
N -740 110 -740 170 {
lab=#net1}
N -780 110 -740 110 {
lab=#net1}
N -580 230 -580 250 {
lab=GND}
N -650 220 -620 220 {
lab=GND}
N -650 220 -650 250 {
lab=GND}
N -650 200 -620 200 {
lab=p1}
N -580 110 -580 170 {
lab=#net2}
N -640 110 -580 110 {
lab=#net2}
N -450 110 -410 110 {lab=#net3}
N -410 130 -410 190 {lab=GND}
N -450 30 -290 30 {lab=#net3}
N -450 30 -450 110 {lab=#net3}
N -480 110 -450 110 {lab=#net3}
N -230 30 -10 30 {lab=Vout}
N -10 30 -10 130 {lab=Vout}
N -740 230 -740 260 {lab=GND}
N -10 130 90 130 {lab=Vout}
N -110 110 -80 110 {lab=vdd}
N 70 -150 70 -130 {
lab=GND}
N 70 -250 70 -210 {p1
lab=resb}
N -110 130 -10 130 {lab=Vout}
C {devices/gnd.sym} -960 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -960 -170 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 5n, 100p, 100p, \{per/2-5n\}, \{per\}) "}
C {devices/lab_wire.sym} -960 -240 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -600 -120 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -600 -170 0 0 {name=Vp2 value="dc \{vdd\} pulse(\{vdd\}, 0, 0, 100p, 100p, \{per/2+5n\}, \{per\}) "}
C {devices/lab_wire.sym} -600 -240 0 0 {name=p1 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -210 -120 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} -210 -170 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} -210 -240 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} -100 -120 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} -100 -170 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} -100 -240 0 0 {name=l19 lab=VSS}
C {devices/code_shown.sym} 430 290 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 420 -180 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 per=2u
.model mysw SW vt=\{vdd/2\} ron=10k roff=10gig
.option method=gear reltol=1e-4

.control
save all 
tran 10n 200u
plot vi
plot Vout
plot vi Vout


set wr_singlescale
set wr_vecnames
.endc
"}
C {devices/switch_ngspice.sym} -810 110 1 0 {name=S1 model=mysw}
C {devices/lab_pin.sym} -810 40 1 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -830 50 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} -950 250 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -950 200 0 0 {name=Vin value="0.075"}
C {devices/lab_wire.sym} -890 110 0 0 {name=p4 sig_type=std_logic lab=vi}
C {devices/capa.sym} -670 110 3 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} -510 110 1 0 {name=S2 model=mysw}
C {devices/lab_pin.sym} -510 40 1 0 {name=p5 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -530 50 2 0 {name=l9 lab=GND}
C {devices/switch_ngspice.sym} -740 200 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} -810 250 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} -810 200 0 0 {name=p8 sig_type=std_logic lab=p2}
C {devices/gnd.sym} -580 250 0 0 {name=l10 lab=GND}
C {devices/switch_ngspice.sym} -580 200 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} -650 250 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -650 200 0 0 {name=p7 sig_type=std_logic lab=p1}
C {OTA_test.sym} -260 120 0 0 {name=x1}
C {devices/gnd.sym} -410 190 0 0 {name=l1 lab=GND}
C {devices/capa.sym} -260 30 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -740 260 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -90 110 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 70 130 0 0 {name=p9 sig_type=std_logic lab=Vout}
C {devices/gnd.sym} 70 -130 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 70 -180 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\}"}
C {devices/lab_wire.sym} 70 -250 0 0 {name=p12 sig_type=std_logic lab=resb}
