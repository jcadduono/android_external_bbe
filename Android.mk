LOCAL_PATH := $(call my-dir)

BBE_VERSION := "1.2.2"

include $(CLEAR_VARS)
LOCAL_MODULE := bbe
LOCAL_SRC_FILES := bbe.c xmalloc.c buffer.c execute.c
LOCAL_CFLAGS := -DVERSION=\"$(BBE_VERSION)\"
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)
