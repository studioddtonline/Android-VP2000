LOCAL_PATH := $(call my-dir)

####################################################################

# When adding GL support, will have to specify this?
#-include vendor/intel/g945/Android.mk

# include more board specific stuff here? Audio params?! <shrug>


####################################################################
### Include input devices specific files

include $(CLEAR_VARS)
LOCAL_SRC_FILES := AT_Translated_Set_2_keyboard.kcm
include $(BUILD_KEY_CHAR_MAP)

define add-prebuilt-target

file := $(1)/$(2)
$$(file): $$(LOCAL_PATH)/$(2) | $$(ACP)
	$$(transform-prebuilt-to-target)
ALL_PREBUILT += $$(file)

endef

$(eval $(call add-prebuilt-target,$(TARGET_ROOT_OUT),init.rc))
$(INSTALLED_RAMDISK_TARGET): $(file)
$(eval $(call add-prebuilt-target,$(TARGET_ROOT_OUT),init.vp2000.rc))
$(INSTALLED_RAMDISK_TARGET): $(file)
$(eval $(call add-prebuilt-target,$(TARGET_OUT_DATA_ETC),init.vp2000.sh))
$(eval $(call add-prebuilt-target,$(TARGET_OUT_KEYLAYOUT),AT_Translated_Set_2_keyboard.kl))
$(eval $(call add-prebuilt-target,$(TARGET_OUT)/fonts,DroidSansJapanese.ttf))

ALL_APPS := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/app/*))
$(eval $(foreach f,$(ALL_APPS),$(call add-prebuilt-target,$(TARGET_OUT),$(f))))
$(INSTALLED_RAMDISK_TARGET): $(file)
