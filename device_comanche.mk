$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/comanche/comanche-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/comanche/overlay

LOCAL_PATH := device/samsung/comanche
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/initlogo.rle:recovery/root/initlogo.rle \
    $(LOCAL_PATH)/init.qcom.lpm_boot.sh:recovery/root/init.qcom.lpm_boot.sh \
    $(LOCAL_PATH)/init.qcom.sh:recovery/root/init.qcom.sh \
    $(LOCAL_PATH)/init.qcom.usb.sh:recovery/root/init.qcom.usb.sh 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_comanche
PRODUCT_DEVICE := comanche
