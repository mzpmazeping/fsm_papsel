
#vsim -L D:/altera/mti_lib/verilog_libs/altera_mf_ver -gui -novopt work.tb_fsm_papsel
vsim -gui -novopt  work.tb_fsm_papsel

add wave -r sim:/tb_fsm_papsel/*

run 1ms
