$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/flex/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/flex/config/common_full_phone.mk)
$(call inherit-product, vendor/flex/config/cm_audio.mk)
$(call inherit-product, vendor/flex/config/themes_common.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := flex_hlte

#PRODUCT_COPY_FILES += \
#    vendor/flex/prebuilt/common/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
