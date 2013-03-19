# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := find5

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/find5/device_find5.mk)

# Device naming
PRODUCT_DEVICE := find5
PRODUCT_NAME := cm_find5
PRODUCT_BRAND := oppo
PRODUCT_MODEL := find5
PRODUCT_MANUFACTURER := OPPO

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=FIND5 BUILD_FINGERPRINT="OPPO/OPPO/FIND5:4.1.1/JRO03L/1357823013:user/release-keys" PRIVATE_BUILD_DESC="msm8960-user 4.1.1 JRO03L eng.oppo.20130307.170744 release-keys"
