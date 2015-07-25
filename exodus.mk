$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/exodus/config/nfc_enhanced.mk)

# Inherit some common Broken stuff.
$(call inherit-product, vendor/exodus/config/common_full_phone.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := exodus_hlte

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := hlte

TARGET_CONTINUOUS_SPLASH_ENABLED := true
