# Logging
SPAMMY_LOG_TAGS := \
    artd \
    ArtService \
    MiClstc \
    MiEvent \
    MiStcImpl \
	Diag_Lib \
    KernelSU \
    SDM \
    AGM \
    AHAL \
    SRE \
    libsensor-boledalgo \
    libsensor-parseRGB \
    libsensor-qshcalapi \
    sensors \
    sensors-hal \
    vendor.qti.hardware.display.composer-service \
    vendor.xiaomi.sensor.citsensorservice-service.aidl \
    vendor.xiaomi.sensor.citsensorservice.aidl \
    vendor.qti.camera.provider-service_64 \
    vendor.hardware.vibratorfeature \
    CamX \
    CAM_Thumbnail \
    CAM_CaptureRequestBuilder \
    CameraLatencyHistogram \
    ChiX \
    CHIIQUTILS \
    CHISEG \
    CHIUSECASE \
    DEBUG-portrait_repair \
    MAW \
    MiAlgoEngine \
    mialgo_rfs_api \
    MiCamHAL\
    MISV2 \
    MISV3 \
    MISV4 \
    MIGME \
    MISHisAdapter \
    android.hardware.power-service.lineage-libperfmgr \
    libperfmgr \
    android.hardware.audio.service \
    android.hardware.light-V2-ndk.vendor \
    vibratorfeature-wrapper \
    android.hardware.vibrator-V1-ndk_platform.vendor \
    libqti-perfd-client \
    BATTERY_CHG \
    BackgroundInstallControlService \
    BackupTransportManager \
    ActivityManager \
    qcrilNrd

ifneq ($(TARGET_BUILD_VARIANT),eng)
PRODUCT_VENDOR_PROPERTIES += \
    $(foreach tag,$(SPAMMY_LOG_TAGS),log.tag.$(tag)=S)
endif