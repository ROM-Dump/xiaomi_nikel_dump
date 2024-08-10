#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from nikel device
$(call inherit-product, device/xiaomi/nikel/device.mk)

PRODUCT_DEVICE := nikel
PRODUCT_NAME := omni_nikel
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nikel-user 6.0 MRA58K V10.2.2.0.MBFCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/nikel/nikel:6.0/MRA58K/V10.2.2.0.MBFCNXM:user/test-keys
