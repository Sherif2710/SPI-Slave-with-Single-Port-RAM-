module SPI_tb();
reg clk,rst_n, SS_n,MOSI;
wire  MISO_tb;
spi_wrapper m3 ( clk,rst_n, SS_n,MOSI,MISO_tb);
reg [9:0] rx_data_ex_write_add;
reg [9:0] rx_data_ex_write_data;
reg [9:0] rx_data_ex_read_add;
integer i;
initial begin  
    clk=0;  
    forever   
        #1 clk=~clk;  
    end 
   initial begin  
$readmemh("mem.dat",m3.m2.mem);
rst_n=0;//RST
SS_n=1;
MOSI=1;
   @(negedge clk);
   rst_n=1;
   SS_n=0;//CHKCMD
   MOSI=0;
  repeat(2) @(negedge clk);
//WRITE ADDRESS 
MOSI=0;
rx_data_ex_write_add[9]=MOSI;
@(negedge clk);
MOSI=0;
rx_data_ex_write_add[8]=MOSI;
@(negedge clk);
for (i=7;i>=0;i=i-1)begin
MOSI=$random;
rx_data_ex_write_add[i]=MOSI;
   @(negedge clk);
end
//check for DIN/RX_DATA.
if (m3.rx_data !=rx_data_ex_write_add)
     begin
  $display("Error - rx is incorrect"); 
        $stop; 
      end

SS_n=1; //idle
 @(negedge clk);
 //check for address write.
 if (m3.m2.addr_wr!=rx_data_ex_write_add[7:0])
     begin
  $display("Error - address write is incorrect"); 
        $stop; 
      end
  SS_n=0;//CHKCMD
  MOSI=0;
 repeat(2)@(negedge clk);
//write_data
MOSI=0;
rx_data_ex_write_data[9]=MOSI;
@(negedge clk);
MOSI=1;
rx_data_ex_write_data[8]=MOSI;
@(negedge clk);

for (i=7;i>=0;i=i-1)begin
MOSI=$random;
rx_data_ex_write_data[i]=MOSI;
   @(negedge clk);
end
//check for DIN/RX_DATA.
if (m3.rx_data !=rx_data_ex_write_data)
     begin
  $display("Error - rx is incorrect"); 
        $stop; 
      end
SS_n=1; //idle
 @(negedge clk);
 // check for memory content after write data 
 if (m3.m2.mem[rx_data_ex_write_add[7:0]]!=rx_data_ex_write_data[7:0])
     begin
  $display("Error - memory write  is incorrect"); 
        $stop; 
      end
SS_n=0;//CHKCMD
MOSI=1;
repeat(2)  @(negedge clk);
//READ ADDRESS
MOSI=1;
rx_data_ex_read_add[9]=MOSI;
@(negedge clk);
MOSI=0;
rx_data_ex_read_add[8]=MOSI;
@(negedge clk);
for (i=7;i>=0;i=i-1)begin
MOSI=$random;
rx_data_ex_read_add[i]=MOSI;
   @(negedge clk);
end
//check for DIN/RX_DATA.
if (m3.rx_data !=rx_data_ex_read_add)
     begin
  $display("Error - rx is incorrect"); 
        $stop; 
      end
SS_n=1;//IDLE
   @(negedge clk);
 //check for address read.
 if (m3.m2.addr_rd!=rx_data_ex_read_add[7:0])
     begin
  $display("Error - address read is incorrect"); 
        $stop; 
      end
   SS_n=0;//CHKCMD
   MOSI=1;
 repeat(2)  @(negedge clk);
//READDATA
 MOSI=1;
@(negedge clk);
MOSI=1;
@(negedge clk);
repeat(8)begin
MOSI=$random;
   @(negedge clk);
end
@(negedge clk);
if (m3.tx_data!=m3.m2.mem[rx_data_ex_read_add[7:0]])
     begin
  $display("Error - mem read  is incorrect"); 
        $stop; 
      end
 for (i=7;i>=0;i=i-1)begin
   @(negedge clk);
 if (MISO_tb!=m3.tx_data[i])
   begin
  $display("Error - miso  is incorrect"); 
        $stop; 
      end
 end 
