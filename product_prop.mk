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
