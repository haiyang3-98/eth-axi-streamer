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
    id 56 \
    name dataStreams_V_data_V_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataStreams_V_data_V_0 \
    op interface \
    ports { dataStreams_V_data_V_0_dout { I 64 vector } dataStreams_V_data_V_0_empty_n { I 1 bit } dataStreams_V_data_V_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name dataStreams_V_keep_V_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataStreams_V_keep_V_0 \
    op interface \
    ports { dataStreams_V_keep_V_0_dout { I 8 vector } dataStreams_V_keep_V_0_empty_n { I 1 bit } dataStreams_V_keep_V_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name dataStreams_V_last_V_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataStreams_V_last_V_0 \
    op interface \
    ports { dataStreams_V_last_V_0_dout { I 1 vector } dataStreams_V_last_V_0_empty_n { I 1 bit } dataStreams_V_last_V_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name dataStreams_V_data_V_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataStreams_V_data_V_1 \
    op interface \
    ports { dataStreams_V_data_V_1_dout { I 64 vector } dataStreams_V_data_V_1_empty_n { I 1 bit } dataStreams_V_data_V_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name dataStreams_V_keep_V_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataStreams_V_keep_V_1 \
    op interface \
    ports { dataStreams_V_keep_V_1_dout { I 8 vector } dataStreams_V_keep_V_1_empty_n { I 1 bit } dataStreams_V_keep_V_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name dataStreams_V_last_V_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataStreams_V_last_V_1 \
    op interface \
    ports { dataStreams_V_last_V_1_dout { I 1 vector } dataStreams_V_last_V_1_empty_n { I 1 bit } dataStreams_V_last_V_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name dataOut_internal \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataOut_internal \
    op interface \
    ports { dataOut_internal_din { O 128 vector } dataOut_internal_full_n { I 1 bit } dataOut_internal_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name checksumStreams_V_V_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_checksumStreams_V_V_0 \
    op interface \
    ports { checksumStreams_V_V_0_dout { I 16 vector } checksumStreams_V_V_0_empty_n { I 1 bit } checksumStreams_V_V_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name checksumStreams_V_V_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_checksumStreams_V_V_1 \
    op interface \
    ports { checksumStreams_V_V_1_dout { I 16 vector } checksumStreams_V_V_1_empty_n { I 1 bit } checksumStreams_V_V_1_read { O 1 bit } } \
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


