#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# call board specific makefile
$(call inherit-product, device/oppo/find5/apq8064.mk)

DEVICE_PACKAGE_OVERLAYS += \
	device/oppo/find5/overlay

# Get the long list of APNs
PRODUCT_COPY_FILES += \
	device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
	device/oppo/find5/ramdisk/at.rle:root/at.rle \
	device/oppo/find5/ramdisk/factorylogo.rle:root/factorylogo.rle \
	device/oppo/find5/ramdisk/fastboot.rle:root/fastboot.rle \
    device/oppo/find5/ramdisk/fstab.qcom:root/fstab.qcom \
	device/oppo/find5/ramdisk/init.at.rc:root/init.at.rc \
	device/oppo/find5/ramdisk/initlogo.rle:root/initlogo.rle \
	device/oppo/find5/ramdisk/init.oppo.usb.rc:root/init.oppo.usb.rc \
    device/oppo/find5/ramdisk/init.target.rc:root/init.target.rc \
	device/oppo/find5/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	device/oppo/find5/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	device/oppo/find5/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/oppo/find5/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/oppo/find5/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
	device/oppo/find5/ramdisk/init.rf.rc:root/init.rf.rc \
    device/oppo/find5/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
	device/oppo/find5/ramdisk/wlan.rle:root/wlan.rle \

PRODUCT_COPY_FILES += \
    device/oppo/find5/prebuilt/bootanimation.zip:/system/media/bootanimation.zip

# NFCEE access control
#ifeq ($(TARGET_BUILD_VARIANT),user)
#    NFCEE_ACCESS_PATH := device/oppo/find5/configs/nfcee_access.xml
#else
#    NFCEE_ACCESS_PATH := device/oppo/find5/configs/nfcee_access_debug.xml
#endif
#PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# oppo BT audio config
#PRODUCT_COPY_FILES += device/oppo/find5/configs/AudioBTID.csv:/system/etc/AudioBTID.csv

# QC thermald config
PRODUCT_COPY_FILES += \
	device/oppo/find5/configs/thermald-8064.conf:/system/etc/thermald-8064.conf \
	device/oppo/find5/configs/thermald-8960.conf:/system/etc/thermald-8960.conf \
	device/oppo/find5/configs/thermald-8930.conf:/system/etc/thermald-8930.conf

# vold config
PRODUCT_COPY_FILES += \
    device/oppo/find5/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/oppo/find5/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/oppo/find5/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/oppo/find5/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/oppo/find5/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3:/system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    device/oppo/find5/dsp/snd_soc_msm/snd_soc_msm_Sitar:/system/etc/snd_soc_msm/snd_soc_msm_Sitar

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/oppo/find5/keylayout/atmel_mxt_ts.kl:/system/usr/keylayout/atmel_mxt_ts.kl \
    device/oppo/find5/keylayout/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \
    device/oppo/find5/keylayout/Button_Jack.kl:/system/usr/keylayout/Button_Jack.kl \
    device/oppo/find5/keylayout/cyttsp-i2c.kl:/system/usr/keylayout/cyttsp-i2c.kl \
    device/oppo/find5/keylayout/Generic.kl:/system/usr/keylayout/Generic.kl \
    device/oppo/find5/keylayout/gpio-keys.kl:/system/usr/keylayout/gpio-keys.kl \
    device/oppo/find5/keylayout/keypad_8960.kl:/system/usr/keylayout/keypad_8960.kl \
    device/oppo/find5/keylayout/keypad_8960_liquid.kl:/system/usr/keylayout/keypad_8960_liquid.kl \
    device/oppo/find5/keylayout/philips_remote_ir.kl:/system/usr/keylayout/philips_remote_ir.kl \
    device/oppo/find5/keylayout/qwerty.kl:/system/usr/keylayout/qwerty.kl \
    device/oppo/find5/keylayout/ue_rf4ce_remote.kl:/system/usr/keylayout/rf4ce_remote.kl \
    device/oppo/find5/keylayout/Vendor_045e_Product_028e.kl:/system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/oppo/find5/keylayout/Vendor_046d_Product_c216.kl:/system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/oppo/find5/keylayout/Vendor_046d_Product_c294.kl:/system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/oppo/find5/keylayout/Vendor_046d_Product_c299.kl:/system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/oppo/find5/keylayout/Vendor_046d_Product_c532.kl:/system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/oppo/find5/keylayout/Vendor_054c_Product_0268.kl:/system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/oppo/find5/keylayout/Vendor_05ac_Product_0239.kl:/system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/oppo/find5/keylayout/Vendor_22b8_Product_093d.kl:/system/usr/keylayout/Vendor_22b8_Product_093d.kl 

# Input device config
PRODUCT_COPY_FILES += \
    device/oppo/find5/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/oppo/find5/idc/qwerty.idc:system/usr/idc/qwerty.idc

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.nfc.xml:/system/etc/permissions/android.hardware.nfc.xml \
        frameworks/base/nfc-extras/com.android.nfc_extras.xml:/system/etc/permissions/com.android.nfc_extras.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.sf.lcd_density=480 \
    ro.hdmi.enable=true \
    ro.com.google.locationfeatures=1 \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapgrowthlimit=192m \
	dalvik.vm.heapsize=256m \
	dalvik.vm.heaputilization=0.25 \
	dalvik.vm.heapidealfree=8388608 \
	dalvik.vm.heapconcurrentstart=2097152 \
    keyguard.no_require_sim=true
    

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := nosdcard

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi xxhdpi
PRODUCT_LOCALES += en_US xhdpi xxhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/oppo/find5/find5-vendor.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := find5
PRODUCT_NAME := cm_find5
PRODUCT_BRAND := oppo
PRODUCT_MODEL := FIND5
PRODUCT_MANUFACTURER := oppo
