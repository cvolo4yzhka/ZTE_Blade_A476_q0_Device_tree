SYS_TARGET_PROJECT := mssi_32_ww
SYS_TARGET_PROJECT_FOLDER := device/mediatek/system/$(SYS_TARGET_PROJECT)
MTK_TARGET_PROJECT := zte_blade_a476
MTK_TARGET_PROJECT_FOLDER := $(LOCAL_PATH)

-include $(SYS_TARGET_PROJECT_FOLDER)/sys_$(SYS_TARGET_PROJECT).mk
-include $(MTK_TARGET_PROJECT_FOLDER)/vnd_$(MTK_TARGET_PROJECT).mk

PRODUCT_NAME := full_zte_blade_a476

