#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common everest configurations
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

#everest flags
EVEREST_BUILD_TYPE := OFFICIAL
EVEREST_MAINTAINER := "Dhanush"

# Blur
TARGET_SUPPORTS_BLUR := true

# Gapps
WITH_GAPPS := true

# UDFPS
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true 

# LAUNCHER 3 in GAPPS build
TARGET_INCLUDE_PIXEL_LAUNCHER := false

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := everest_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
