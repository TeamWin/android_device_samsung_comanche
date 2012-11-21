# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/comanche/include

# inherit from common msm8960
-include device/samsung/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/comanche/BoardConfigVendor.mk

# Kernel
TARGET_PREBUILT_KERNEL      := device/samsung/comanche/kernel
#TARGET_KERNEL_SOURCE        := kernel/samsung/comanche_samsung
#TARGET_KERNEL_CONFIG        := comanche_rev02_defconfig
BOARD_KERNEL_CMDLINE        := console=null androidboot.hardware=qcom user_debug=31
BOARD_KERNEL_BASE           := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_KERNEL_PAGESIZE       := 2048

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/comanche/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/comanche/recovery.fstab

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5498732544
BOARD_FLASH_BLOCK_SIZE := 131072

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# Use Audience A2220 chip
BOARD_HAVE_AUDIENCE_A2220 := true

# Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Assert
TARGET_OTA_ASSERT_DEVICE := comanche,SGH-I547

# Graphics fixups
TARGET_NO_HW_VSYNC := true
#TARGET_USES_C2D_COMPOSITION := true # In qcom-common
#USE_OPENGL_RENDERER := true  # In qcom-common

# TWRP
DEVICE_RESOLUTION := 480x800
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#SP1_NAME := "boot"
#SP1_BACKUP_METHOD := image
#SP1_MOUNTABLE := 0
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"