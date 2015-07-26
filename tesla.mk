$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Enhanced NFC
$(call inherit-product, vendor/tesla/config/nfc_enhanced.mk)

# Inherit some common Broken stuff.
$(call inherit-product, vendor/tesla/config/common_full_phone.mk)

# Not actually needed, includes stk (sim toolkit) that is already included in the one just above :)
#$(call inherit-product, vendor/tesla/config/gsm.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := tesla_hlte

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := hlte

TARGET_CONTINUOUS_SPLASH_ENABLED := true





PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Inherit AOSP device configuration for bacon.
$(call inherit-product, device/oneplus/bacon/full_bacon.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Telephony
$(call inherit-product, vendor/xenonhd/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/xenonhd/configs/nfc_enhanced.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Copy hammerhead specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_bacon
PRODUCT_BRAND := oneplus
PRODUCT_DEVICE := bacon
PRODUCT_MODEL := A0001
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=oneplus/bacon/A0001:5.1/LMY47O/YNG1TAS2I3:user/release-keys PRIVATE_BUILD_DESC="bacon-user 5.1 LMY47O YNG1TAS2I3 release-keys"
