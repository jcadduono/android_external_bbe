LOCAL_PATH := $(call my-dir)

BBE_VERSION := "1.2.2"

bbe_src_files := bbe.c xmalloc.c buffer.c execute.c

bbe_cflags := -DVERSION=\"$(BBE_VERSION)\"

include $(CLEAR_VARS)
LOCAL_MODULE := bbe
LOCAL_SRC_FILES := $(bbe_src_files)
LOCAL_CFLAGS := $(bbe_cflags)
LOCAL_SDK_VERSION := 21
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := bbe_host
LOCAL_MODULE_STEM := bbe
LOCAL_SRC_FILES := $(bbe_src_files)
LOCAL_CFLAGS :=  $(bbe_cflags)
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)
