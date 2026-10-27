.class public Landroid/hardware/camera2/impl/CameraExtStub;
.super Ljava/lang/Object;
.source "CameraExtStub.java"


# static fields
.field private static final blacklist QCOM_IMPL_CLASS_NAME:Ljava/lang/String; = "android.hardware.camera2.impl.CameraExtImplQcom"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist XIAOMI_IMPL_CLASS_NAME:Ljava/lang/String; = "android.hardware.camera2.impl.CameraExtImplXiaoMi"

.field private static volatile blacklist sInstance:Landroid/hardware/camera2/CameraExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 22
    const-class v0, Landroid/hardware/camera2/impl/CameraExtStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "android.hardware.camera2.impl.CameraExtImplXiaoMi"

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtStub;->initInstance(Ljava/lang/String;)Z

    move-result v0

    .line 36
    .local v0, "success":Z
    if-nez v0, :cond_15

    .line 37
    const-string v1, "android.hardware.camera2.impl.CameraExtImplQcom"

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtStub;->initInstance(Ljava/lang/String;)Z

    .line 39
    .end local v0    # "success":Z
    :cond_15
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static blacklist addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    .line 173
    .local p2, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p3, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p4, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_10

    .line 174
    sget-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/hardware/camera2/CameraExt;->addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 178
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist cameraClosed(Ljava/lang/String;)V
    .registers 2
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 200
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    .line 201
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->cameraClosed(Ljava/lang/String;)V

    .line 203
    :cond_9
    return-void
.end method

.method public static blacklist cameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "clientPackageId"    # Ljava/lang/String;

    .line 206
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    .line 207
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->cameraOpened(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_9
    return-void
.end method

.method public static blacklist getLimitedSensorIso(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Range;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 193
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->getLimitedSensorIso(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Range;

    move-result-object v0

    return-object v0

    .line 196
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 183
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 184
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 187
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist hideCamera()Z
    .registers 1

    .line 80
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 81
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0}, Landroid/hardware/camera2/CameraExt;->hideCamera()Z

    move-result v0

    return v0

    .line 84
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist initCamera(Landroid/hardware/Camera;I)V
    .registers 3
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraId"    # I

    .line 122
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    .line 123
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->initCamera(Landroid/hardware/Camera;I)V

    .line 125
    :cond_9
    return-void
.end method

.method public static blacklist initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 135
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    .line 136
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    .line 138
    :cond_9
    return-void
.end method

.method private static blacklist initInstance(Ljava/lang/String;)Z
    .registers 5
    .param p0, "className"    # Ljava/lang/String;

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_26

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraExt;

    sput-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    .line 46
    sget-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_26} :catch_27

    .line 50
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_26
    goto :goto_44

    .line 48
    :catch_27
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_44
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    return v0
.end method

.method public static blacklist isAuxCameraClient(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 72
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 73
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->isAuxCameraClient(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 76
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isCameraSoundEnforced()Z
    .registers 1

    .line 64
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 65
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0}, Landroid/hardware/camera2/CameraExt;->isCameraSoundEnforced()Z

    move-result v0

    return v0

    .line 68
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isCustomStreamConfigurationEnabled()Z
    .registers 1

    .line 148
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 149
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0}, Landroid/hardware/camera2/CameraExt;->isCustomStreamConfigurationEnabled()Z

    move-result v0

    return v0

    .line 152
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 2
    .param p0, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 88
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 89
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v0

    return v0

    .line 92
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 3
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 105
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 106
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v0

    return v0

    .line 109
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 3
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .line 114
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 115
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v0

    return v0

    .line 118
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isPrivilegedApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 56
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 57
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 60
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 2
    .param p0, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 96
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    .line 97
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v0

    return v0

    .line 100
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    .line 160
    .local p2, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p3, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p4, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_10

    .line 161
    sget-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/hardware/camera2/CameraExt;->limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 165
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist releaseCamera(Landroid/hardware/Camera;)V
    .registers 2
    .param p0, "camera"    # Landroid/hardware/Camera;

    .line 128
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    .line 129
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->releaseCamera(Landroid/hardware/Camera;)V

    .line 131
    :cond_9
    return-void
.end method

.method public static blacklist releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 142
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    .line 143
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    .line 145
    :cond_9
    return-void
.end method
