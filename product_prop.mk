#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# ADB
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    persist.camera.gyro.disable=0 \
    persist.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,com.google.camera \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera,com.google.camera \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.google.camera

# Data Modules
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.mode=concurrent \
    ro.vendor.use_data_netmgrd=false

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.egl.hw=0 \
    debug.mdpcomp.logs=0 \
    debug.sf.disable_backpressure=1 \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_phase_offset_ns=1500000 \
    debug.sf.high_fps_early_phase_offset_ns=6100000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=9000000 \
    debug.sf.hw=0 \
    debug.sf.phase_offset_threshold_for_next_vsync_ns=6100000 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    persist.sys.sf.color_saturation=1.0 \
    ro.opengles.version=196610 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.use_color_management=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
    ro.surface_flinger.wcg_composition_dataspace=143261696 \
    vendor.display.comp_mask=0 \
    vendor.display.dataspace_saturation_matrix=1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0 \
    vendor.display.disable_decimation=1 \
    vendor.display.disable_excl_rect=0 \
    vendor.display.disable_hw_recovery_dump=0 \
    vendor.display.disable_inline_rotator=1 \
    vendor.display.disable_scaler=0 \
    vendor.display.disable_ui_3d_tonemap=1 \
    vendor.display.enable_default_color_mode=1 \
    vendor.display.enable_force_split=0 \
    vendor.display.enable_null_display=0 \
    vendor.display.enable_optimize_refresh=1 \
    vendor.gralloc.disable_ubwc=0

# RCS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rcs.supported=1

# Recorder
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.audiorec=true

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ril.subscription.types=NV,RUIM \
    ro.telephony.default_network=33,22 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.radio.NO_STAPA=1 \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.radio.VT_ENABLE=1 \
    persist.radio.volte.dan_support=true \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.radio.enable_temp_dds=true \
    persist.vendor.radio.force_on_dc=true \
    persist.vendor.radio.redir_party_num=1 \
    telephony.lteOnCdmaDevice=1 \
    persist.sys.fflag.override.settings_network_and_internet_v2=true
