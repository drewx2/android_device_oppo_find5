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
#DDR -> /dev/block/mmcblk0p15
#aboot -> /dev/block/mmcblk0p17
#boot -> /dev/block/mmcblk0p18
#cache -> /dev/block/mmcblk0p22
#m9kefs1 -> /dev/block/mmcblk0p12
#m9kefs2 -> /dev/block/mmcblk0p13
#m9kefs3 -> /dev/block/mmcblk0p14
#m9kefsc -> /dev/block/mmcblk0p16
#misc -> /dev/block/mmcblk0p23
#modem -> /dev/block/mmcblk0p1
#modemst1 -> /dev/block/mmcblk0p8
#modemst2 -> /dev/block/mmcblk0p9
#oppodycnvbk -> /dev/block/mmcblk0p10
#oppostanvbk -> /dev/block/mmcblk0p11
#pad -> /dev/block/mmcblk0p7
#persist -> /dev/block/mmcblk0p21
#recovery -> /dev/block/mmcblk0p24
#reserve1 -> /dev/block/mmcblk0p25
#reserve2 -> /dev/block/mmcblk0p26
#reserve3 -> /dev/block/mmcblk0p27
#reserve4 -> /dev/block/mmcblk0p28
#rpm -> /dev/block/mmcblk0p5
#sbl1 -> /dev/block/mmcblk0p2
#sbl2 -> /dev/block/mmcblk0p3
#sbl3 -> /dev/block/mmcblk0p4
#sdcard -> /dev/block/mmcblk0p29
#system -> /dev/block/mmcblk0p19
#tz -> /dev/block/mmcblk0p6
#userdata -> /dev/block/mmcblk0p20



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
