# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Screen Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_em.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_em.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    
PRODUCT_PACKAGES += \
        audio.r_submix.default \
        audio.a2dp.default \
        audio.usb.default \
        audio_policy.stub \
        libaudio-resampler \
        libtinyalsa \
        libtinycompress \
        libtinymix \
        libtinyxml \
        libtinyxml2 \
        libxml2

PRODUCT_PACKAGES += \
	android.hardware.audio.effect@2.0-impl \
        android.hardware.broadcastradio@1.0-impl \
        android.hardware.soundtrigger@2.0-impl 
        
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \

# Google Media Codecs
PRODUCT_COPY_FILES += \
        frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
        frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/vendor/etc/media_codecs_google_video_le.xml

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \

# Selinux
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/selinux/plat_mac_permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/selinux/plat_mac_permissions.xml \
    
# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    
# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/thermal/thermal.conf:system/vendor/etc/.tp/thermal.conf \
    $(COMMON_PATH)/configs/thermal/thermal.off.conf:system/vendor/etc/.tp/thermal.off.conf \
    $(COMMON_PATH)/configs/thermal/.ht120.mtc:system/vendor/etc/.tp/.ht120.mtc \
    $(COMMON_PATH)/configs/thermal/.thermal_meta.conf:system/vendor/etc/.tp/.thermal_meta.conf \
    $(COMMON_PATH)/configs/thermal/.thermal_policy_00:system/vendor/etc/.tp/.thermal_policy_00 \
    $(COMMON_PATH)/configs/thermal/.thermal_policy_01:system/vendor/etc/.tp/.thermal_policy_01 \
    $(COMMON_PATH)/configs/thermal/.thermal_policy_02:system/vendor/etc/.tp/.thermal_policy_02 \
    $(COMMON_PATH)/configs/thermal/.thermal_policy_05:system/vendor/etc/.tp/.thermal_policy_05 \
    $(COMMON_PATH)/configs/thermal/.thermal_policy_06:system/vendor/etc/.tp/.thermal_policy_06    

# Thermal HAL
PRODUCT_PACKAGES += \
        android.hardware.thermal@1.0-impl \
        android.hardware.thermal@1.0-service
        
# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \

PRODUCT_PACKAGES += \
        android.hardware.wifi@1.0 \
        android.hardware.wifi@1.0-service \
	dhcpcd.conf \
        hostapd \
        lib_driver_cmd_mt66xx \
        libwpa_client \
        wificond \
        wpa_supplicant \
        wpa_supplicant.conf \
	libwifi-hal-mt66xx
    
# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.microphone.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.device_admin.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_admin.xml \
    frameworks/native/data/etc/android.software.live_wallpaper.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.managed_users.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.managed_users.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \

# Needed by /vendor/bin/mtk_agpsd
PRODUCT_PACKAGES += \
	libandroid_net

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \

# Ramdisk
PRODUCT_PACKAGES += \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    init.aee.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6757.rc \
    init.mt6757.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    multi_init.rc \
    fstab.qcom \
    ueventd.qcom.rc \
    
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/sbin/checkfirstboot:root/sbin/checkfirstboot \
        $(LOCAL_PATH)/rootdir/sbin/fota-ua:root/sbin/fota-ua \
        $(LOCAL_PATH)/rootdir/sbin/fuelgauged_static:root/sbin/fuelgauged_static \
        $(LOCAL_PATH)/rootdir/sbin/mr:root/sbin/mr \
        $(LOCAL_PATH)/rootdir/sbin/tad_static:root/sbin/tad_static \
        $(LOCAL_PATH)/rootdir/sbin/ua-data-mounter:root/sbin/ua-data-mounter \
        $(LOCAL_PATH)/rootdir/sbin/wait4tad_static:root/sbin/wait4tad_static \
        $(LOCAL_PATH)/rootdir/sbin/wipedata:root/sbin/wipedata

PRODUCT_PACKAGES += netutils-wrapper-1.0 

# toybox
PRODUCT_PACKAGES += \
        toybox_vendor    

# VNDK-SP
PRODUCT_PACKAGES += \
    vndk-sp

# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6757
        
# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml
    
PRODUCT_PACKAGES += \
    libcurl    

# Configstore
PRODUCT_PACKAGES += \
        android.hardware.configstore@1.0-service

# Fingerprint
PRODUCT_PACKAGES += \
        android.hardware.biometrics.fingerprint@2.1-service

# Display
PRODUCT_PACKAGES += \
        android.hardware.graphics.allocator@2.0-impl \
        android.hardware.graphics.allocator@2.0-service \
        android.hardware.graphics.composer@2.1-impl \
        android.hardware.graphics.composer@2.1-service \
        android.hardware.graphics.mapper@2.0-impl \
        android.hardware.memtrack@1.0-impl \
        android.hardware.memtrack@1.0-service \
	libion
	
# DRM
PRODUCT_PACKAGES += \
        android.hardware.drm@1.0-impl \
        android.hardware.drm@1.0-service
	
# Charger
PRODUCT_PACKAGES += \
        charger_res_images

# FMRadio
PRODUCT_PACKAGES += \
        libfmjni \
        FMRadio

# HIDL
PRODUCT_PACKAGES += \
        android.hidl.base@1.0 \
        android.hidl.manager@1.0

# OMX
PRODUCT_PACKAGES += \
	android.hardware.media.omx@1.0-service

# Keymaster
PRODUCT_PACKAGES += \
        android.hardware.keymaster@3.0-impl \
        android.hardware.keymaster@3.0-service

# VNDK-SP:
PRODUCT_PACKAGES += \
        vndk-sp
	
# Misc
PRODUCT_PACKAGES += \
        librs_jni \
        libnl_2

# Power
PRODUCT_PACKAGES+= \
        android.hardware.power@1.0 
	
# RIL
PRODUCT_PACKAGES+= \
	android.hardware.radio@1.0 \
	android.hardware.radio.deprecated@1.0 \
	android.hardware.broadcastradio@1.1

# RenderScript
PRODUCT_PACKAGES += \
        android.hardware.renderscript@1.0-impl
	
# Vibrator
PRODUCT_PACKAGES+= \
        android.hardware.vibrator@1.0-impl \
        android.hardware.vibrator@1.0-service 

# FMRadio
PRODUCT_PACKAGES += \
	FMRadio	

# OpenGL
PRODUCT_PACKAGES += \
	libGLES_android
	
# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck \
	fibmap.f2fs \
	fsck.f2fs \
	mkfs.f2fs \
	make_ext4fs \
	resize2fs \
	setup_fs \
	ext4_resize \
	libext2_blkid \
	libext2_uuid_static \
	superumount

# Inherit vendor
$(call inherit-product, vendor/alps/hinoki/hinoki-vendor.mk)
