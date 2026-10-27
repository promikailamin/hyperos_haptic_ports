.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FingerprintAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field protected static final SECURITY_CENTER_PACKAGE:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final TAG:Ljava/lang/String; = "Biometrics/FingerprintAuthClient"


# instance fields
.field private lockFlag:I

.field private final mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/log/CallbackWithProbe<",
            "Lcom/android/server/biometrics/log/Probe;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPointerDown:Z

.field private final mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field private final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field private final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .registers 45
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "targetUserId"    # I
    .param p8, "operationId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "cookie"    # I
    .param p13, "requireConfirmation"    # Z
    .param p14, "sensorId"    # I
    .param p15, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p16, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p17, "isStrongBiometric"    # Z
    .param p18, "taskStackListener"    # Landroid/app/TaskStackListener;
    .param p19, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;
    .param p20, "udfpsOverlayController"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .param p21, "sidefpsController"    # Landroid/hardware/fingerprint/ISidefpsController;
    .param p22, "allowBackgroundAuthentication"    # Z
    .param p23, "sensorProps"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
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
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Landroid/app/TaskStackListener;",
            "Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            "Z",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ")V"
        }
    .end annotation

    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;>;"
    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move/from16 v15, p17

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move/from16 v18, p22

    .line 96
    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    .line 78
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->lockFlag:I

    .line 100
    move-wide/from16 v2, p4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->setRequestId(J)V

    .line 101
    move-object/from16 v4, p19

    iput-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 102
    new-instance v5, Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v6, p20

    move-object/from16 v7, p21

    invoke-direct {v5, v6, v7}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 103
    move-object/from16 v5, p23

    iput-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 105
    return-void
.end method

