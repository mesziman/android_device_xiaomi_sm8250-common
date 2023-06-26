#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true
TARGET_BOARD_PLATFORM := kona

# Overlays
PRODUCT_PACKAGES += \
    SM8250CarrierConfig \
    AOSPAMiKonaFrameworks \
    AOSPAMiKonaSettings \
    MiKonaFrameworks \
    MiKonaSystemUI \
    WifiResTarget

PRODUCT_ENFORCE_RRO_TARGETS := *


# Adreno
PRODUCT_VENDOR_PROPERTIES += \
    ro.gfx.driver.1=com.qualcomm.qti.gpudrivers.kona.api30

# Atrace
#PRODUCT_PACKAGES += \
#    android.hardware.atrace@1.0-service 

#PRODUCT_PACKAGES += libmedia_jni_shim

PRODUCT_CHARACTERISTICS := nosdcard
LOC_HIDL_VERSION = 4.0


# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi


# Attestation
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml

TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true
# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    android.hardware.soundtrigger@2.2-impl \
    android.hardware.soundtrigger@2.3-impl \
    sound_trigger.primary.$(TARGET_BOARD_PLATFORM)

PRODUCT_PACKAGES += com.dsi.ant@1.0.vendor

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.kona \
    audio.r_submix.default \
    audio.usb.default \

PRODUCT_PACKAGES += \
    liba2dpoffload \
    libaudiopreprocessing \
    libbatterylistener \
    libbundlewrapper \
    libcomprcapture \
    libdownmix \
    libdynproc \
    libeffectproxy \
    libexthwplugin \
    libhdmiedid \
    libhfp \
    libldnhncr \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libreverbwrapper \
    libsndmonitor \
    libspkrprot \
    libvisualizer \
    libvolumelistener

# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf


PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    vendor/qcom/opensource/audio-hal/primary-hal/configs/common/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml \
    vendor/qcom/opensource/audio-hal/primary-hal/configs/common/bluetooth_qti_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml


# Authsecret
PRODUCT_PACKAGES += \
    android.hardware.authsecret@1.0.vendor
#Bluetooth
PRODUCT_VENDOR_PROPERTIES += \
    persist.sys.fflag.override.settings_bluetooth_hearing_aid=true \
    persist.vendor.qcom.bluetooth.a2dp_mcast_test.enabled=false \
    persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled=true \
    persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled=true \
    persist.vendor.qcom.bluetooth.aptxadaptiver2_1_support=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    persist.vendor.qcom.bluetooth.scram.enabled=false \
    persist.vendor.qcom.bluetooth.soc=hastings \
    persist.vendor.qcom.bluetooth.twsp_state.enabled=false \
    persist.bluetooth.sbc_hd_higher_bitrate=1 \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    persist.vendor.bt.aac_vbr_frm_ctl.enabled=true \
    ro.vendor.bluetooth.wipower=false \
    vendor.hw.fm.init=0 \
    vendor.qcom.bluetooth.soc=hastings

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.vendor.btstack.enable.lpa=true \
    persist.vendor.btstack.enable.twsplus=true

#split a2dp DSP supported encoder list
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptiver2-aac-ldac-lhdc \
    persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac-aptxadaptiver2 \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptiver2-aac-ldac-lhdc

# A2DP offload support
PRODUCT_VENDOR_PROPERTIES += \
    ro.bluetooth.a2dp_offload.supported=true

# Disable A2DP offload
PRODUCT_VENDOR_PROPERTIES += \
    persist.bluetooth.a2dp_offload.disabled=false

# A2DP offload DSP supported encoder list
PRODUCT_VENDOR_PROPERTIES += \
    persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd-ldac-lhdc

PRODUCT_PACKAGES += \
   android.hardware.camera.provider@2.4-impl \
   android.hardware.camera.provider@2.4-service_64 \
   vendor.qti.hardware.camera.postproc@1.0.vendor

PRODUCT_PACKAGES += \
    libcamera2ndk_vendor \
    libstdc++.vendor \
    libxml2 \
    libdng_sdk.vendor \
    libgui_vendor \
    vendor.qti.hardware.camera.device@1.0.vendor \
    vendor.qti.hardware.camera.postproc@1.0.vendor

PRODUCT_VENDOR_PROPERTIES += \
    camera.disable_zsl_mode=true

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

# Charger
PRODUCT_VENDOR_PROPERTIES += \
    ro.charger.disable_init_blank=true

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Display
#PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.display.sensortype=2 \
    vendor.display.use_layer_ext=1
 # Display
PRODUCT_VENDOR_PROPERTIES += \
    persist.sys.sf.native_mode=0 \
    ro.surface_flinger.support_kernel_idle_timer=true \
    ro.vendor.display.sensortype=2 \
    vendor.display.qdcm.mode_combine=1 \
    vendor.display.use_layer_ext=0 

PRODUCT_PACKAGES += \
    android.hardware.graphics.common-V1-ndk_platform \
    android.hardware.graphics.common-V1-ndk_platform.vendor \

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4.vendor \
    android.hardware.drm@1.4-service.clearkey

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fingerprint
ifeq ($(TARGET_HAS_FOD),true)
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.umi \
    vendor.goodix.hardware.biometrics.fingerprint@2.1.vendor \
    vendor.xiaomi.hardware.fingerprintextension@1.0.vendor \
    vendor.xiaomi.hardware.touchfeature@1.0.vendor
