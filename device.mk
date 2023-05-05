# Copyright 2014 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=420

# AB Partitions
AB_OTA_PARTITIONS += \
    system_ext \
    vendor_boot

# Device characteristics
DEVICE_CHARACTERISTICS := ufs

# Device path
DEVICE_PATH := device/motorola/rhode/rootdir

# Fingerprint
TARGET_USES_EGISTEC_FINGERPRINT := true
TARGET_USES_FOCAL_FINGERPRINT := true

# Modules
BOOT_KERNEL_MODULES := \
    cw2217b_fg.ko \
    sm5602_fg_mmi.ko \
    bq2589x_charger.ko \
    bq2597x_mmi_iio.ko \
    sgm4154x_charger.ko \
    tcpc_sgm7220.ko \
    tcpc_rt1711h.ko \
    rt_pd_manager.ko

# NFC
TARGET_USES_SEC_NFC := true

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/sm4250-common/platform.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/motorola/rhode/rhode-vendor.mk)
