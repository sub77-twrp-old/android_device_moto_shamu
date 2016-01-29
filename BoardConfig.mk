#
# Copyright (C) 2014 The Android Open-Source Project
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

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_NO_BOOTLOADER := true
TARGET_PREBUILT_KERNEL := device/moto/shamu/kernel
TARGET_KERNEL_SOURCE :=

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=shamu msm_rtb.filter=0x37 ehci-hcd.park=3 utags.blkdev=/dev/block/platform/msm_sdcc.1/by-name/utags utags.backup=/dev/block/platform/msm_sdcc.1/by-name/utagsBackup coherent_pool=8M

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset BOARD_RAMDISK_OFFSET --tags_offset BOARD_KERNEL_TAGS_OFFSET

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8084
TARGET_BOOTLOADER_BOARD_NAME := shamu
TARGET_NO_RPC := true

TARGET_BOARD_INFO_FILE := device/moto/shamu/board-info.txt

USE_OPENGL_RENDERER := true
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
TARGET_USES_ION := true

TARGET_TOUCHBOOST_FREQUENCY := 1500
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16793600
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_OEMIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25253773312
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_NEEDS_LZMA_MINIGZIP := true

BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_RECOVERY_FSTAB = device/moto/shamu/fstab.shamu

TARGET_RELEASETOOLS_EXTENSIONS := device/moto/shamu

# Enable workaround for slow rom flash
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP
TW_CUSTOM_THEME := device/moto/shamu/twres
DEVICE_RESOLUTION := 1440x2560
TW_INCLUDE_L_CRYPTO := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

# MultiROM config. MultiROM also uses parts of TWRP config
#MR_DEVICE_SPECIFIC_VERSION := f
MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/moto/shamu/multirom/mr_init_devices.c
MR_DPI := xxhdpi
MR_DPI_FONT := 435
MR_FSTAB := device/moto/shamu/twrp.fstab
MR_KEXEC_MEM_MIN := 0x20000000
MR_KEXEC_DTB := true
#MR_INFOS := device/moto/shamu/multirom/infos
MR_DEVICE_HOOKS := device/moto/shamu/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 5
MR_PIXEL_FORMAT := "RGBX_8888"
MR_ENCRYPTION := true
MR_ENCRYPTION_SETUP_SCRIPT := device/moto/shamu/multirom/mr_cp_crypto.sh
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/moto/shamu/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888

