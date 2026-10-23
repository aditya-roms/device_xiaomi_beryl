#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Lunaris Build Flags
WITH_GMS := true
WITH_BCR := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_USE_GPHOTOS := false
BYPASS_CHARGE_SUPPORTED := false
TARGET_ENABLE_BLUR := false
TARGET_CUSTOM_UDFPS := true
SURFACE_FLINGER_BOOST := true
USE_REALITY_ENGINE := false
USE_ADVANCED_DISPLAY_COLOR := true
WITH_GMS_COMMS_SUITE := false
WITH_PIXEL_LAUNCHER := false
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_BOOT_ANIMATION_RES := 1080

# SurfaceFlinger refresh rates
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from beryl device
$(call inherit-product, device/xiaomi/beryl/device.mk)

PRODUCT_DEVICE := beryl
PRODUCT_NAME := lineage_beryl
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 14 5G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 16 BP2A.250605.031.A3 OS3.0.1.0.WOQMIXM release-keys" \
    BuildFingerprint=Redmi/beryl/beryl:16/BP2A.250605.031.A3/OS3.0.1.0.WOQMIXM:user/release-keys