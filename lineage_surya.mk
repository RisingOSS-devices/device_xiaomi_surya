#
# Copyright (C) 2020-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Rising flags
RISING_DEVICE := surya
RISING_MAINTAINER := rxuglr
TARGET_USE_PIXEL_FINGERPRINT := true

# Device identifier
PRODUCT_NAME := lineage_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Blur
TARGET_ENABLE_BLUR := true

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Disable/Enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Exclude AudioFx from build
TARGET_EXCLUDES_AUDIOFX := true

# Aperture
TARGET_BUILD_APERTURE_CAMERA := true

#Gapps
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true
$(call inherit-product-if-exists, vendor/gms/produtcs/gms.mk)
