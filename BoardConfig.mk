#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from Exynos7870-common
include device/samsung/exynos7870-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/j7xelte

TARGET_OTA_ASSERT_DEVICE := j7xelte

TARGET_KERNEL_CONFIG := lineage-j7xelte_defconfig

# Virtual Display
BOARD_USES_VIRTUAL_DISPLAY := true

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Gralloc
TARGET_USES_GRALLOC1_ADAPTER := true

# ION
TARGET_USES_ION := true

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

# inherit the splitted configs
-include $(LOCAL_PATH)/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/j7xelte/BoardConfigVendor.mk
