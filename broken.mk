$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit some common Broken stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Not sure we need it
$(call inherit-product, vendor/broken/config/gsm.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := broken_hlte
