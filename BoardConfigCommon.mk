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

# Include path
BOARD_SKIP_ANDROID_DOC_BUILD := true

USE_CAMERA_STUB := true

TARGET_SPECIFIC_HEADER_PATH := device/oppo/find5/include

BOARD_VENDOR := oppo

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD		:= true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio   
BOARD_USES_ALSA_AUDIO 				:= true
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER	:= true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
#TARGET_PROVIDES_CAMERA_HAL := true

# Display
#USES_DISPLAY_VARIANT := true

# GPS
BOARD_USES_QCOM_GPS := true

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
BUILD_EMULATOR_OPENGL := false
TARGET_NO_HW_VSYNC := true
#BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_USES_C2D_COMPOSITION := true
BOARD_EGL_CFG := device/oppo/find5/configs/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_OVERLAY := true
TARGET_USES_ION := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn 
#WPA_BUILD_HOSTAPD := true
#BOARD_LEGACY_NL80211_STA_EVENTS := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#WIFI_DRIVER_FW_PATH_AP := "ap"
#WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_NAME := prima_wlan
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wifi/prima_wlan.ko"

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
