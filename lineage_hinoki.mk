# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
DEVICE_RESOLUTION := 720x1280

# Product
BOARD_VENDOR :=         SONY
PRODUCT_MODEL :=        XPERIA XA1
PRODUCT_MANUFACTURER := SONY
PRODUCT_NAME :=         lineage_hinoki
PRODUCT_DEVICE :=       hinoki
PRODUCT_BRAND :=        SONY

# Google client ID property
PRODUCT_GMS_CLIENTID_BASE := android-sony

# Stock Device props
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME= hinoki \
    PRIVATE_BUILD_DESC="G3112-user 8.0.0 48.1.A.2.112 1557504422 test-keys"
    
BUILD_FINGERPRINT := "Sony/G3112/G3112:8.0.0/48.1.A.2.112/1557504422:user/test-keys"


