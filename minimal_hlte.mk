$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/configs/nfc_enhanced.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/configs/telephony.mk)

$(call inherit-product, vendor/minimal/configs/gsm.mk)

# Inherit common build.prop overrides
#-include vendor/minimal/products/common_versions.mk

# Not actually needed, includes stk (sim toolkit) that is already included in the one just above :)
#$(call inherit-product, vendor/tesla/config/gsm.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := minimal_hlte

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := hlte

TARGET_CONTINUOUS_SPLASH_ENABLED := true
