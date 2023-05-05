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

# Platform
PRODUCT_PLATFORM := bengal
include device/motorola/sm4250-common/PlatformConfig.mk

# Boot Header
BOARD_BOOT_HEADER_VERSION := 3

# Device characteristics
DEVICE_CHARACTERISTICS := ufs

# Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := \
    touchscreen_mmi.ko \
    adsp_loader_dlkm.ko \
    apr_dlkm.ko \
    aw882xx_dlkm.ko \
    bolero_cdc_dlkm.ko \
    fs16xx_dlkm.ko \
    goodix_brl_mmi.ko \
    focaltech_v3.ko \
    machine_dlkm.ko \
    mbhc_dlkm.ko \
    native_dlkm.ko \
    pinctrl_lpi_dlkm.ko \
    platform_dlkm.ko \
    pm2250_spmi_dlkm.ko \
    q6_dlkm.ko \
    q6_notifier_dlkm.ko \
    q6_pdr_dlkm.ko \
    rouleur_dlkm.ko \
    rouleur_slave_dlkm.ko \
    rx_macro_dlkm.ko \
    snd_event_dlkm.ko \
    stub_dlkm.ko \
    swr_ctrl_dlkm.ko \
    swr_dlkm.ko \
    synaptics_v2_mmi.ko \
    tx_macro_dlkm.ko \
    usf_dlkm.ko \
    va_macro_dlkm.ko \
    wcd937x_dlkm.ko \
    wcd937x_slave_dlkm.ko \
    wcd9xxx_dlkm.ko \
    wcd_core_dlkm.ko \
    wsa881x_analog_dlkm.ko

BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := \
    cw2217b_fg.ko \
    sm5602_fg_mmi.ko \
    bq2589x_charger.ko \
    bq2597x_mmi_iio.ko \
    sgm4154x_charger.ko \
    tcpc_sgm7220.ko \
    tcpc_rt1711h.ko \
    rt_pd_manager.ko

# Partition information
BOARD_SUPER_PARTITION_SIZE := 7583301632
BOARD_SUPER_PARTITION_GROUPS := mot_dynamic_partitions
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)

# DYNAMIC_PARTITIONS_SIZE = (SUPER_PARTITION_SIZE / 2) - 4MB
BOARD_MOT_DYNAMIC_PARTITIONS_SIZE := 3790659784
BOARD_MOT_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system_ext \
    system \
    product \
    vendor

# Build system_ext image
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4

# This target has no recovery partition
TARGET_NO_RECOVERY := true
