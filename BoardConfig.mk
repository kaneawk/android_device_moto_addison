#
# Copyright (C) 2016 The Android Open-Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8953

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Keymaster - Wait for qseecom to load
# TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Prebuilts
TARGET_PREBUILT_KERNEL := device/moto/addison/zImage
BOARD_CUSTOM_BOOTIMG_MK := device/moto/addison/mkbootimg.mk

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 vmalloc=350M androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS :=  --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --dt device/moto/addison/dt.img

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x001000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x001019000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x100000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xD5B07B000
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x010000000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Disable secure discard because it's SLOW
BOARD_SUPPRESS_SECURE_ERASE := true

# charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MOTOROLA_LOG := true

# TWRP
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 80
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
TW_NO_USB_STORAGE := true
#TW_USE_TOOLBOX    := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Debug flags
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true
