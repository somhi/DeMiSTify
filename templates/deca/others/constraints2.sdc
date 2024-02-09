# Create a clock for i2s
create_clock -name i2sclk -period 640.000 {audio_top:audio_i2s|tcount[4]}
