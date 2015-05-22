$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/nameless/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/nameless/config/common.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := nameless_hlte

PRODUCT_COPY_FILES += \
    vendor/nameless/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Bootanimation and recovery
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH  := 1080

# NFC packages
PRODUCT_PACKAGES += \
    nfc.msm8974 \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml
