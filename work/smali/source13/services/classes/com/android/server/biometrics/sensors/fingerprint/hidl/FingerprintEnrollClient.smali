.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FingerprintEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintEnrollClient"


# instance fields
.field private final mEnrollReason:I

.field private mIsPointerDown:Z

.field private final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;I)V
    .registers 34
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "userId"    # I
    .param p8, "hardwareAuthToken"    # [B
    .param p9, "owner"    # Ljava/lang/String;
    .param p11, "timeoutSec"    # I
    .param p12, "sensorId"    # I
    .param p13, "biometricLogger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p14, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p15, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .param p16, "sidefpsController"    # Landroid/hardware/fingerprint/ISidefpsController;
    .param p17, "enrollReason"    # I
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
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;II",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            "I)V"
        }
    .end annotation

    .line 75
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;>;"
    .local p10, "utils":Lcom/android/server/biometrics/sensors/BiometricUtils;, "Lcom/android/server/biometrics/sensors/BiometricUtils<Landroid/hardware/fingerprint/Fingerprint;>;"
    move-object/from16 v14, p0

    move/from16 v15, p17

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 78
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->setRequestId(J)V

    .line 79
    new-instance v2, Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    invoke-direct {v2, v3, v4}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v2, v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 81
    iput v15, v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mEnrollReason:I

    .line 82
    const/4 v2, 0x1

    if-ne v15, v2, :cond_3e

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->disableMetrics()V

    .line 85
    :cond_3e
    return-void
.end method


# virtual methods
.method protected hasReachedEnrollmentLimit()Z
    .registers 5

    .line 96
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 98
    .local v0, "limit":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 100
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_41

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many fingerprints registered, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getTargetUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintEnrollClient"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x1

    return v2

    .line 104
    :cond_41
    const/4 v2, 0x0

    return v2
.end method

.method public isPointerDown()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    return v0
.end method

.method synthetic lambda$onAcquired$1$com-android-server-biometrics-sensors-fingerprint-hidl-FingerprintEnrollClient(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 5
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I
    .param p3, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->isValidAcquisitionMessage(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentHelp(I)V

    .line 167
    :cond_11
    return-void
.end method

.method synthetic lambda$onEnrollResult$0$com-android-server-biometrics-sensors-fingerprint-hidl-FingerprintEnrollClient(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 4
    .param p1, "remaining"    # I
    .param p2, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    invoke-interface {p2, v0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentProgress(II)V

    return-void
.end method

.method public onAcquired(II)V
    .registers 5
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 161
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onAcquired(II)V

    .line 163
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    .line 168
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 11
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    .line 151
    if-nez p2, :cond_18

    .line 152
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 156
    :cond_18
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    move v5, p2

    move-object v7, p0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 157
    return-void
.end method

.method public onError(II)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I

    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 174
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 175
    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "minor"    # F
    .param p4, "major"    # F

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V

    .line 181
    return-void
.end method

.method public onPointerUp()V
    .registers 2

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    .line 187
    return-void
.end method

.method public onUiReady()V
    .registers 1

    .line 197
    return-void
.end method

.method protected startHalOperation()V
    .registers 10

    .line 109
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mEnrollReason:I

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getOverlayReasonFromEnrollReason(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 112
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelBadCalibrationNotification(Landroid/content/Context;)V

    .line 117
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mHardwareAuthToken:[B

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getTargetUserId()I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mTimeoutSec:I

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_39} :catch_3a

    .line 124
    goto :goto_55

    .line 118
    :catch_3a
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting enroll"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->onError(II)V

    .line 122
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 123
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_55
    return-void
.end method

.method protected stopHalOperation()V
    .registers 9

    .line 129
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 132
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v7, p0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 135
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    .line 141
    goto :goto_38

    .line 136
    :catch_26
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->onError(II)V

    .line 140
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_38
    return-void
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 7
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 90
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 90
    return-object v0
.end method
