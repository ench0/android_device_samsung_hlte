# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common hlte
-include device/samsung/hlte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := hltexx,SM-N9005,hlte,hlteskt,hltektt,SM-N900S,SM-N900K,hltespr,hltetmo,hltecan,N900P,N900T,N900W8

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/hlte/init/init_hlte.c
TARGET_UNIFIED_DEVICE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 11534336
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13631488
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# inherit from the proprietary version
-include vendor/samsung/hlte/BoardConfigVendor.mk

#Rom Toolchain
#PLATFORM_LINARO_4.9 := true

# Kernel
#TARGET_KERNEL_CONFIG := msm8974_sec_hlte_eur_defconfig
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=bacon user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
#BOARD_CUSTOM_BOOTIMG_MK := device/oneplus/bacon/mkbootimg.mk
# Kernel Toolchain
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-6.0/bin
#KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
# Inline kernel building
#TARGET_KERNEL_SOURCE := kernel/samsung/hlte
#BOARD_KERNEL_IMAGE_NAME := zImage-dtb
#TARGET_PREBUILT_KERNEL := device/bn/zoom2/prebuilt/boot/kernel_sdcard

#BOARD_KERNEL_BASE := 0x00000000
#BOARD_KERNEL_PAGESIZE :=  2048
#BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
#BOARD_RAMDISK_OFFSET     := 0x02000000
#BOARD_GLOBAL_CFLAGS := --param l1-cache-size=16 --param l1-cache-line-size=16 --param l2-cache-size=2048
#BOARD_GLOBAL_CPPFLAGS := --param l1-cache-size=16 --param l1-cache-line-size=16 --param l2-cache-size=2048
