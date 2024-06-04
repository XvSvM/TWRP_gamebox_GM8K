#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from walleye device
$(call inherit-product, device/google/walleye/device.mk)

PRODUCT_DEVICE := walleye
PRODUCT_NAME := twrp_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := MBOX
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_walleye-userdebug 10 QP1A.191105.004 eng.cmj.20240417.085715 test-keys"

BUILD_FINGERPRINT := google/walleye/walleye:10/QP1A.191105.004/5908170:user/release-keys