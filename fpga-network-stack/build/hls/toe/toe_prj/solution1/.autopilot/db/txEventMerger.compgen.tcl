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
    id 352 \
    name txApp2eventEng_mergeEvent \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txApp2eventEng_mergeEvent \
    op interface \
    ports { txApp2eventEng_mergeEvent_dout { I 128 vector } txApp2eventEng_mergeEvent_empty_n { I 1 bit } txApp2eventEng_mergeEvent_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name txApp2eventEng_setEvent \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txApp2eventEng_setEvent \
    op interface \
    ports { txApp2eventEng_setEvent_din { O 128 vector } txApp2eventEng_setEvent_full_n { I 1 bit } txApp2eventEng_setEvent_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name txAppStream2event_mergeEvent \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_txAppStream2event_mergeEvent \
    op interface \
    ports { txAppStream2event_mergeEvent_dout { I 128 vector } txAppStream2event_mergeEvent_empty_n { I 1 bit } txAppStream2event_mergeEvent_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name txApp_txEventCache \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txApp_txEventCache \
    op interface \
    ports { txApp_txEventCache_din { O 128 vector } txApp_txEventCache_full_n { I 1 bit } txApp_txEventCache_write { O 1 bit } } \
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


