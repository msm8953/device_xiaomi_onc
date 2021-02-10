#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onc device
$(call inherit-product, device/xiaomi/onc/device.mk)

# Inherit some AEX stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_onc
PRODUCT_DEVICE := onc
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="onc" \
    TARGET_DEVICE="onc"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
