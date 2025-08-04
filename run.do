vlib work  
vlog ram.v slave.v top_module.v final_tb.v
vsim -voptargs=+acc work.SPI_tb 

add wave * 

add wave -position insertpoint \
sim:/SPI_tb/m3/m1/current_state \
sim:/SPI_tb/m3/m1/next_state \
sim:/SPI_tb/m3/m1/bit_cnt_rx \
sim:/SPI_tb/m3/m1/bit_cnt_tx \
sim:/SPI_tb/m3/m1/tx_valid \
sim:/SPI_tb/m3/m1/rx_valid \
sim:/SPI_tb/m3/m1/rx_data \
sim:/SPI_tb/m3/m1/tx_data \
sim:/SPI_tb/m3/m1/addr_received \
sim:/SPI_tb/m3/m2/addr_rd \
sim:/SPI_tb/m3/m2/addr_wr \
sim:/SPI_tb/m3/m2/mem

run -all  
#quit -sim