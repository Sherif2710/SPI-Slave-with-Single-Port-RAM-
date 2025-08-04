module spi_slave (
    input   clk,
    input   rst_n,
    input   MOSI,
    output reg MISO,
    input   SS_n,

    output reg [9:0] rx_data,
    output reg rx_valid,

    input  tx_valid,
    input [7:0] tx_data
);

parameter IDLE   = 3'd0,
        CHK_CMD   = 3'd1,
        WRITE     = 3'd2,
        READ_ADD  = 3'd3,
        READ_DATA = 3'd4;
 (*fsm_encoding="gray"*)
    reg  [2:0] current_state, next_state;
    reg [3:0] bit_cnt_rx,bit_cnt_tx;
    reg addr_received;


    always @(posedge clk ) begin
        if (!rst_n)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            IDLE:
                if (!SS_n)
                    next_state = CHK_CMD;
                else 
                    next_state = IDLE;

            CHK_CMD:
                if (!SS_n)
                    next_state = (MOSI == 1'b0) ? WRITE :(addr_received == 1'b0)? READ_ADD:READ_DATA;
                else 
                    next_state = IDLE;

            WRITE:
                if (SS_n)
                    next_state = IDLE;
                else
                    next_state=WRITE;

            READ_ADD:
                if (SS_n)
                    next_state = IDLE;
                else 
                    next_state = READ_ADD;

            READ_DATA:
                if (SS_n)
                    next_state = IDLE;
                else 
                    next_state = READ_DATA;  

            default:
                    next_state = IDLE;
        endcase
    end
//output_logic
    always @(posedge clk) begin
        if (!rst_n) begin
            rx_data       <= 0;
            rx_valid      <= 0;
            MISO          <= 0;
            bit_cnt_rx       <= 0;
              bit_cnt_tx       <= 0;
            addr_received <= 0;
        end 
        else begin
    
            case (current_state)

                WRITE: begin
                rx_valid<=0;
                  rx_data <= {rx_data[8:0], MOSI};
                  if (bit_cnt_rx == 4'd9) begin
                        rx_valid <= 1;
                        end 
                     if (bit_cnt_rx == 4'd10) begin
                        bit_cnt_rx <= 0;
                        
                    end
                     else begin
                        bit_cnt_rx <= bit_cnt_rx + 1;
                    end
                
                    

                end

                

                READ_ADD: begin
                    rx_valid<=0;
                     rx_data <= {rx_data[8:0], MOSI};
                       if (bit_cnt_rx == 4'd9) begin
                        rx_valid <= 1;
                        end 
                     if (bit_cnt_rx == 4'd10) begin
                        bit_cnt_rx <= 0;
                        addr_received<=1;
                    end
                     else begin
                        bit_cnt_rx <= bit_cnt_rx + 1;
                    end
                
                end

                READ_DATA:begin
                    if (!tx_valid)begin
                    rx_valid<=0;
                    rx_data <= {rx_data[8:0], MOSI};
                       if (bit_cnt_rx == 4'd9) begin
                        rx_valid <= 1;
                        end 
                     if (bit_cnt_rx == 4'd10) begin
                        bit_cnt_rx <= 0;
                    end
                     else begin
                        bit_cnt_rx <= bit_cnt_rx + 1;
                    end
                    end 
                    else  begin
                        MISO <= tx_data[7 - bit_cnt_tx];
                        if (bit_cnt_tx == 4'd7) begin
                            bit_cnt_tx <= 0;
                            addr_received <= 0;
                        end 
                          else begin
                        bit_cnt_tx <= bit_cnt_tx + 1;
                    end
                    end
                end

                default: begin
               bit_cnt_rx <= 0;
                bit_cnt_tx <= 0;
                end
            endcase
        end
 end
endmodule