#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=a10
MANUFACTURER=allwinner

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip lib/modules/hv2605.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libEGL_mali.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv1_CM_mali.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv2_mali.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/audio.primary.sun4i.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/gralloc.sun4i.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/hwcomposer.sun4i.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/lights.sun4i.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/hw/sensors.exDroid.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libMali.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libUMP.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/bma250.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/gc0308.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/goodix_touch.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/gt2005.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/mali.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/nano_if.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/nano_ksdio.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/sun4i-ir.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/sun4i-vibrator.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/sun4i_csi0.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/sun4i_csi1.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/ump.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/videobuf-core.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/videobuf-dma-contig.ko -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/lib/modules/x_mac.axf -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/keylayout/hv_keypad.kl -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/keylayout/sun4i-ir.kl -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ../../../${DEVICE}_update.zip system/usr/keylayout/sun4i-keyboard.kl -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/unzip-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
#PRODUCT_COPY_FILES := \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/XXX:obj/lib/XXX

# All the blobs necessary for a10
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hv2605.ko:root/lib/modules/hv2605.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_mali.so:system/lib/egl/libEGL_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/audio.primary.sun4i.so:system/lib/hw/audio.primary.sun4i.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.sun4i.so:system/lib/hw/gralloc.sun4i.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hwcomposer.sun4i.so:system/lib/hw/hwcomposer.sun4i.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lights.sun4i.so:system/lib/hw/lights.sun4i.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.exDroid.so:system/lib/hw/sensors.exDroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libMali.so:system/lib/libMali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libUMP.so:system/lib/libUMP.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bma250.ko:system/lib/modules/bma250.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gc0308.ko:system/lib/modules/gc0308.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/goodix_touch.ko:system/lib/modules/goodix_touch.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gt2005.ko:system/lib/modules/gt2005.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/mali.ko:system/lib/modules/mali.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/nano_if.ko:system/lib/modules/nano_if.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/nano_ksdio.ko:system/lib/modules/nano_ksdio.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-ir.ko:system/lib/modules/sun4i-ir.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-vibrator.ko:system/lib/modules/sun4i-vibrator.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i_csi0.ko:system/lib/modules/sun4i_csi0.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i_csi1.ko:system/lib/modules/sun4i_csi1.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ump.ko:system/lib/modules/ump.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/videobuf-core.ko:system/lib/modules/videobuf-core.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/videobuf-dma-contig.ko:system/lib/modules/videobuf-dma-contig.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/x_mac.axf:system/lib/modules/x_mac.axf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hv_keypad.kl:system/usr/keylayout/hv_keypad.kl \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-ir.kl:system/usr/keylayout/sun4i-ir.kl \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl

# All the apks necessary for a10
#PRODUCT_PACKAGES += \\
#    XXX

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/Android.mk
# Copyright (C) 2011 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/unzip-files.sh - DO NOT EDIT

ifeq (\$(TARGET_DEVICE),a10)
LOCAL_PATH:=\$(call my-dir)

# Module makefile rules for apks on a10

# XXX

#include \$(CLEAR_VARS)

#LOCAL_MODULE := XXX
#LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
#include \$(BUILD_PREBUILT)

endif

EOF

./setup-makefiles.sh
