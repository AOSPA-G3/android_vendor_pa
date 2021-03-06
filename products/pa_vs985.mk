# Copyright (C) 2014 ParanoidAndroid Project
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

# Check for target product

ifeq (pa_vs985,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xxhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/vs985/vs985.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs985
PRODUCT_NAME := pa_vs985
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-VS985
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="g3" PRODUCT_NAME="g3_vzw_us" BUILD_FINGERPRINT="lge/g3_vzw/g3:5.0.1/LRX21Y/150271517d422:user/release-keys" PRIVATE_BUILD_DESC="g3_vzw-user 5.0.1 LRX21Y 150271517d422 release-keys"

endif
