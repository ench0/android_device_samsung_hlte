$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/configs/nfc_enhanced.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# APNs
PRODUCT_COPY_FILES +=  \
	vendor/minimal/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080


# Copy specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3
    #vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    #vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    #frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Inherit drm blobs eye
-include vendor/minimal/products/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_hlte
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := hlte
PRODUCT_MODEL := Note 3
PRODUCT_MANUFACTURER := Samsung

#TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Release name
#PRODUCT_RELEASE_NAME := SM-N9005

PRODUCT_PACKAGES += \
    Camera2 \
    Gallery2

#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803
#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5803/D5803:5.0.2/23.1.A.1.28/151083418:user/release-keys
#PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5803-user 5.0.2 23.1.A.1.28 151083418 release-keys"
