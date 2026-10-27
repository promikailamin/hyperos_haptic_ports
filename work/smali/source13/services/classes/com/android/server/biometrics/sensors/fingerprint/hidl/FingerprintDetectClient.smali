.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "FingerprintDetectClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;",
        "Lcom/android/server/biometrics/sensors/AuthenticationConsumer;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field private static final FINGERPRINT_FOD_PROPERTY:Ljava/lang/String; = "ro.hardware.fp.fod"

.field private static final TAG:Ljava/lang/String; = "FingerprintDetectClient"

.field private static final mIsFodFps:Z


# instance fields
.field private mIsPointerDown:Z

.field private final mIsStrongBiometric:Z

.field private final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    const-string/jumbo v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsFodFps:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Z)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "userId"    # I
    .param p8, "owner"    # Ljava/lang/String;
    .param p9, "sensorId"    # I
    .param p10, "biometricLogger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p11, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p12, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .param p13, "isStrongBiometric"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Z)V"
        }
    .end annotation

    .line 73
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;>;"
    move-object v12, p0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v8, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 75
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->setRequestId(J)V

    .line 76
    new-instance v2, Lcom/android/server/biometrics/sensors/SensorOverlays;

    const/4 v3, 0x0

    move-object/from16 v4, p12

    invoke-direct {v2, v4, v3}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v2, v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 77
    move/from16 v2, p13

    iput-boolean v2, v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsStrongBiometric:Z

    .line 78
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 169
    const/16 v0, 0xd

    return v0
.end method

.method public interruptsPrecedingClients()Z
    .registers 2

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public isPointerDown()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsPointerDown:Z

    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 11
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "authenticated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p3, "hardwareAuthToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v2

    .line 148
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getTargetUserId()I

    move-result v5

    .line 146
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnAuthenticated(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;ZZIZ)V

    .line 150
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsFodFps:Z

    if-nez v0, :cond_1d

    .line 152
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->vibrateSuccess()V

    .line 155
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 156
    .local v0, "pm":Lcom/android/server/biometrics/sensors/PerformanceTracker;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAuthForUser(IZ)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 160
    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getTargetUserId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsStrongBiometric:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onDetected(IIZ)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_43} :catch_44

    .line 163
    goto :goto_4c

    .line 161
    :catch_44
    move-exception v1

    .line 162
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintDetectClient"

    const-string v3, "Remote exception when sending onDetected"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "minor"    # F
    .param p4, "major"    # F

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsPointerDown:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V

    .line 125
    return-void
.end method

.method public onPointerUp()V
    .registers 2

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsPointerDown:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    .line 131
    return-void
.end method

.method public onUiReady()V
    .registers 1

    .line 141
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 99
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->startHalOperation()V

    .line 101
    return-void
.end method

.method protected startHalOperation()V
    .registers 10

    .line 105
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getSensorId()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 108
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 111
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2c

    .line 118
    goto :goto_47

    .line 112
    :catch_2c
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDetectClient"

    const-string v2, "Remote exception when requesting auth"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->onError(II)V

    .line 116
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getSensorId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 117
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_47
    return-void
.end method

.method protected stopHalOperation()V
    .registers 9

    .line 82
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 85
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v7, p0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 88
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25

    .line 94
    goto :goto_37

    .line 89
    :catch_25
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDetectClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->onError(II)V

    .line 93
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method
