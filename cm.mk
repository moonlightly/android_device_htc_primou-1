$(call inherit-product, device/htc/primou/full_primou.mk)

PRODUCT_RELEASE_NAME := One_V

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primou BUILD_FINGERPRINT=htc_europe/htc_primou/primou:4.1.2/JDQ39/330937:user/user-debug PRIVATE_BUILD_DESC="4.2.2 JDQ39 330937 release-keys"

PRODUCT_NAME := cm_primou
PRODUCT_DEVICE := primou
