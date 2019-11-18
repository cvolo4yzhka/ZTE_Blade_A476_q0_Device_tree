# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from those products. Most specific first.

# Set target and base project for flavor build
MTK_TARGET_PROJECT := $(subst full_,,$(TARGET_PRODUCT))
MTK_BASE_PROJECT := $(MTK_TARGET_PROJECT)
MTK_PROJECT_FOLDER := $(LOCAL_PATH)
MTK_TARGET_PROJECT_FOLDER := $(LOCAL_PATH)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# set locales & aapt config.
include $(LOCAL_PATH)/ProjectConfig.mk
include $(wildcard device/mediatek/build/core/mssi_fo.mk)
PRODUCT_LOCALES := ru_RU en_US

# Set those variables here to overwrite the inherited values.
PRODUCT_MANUFACTURER := ZTE
PRODUCT_NAME := full_zte_blade_a476
PRODUCT_DEVICE := $(strip $(MTK_BASE_PROJECT))
PRODUCT_MODEL := ZTE Blade A476
PRODUCT_POLICY := android.policy_phone
PRODUCT_BRAND := ZTE
BUILD_FINGERPRINT := ZTE/ZTE_Blade_A476/ZTE_Blade_A476:5.1/LMY47D/20151127.162449:user/release-keys

ifeq ($(TARGET_BUILD_VARIANT), eng)
KERNEL_DEFCONFIG ?= zte_blade_a476_defconfig
else
KERNEL_DEFCONFIG ?= zte_blade_a476_defconfig
endif
PRELOADER_TARGET_PRODUCT ?= zte_blade_a476
LK_PROJECT ?= zte_blade_a476
TRUSTY_PROJECT ?= zte_blade_a476


