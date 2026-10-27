.class public Landroid/hardware/camera2/impl/CameraDeviceImplInjector;
.super Ljava/lang/Object;
.source "CameraDeviceImplInjector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 22
    const-class v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v2, "xiaomi.scaler.availableStreamConfigurations"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;
    .registers 6
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    nop

    .line 130
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 131
    .local v0, "vendorKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 132
    .local v1, "vendorNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 133
    .local v3, "key":Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v3    # "key":Landroid/hardware/camera2/CaptureRequest$Key;
    goto :goto_18

    .line 136
    :cond_2c
    return-object v1
.end method

.method private static blacklist getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 23
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;"
        }
    .end annotation

    .line 105
    .local p1, "vendorKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 106
    .local v1, "streamConfigurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 107
    new-instance v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 108
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 109
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 110
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 111
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 112
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 113
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 120
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 121
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const/16 v20, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v20}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    move-object v1, v3

    .line 125
    :cond_6a
    return-object v1
.end method

.method public static blacklist initCamera(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Z)V

    .line 141
    invoke-static {p1, v0}, Landroid/hardware/CameraInjector;->switchToFrontCameraTip(Ljava/lang/String;Z)V

    .line 142
    return-void
.end method

.method public static blacklist initCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 4
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 150
    invoke-static {p0, p1}, Landroid/hardware/CameraInjector;->initCameraRoleIdApi2(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 151
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    .line 152
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/hardware/CameraInjector;->switchToFrontCameraTip(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method private static blacklist isFormatValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 8
    .param p0, "configMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 51
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 52
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v1

    .line 53
    .local v1, "inputFormats":[I
    if-eqz v1, :cond_1a

    .line 54
    array-length v2, v1

    move v3, v0

    :goto_b
    if-ge v3, v2, :cond_1a

    aget v4, v1, v3

    .line 55
    .local v4, "format":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v5

    if-ne v4, v5, :cond_17

    .line 56
    const/4 v0, 0x1

    return v0

    .line 54
    .end local v4    # "format":I
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 62
    .end local v1    # "inputFormats":[I
    :cond_1a
    return v0
.end method

.method public static blacklist isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 10
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 30
    const/4 v0, 0x0

    if-eqz p0, :cond_49

    if-nez p1, :cond_6

    goto :goto_49

    .line 35
    :cond_6
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;

    move-result-object v1

    .line 37
    .local v1, "vendorKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v2

    .line 38
    .local v2, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v2, p1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isFormatValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2f

    .line 39
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    .line 39
    const-string v0, "valid format: %d"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v4

    .line 44
    :cond_2f
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    .line 44
    const-string v6, "invalid format: %d"

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v0

    .line 31
    .end local v1    # "vendorKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_49
    :goto_49
    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_5b

    const-string v3, "CameraCharacteristics"

    goto :goto_5d

    :cond_5b
    const-string v3, "InputConfiguration"

    :goto_5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return v0
.end method

.method public static blacklist isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 10
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 67
    const/4 v0, 0x0

    if-eqz p0, :cond_5e

    if-nez p1, :cond_6

    goto :goto_5e

    .line 72
    :cond_6
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;

    move-result-object v1

    .line 74
    .local v1, "vendorKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v2

    .line 75
    .local v2, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v2, p1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isSizeValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3a

    .line 76
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 76
    const-string v0, "valid size: %dx%d"

    invoke-static {v6, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v5

    .line 81
    :cond_3a
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    .line 81
    const-string v5, "invalid size: %dx%d"

    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v0

    .line 68
    .end local v1    # "vendorKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_5e
    :goto_5e
    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_70

    const-string v3, "CameraCharacteristics"

    goto :goto_72

    :cond_70
    const-string v3, "InputConfiguration"

    :goto_72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v0
.end method

.method private static blacklist isSizeValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 9
    .param p0, "configMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 88
    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    .line 89
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 90
    .local v1, "inputSizes":[Landroid/util/Size;
    if-eqz v1, :cond_2c

    .line 91
    array-length v2, v1

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 92
    .local v4, "size":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_29

    .line 93
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_29

    .line 94
    const/4 v0, 0x1

    return v0

    .line 91
    .end local v4    # "size":Landroid/util/Size;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 100
    .end local v1    # "inputSizes":[Landroid/util/Size;
    :cond_2c
    return v0
.end method

.method public static blacklist releaseCamera(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Z)V

    .line 146
    invoke-static {p1, v0}, Landroid/hardware/CameraInjector;->switchToFrontCameraTip(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public static blacklist releaseCamera(Ljava/lang/String;)V
    .registers 3
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 156
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    .line 157
    invoke-static {p0}, Landroid/hardware/CameraInjector;->releaseCameraRoleId(Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/hardware/CameraInjector;->switchToFrontCameraTip(Ljava/lang/String;Z)V

    .line 159
    return-void
.end method
