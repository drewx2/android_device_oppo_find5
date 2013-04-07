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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# overlays
DEVICE_PACKAGE_OVERLAYS += device/oppo/find5/overlay

# Boot ramdisk setup
#PRODUCT_PACKAGES += \
#    init.qcom.sh \
#    init.qcom.usb.rc \
#    init.qcom.rc \
#    ueventd.qcom.rc

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/oppo/find5/configs/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    device/oppo/find5/configs/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/oppo/find5/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/oppo/find5/configs/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/oppo/find5/configs/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/oppo/find5/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/oppo/find5/configs/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    device/oppo/find5/configs/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/oppo/find5/configs/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/oppo/find5/configs/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
    device/oppo/find5/configs/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/oppo/find5/configs/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/oppo/find5/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:/system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:/system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:/system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:/system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Audio
PRODUCT_PACKAGES += \
	audio.primary.default \
	audio.primary.msm8960 \
	audio.a2dp.default \
    audio_policy.default \
	audio_policy.msm8960 \
    libalsa-intf \
    libaudioutils

# Bluetooth
PRODUCT_PACKAGES += \
    hci_qcomm_init

# Camera
#PRODUCT_PACKAGES += \
    camera.msm8960

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.default \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libhwcexternal \
    libhwcservice \
    libmemalloc \
    liboverlay \
	libqdMetaData \
    libqdutils \
    libtilerenderer
    
# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.default

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    choice_fn \
    power_test \
    offmode_charging \
    detect_key

# GPS config
PRODUCT_COPY_FILES += \
    device/oppo/find5/configs/gps.conf:system/etc/gps.conf

# Thermal config
#PRODUCT_COPY_FILES += \
#    device/oppo/find5/configs/thermald.conf:system/etc/thermald.conf

# WPA supplicant config
PRODUCT_COPY_FILES += \
    device/oppo/find5/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Media config
PRODUCT_COPY_FILES += \
    device/oppo/find5/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/oppo/find5/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/oppo/find5/configs/media_codecs.xml:system/etc/media_codecs.xml

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
	debug.mdpcomp.maxlayer=2 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    lpa.decode=false \
	mpq.audio.decode=true \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    persist.gps.qmienabled=true \
    persist.thermal.monitor=true \
    ro.baseband.arch=msm \
    ro.qualcomm.bt.hci_transport=smd \
    ro.opengles.version=131072 \
    ro.product.wireless=WCN3660 \
    ro.qc.sdk.audio.fluencetype=fluence \
    ro.qualcomm.bt.hci_transport=smd \
    ro.use_data_netmgrd=true \
    wifi.interface=wlan0
