$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/nameless/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/nameless/config/common.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := nameless_hlte

PRODUCT_COPY_FILES += \
    vendor/nameless/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip
