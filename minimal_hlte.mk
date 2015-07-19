$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/configs/nfc_enhanced.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/configs/telephony.mk)

$(call inherit-product, vendor/minimal/configs/gsm.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080


# Copy specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip 
#    vendor/minimal/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
#    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
#    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

PRODUCT_DEVICE := hlte
PRODUCT_NAME := minimal_hlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG-SM-9005
PRODUCT_MANUFACTURER := samsung
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Release name
PRODUCT_RELEASE_NAME := SM-N9005

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hlte TARGET_DEVICE=hlte BUILD_FINGERPRINT="samsung/hlte/hlte:4.4.2/JZO54K/I317UCAMA4:user/release-keys" PRIVATE_BUILD_DESC="hlte-user 4.4.2 JZO54K I317UCAMA4 release-keys"

PRODUCT_PACKAGES += \
    Camera2 \
    Gallery2
