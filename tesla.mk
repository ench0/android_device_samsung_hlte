$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/tesla/config/nfc_enhanced.mk)

# Inherit some common Broken stuff.
$(call inherit-product, vendor/tesla/config/common_full_phone.mk)

# Not actually needed, includes stk (sim toolkit) that is already included in the one just above :)
#$(call inherit-product, vendor/tesla/config/gsm.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := tesla_hlte

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := hlte

TARGET_CONTINUOUS_SPLASH_ENABLED := true
