$(call inherit-product, device/samsung/hlte/full_hlte.mk)

#$(call inherit-product, vendor/pa/configs/telephony.mk)
#$(call inherit-product, vendor/pa/configs/themes_common.mk)
$(call inherit-product, vendor/pa/configs/system.mk)
#$(call inherit-product, vendor/pa/configs/version.mk)
$(call inherit-product, vendor/pa/configs/pa_overrides.mk)
$(call inherit-product, vendor/pa/configs/legacy_extras.mk)
#$(call inherit-product, vendor/pa/configs/aosp_fixes.mk)



PRODUCT_DEVICE := hlte
PRODUCT_NAME := pa_hlte

# Bootanimation
PRODUCT_COPY_FILES += \
	vendor/pa/prebuilt/bootanimation/1920x1080.zip:system/media/bootanimation.zip

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device uses ultra-high-density artwork where available
PRODUCT_AAPT_CONFIG := hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi


# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

PRODUCT_NAME := pa_hlte
BOARD_VENDOR := samsung
PRODUCT_DEVICE := hlte

#PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := HLTE
TARGET_VENDOR_DEVICE_NAME := HLTE
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=HLTE PRODUCT_NAME=HLTE
