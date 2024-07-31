#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
BOARD_API_LEVEL := 33
PRODUCT_SHIPPING_API_LEVEL := 33

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    erase_batinfo.sh \
    BLPower.sh \
    LcdPanel_VendorID.sh \
    LightFingerprintPosition.sh \
    PanelFrameRate.sh \
    SelfTestClose.sh \
    SelfTestOpen.sh \
    SelfTestOpenHalf.sh \
    VibCali_ship.sh \
    WifiMac.sh \
    WifiSARPower.sh \
    asus_ufs_check.sh \
    asus_ufs_ctrl.sh \
    asus_ufs_init.sh \
    asus_ufs_shutdown.sh \
    boot_vib.sh \
    cat_pcbid.sh \
    create_pcbid.sh \
    cscclearlog.sh \
    firmware_version.sh \
    gauge_scale_backup.sh \
    gauge_scale_restore.sh \
    gf_ver.sh \
    grip_cal.sh \
    grip_chip_status_check.sh \
    grip_fpc_check.sh \
    grip_read_fac_fw_ver.sh \
    grip_read_fw_status.sh \
    grip_vib_request.sh \
    init.asus.changebinder.sh \
    init.asus.check_asdf.sh \
    init.asus.check_last.sh \
    init.asus.zram.sh \
    init.class_main.sh \
    init.crda.sh \
    init.kernel.post_boot-kalama.sh \
    init.kernel.post_boot.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.display_boot.sh \
    init.qti.kernel.debug-kalama.sh \
    init.qti.kernel.debug.sh \
    init.qti.kernel.early_debug-kalama.sh \
    init.qti.kernel.early_debug.sh \
    init.qti.kernel.sh \
    init.qti.media.sh \
    init.qti.qcv.sh \
    init.qti.write.sh \
    magnetometer_accessory2_installed.sh \
    magnetometer_accessory_detect.sh \
    magnetometer_accessory_installed.sh \
    magnetometer_accessory_removed.sh \
    mount_apd.sh \
    paymentKeyCheck.sh \
    qca6234-service.sh \
    read_device_ssn_pair.sh \
    savelogmtp.sh \
    sensors_factory_init.sh \
    shutdown_debug.sh \
    ssr_cfg.sh \
    system_dlkm_modprobe.sh \
    tdoor_load_cal.sh \
    tdoor_load_userK.sh \
    touch_ver.sh \
    ufs_fw.sh \
    ufs_info.sh \
    vendor_modprobe.sh \
    vendor_savelogs.sh \
    vib_load_cali.sh \
    widevine.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.asus.debugtool.rc \
    init.asus.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.kernel.rc \
    init.qti.ufs.rc \
    init.target.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.qcom

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/asus/ASUS_AI2205/ASUS_AI2205-vendor.mk)
