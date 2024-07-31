#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ASUS_AI2205 device
$(call inherit-product, device/asus/ASUS_AI2205/device.mk)

PRODUCT_DEVICE := ASUS_AI2205
PRODUCT_NAME := lineage_ASUS_AI2205
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_AI2205
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WW_AI2205-user 14 UKQ1.230917.001 34.1010.0820.70-0 release-keys"

BUILD_FINGERPRINT := asus/WW_AI2205/ASUS_AI2205:14/UKQ1.230917.001/34.1010.0820.70-0:user/release-keys
