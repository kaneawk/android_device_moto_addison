#
# Copyright (C) 2016 The Android Open Source Project
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
# Inherit from some product specifics
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := addison

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_COPY_FILES += \
    device/moto/addison/kernel:kernel \
    device/moto/addison/dt.img:dt.img \
	device/moto/addison/twrp.fstab:root/etc/twrp.fstab

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_addison
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := addison
PRODUCT_MODEL := Moto Z Play
PRODUCT_MANUFACTURER := motorola