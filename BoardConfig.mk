# Bootloader
TARGET_NO_BOOTLOADER         := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916

# Architecture
TARGET_BOARD_PLATFORM      := msm8916
TARGET_BOARD_PLATFORM_GPU  := qcom-adreno306
TARGET_ARCH                := arm
TARGET_ARCH_VARIANT        := armv7-a-neon
TARGET_CPU_ABI             := armeabi-v7a
TARGET_CPU_ABI2            := armeabi
TARGET_CPU_SMP             := true
TARGET_CPU_VARIANT         := cortex-a53
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
TARGET_PREBUILT_KERNEL       := device/huawei/g620s/kernel
TARGET_CUSTOM_KERNEL_HEADERS := device/huawei/g620s/include
BOARD_KERNEL_CMDLINE         := androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_BASE            := 0x80000000
BOARD_KERNEL_PAGESIZE        := 2048
BOARD_KERNEL_SEPARATED_DT    := true
BOARD_MKBOOTIMG_ARGS         := --dt device/huawei/g620s/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH     := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR    := true
BOARD_VOLD_MAX_PARTITIONS           := 65
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Recovery
TARGET_USERIMAGES_USE_EXT4     := true
BOARD_HAS_LARGE_FILESYSTEM     := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT   := "BGRA_8888"

# TWRP-Specific
TARGET_RECOVERY_INITRC           := device/huawei/g620s/recovery/init.rc
TARGET_RECOVERY_FSTAB            := device/huawei/g620s/recovery/etc/recovery.fstab
DEVICE_RESOLUTION                := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA          := true
TW_TARGET_USES_QCOM_BSP          := true
TW_INTERNAL_STORAGE_PATH         := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT  := "data"
TW_EXTERNAL_STORAGE_PATH         := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT  := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE      := true
TW_NO_SCREEN_TIMEOUT             := true
TW_BRIGHTNESS_PATH               := /sys/class/leds/lcd-backlight/brightness
