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


-include device/oppo/find5/BoardConfigCommon.mk

BOARD_SKIP_ANDROID_DOC_BUILD := true

USE_CAMERA_STUB := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := find5 
BOARD_HAS_NO_SELECT_BUTTON 	:= true
BOARD_HAS_LARGE_FILESYSTEM 	:= true

# Boot animation
TARGET_SCREEN_HEIGHT 		:= 1920
TARGET_SCREEN_WIDTH 		:= 1080

# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_FORCE_RAMDISK_ADDRESS := 0x82200000

TARGET_KERNEL_SOURCE := kernel/oppo/find5
TARGET_KERNEL_CONFIG := find5_defconfig

# Bluetooth

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# OPPO FIND5 PARTITION LAYOUT 
#dev:        size     erasesize name
#mmcblk0p21: 000ffa00 00000200 "misc"
#mmcblk0p20: 00fffe00 00000200 "recovery"
#mmcblk0p19: 01000000 00000200 "boot"
#mmcblk0p32: 73fffc00 00000200 "system"
#mmcblk0p28: 00140200 00000200 "local"
#mmcblk0p33: 27fffe00 00000200 "cache"
#mmcblk0p34: 2e8000000 00000200 "userdata"
#mmcblk0p24: 01400000 00000200 "devlog"
#mmcblk0p26: 00040000 00000200 "pdata"
#mmcblk0p29: 00010000 00000200 "extra"
#mmcblk0p16: 03200200 00000200 "radio"
#mmcblk0p17: 00a00000 00000200 "adsp"
#mmcblk0p15: 00100000 00000200 "dsps"
#mmcblk0p18: 007ffa00 00000200 "radio_config"
#mmcblk0p22: 00400000 00000200 "modem_st1"
#mmcblk0p23: 00400000 00000200 "modem_st2"
#mmcblk0p30: 00100000 00000200 "cdma_record"
#mmcblk0p31: 06069e00 00000200 "reserve"


# Filesystem
TARGET_USERIMAGES_USE_EXT4 		:= true
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1946156032
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 12482248704
BOARD_FLASH_BLOCK_SIZE 			:= 131072
BOARD_VOLD_MAX_PARTITIONS 		:= 36
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR 	:= true

BOARD_WANTS_EMMC_BOOT := true
BOARD_SUPPRESS_EMMC_WIPE := true
