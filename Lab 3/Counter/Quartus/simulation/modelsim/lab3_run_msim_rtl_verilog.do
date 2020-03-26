transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/alvn5/github/engr378-lab/Lab\ 3/Counter/Verilog {C:/Users/alvn5/github/engr378-lab/Lab 3/Counter/Verilog/two_bit_counter.v}

vlog -vlog01compat -work work +incdir+C:/Users/alvn5/github/engr378-lab/Lab\ 3/Counter/Quartus/../Verilog {C:/Users/alvn5/github/engr378-lab/Lab 3/Counter/Quartus/../Verilog/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
