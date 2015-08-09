# Inherit device configuration for hlte.
$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := SM-N9005

$(call inherit-product, vendor/minimal/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/hlte/device.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Enhanced NFC
$(call inherit-product, vendor/minimal/config/nfc_enhanced.mk)

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Copy hlte specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip


PRODUCT_NAME := minimal_hlte
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := hlte
PRODUCT_MODEL := Note 3
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME=samsung_hlte \
#    BUILD_ID=JZO54K \
#    BUILD_FINGERPRINT="htc/m7/m7:4.1.2/JZO54K/166937.7:user/release-keys" \
#    PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"

PRODUCT_PACKAGES += \
    Camera2 \
    Gallery2
