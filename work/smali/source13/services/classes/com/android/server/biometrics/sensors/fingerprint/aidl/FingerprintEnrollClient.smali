.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FingerprintEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintEnrollClient"


# instance fields
.field private final mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/log/CallbackWithProbe<",
            "Lcom/android/server/biometrics/log/Probe;",
            ">;"
        }
    .end annotation
.end field

.field private mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field private final mEnrollReason:I

.field private mIsPointerDown:Z

.field private final mMaxTemplatesPerUser:I

.field private final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field private final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;II)V
    .registers 35
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "userId"    # I
    .param p8, "hardwareAuthToken"    # [B
    .param p9, "owner"    # Ljava/lang/String;
    .param p11, "sensorId"    # I
    .param p12, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p13, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p14, "sensorProps"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .param p15, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .param p16, "sidefpsController"    # Landroid/hardware/fingerprint/ISidefpsController;
    .param p17, "maxTemplatesPerUser"    # I
    .param p18, "enrollReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            "II)V"
        }
    .end annotation

    .line 88
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;>;"
    .local p10, "utils":Lcom/android/server/biometrics/sensors/BiometricUtils;, "Lcom/android/server/biometrics/sensors/BiometricUtils<Landroid/hardware/fingerprint/Fingerprint;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p14

    move/from16 v13, p18

    .line 89
    move-object/from16 v12, p1

    invoke-static {v12, v15}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->shouldVibrateFor(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Z

    move-result v11

    .line 88
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v10, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 91
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->setRequestId(J)V

    .line 92
    iput-object v15, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 93
    new-instance v2, Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    invoke-direct {v2, v3, v4}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v2, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 94
    move/from16 v2, p17

    iput v2, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mMaxTemplatesPerUser:I

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v5

    iput-object v5, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 98
    move/from16 v5, p18

    iput v5, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mEnrollReason:I

    .line 99
    const/4 v6, 0x1

    if-ne v5, v6, :cond_57

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/biometrics/log/BiometricLogger;->disableMetrics()V

    .line 102
    :cond_57
    return-void
.end method

.method private doEnroll()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 177
    .local v0, "session":Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mHardwareAuthToken:[B

    .line 178
    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v1

    .line 180
    .local v1, "hat":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 181
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v2

    .line 182
    .local v2, "opContext":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISession;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    .line 184
    .local v3, "cancel":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v4

    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    invoke-interface {v4, v2, v5}, Lcom/android/server/biometrics/log/BiometricContext;->subscribe(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V

    .line 191
    return-object v3

    .line 193
    .end local v2    # "opContext":Landroid/hardware/biometrics/common/OperationContext;
    .end local v3    # "cancel":Landroid/hardware/biometrics/common/ICancellationSignal;
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/hardware/biometrics/fingerprint/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$doEnroll$3(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 5
    .param p0, "session"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    .param p1, "ctx"    # Landroid/hardware/biometrics/common/OperationContext;

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 189
    goto :goto_10

    .line 187
    :catch_8
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Unable to notify context changed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private static shouldVibrateFor(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensorProps"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 72
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 73
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .line 74
    .local v1, "isAccessbilityEnabled":Z
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    :goto_18
    return v2
.end method


# virtual methods
.method protected hasReachedEnrollmentLimit()Z
    .registers 4

    .line 155
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mMaxTemplatesPerUser:I

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 155
    :goto_1f
    return v0
.end method

.method public isPointerDown()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mIsPointerDown:Z

    return v0
.end method

.method synthetic lambda$onAcquired$1$com-android-server-biometrics-sensors-fingerprint-aidl-FingerprintEnrollClient(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 4
    .param p1, "acquiredInfo"    # I
    .param p2, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    invoke-interface {p2, v0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onAcquired(II)V

    return-void
.end method

.method synthetic lambda$onAcquired$2$com-android-server-biometrics-sensors-fingerprint-aidl-FingerprintEnrollClient(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 5
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I
    .param p3, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->isValidAcquisitionMessage(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 139
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentHelp(I)V

    .line 141
    :cond_11
    return-void
.end method

.method synthetic lambda$onEnrollResult$0$com-android-server-biometrics-sensors-fingerprint-aidl-FingerprintEnrollClient(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 4
    .param p1, "remaining"    # I
    .param p2, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    invoke-interface {p2, v0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentProgress(II)V

    return-void
.end method

.method public onAcquired(II)V
    .registers 6
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 125
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 129
    .local v0, "acquiredGood":Z
    :goto_5
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 130
    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mShouldVibrate:Z

    if-eqz v1, :cond_16

    .line 131
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->vibrateSuccess()V

    .line 133
    :cond_16
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    .line 137
    :cond_20
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;II)V

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onAcquired(II)V

    .line 144
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 115
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    .line 118
    if-nez p2, :cond_18

    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 121
    :cond_18
    return-void
.end method

.method public onError(II)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I

    .line 148
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 150
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 151
    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "minor"    # F
    .param p4, "major"    # F

    .line 217
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mIsPointerDown:Z

    .line 218
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/log/Probe;->enable()V

    .line 220
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 221
    .local v0, "session":Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 222
    new-instance v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 223
    .local v1, "context":Landroid/hardware/biometrics/fingerprint/PointerContext;
    const/4 v2, 0x0

    iput v2, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 224
    int-to-float v2, p1

    iput v2, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 225
    int-to-float v2, p2

    iput v2, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 226
    iput p3, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 227
    iput p4, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 228
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/biometrics/log/BiometricContext;->isAod()Z

    move-result v2

    iput-boolean v2, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 229
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 230
    .end local v1    # "context":Landroid/hardware/biometrics/fingerprint/PointerContext;
    goto :goto_48

    .line 231
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v1

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDown(IIIFF)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_48} :catch_49

    .line 235
    .end local v0    # "session":Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    :goto_48
    goto :goto_51

    .line 233
    :catch_49
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Unable to send pointer down"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_51
    return-void
.end method

.method public onPointerUp()V
    .registers 4

    .line 241
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mIsPointerDown:Z

    .line 242
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v1}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/log/Probe;->disable()V

    .line 244
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 245
    .local v1, "session":Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 246
    new-instance v2, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v2}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 247
    .local v2, "context":Landroid/hardware/biometrics/fingerprint/PointerContext;
    iput v0, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 248
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 249
    .end local v2    # "context":Landroid/hardware/biometrics/fingerprint/PointerContext;
    goto :goto_2e

    .line 250
    :cond_27
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUp(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2e} :catch_2f

    .line 254
    .end local v1    # "session":Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
    :goto_2e
    goto :goto_37

    .line 252
    :catch_2f
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Unable to send pointer up"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method public onUiReady()V
    .registers 4

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->onUiReady()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 268
    goto :goto_16

    .line 266
    :catch_e
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Unable to send UI ready"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method protected startHalOperation()V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mEnrollReason:I

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getOverlayReasonFromEnrollReason(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelBadCalibrationNotification(Landroid/content/Context;)V

    .line 166
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->doEnroll()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    .line 172
    goto :goto_2f

    .line 167
    :catch_1d
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting enroll"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onError(II)V

    .line 171
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method protected stopHalOperation()V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->unsubscribeBiometricContext()V

    .line 202
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_26

    .line 204
    :try_start_10
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 210
    goto :goto_26

    .line 205
    :catch_14
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onError(II)V

    .line 209
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 212
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    return-void
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 107
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 108
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->getBiometricContextUnsubscriber()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 107
    return-object v0
.end method
