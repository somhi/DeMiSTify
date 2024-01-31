
module poseidon_top (
	input         CLOCK_50,

	output        LED,
	output [5:0]  VGA_R,
	output [5:0]  VGA_G,
	output [5:0]  VGA_B,
	output        VGA_HS,
	output        VGA_VS,

	input         SPI_SCK,
	inout         SPI_DO,
	input         SPI_DI,
	input         SPI_SS2,    // data_io
	input         SPI_SS3,    // OSD
	input         SPI_SS4,    // 	
	input         CONF_DATA0, // SPI_SS for user_io

	output [12:0] SDRAM_A,
	inout  [15:0] SDRAM_DQ,
	output        SDRAM_DQML,
	output        SDRAM_DQMH,
	output        SDRAM_nWE,
	output        SDRAM_nCAS,
	output        SDRAM_nRAS,
	output        SDRAM_nCS,
	output  [1:0] SDRAM_BA,
	output        SDRAM_CLK,
	output        SDRAM_CKE,

	output        I2S_BCK,
	output        I2S_LRCK,
	output        I2S_DATA,

	input         AUDIO_IN,

	input         UART_RX,
	output        UART_TX
);

wire        AUDIO_L, AUDIO_R;
wire [15:0] dac_l, dac_r;


guest_top guest
(
 .CLOCK_27    (CLOCK_50),
 //.DAC_L       (dac_l),
 //.DAC_R       (dac_r),
 .*
);

/*
audio_top audio_i2s
(
    .clk_50MHz (CLOCK_50),
  //.dac_MCLK  (I2S_MCK),
    .dac_LRCK  (I2S_LRCK),
    .dac_SCLK  (I2S_BCK),
    .dac_SDIN  (I2S_DATA),
    .L_data    (dac_l),
    .R_data    (dac_r)
);
*/

endmodule
