# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1  lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/yu/lettuce/dt.img
BOARD_CUSTOM_BOOTIMG_MK := device/yu/lettuce/mkbootimg.mk

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 67108864
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1304215508
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Vendor Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERY_SWIPE := true
TARGET_PREBUILT_KERNEL := device/yu/lettuce/kernel
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP Build Flags
TARGET_RECOVERY_FSTAB := device/yu/lettuce/recovery/etc/twrp.fstab
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := false
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Multirom
DEVICE_RESOLUTION := 768x1280
MR_INPUT_TYPE := type_b
MR_USE_MROM_FSTAB := false
MR_INIT_DEVICES := device/yu/lettuce/multirom/mr_init_devices.c
MR_DEVICE_VARIANTS := YUPHORIA
MR_DPI := hdpi
MR_DPI_FONT := 216
MR_FSTAB := device/yu/lettuce/recovery/etc/twrp.fstab
MR_KEXEC_MEM_MIN := 0x0
MR_DEVICE_HOOKS := device/yu/lettuce/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 5
TARGET_RECOVERY_IS_MULTIROM := true
MR_PIXEL_FORMAT := "ABGR_8888"
