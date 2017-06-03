set clock_constraint { \
    name clk \
    module aes256cbc \
    port ap_clk \
    period 8 \
    uncertainty 1 \
}

set all_path {}

set false_path {}

