# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name axis_data_count \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_axis_data_count \
    op interface \
    ports { axis_data_count_dout { I 16 vector } axis_data_count_empty_n { I 1 bit } axis_data_count_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name axis_max_data_count \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_axis_max_data_count \
    op interface \
    ports { axis_max_data_count_dout { I 16 vector } axis_max_data_count_empty_n { I 1 bit } axis_max_data_count_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name myIpAddress \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress \
    op interface \
    ports { myIpAddress_dout { I 32 vector } myIpAddress_empty_n { I 1 bit } myIpAddress_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name axis_data_count_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_axis_data_count_out \
    op interface \
    ports { axis_data_count_out_din { O 16 vector } axis_data_count_out_full_n { I 1 bit } axis_data_count_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name axis_max_data_count_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_axis_max_data_count_out \
    op interface \
    ports { axis_max_data_count_out_din { O 16 vector } axis_max_data_count_out_full_n { I 1 bit } axis_max_data_count_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name myIpAddress_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress_out \
    op interface \
    ports { myIpAddress_out_din { O 32 vector } myIpAddress_out_full_n { I 1 bit } myIpAddress_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name myIpAddress_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress_out1 \
    op interface \
    ports { myIpAddress_out1_din { O 32 vector } myIpAddress_out1_full_n { I 1 bit } myIpAddress_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}

