LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := yapb

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
LOCAL_MODULE_FILENAME = libyapb_hardfp
endif

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include \

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_SRC_FILES := \
	basecode.cpp \
	chatlib.cpp \
	combat.cpp \
	globals.cpp \
	engine.cpp \
	precomp.cpp \
	waypoint.cpp \
	interface.cpp \
	navigate.cpp \
	support.cpp \
	netmsg.cpp \
	callbacks.cpp \
	experience.cpp \
	control.cpp \

LOCAL_CFLAGS += -O2 -std=c++11 -DLINUX -D_LINUX -DPOSIX -pipe -fno-strict-aliasing -Wall -Werror
LOCAL_CPPFLAGS += -fno-exceptions -fno-rtti

include $(BUILD_SHARED_LIBRARY)
