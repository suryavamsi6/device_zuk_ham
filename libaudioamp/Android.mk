LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
     $(call project-path-for,qcom-audio)/hal/msm8974/ \
     $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \
		 hardware/libhardware/include

LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libtfa98xx

LOCAL_SRC_FILES := audio_amplifier.c

LOCAL_MODULE := audio_amplifier.msm8974

LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
