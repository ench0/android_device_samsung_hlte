$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
#$(call inherit-product, vendor/omni/config/nfc_enhanced.mk)

# Inherit some common Broken stuff.
$(call inherit-product, vendor/axxion/config/common.mk)

# Not sure we need it
$(call inherit-product, vendor/axxion/config/gsm.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := axxion_hlte
