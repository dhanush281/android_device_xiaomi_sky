#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common 2by2project configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

# 2by2 flags
WITH_GMS := true
CUSTOM_BUILD_TYPE := OFFICIAL
CUSTOM_MAINTAINER := Dhanush
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_EXTRA_APPS := false
TARGET_EXCLUDES_AUDIOFX := true
FORCE_AOSP_CONTACTS := false
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2460

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := lineage_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
