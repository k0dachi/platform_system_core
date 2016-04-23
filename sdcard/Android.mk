LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := sdcard.c
LOCAL_MODULE := sdcard
LOCAL_CFLAGS := -Wall -Wno-unused-parameter -Werror

LOCAL_CFLAGS += -fno-wrapv -fsanitize=integer,object-size -fsanitize-undefined-trap-on-error
LOCAL_CLANG := true

LOCAL_SHARED_LIBRARIES := libcutils

include $(BUILD_EXECUTABLE)
