## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := comanche

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/comanche/device_comanche.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := comanche
PRODUCT_NAME := cm_comanche
PRODUCT_BRAND := samsung
PRODUCT_MODEL := comanche
PRODUCT_MANUFACTURER := samsung