.method private resetFailedAttempts(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    .line 226
    return-void
.end method

.method private static shouldHandleFailedAttempt(II)Z
    .registers 3
    .param p0, "acquiredInfo"    # I
    .param p1, "vendorCode"    # I

    .line 127
    const/4 v0, 0x6

    if-ne p0, v0, :cond_25

    const/16 v0, 0x13

    if-eq p1, v0, :cond_25

    const/16 v0, 0x14

    if-eq p1, v0, :cond_25

    const/16 v0, 0x15

    if-eq p1, v0, :cond_25

    const/16 v0, 0x16

    if-eq p1, v0, :cond_25

    const/16 v0, 0x17

    if-eq p1, v0, :cond_25

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_25

    const/16 v0, 0x32

    if-eq p1, v0, :cond_25

    const/16 v0, 0x34

    if-eq p1, v0, :cond_25

    .line 130
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_25
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public handleFailedAttempt(I)I
    .registers 9
    .param p1, "userId"    # I

    .line 243
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->addFailedAttemptForUser(I)V

    .line 246
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result v0

    .line 247
    .local v0, "lockoutMode":I
    if-eqz v0, :cond_33

    .line 248
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    move v4, v0

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 250
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getIsPowerfp()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 251
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v1

    .line 252
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 251
    invoke-interface {v1, v2, p0, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->NotifyLockOutState(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BaseClientMonitor;II)V

    .line 259
    :cond_33
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->setCurrentLockoutMode(I)V

    .line 262
    return v0
.end method

.method protected handleLifecycleAfterAuth(Z)V
    .registers 4
    .param p1, "authenticated"    # Z

    .line 230
    if-eqz p1, :cond_8

    .line 231
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 233
    :cond_8
    return-void
.end method

.method public isPointerDown()Z
    .registers 2

    .line 335
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    return v0
.end method

.method public onAcquired(II)V
    .registers 8
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 137
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAcquired(II)V

    .line 140
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->lockFlag:I

    const/4 v1, 0x1

    if-nez v0, :cond_10

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->shouldHandleFailedAttempt(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 141
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->lockFlag:I

    .line 145
    :cond_10
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->lockFlag:I

    if-ne v0, v1, :cond_3f

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3f

    .line 146
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->handleFailedAttempt(I)I

    move-result v0

    .line 147
    .local v0, "lockoutMode":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->lockFlag:I

    .line 148
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 149
    const/16 v3, 0x13

    invoke-virtual {p0, v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onError(II)V

    .line 151
    :cond_33
    if-eqz v0, :cond_3f

    .line 152
    if-ne v0, v1, :cond_39

    .line 153
    const/4 v1, 0x7

    goto :goto_3b

    .line 154
    :cond_39
    const/16 v1, 0x9

    :goto_3b
    nop

    .line 155
    .local v1, "errorCode":I
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onError(II)V

    .line 158
    .end local v0    # "lockoutMode":I
    .end local v1    # "errorCode":I
    :cond_3f
    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 13
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

    .line 164
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->lockFlag:I

    .line 175
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;->reportFingerEvent(Ljava/lang/String;I)V

    .line 178
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 181
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getFingerprintUnlockType(Landroid/content/Context;)I

    move-result v1

    .line 182
    .local v1, "mSideFpUnlockType":I
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getIsPowerfp()Z

    move-result v2

    const-string v3, "Biometrics/FingerprintAuthClient"

    const/4 v4, 0x1

    if-eqz v2, :cond_87

    if-eqz v1, :cond_51

    if-ne v1, v4, :cond_87

    .line 183
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_87

    :cond_51
    if-nez p2, :cond_61

    .line 184
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 185
    :cond_61
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->setInterceptPowerKeyTimeByFinger(J)V

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intercept powerkey time:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_87
    if-eqz p2, :cond_9d

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    .line 192
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->resetFailedAttempts(I)V

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    goto :goto_de

    .line 195
    :cond_9d
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    .line 196
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 197
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v2

    .line 198
    .local v2, "lockoutMode":I
    if-eqz v2, :cond_de

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fingerprint locked out, lockoutMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-ne v2, v4, :cond_cc

    .line 201
    const/4 v3, 0x7

    goto :goto_ce

    .line 202
    :cond_cc
    const/16 v3, 0x9

    :goto_ce
    nop

    .line 206
    .local v3, "errorCode":I
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 207
    invoke-virtual {p0, v3, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onErrorInternal(IIZ)V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->cancel()V

    .line 211
    .end local v2    # "lockoutMode":I
    .end local v3    # "errorCode":I
    :cond_de
    :goto_de
    return-void
.end method

.method public onError(II)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I

    .line 215
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 217
    const/16 v0, 0x12

    if-ne p1, v0, :cond_e

    .line 218
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showBadCalibrationNotification(Landroid/content/Context;)V

    .line 221
    :cond_e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 222
    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "minor"    # F
    .param p4, "major"    # F

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    .line 304
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    .line 305
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/log/Probe;->enable()V

    .line 306
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V

    .line 308
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 310
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerDown(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_29

    .line 313
    goto :goto_31

    .line 311
    :catch_29
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method public onPointerUp()V
    .registers 4

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    .line 320
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    .line 321
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/log/Probe;->disable()V

    .line 322
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 326
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerUp(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 329
    goto :goto_32

    .line 327
    :catch_2a
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    return-void
.end method

.method public onUiReady()V
    .registers 1

    .line 341
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 109
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    goto :goto_12

    .line 115
    :cond_f
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    .line 117
    :goto_12
    return-void
.end method

.method protected startHalOperation()V
    .registers 10

    .line 267
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getShowOverlayReason()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 270
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 274
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mOperationId:J

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_2f

    .line 281
    goto :goto_4a

    .line 275
    :catch_2f
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception when requesting auth"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onError(II)V

    .line 279
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 280
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4a
    return-void
.end method

.method protected stopHalOperation()V
    .registers 9

    .line 286
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 289
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v7, p0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I

    .line 292
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25

    .line 298
    goto :goto_37

    .line 293
    :catch_25
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onError(II)V

    .line 297
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method public wasUserDetected()Z
    .registers 2

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 122
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