endif

# Force triple frame buffers
PRODUCT_VENDOR_PROPERTIES += \
     ro.surface_flinger.max_frame_buffer_acquired_buffers=3

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml


PRODUCT_VENDOR_PROPERTIES += \
    vendor.gatekeeper.disable_spu=true

# Gboard paddings
# # Keyboard height ratio and bottom padding in dp for portrait mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.height_ratio=1.075 \
    ro.com.google.ime.kb_pad_port_b=8


# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl-qti \
    android.hardware.health@2.1-service 

# HIDL
PRODUCT_PACKAGES += \
    libhwbinder.vendor

#MIUI props
PRODUCT_VENDOR_PROPERTIES += \
    ro.rom.zone=2 \
    ro.miui.has_gmscore=1 \
    ro.miui.build.region=eea

#Sound Quality improvements
PRODUCT_VENDOR_PROPERTIES += \
    af.resampler.quality=7 \
    ro.audio.resampler.psd.stopband=132 \
    ro.audio.resampler.psd.halflength=960 \
    ro.audio.resampler.psd.cutoff_percent=99 \
    ro.audio.resampler.psd.tbwcheat=0

# Disable MTE Async for system server
PRODUCT_VENDOR_PROPERTIES += arm64.memtag.process.system_server=off


#memory optimization
PRODUCT_VENDOR_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

# IFAA manager
#PRODUCT_PACKAGES += \
    org.ifaa.android.manager

#PRODUCT_BOOT_JARS += \
#    org.ifaa.android.manager

# Netflix
PRODUCT_VENDOR_PROPERTIES += \
    ro.netflix.bsp_rev=Q8250-19134-1


# Neural networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3.vendor

# VPP tunings
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/tunings.txt:$(TARGET_COPY_OUT_VENDOR)/etc/tunings.txt

# OMX
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxSwVencMpeg4 \
    libOmxEvrcEnc \
    libOmxG711Enc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidEnc \
    libOmxSwVdec \
    libOmxSwVencMpeg4 \
    libstagefrighthw \
    libc2dcolorconvert \
    liblasic

# Paranoid Doze
PRODUCT_PACKAGES += \
    ParanoidDoze \
    DeviceParts

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.sensor.pickup=xiaomi.sensor.pickup \
    ro.sensor.proximity=true

# Public libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# QSPM
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.qspm.enable=true

# QTI
TARGET_COMMON_QTI_COMPONENTS := \
    adreno \
    av \
    bt \
    display \
    gps \
    keymaster \
    media \
    nfc \
    overlay \
    perf \
    telephony \
    usb \
    wlan \
    wfd


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(LOCAL_PATH)/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(LOCAL_PATH)/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf 

#TARGET_COMMON_QTI_COMPONENTS += display


PRODUCT_PACKAGES += \
    libpiex_shim

# Display
PRODUCT_PACKAGES += \
    disable_configstore



# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor
        
# QTI Trusted UI
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0.vendor \
    android.hidl.memory.block@1.0 \
    android.hidl.memory.block@1.0.vendor

PRODUCT_PACKAGES += libwpa_client

PRODUCT_PACKAGES += acdb_get \
		    vintf

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.early_boot.sh \
    init.veth_ipa_config.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qti.dcvs.sh

PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.recovery.qcom.rc \
    init.target.rc \
    init.mi.btmac.sh \
    init.crda.sh \
    init.qcom.sdio.sh \
    fstab.qcom \
    ueventd.qcom.rc

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service \
    android.frameworks.sensorservice@1.0.vendor \
    android.frameworks.sensorservice@1.0 \
    libsensorndkbridge

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/xiaomi

# Storage
PRODUCT_VENDOR_PROPERTIES += \
    persist.sys.fuse.passthrough.enable=true \
    ro.incremental.enable=yes

$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# SSR
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.qti

# Vibrator
$(call inherit-product, hardware/xiaomi/aidl/vibrator/vibrator-vendor-product.mk)

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 30

# WLAN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wlan/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/wlan/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/qca6390/WCNSS_qcom_cfg.ini



# WiFi Display
#PRODUCT_PACKAGES += \
    libnl \
    libwfdaac_vendor

#PRODUCT_BOOT_JARS += \
#    WfdCommon

PRODUCT_COPY_FILES += $(LOCAL_PATH)/permissions/google-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google-hiddenapi-package-allowlist.xml


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

#PRODUCT_PACKAGES += \
    vndk_package

PRODUCT_VENDOR_PROPERTIES += \
    pm.dexopt.ab-ota=speed-profile \
    dalvik.vm.dexopt.secondary=true \
    ro.vendor.qti.am.reschedule_service=true \
    pm.dexopt.install=speed-profile \
    ro.sys.fw.dex2oat_thread_count=8 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.image-dex2oat-threads=4

PRODUCT_VENDOR_PROPERTIES += \
    dalvik.vm.heapstartsize=24m \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.46 \
    dalvik.vm.heapminfree=8m \
    dalvik.vm.heapmaxfree=48m

#$(call inherit-product, vendor/xiaomi/cam_meta/cam_meta-vendor.mk)
$(call inherit-product-if-exists, vendor/xiaomi/miuicamera/products/miuicamera.mk)

# Surfaceflinger
# Get non-open-source specific aspects.
#$(call inherit-product-if-exists, vendor/qcom/common/display/display-vendor.mk)
# Inherit the proprietary files
