$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/validus/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/validus/config/common_full_phone.mk)
$(call inherit-product, vendor/validus/config/common_versions.mk)
$(call inherit-product, vendor/validus/config/themes_common.mk)
$(call inherit-product, vendor/validus/config/cm_audio.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := validus_hlte

#PRODUCT_COPY_FILES += \
#    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
