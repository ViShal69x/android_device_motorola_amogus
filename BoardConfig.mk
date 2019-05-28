#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

DEVICE_PATH := device/motorola/rav

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

BOARD_VENDOR := motorola

# Platform
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53
ARCH_ARM_HAVE_TLS_REGISTER := true

QCOM_BOARD_PLATFORMS += trinket
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOOTLOADER_BOARD_NAME := SM6125
TARGET_BOARD_PLATFORM := trinket
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_HAS_NO_SELECT_BUTTON := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
TARGET_USES_64_BIT_BINDER := true

BUILD_BROKEN_DUP_RULES := true

# APEX image
#DEXPREOPT_GENERATE_APEX_IMAGE := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORTS_SOUND_TRIGGER_HAL := true
DTS_CODEC_M_ := false
MM_AUDIO_ENABLED_FTM := true
MM_AUDIO_ENABLED_SAFX := true
TARGET_USES_QCOM_MM_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1

AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := false
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := false
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := false
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := false
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SSR := false
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_USB_TUNNEL_AUDIO := true
AUDIO_FEATURE_ENABLED_SPLIT_A2DP := false
AUDIO_FEATURE_ENABLED_3D_AUDIO := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
AUDIO_FEATURE_ENABLED_HDMI_PASSTHROUGH := true
AUDIO_FEATURE_ENABLED_DISPLAY_PORT := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := false
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_RAS := true
AUDIO_FEATURE_ENABLED_PERF_HINTS := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true

TARGET_MODULE_ALIASES += \
    adsp_loader_dlkm.ko:audio_adsp_loader.ko \
    apr_dlkm.ko:audio_apr.ko \
    bolero_cdc_dlkm.ko:audio_bolero_cdc.ko \
    cpe_lsm_dlkm.ko:audio_cpe_lsm.ko \
    hdmi_dlkm.ko:audio_hdmi.ko \
    machine_dlkm.ko:audio_machine_trinket.ko \
    mbhc_dlkm.ko:audio_mbhc.ko \
    native_dlkm.ko:audio_native.ko \
    pinctrl_lpi_dlkm.ko:audio_pinctrl_lpi.ko \
    pinctrl_wcd_dlkm.ko:audio_pinctrl_wcd.ko \
    platform_dlkm.ko:audio_platform.ko \
    q6_dlkm.ko:audio_q6.ko \
    q6_notifier_dlkm.ko:audio_q6_notifier.ko \
    q6_pdr_dlkm.ko:audio_q6_pdr.ko \
    rx_macro_dlkm.ko:audio_rx_macro.ko \
    snd_event_dlkm.ko:audio_snd_event.ko \
    stub_dlkm.ko:audio_stub.ko \
    swr_ctrl_dlkm.ko:audio_swr_ctrl.ko \
    swr_dlkm.ko:audio_swr.ko \
    tx_macro_dlkm.ko:audio_tx_macro.ko \
    usf_dlkm.ko:audio_usf.ko \
    va_macro_dlkm.ko:audio_va_macro.ko \
    wcd934x_dlkm.ko:audio_wcd934x.ko \
    wcd9355_dlkm.ko:audio_wcd9355.ko \
    wcd937x_dlkm.ko:audio_wcd937x.ko \
    wcd937x_slave_dlkm.ko:audio_wcd937x_slave.ko \
    wcd9xxx_dlkm.ko:audio_wcd9xxx.ko \
    wcd_core_dlkm.ko:audio_wcd_core.ko \
    wcd_cpe_dlkm.ko:audio_wcd_cpe.ko \
    wcd_spi_dlkm.ko:audio_wcd_spi.ko \
    wglink_dlkm.ko:audio_wglink.ko \
    wsa881x_dlkm.ko:audio_wsa881x.ko \
    wsa_macro_dlkm.ko:audio_wsa_macro.ko

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true

# Boot Animtion
TARGET_BOOTANIMATION_HALF_RES := true

# Camera
USE_CAMERA_STUB := true
TARGET_USES_QTI_CAMERA_DEVICE := true

# Charger
WITH_LINEAGE_CHARGER := false

# Display
TARGET_SCREEN_DENSITY := 420
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_USES_GRALLOC4 := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Enable dexpreopt to speed boot time
ifeq ($(HOST_OS),linux)
    ifneq ($(TARGET_BUILD_VARIANT),eng)
        ifeq ($(WITH_DEXPREOPT),)
            WITH_DEXPREOPT := true
        endif
    endif
endif

# FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
LOC_HIDL_VERSION := 3.0

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
TARGET_FS_CONFIG_GEN += \
    $(DEVICE_PATH)/config.fs \
    $(DEVICE_PATH)/mot_aids.fs

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_rav
TARGET_RECOVERY_DEVICE_MODULES := libinit_rav

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 service_locator.enable=1 
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE          := 0x00000000
BOARD_KERNEL_OFFSET        := 0x00008000
BOARD_RAMDISK_OFFSET       := 0x01000000
BOARD_KERNEL_TAGS_OFFSET   := 0x00000100
BOARD_DTB_OFFSET           := 0x01f00000
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

TARGET_KERNEL_SOURCE := kernel/motorola/sm6125
TARGET_KERNEL_CONFIG := vendor/rav_defconfig

TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC=$(shell pwd)/$(DEVICE_PATH)/dtc/dtc

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

TARGET_KERNEL_VERSION := 4.14
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

TARGET_KERNEL_CLANG_COMPILE := true

BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Memory Config
MALLOC_SVELTE := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072                   # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 536870912
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 171023280
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_METADATA_PARTITION := true
TARGET_EXFAT_DRIVER := exfat
TARGET_NO_RECOVERY := false
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

# Dyanmic
BOARD_SUPER_PARTITION_SIZE := 8925478912
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 4460642304
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    vendor \
    product

# Power
TARGET_HAS_NO_WLAN_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# RIL
TARGET_USES_OLD_MNC_FORMAT := true
ENABLE_VENDOR_RIL_SERVICE := true
CUSTOM_APNS_FILE := $(DEVICE_PATH)/configs/custom_apns.xml

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Root
BOARD_ROOT_EXTRA_FOLDERS := persist

# Vendor Security Patch Level
VENDOR_SECURITY_PATCH := 2020-03-01

# SELinux
include device/qcom/sepolicy_vndr/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Treble
PRODUCT_FULL_TREBLE := true
BOARD_VNDK_VERSION := current
TARGET_NO_KERNEL := false
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_USES_VENDORIMAGE := true

# AVB
# Enable chain partition for system and product
BOARD_AVB_VBMETA_SYSTEM := system product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
PRODUCT_VENDOR_MOVE_ENABLED := true
