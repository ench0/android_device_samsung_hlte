$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
#$(call inherit-product, vendor/carbon/config/nfc_enhanced.mk)

# Inherit some common Broken stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Not sure we need it
$(call inherit-product, vendor/carbon/config/cm_audio.mk)
$(call inherit-product, vendor/carbon/config/themes_common.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := carbon_hlte
