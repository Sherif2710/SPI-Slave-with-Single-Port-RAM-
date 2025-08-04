module spi_wrapper(clk,rst_n, SS_n,MOSI,MISO);
input  clk,rst_n, SS_n,MOSI;
output MISO;
wire [9:0] rx_data;
wire rx_valid;
wire tx_valid;
wire [7:0] tx_data;
 spi_slave  m1 (clk,rst_n,MOSI,MISO,SS_n,rx_data,rx_valid,tx_valid,tx_data);
 RAM  m2 (clk,rst_n,rx_data,rx_valid,tx_valid,tx_data);

 endmodule
