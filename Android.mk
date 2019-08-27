# Copyright (C) 2017-2019 The LineageOS Project
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

# This file is generated by device/samsung/universal8895-common/setup-makefiles.sh

LOCAL_PATH := $(call my-dir)

ifneq ($(filter dreamlte dream2lte greatlte,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE := HotwordEnrollmentOKGoogleExCORTEXM4
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/priv-app/HotwordEnrollmentOKGoogleExCORTEXM4/HotwordEnrollmentOKGoogleExCORTEXM4.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := HotwordEnrollmentXGoogleExCORTEXM4
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/priv-app/HotwordEnrollmentXGoogleExCORTEXM4/HotwordEnrollmentXGoogleExCORTEXM4.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libGLES_mali
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/egl/libGLES_mali.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/egl/libGLES_mali.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH_32 := $($(TARGET_2ND_ARCH_VAR_PREFIX)TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl

SYMLINKS := $(TARGET_OUT)/vendor
$(SYMLINKS):
	@echo "Symlink: vulkan.exynos5.so"
	@mkdir -p $@/lib/hw
	@mkdir -p $@/lib64/hw
	$(hide) ln -sf ../egl/libGLES_mali.so $@/lib/hw/vulkan.exynos5.so
	$(hide) ln -sf ../egl/libGLES_mali.so $@/lib64/hw/vulkan.exynos5.so
	@echo "Symlink: libOpenCL.so"
	$(hide) ln -sf egl/libGLES_mali.so $@/lib/libOpenCL.so
	$(hide) ln -sf egl/libGLES_mali.so $@/lib64/libOpenCL.so
	@echo "Symlink: libOpenCL.so.1"
	$(hide) ln -sf egl/libGLES_mali.so $@/lib/libOpenCL.so.1
	$(hide) ln -sf egl/libGLES_mali.so $@/lib64/libOpenCL.so.1
	@echo "Symlink: libOpenCL.so.1.1"
	$(hide) ln -sf egl/libGLES_mali.so $@/lib/libOpenCL.so.1.1
	$(hide) ln -sf egl/libGLES_mali.so $@/lib64/libOpenCL.so.1.1

ALL_MODULES.$(LOCAL_MODULE).INSTALLED := \
	$(ALL_MODULES.$(LOCAL_MODULE).INSTALLED) $(SYMLINKS)

include $(BUILD_PREBUILT)

endif
