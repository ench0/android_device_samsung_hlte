$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/eos/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/eos/config/common_full_phone.mk)
$(call inherit-product, vendor/eos/config/telephony.mk) 

PRODUCT_DEVICE := hlte
PRODUCT_NAME := eos_hlte

PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip
