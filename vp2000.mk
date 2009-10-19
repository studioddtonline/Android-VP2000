# TODO: Need to setup a proper inheritance tree for this class of
# products...
#
# For now, reuse the generic (phone) infrastructure.
#

PRODUCT_PACKAGES := \
	framework-res \
	Browser \
	Launcher \
	HTMLViewer \
	ApplicationsProvider \
	ContactsProvider \
	DownloadProvider \
	GoogleSearch \
	SettingsProvider \
	UserDictionaryProvider \
	PackageInstaller \
	Bugreport \
	AlarmClock \
	AlarmProvider \
	LatinIME \
	Settings \
	ConnectBot \
	Email \
	RSSReader \
	Provision \
	ApiDemos \
	OpenWnn \
	libWnnEngDic \
	libWnnJpnDic \
	libwnndict

PRODUCT_LOCALES := \
	ja_JP \
	en_US

PRODUCT_BRAND := generic
PRODUCT_NAME := vp2000
PRODUCT_DEVICE := vp2000
PRODUCT_POLICY := android.policy_mid
PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=1 \
	ro.com.android.dataroaming=true \
	ro.product.locale.language=ja \
	ro.product.locale.region=JP \
	persist.sys.timezone=Asia/Tokyo

ifeq ($(TARGET_PRODUCT),$(PRODUCT_NAME))
TARGET_ARCH := x86
DISABLE_DEXPREOPT := true
CFLAGS := -march=geode -mtune=geode -mmmx -mno-sse -mfpmath=387
endif
