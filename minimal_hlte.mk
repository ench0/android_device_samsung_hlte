$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/configs/nfc_enhanced.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/configs/telephony.mk)

$(call inherit-product, vendor/minimal/configs/gsm.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

TARGET_CONTINUOUS_SPLASH_ENABLED := true


PRODUCT_DEVICE := hlte
PRODUCT_NAME := minimal_hlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG-SM-N9005
PRODUCT_MANUFACTURER := samsung

# Release name
PRODUCT_RELEASE_NAME := hlte

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hlte TARGET_DEVICE=hlte BUILD_FINGERPRINT="samsung/hlte/hlte:4.4.2/JZO54K/I317UCAMA4:user/release-keys" PRIVATE_BUILD_DESC="hlte-user 4.4.2 JZO54K I317UCAMA4 release-keys"

PRODUCT_PACKAGES += \
    Camera2 \
    Gallery2
