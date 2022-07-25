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
    name dhcpEnable \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dhcpEnable \
    op interface \
    ports { dhcpEnable_dout { I 1 vector } dhcpEnable_empty_n { I 1 bit } dhcpEnable_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name inputIpAddress \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inputIpAddress \
    op interface \
    ports { inputIpAddress_dout { I 32 vector } inputIpAddress_empty_n { I 1 bit } inputIpAddress_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name myMacAddress \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_myMacAddress \
    op interface \
    ports { myMacAddress_dout { I 48 vector } myMacAddress_empty_n { I 1 bit } myMacAddress_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name dhcpEnable_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dhcpEnable_out \
    op interface \
    ports { dhcpEnable_out_din { O 1 vector } dhcpEnable_out_full_n { I 1 bit } dhcpEnable_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name inputIpAddress_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_inputIpAddress_out \
    op interface \
    ports { inputIpAddress_out_din { O 32 vector } inputIpAddress_out_full_n { I 1 bit } inputIpAddress_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name myMacAddress_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_myMacAddress_out \
    op interface \
    ports { myMacAddress_out_din { O 48 vector } myMacAddress_out_full_n { I 1 bit } myMacAddress_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name myMacAddress_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_myMacAddress_out1 \
    op interface \
    ports { myMacAddress_out1_din { O 48 vector } myMacAddress_out1_full_n { I 1 bit } myMacAddress_out1_write { O 1 bit } } \
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


