# Copyright (C) 2021 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from xiaomi sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/umi

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true
# Fingerprint
# Gestures
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"
TARGET_USES_FOD_ZPOS := true

KERNEL_DEFCONFIG := umi_defconfig
KERNEL_LLVM_SUPPORT := true

TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# inherit from the proprietary version
include vendor/xiaomi/umi/BoardConfigVendor.mk
include vendor/xiaomi/umi-wfd/BoardConfigVendor.mk
