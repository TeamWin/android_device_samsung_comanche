## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := comancheatt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/comancheatt/device_comancheatt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := comancheatt
PRODUCT_NAME := cm_comancheatt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := comancheatt
PRODUCT_MANUFACTURER := samsung
