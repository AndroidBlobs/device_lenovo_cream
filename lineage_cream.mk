# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cream device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lenovo
PRODUCT_DEVICE := cream
PRODUCT_MANUFACTURER := lenovo
PRODUCT_NAME := lineage_cream
PRODUCT_MODEL := Lenovo Z6 Pro 5G

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME := cream
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="cream-user 9 PKQ1.190908.001 11.3.245_191210 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Lenovo/cream/cream:9/PKQ1.190908.001/11.3.245_191210:user/release-keys
