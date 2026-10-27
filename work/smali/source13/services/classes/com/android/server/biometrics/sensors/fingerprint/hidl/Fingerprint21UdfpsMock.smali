.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.super Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.source "Fingerprint21UdfpsMock.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;
    }
.end annotation


# static fields
.field private static final CONFIG_AUTH_DELAY_PT1:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt1"

.field private static final CONFIG_AUTH_DELAY_PT2:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt2"

.field private static final CONFIG_AUTH_DELAY_RANDOMNESS:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_randomness"

.field public static final CONFIG_ENABLE_TEST_UDFPS:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.enable"

.field private static final DEFAULT_AUTH_DELAY_PT1_MS:I = 0x12c

.field private static final DEFAULT_AUTH_DELAY_PT2_MS:I = 0x190

.field private static final DEFAULT_AUTH_DELAY_RANDOMNESS_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Fingerprint21UdfpsMock"


# instance fields
.field private final mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

.field private final mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

.field private final mRandom:Ljava/util/Random;

.field private final mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

.field private final mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private final mUserHasTrust:Landroid/util/SparseBooleanArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMockHalResultController(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDebugMessage(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->setDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "biometricStateCallback"    # Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .param p3, "sensorProps"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .param p4, "scheduler"    # Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p7, "controller"    # Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;
    .param p8, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 394
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    .line 395
    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    .line 396
    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    .line 398
    const/4 v5, 0x0

    .line 399
    .local v5, "resetLockoutRequiresHardwareAuthToken":Z
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 400
    const v7, 0x10e0078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 401
    .local v6, "maxTemplatesAllowed":I
    new-instance v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v9, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    iget-object v12, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->componentInfo:Ljava/util/List;

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getAllLocations()Ljava/util/List;

    move-result-object v16

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v7

    move v11, v6

    invoke-direct/range {v8 .. v16}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 405
    iput-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    .line 406
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 407
    const-class v7, Landroid/app/trust/TrustManager;

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/trust/TrustManager;

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 408
    invoke-virtual {v7, v0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 409
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRandom:Ljava/util/Random;

    .line 410
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable-IA;)V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    .line 411
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-direct {v7, v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable-IA;)V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    .line 412
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    invoke-direct {v7, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;)V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    .line 416
    invoke-virtual {v3, v7, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    .line 417
    return-void
.end method

.method private getMatchingDuration()I
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt2"

    const/16 v2, 0x190

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 538
    .local v0, "matchingTime":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getNewCaptureDuration()I
    .registers 7

    .line 516
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 517
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt1"

    const/16 v2, 0x12c

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 521
    .local v1, "captureTime":I
    const-string v2, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_randomness"

    const/16 v4, 0x64

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 525
    .local v2, "randomDelayRange":I
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRandom:Ljava/util/Random;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v3, v2

    .line 528
    .local v3, "randomDelay":I
    add-int v4, v1, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "biometricStateCallback"    # Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .param p2, "sensorProps"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .param p3, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p4, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .param p5, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;

    .line 253
    const-string v0, "Fingerprint21UdfpsMock"

    const-string v1, "Creating Fingerprint23Mock!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    move-object/from16 v12, p4

    invoke-direct {v2, v0, v1, v12}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    move-object v0, v2

    .line 258
    .local v0, "scheduler":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    move-object/from16 v2, p2

    iget v3, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v13, p0

    invoke-direct {v10, v3, p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 260
    .local v10, "controller":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    move-object v3, v14

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v0

    move-object v8, v1

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object v14
.end method

.method private setDebugMessage(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .line 543
    const-string v0, "Fingerprint21UdfpsMock"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->getUdfpsOverlayController()Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v1

    .line 545
    .local v1, "controller":Landroid/hardware/fingerprint/IUdfpsOverlayController;
    if-eqz v1, :cond_26

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDebugMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v1, v2, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->setDebugMessage(ILjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_27

    .line 551
    .end local v1    # "controller":Landroid/hardware/fingerprint/IUdfpsOverlayController;
    :cond_26
    goto :goto_3e

    .line 549
    :catch_27
    move-exception v1

    .line 550
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception when sending message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3e
    return-void
.end method


# virtual methods
.method public getSensorProperties()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-object v0
.end method

.method synthetic lambda$onPointerDown$0$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21UdfpsMock()V
    .registers 12

    .line 447
    const-string v0, "Fingerprint21UdfpsMock"

    const-string/jumbo v1, "onFingerDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    .line 449
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->getLastAuthenticatedClient()Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    move-result-object v1

    .line 450
    .local v1, "lastAuthenticatedConsumer":Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    .line 452
    .local v2, "currentScheduledClient":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    if-nez v2, :cond_1c

    .line 453
    const-string v3, "Not authenticating"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void

    .line 457
    :cond_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    if-ne v1, v2, :cond_32

    move v4, v0

    goto :goto_33

    :cond_32
    move v4, v3

    .line 466
    .local v4, "authenticatedClientIsCurrent":Z
    :goto_33
    instance-of v5, v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    if-eqz v5, :cond_4f

    .line 467
    move-object v5, v2

    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    .line 468
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->isKeyguard()Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 469
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v3

    .local v0, "keyguardAndTrusted":Z
    :goto_4e
    goto :goto_50

    .line 471
    .end local v0    # "keyguardAndTrusted":Z
    :cond_4f
    const/4 v0, 0x0

    .line 474
    .restart local v0    # "keyguardAndTrusted":Z
    :goto_50
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->getNewCaptureDuration()I

    move-result v3

    .line 475
    .local v3, "captureDuration":I
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->getMatchingDuration()I

    move-result v5

    .line 476
    .local v5, "matchingDuration":I
    add-int v6, v3, v5

    .line 477
    .local v6, "totalDuration":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->setDebugMessage(Ljava/lang/String;)V

    .line 479
    if-nez v4, :cond_a5

    if-eqz v0, :cond_8f

    goto :goto_a5

    .line 482
    :cond_8f
    instance-of v7, v2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eqz v7, :cond_b6

    .line 485
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;->setSimulationTime(JI)V

    .line 486
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    int-to-long v9, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b6

    .line 480
    :cond_a5
    :goto_a5
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;->setSimulationTime(JI)V

    .line 481
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    int-to-long v9, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    :cond_b6
    :goto_b6
    return-void
.end method

.method synthetic lambda$onPointerUp$1$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21UdfpsMock()V
    .registers 7

    .line 494
    const-string v0, "Fingerprint21UdfpsMock"

    const-string/jumbo v1, "onFingerUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    .line 500
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;->isImageCaptureComplete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 501
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->onAcquired(JII)V

    goto :goto_49

    .line 505
    :cond_2b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    .line 506
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;->isImageCaptureComplete()Z

    move-result v0

    if-nez v0, :cond_49

    .line 507
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->onAcquired(JII)V

    .line 512
    :cond_49
    :goto_49
    return-void
.end method

.method public onPointerDown(JIIIFF)V
    .registers 10
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "minor"    # F
    .param p7, "major"    # F

    .line 446
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    return-void
.end method

.method public onPointerUp(JI)V
    .registers 6
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method public onTrustChanged(ZIILjava/util/List;)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 422
    .local p4, "trustGrantedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 423
    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 433
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 428
    return-void
.end method