SS_n=1; //idle
 @(negedge clk);
SS_n=0;//CHKCMD
   MOSI=0;
  repeat(2) @(negedge clk);
//WRITE ADDRESS 
MOSI=0;
rx_data_ex_write_add[9]=MOSI;
@(negedge clk);
MOSI=0;
rx_data_ex_write_add[8]=MOSI;
@(negedge clk);
for (i=7;i>=0;i=i-1)begin
MOSI=$random;
rx_data_ex_write_add[i]=MOSI;
   @(negedge clk);
end
//check for DIN/RX_DATA.
if (m3.rx_data !=rx_data_ex_write_add)
     begin
  $display("Error - rx is incorrect"); 
        $stop; 
      end

SS_n=1; //idle
 @(negedge clk);
 //check for address write.
 if (m3.m2.addr_wr!=rx_data_ex_write_add[7:0])
     begin
  $display("Error - address write is incorrect"); 
        $stop; 
      end
  SS_n=0;//CHKCMD
  MOSI=0;
 repeat(2)@(negedge clk);
//write_data
MOSI=0;
rx_data_ex_write_data[9]=MOSI;
@(negedge clk);
MOSI=1;
rx_data_ex_write_data[8]=MOSI;
@(negedge clk);

for (i=7;i>=0;i=i-1)begin
MOSI=$random;
rx_data_ex_write_data[i]=MOSI;
   @(negedge clk);
end
//check for DIN/RX_DATA.
if (m3.rx_data !=rx_data_ex_write_data)
     begin
  $display("Error - rx is incorrect"); 
        $stop; 
      end
SS_n=1; //idle
 @(negedge clk);
 // check for memory content after write data 
 if (m3.m2.mem[rx_data_ex_write_add[7:0]]!=rx_data_ex_write_data[7:0])
     begin
  $display("Error - memory write  is incorrect"); 
        $stop; 
      end
SS_n=0;//CHKCMD
MOSI=1;
repeat(2)  @(negedge clk);
//READ ADDRESS
MOSI=1;
rx_data_ex_read_add[9]=MOSI;
@(negedge clk);
MOSI=0;
rx_data_ex_read_add[8]=MOSI;
@(negedge clk);
for (i=7;i>=0;i=i-1)begin
MOSI=$random;
rx_data_ex_read_add[i]=MOSI;
   @(negedge clk);
end
//check for DIN/RX_DATA.
if (m3.rx_data !=rx_data_ex_read_add)
     begin
  $display("Error - rx is incorrect"); 
        $stop; 
      end
SS_n=1;//IDLE
   @(negedge clk);
 //check for address read.
 if (m3.m2.addr_rd!=rx_data_ex_read_add[7:0])
     begin
  $display("Error - address read is incorrect"); 
        $stop; 
      end
   SS_n=0;//CHKCMD
   MOSI=1;
 repeat(2)  @(negedge clk);
//READDATA
 MOSI=1;
@(negedge clk);
MOSI=1;
@(negedge clk);
repeat(8)begin
MOSI=$random;
   @(negedge clk);
end
@(negedge clk);
if (m3.tx_data!=m3.m2.mem[rx_data_ex_read_add[7:0]])
     begin
  $display("Error - mem read  is incorrect"); 
        $stop; 
      end
 for (i=7;i>=0;i=i-1)begin
   @(negedge clk);
 if (MISO_tb!=m3.tx_data[i])
   begin
  $display("Error - miso  is incorrect"); 
        $stop; 
      end
 
end 
SS_n=1; //idle
 @(negedge clk);

 $stop;
 end 


initial begin  
$monitor(" rst_n: %b,clk: %b,SS_n: %b,MOSI: %b,MISO_tb: %b",rst_n,clk, SS_n,MOSI,MISO_tb);  
end  
endmodule 
