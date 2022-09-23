# Copyright (C) 2021 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-pa

PRODUCT_PACKAGES += \
    AOSPAUmiFrameworks \
    AOSPAUmiSettings \
    AOSPAUmiSystemUI \
    UmiFrameworks \
    UmiSystemUI

# Fingerprint
TARGET_HAS_FOD := true

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_PACKAGES += audio_amplifier.sm6150
# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_overlay_dynamic.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_cdp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml \
    $(LOCAL_PATH)/audio/audio_policy_engine_default_stream_volumes_mi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_default_stream_volumes_mi.xml \
    $(LOCAL_PATH)/audio/audio_policy_engine_product_strategies.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_product_strategies.xml \
    $(LOCAL_PATH)/audio/audio_policy_engine_stream_volumes_mi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_stream_volumes_mi.xml
# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# Vendor
$(call inherit-product, vendor/xiaomi/umi/umi-vendor.mk)
$(call inherit-product, vendor/xiaomi/soundfw/soundfw-vendor.mk)
$(call inherit-product, vendor/xiaomi/umi-wfd/umi-wfd-vendor.mk)
$(call inherit-product, vendor/xiaomi/umiqcb/umiqcb-vendor.mk)
$(call inherit-product, vendor/xiaomi/umi_qtibt/umi_qtibt-vendor.mk)
$(call inherit-product, vendor/xiaomi/umimi/umimi-vendor.mk)
$(call inherit-product, vendor/xiaomi/datami2/datami2-vendor.mk)
$(call inherit-product, vendor/xiaomi/umimdm/umimdm-vendor.mk)
