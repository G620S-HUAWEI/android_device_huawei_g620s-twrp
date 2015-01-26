LOCAL_PATH := device/huawei/g620s

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/recovery/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/recovery/init:root/init \
    $(LOCAL_PATH)/recovery/charger:root/charger \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := aquarise5
