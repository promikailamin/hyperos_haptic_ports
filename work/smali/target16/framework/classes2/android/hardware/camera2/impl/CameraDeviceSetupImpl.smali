.class public Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
.super Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
.source "CameraDeviceSetupImpl.java"


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mTargetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 50
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    .line 52
    return-void
.end method

.method public static blacklist isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 204
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SESSION_CONFIGURATION_QUERY_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 206
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x22

    if-le p0, v0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method


# virtual methods
.method public whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 58
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 63
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_57

    .line 64
    if-eqz v0, :cond_46

    .line 70
    :try_start_13
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 74
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v4

    .line 71
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/hardware/ICameraService;->createDefaultRequest(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    .line 76
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V

    .line 79
    new-instance v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V
    :try_end_36
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_36} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_36} :catch_38
    .catchall {:try_start_13 .. :try_end_36} :catchall_57

    :try_start_36
    monitor-exit v1

    return-object v5

    .line 85
    :catch_38
    move-exception v0

    move-object p1, v0

    .line 86
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 83
    :catch_3f
    move-exception v0

    move-object p1, v0

    .line 84
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 65
    :cond_46
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently unavailable."

    const/4 v2, 0x2

    invoke-direct {p1, v2, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 60
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No cameras available on device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :catchall_57
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_57

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 182
    instance-of v0, p1, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    if-eqz v0, :cond_f

    check-cast p1, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    .line 183
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 185
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSessionCharacteristics(Landroid/hardware/camera2/params/SessionConfiguration;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 124
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_67

    .line 130
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_6f

    .line 131
    if-eqz v3, :cond_5f

    .line 137
    :try_start_14
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 143
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v9

    .line 138
    move-object v7, p1

    invoke-interface/range {v3 .. v9}, Landroid/hardware/ICameraService;->getSessionCharacteristics(Ljava/lang/String;ILandroid/content/res/CameraCompatibilityInfo;Landroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 146
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v3}, Landroid/hardware/camera2/CameraManager;->prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_39
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_39} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_39} :catch_3b
    .catchall {:try_start_14 .. :try_end_39} :catchall_6f

    :try_start_39
    monitor-exit v1

    return-object p1

    .line 157
    :catch_3b
    move-exception v0

    move-object p1, v0

    .line 158
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 148
    :catch_42
    move-exception v0

    move-object p1, v0

    .line 149
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    sparse-switch v0, :sswitch_data_74

    .line 155
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    goto :goto_5e

    .line 151
    :sswitch_4e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Session Characteristics Query not supported by device."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :sswitch_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Session Configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :goto_5e
    throw p1

    .line 132
    :cond_5f
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently unavailable"

    invoke-direct {p1, v2, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 126
    :cond_67
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently disabled"

    invoke-direct {p1, v2, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 160
    :catchall_6f
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_39 .. :try_end_72} :catchall_6f

    throw p1

    nop

    :sswitch_data_74
    .sparse-switch
        0x3 -> :sswitch_56
        0xa -> :sswitch_4e
    .end sparse-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 94
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    if-nez v0, :cond_43

    .line 99
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_4b

    .line 100
    if-eqz v2, :cond_3a

    .line 106
    :try_start_13
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 110
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v7

    .line 106
    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->isSessionConfigurationWithParametersSupported(Ljava/lang/String;ILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Z

    move-result p1
    :try_end_2a
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_2a} :catch_33
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_2c
    .catchall {:try_start_13 .. :try_end_2a} :catchall_4b

    :try_start_2a
    monitor-exit v1

    return p1

    .line 114
    :catch_2c
    move-exception v0

    move-object p1, v0

    .line 115
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 112
    :catch_33
    move-exception v0

    move-object p1, v0

    .line 113
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p1

    throw p1

    .line 101
    :cond_3a
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently unavailable."

    const/4 v2, 0x2

    invoke-direct {p1, v2, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 96
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No cameras available on device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :catchall_4b
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_4b

    throw p1
.end method

.method public whitelist openCamera(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    .line 167
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraDeviceSetup(cameraId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
