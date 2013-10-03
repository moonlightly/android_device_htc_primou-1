# Copyright (C) 2009 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/primou/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := primou

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=primou no_console_suspend=1
BOARD_KERNEL_BASE := 0x14300000
BOARD_KERNEL_PAGE_SIZE := 4096

TARGET_PROVIDES_LIBLIGHTS := true

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p17: 00040000 00000200 "misc"
#mmcblk0p21: 0087f400 00000200 "recovery"
#mmcblk0p22: 00400000 00000200 "boot"
#mmcblk0p25: 22dffe00 00000200 "system"
#mmcblk0p27: 12bffe00 00000200 "cache"
#mmcblk0p26: 496ffe00 00000200 "userdata"
#mmcblk0p28: 014bfe00 00000200 "devlog"
#mmcblk0p29: 00040000 00000200 "pdata"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4464304
BOARD_FLASH_BLOCK_SIZE := 262144

# Display
TARGET_QCOM_DISPLAY_VARIANT := legacy

# PMEM
TARGET_USES_PMEM := true

BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true

# PMEM
TARGET_USES_PMEM := true
BOARD_USE_QCOM_PMEM := true

TARGET_KERNEL_SOURCE := kernel/htc/primou
TARGET_KERNEL_CONFIG := ultimo_defconfig

# Bluetooth
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/primou/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := device/htc/primou/configs/libbt_vndcfg.txt

# No SDK blobs
BUILD_EMULATOR_SENSORS_MODULE := false
BUILD_EMULATOR_GPS_MODULE := false

# This is needed so CWM will function properly

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p32
BOARD_USES_MMCUTILS := false
BOARD_HAS_NO_MISC_PARTITION := false

BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_RECOVERY_FSTAB := device/htc/primou/ramdisk/fstab.primou
RECOVERY_FSTAB_VERSION := 2

# Actual UMS different from TWRP for some reason

BOARD_UMS_LUNFILE := /sys/class/android_usb/f_mass_storage/lun0/file

# Script

TARGET_RECOVERY_INITRC := device/htc/primou/recovery/init-cwm.rc
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
