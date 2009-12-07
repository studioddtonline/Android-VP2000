# TODO: Need to setup a proper inheritance tree for this class of
# products...
#
# For now, reuse the generic (phone) infrastructure.
#

PRODUCT_PACKAGES := \
    framework-res \
    Browser \
    Contacts \
    Launcher \
    HTMLViewer \
    Phone \
    ApplicationsProvider \
    ContactsProvider \
    DownloadProvider \
    GoogleSearch \
    MediaProvider \
    PicoTts \
    SettingsProvider \
    TelephonyProvider \
    TtsService \
    VpnServices \
    UserDictionaryProvider \
    PackageInstaller \
    Bugreport \
    AccountAndSyncSettings \
    AlarmClock \
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    Camera \
    CertInstaller \
    DrmProvider \
    Email \
    Gallery \
    LatinIME \
    Mms \
    Music \
    Settings \
    Sync \
    Updater \
    CalendarProvider \
    SyncProvider \
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
	ro.com.android.dataroaming=true \

ifeq ($(TARGET_PRODUCT),$(PRODUCT_NAME))
TARGET_ARCH := x86
DISABLE_DEXPREOPT := true
endif
