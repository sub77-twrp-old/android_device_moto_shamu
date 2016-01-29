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

# This file includes all definitions that apply to ALL shamu devices, and
# are also specific to shamu devices
#
# Everything in this directory will become public


ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/moto/shamu/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/moto/shamu/twrp.fstab:recovery/root/etc/twrp.fstab \
    device/moto/shamu/vendor/firmware/keymaster/keymaster.b00:recovery/root/vendor/firmware/keymaster/keymaster.b00 \
    device/moto/shamu/vendor/firmware/keymaster/keymaster.b01:recovery/root/vendor/firmware/firmware/keymaster/firmware/keymaster.b01 \
    device/moto/shamu/vendor/firmware/keymaster/keymaster.b02:recovery/root/vendor/firmware/firmware/keymaster/firmware/keymaster.b02 \
    device/moto/shamu/vendor/firmware/keymaster/keymaster.b03:recovery/root/vendor/firmware/firmware/keymaster/firmware/keymaster.b03 \
    device/moto/shamu/vendor/firmware/keymaster/keymaster.mdt:recovery/root/vendor/firmware/keymaster/keymaster.mdt \
    device/moto/shamu/vendor/lib/libQSEEComAPI.so:recovery/root/sbin/libQSEEComAPI.so \
    device/moto/shamu/vendor/lib/hw/keystore.msm8084.so::recovery/root/vendor/lib/hw/keystore.msm8084.so
    
PRODUCT_COPY_FILES += \
    device/moto/shamu/init.shamu.rc:root/init.shamu.rc \
    device/moto/shamu/init.shamu.power.rc:root/init.shamu.power.rc \
    device/moto/shamu/init.shamu.usb.rc:root/init.shamu.usb.rc \
    device/moto/shamu/fstab.shamu:root/fstab.shamu \
    device/moto/shamu/ueventd.shamu.rc:root/ueventd.shamu.rc

# Touch firmware updater
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.mmi.touch.sh:root/init.mmi.touch.sh

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += atmel.fw.apq8084

# OEM Package for RIL
PRODUCT_PACKAGES += \
    qmi_motext_hook

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images
