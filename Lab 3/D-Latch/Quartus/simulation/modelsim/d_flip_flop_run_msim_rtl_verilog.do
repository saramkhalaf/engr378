transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/alvn5/ENGR378/lab3/Verilog {C:/Users/alvn5/ENGR378/lab3/Verilog/d_latch.v}

vlog -vlog01compat -work work +incdir+C:/Users/alvn5/ENGR378/Lab\ 3/D_flip_flop/Quartus/../../../lab3/Verilog {C:/Users/alvn5/ENGR378/Lab 3/D_flip_flop/Quartus/../../../lab3/Verilog/tb1.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb1

add wave *
view structure
view signals
run -all
