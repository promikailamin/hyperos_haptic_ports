.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricFingerprintConstants;


# annotations
.annotation runtime Landroid/annotation/RestrictedForEnvironment;
    environments = {
        "SDK Runtime"
    }
    from = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$UdfpsUiEvent;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollReason;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist ENROLL_ENROLL:I = 0x2

.field public static final blacklist ENROLL_FIND_SENSOR:I = 0x1

.field public static final blacklist SENSOR_ID_ANY:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FingerprintManager"

.field public static final blacklist UDFPS_UI_OVERLAY_SHOWN:I = 0x1

.field public static final blacklist UDFPS_UI_READY:I = 0x2


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mEnrollStageThresholds:[F

.field private blacklist mExecutor:Landroid/os/HandlerExecutor;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$5Da4jp82AOhztEyvWco9Eqc6L7w(Landroid/hardware/fingerprint/FingerprintManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->lambda$onPowerPressed$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Bj1O2CSrc96vaxnZfdz5ILz7smI(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->lambda$createTestSession$0(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/HandlerExecutor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProps(Landroid/hardware/fingerprint/FingerprintManager;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mProps:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelFingerprintDetect(Landroid/hardware/fingerprint/FingerprintManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->cancelFingerprintDetect(J)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .registers 4

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mProps:Ljava/util/List;

    .line 1348
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1349
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 1350
    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez p2, :cond_20

    .line 1351
    const-string p2, "FingerprintManager"

    const-string v0, "FingerprintService was null"

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_20
    const-string p2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_30

    .line 1355
    new-instance p2, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {p2, p0}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {p0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 1364
    :cond_30
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 1365
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 1366
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .registers 10

    .line 1391
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_20

    .line 1392
    :try_start_4
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1394
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1395
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1392
    move-wide v5, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_19

    .line 1399
    goto :goto_20

    .line 1397
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 1398
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1400
    :cond_20
    :goto_20
    return-void
.end method

.method private blacklist cancelEnrollment(J)V
    .registers 5

    .line 1383
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_12

    .line 1384
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 1387
    goto :goto_12

    .line 1385
    :catch_c
    move-exception p1

    .line 1386
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1388
    :cond_12
    :goto_12
    return-void
.end method

.method private blacklist cancelFingerprintDetect(J)V
    .registers 6

    .line 1403
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_5

    .line 1404
    return-void

    .line 1408
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_14

    .line 1411
    nop

    .line 1412
    return-void

    .line 1409
    :catch_14
    move-exception p1

    .line 1410
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist createEnrollStageThresholds(Landroid/content/Context;)[F
    .registers 6

    .line 1446
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isPowerbuttonFps()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    .line 1450
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700f5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1454
    :goto_1d
    array-length v0, p1

    new-array v1, v0, [F

    .line 1455
    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_2e

    .line 1456
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 1455
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1458
    :cond_2e
    return-object v1
.end method

.method public static blacklist getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5

    .line 1523
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_82

    :pswitch_4
    goto :goto_5f

    .line 1548
    :pswitch_5
    const p1, 0x1040451

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1545
    :pswitch_d
    const p1, 0x1040452

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1542
    :pswitch_15
    const p1, 0x104044e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1551
    :pswitch_1d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1070113

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1553
    array-length v1, p0

    if-ge p2, v1, :cond_5f

    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1554
    aget-object p0, p0, p2

    return-object p0

    .line 1539
    :pswitch_36
    const p1, 0x1040453

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1536
    :pswitch_3e
    const p1, 0x1040454

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1533
    :pswitch_46
    const p1, 0x104044c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1530
    :pswitch_4e
    const p1, 0x104044f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1527
    :pswitch_56
    const p1, 0x1040450

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1525
    :pswitch_5e
    return-object v0

    .line 1558
    :cond_5f
    :goto_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid acquired message: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    return-object v0

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_46
        :pswitch_3e
        :pswitch_36
        :pswitch_1d
        :pswitch_5e
        :pswitch_4
        :pswitch_15
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o getCurrentUserId()I
    .registers 2

    .line 1370
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1371
    :catch_b
    move-exception v0

    .line 1372
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5

    .line 1465
    packed-switch p1, :pswitch_data_a8

    :pswitch_3
    goto :goto_7d

    .line 1500
    :pswitch_4
    const p1, 0x1040468

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1497
    :pswitch_c
    const p1, 0x104045f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1494
    :pswitch_14
    const p1, 0x1040469

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1491
    :pswitch_1c
    const p1, 0x1040462

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1488
    :pswitch_24
    const p1, 0x1040465

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1485
    :pswitch_2c
    const p1, 0x104046c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1482
    :pswitch_34
    const p1, 0x1040464

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1503
    :pswitch_3c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1505
    array-length v1, v0

    if-ge p2, v1, :cond_7d

    .line 1506
    aget-object p0, v0, p2

    return-object p0

    .line 1480
    :pswitch_4d
    const p1, 0x1040463

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1478
    :pswitch_55
    const p1, 0x1040460

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1475
    :pswitch_5d
    const p1, 0x1040466

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1473
    :pswitch_65
    const p1, 0x104046a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1470
    :pswitch_6d
    const p1, 0x104046b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1467
    :pswitch_75
    const p1, 0x1040461

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1514
    :cond_7d
    :goto_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const p1, 0x104046d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_3
        :pswitch_4d
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
        :pswitch_3
        :pswitch_3
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 3

    .line 1378
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 1379
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    :goto_13
    return-object v0
.end method

.method private synthetic blacklist lambda$createTestSession$0(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p3, p1}, Landroid/hardware/fingerprint/IFingerprintService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p1

    .line 180
    return-object p1
.end method

.method private synthetic blacklist lambda$onPowerPressed$1()V
    .registers 1

    .line 1148
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->sendPowerPressed()V

    return-void
.end method

.method private blacklist sendPowerPressed()V
    .registers 4

    .line 1338
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->onPowerPressed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1341
    goto :goto_e

    .line 1339
    :catch_6
    move-exception v0

    .line 1340
    const-string v1, "FingerprintManager"

    const-string v2, "Error sending power press"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    :goto_e
    return-void
.end method

.method private greylist-max-o useHandler(Landroid/os/Handler;)V
    .registers 3

    .line 559
    if-eqz p1, :cond_e

    .line 560
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 561
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    goto :goto_29

    .line 562
    :cond_e
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    if-eq p1, v0, :cond_29

    .line 563
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 564
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    .line 566
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public blacklist addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    .registers 3

    .line 1258
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_10

    .line 1260
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1263
    goto :goto_17

    .line 1261
    :catch_a
    move-exception p1

    .line 1262
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1265
    :cond_10
    const-string p1, "FingerprintManager"

    const-string v0, "addProvidersAvailableCallback(): Service not connected!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :goto_17
    return-void
.end method

.method public greylist-max-o addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .registers 5

    .line 1303
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_25

    .line 1305
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1306
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1327
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1306
    invoke-interface {v1, v2, p1}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    .line 1330
    goto :goto_2c

    .line 1328
    :catch_1f
    move-exception p1

    .line 1329
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1332
    :cond_25
    const-string p1, "FingerprintManager"

    const-string v0, "addLockoutResetCallback(): Service not connected!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :goto_2c
    return-void
.end method

.method public whitelist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V

    .line 596
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V

    .line 608
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 620
    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    .line 621
    invoke-virtual {v0, p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p5

    .line 622
    invoke-virtual {p5, p6}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p5

    if-eqz p7, :cond_11

    const/4 p6, 0x1

    goto :goto_12

    :cond_11
    const/4 p6, 0x0

    .line 623
    :goto_12
    invoke-virtual {p5, p6}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setIgnoreEnrollmentState(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p5

    .line 624
    invoke-virtual {p5}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    move-result-object v5

    .line 620
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)V

    .line 625
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)V
    .registers 14

    .line 635
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 637
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 638
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 635
    const/16 v2, 0x164

    const/4 v6, 0x1

    invoke-static {v2, v6, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 640
    if-eqz p3, :cond_7c

    .line 644
    const-string v7, "FingerprintManager"

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 645
    const-string p1, "authentication already canceled"

    invoke-static {v7, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 649
    :cond_28
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 650
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 652
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_7b

    .line 654
    :try_start_3e
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-direct {v0, p3, p1}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    .line 656
    invoke-direct {p0, p4}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    .line 657
    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v1

    goto :goto_4f

    :cond_4d
    const-wide/16 v1, 0x0

    :goto_4f
    move-wide v2, v1

    .line 658
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v4, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    move-object v0, p1

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide v0

    .line 660
    if-eqz p2, :cond_69

    .line 661
    new-instance p1, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {p1, p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;J)V

    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_69} :catch_6a

    .line 670
    :cond_69
    goto :goto_7b

    .line 663
    :catch_6a
    move-exception v0

    move-object p1, v0

    .line 664
    const-string p2, "Remote exception while authenticating: "

    invoke-static {v7, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 668
    const/4 p2, 0x0

    invoke-static {p1, v6, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-virtual {p3, v6, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 672
    :cond_7b
    :goto_7b
    return-void

    .line 641
    :cond_7c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an authentication callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist createTestSession(I)Landroid/hardware/biometrics/BiometricTestSession;
    .registers 6

    .line 179
    :try_start_0
    new-instance v0, Landroid/hardware/biometrics/BiometricTestSession;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/hardware/biometrics/BiometricTestSession;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 182
    :catch_11
    move-exception p1

    .line 183
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist detectFingerprint(Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)V
    .registers 8

    .line 682
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_5

    .line 683
    return-void

    .line 686
    :cond_5
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "FingerprintManager"

    if-eqz v0, :cond_13

    .line 687
    const-string p1, "Detection already cancelled"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void

    .line 691
    :cond_13
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 692
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 694
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-direct {v0, p2}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;)V

    .line 697
    :try_start_2a
    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v3, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    invoke-interface {p2, v2, v3, p3}, Landroid/hardware/fingerprint/IFingerprintService;->detectFingerprint(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J

    move-result-wide p2

    .line 699
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;

    invoke-direct {v0, p0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$OnFingerprintDetectionCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;J)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3f} :catch_40

    .line 702
    goto :goto_46

    .line 700
    :catch_40
    move-exception p1

    .line 701
    const-string p2, "Remote exception when requesting finger detect"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    :goto_46
    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)V
    .registers 16

    .line 745
    const/4 v0, -0x2

    if-ne p3, v0, :cond_9

    .line 746
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result p3

    move v3, p3

    goto :goto_a

    .line 745
    :cond_9
    move v3, p3

    .line 748
    :goto_a
    if-eqz p4, :cond_69

    .line 752
    const-string p3, "FingerprintManager"

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 753
    const-string p1, "enrollment already canceled"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void

    .line 757
    :cond_1c
    const/4 v8, 0x0

    if-nez p1, :cond_2a

    .line 758
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 759
    const/4 p2, 0x2

    invoke-static {p1, p2, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 758
    invoke-virtual {p4, p2, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 761
    return-void

    .line 764
    :cond_2a
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_68

    .line 766
    :try_start_2e
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-direct {v0, p4}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 767
    move-object v1, v0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    move-object v2, v1

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v4, p0, v2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 769
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 767
    move-object v2, p1

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J

    move-result-wide p5

    .line 770
    if-eqz p2, :cond_56

    .line 771
    new-instance p1, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p5, p6, v0}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;JLandroid/hardware/fingerprint/FingerprintManager-IA;)V

    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_56} :catch_57

    .line 780
    :cond_56
    goto :goto_68

    .line 773
    :catch_57
    move-exception v0

    move-object p1, v0

    .line 774
    const-string p2, "Remote exception in enroll: "

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 778
    const/4 p2, 0x1

    invoke-static {p1, p2, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 777
    invoke-virtual {p4, p2, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 782
    :cond_68
    :goto_68
    return-void

    .line 749
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must supply an enrollment callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist generateChallenge(IILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .registers 11

    .line 798
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_25

    .line 799
    :try_start_4
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    invoke-direct {v0, p3}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 800
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v5, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    iget-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 802
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 800
    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 805
    goto :goto_25

    .line 803
    :catch_1e
    move-exception v0

    move-object p1, v0

    .line 804
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 806
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .registers 4

    .line 815
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 816
    if-nez v0, :cond_e

    .line 817
    const-string p1, "FingerprintManager"

    const-string p2, "No sensors"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void

    .line 820
    :cond_e
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(IILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 821
    return-void
.end method

.method public blacklist getEnrollStageCount()I
    .registers 2

    .line 1418
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    if-nez v0, :cond_c

    .line 1419
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->createEnrollStageThresholds(Landroid/content/Context;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    .line 1421
    :cond_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist getEnrollStageThreshold(I)F
    .registers 5

    .line 1428
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    if-nez v0, :cond_c

    .line 1429
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->createEnrollStageThresholds(Landroid/content/Context;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    .line 1432
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p1, :cond_21

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    array-length v1, v1

    if-le p1, v1, :cond_16

    goto :goto_21

    .line 1438
    :cond_16
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    array-length v1, v1

    if-ne p1, v1, :cond_1c

    goto :goto_20

    :cond_1c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollStageThresholds:[F

    aget v0, v0, p1

    :goto_20
    return v0

    .line 1433
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported enroll stage index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    if-gez p1, :cond_3c

    const/4 v0, 0x0

    :cond_3c
    return v0
.end method

.method public greylist getEnrolledFingerprints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getEnrolledFingerprints(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1d

    .line 937
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 938
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 937
    invoke-interface {v0, p1, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    return-object p1

    .line 939
    :catch_17
    move-exception p1

    .line 940
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 942
    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getLockoutModeForUser(II)I
    .registers 4

    .line 1275
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_f

    .line 1277
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->getLockoutModeForUser(II)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p1

    .line 1278
    :catch_b
    move-exception p1

    .line 1279
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1282
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    nop

    .line 163
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    .line 164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 165
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintSensorProperties;->from(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Landroid/hardware/fingerprint/FingerprintSensorProperties;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    goto :goto_e

    .line 167
    :cond_22
    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 1225
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 1228
    :cond_d
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1226
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mProps:Ljava/util/List;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v0

    .line 1229
    :catch_1d
    move-exception v0

    .line 1230
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist hasEnrolledFingerprints()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1161
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1163
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1164
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1161
    const/16 v2, 0x164

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasEnrolledFingerprints(I)Z
    .registers 5

    .line 1176
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1d

    .line 1177
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1178
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1177
    invoke-interface {v0, p1, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_17

    return p1

    .line 1179
    :catch_17
    move-exception p1

    .line 1180
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1182
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist hasEnrolledTemplates()Z
    .registers 2

    .line 961
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .registers 2

    .line 968
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    return p1
.end method

.method public whitelist isHardwareDetected()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1195
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1197
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1198
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1195
    const/16 v2, 0x164

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1200
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_33

    .line 1202
    :try_start_1a
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1203
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1202
    invoke-interface {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2c} :catch_2d

    return v0

    .line 1204
    :catch_2d
    move-exception v0

    .line 1205
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1208
    :cond_33
    const-string v0, "FingerprintManager"

    const-string v1, "isFingerprintHardwareDetected(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPowerbuttonFps()Z
    .registers 4

    .line 1240
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 1241
    const/4 v1, 0x0

    if-nez v0, :cond_8

    :cond_7
    goto :goto_e

    :cond_8
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method public blacklist onPointerDown(JIIFFFFFJJZ)V
    .registers 16

    .line 1061
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 1062
    const-string p1, "FingerprintManager"

    const-string p2, "onPointerDown: no fingerprint service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return-void

    .line 1066
    :cond_c
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 1067
    iput p4, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 1068
    iput p5, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 1069
    iput p6, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 1070
    iput p7, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 1071
    iput p8, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 1072
    iput p9, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 1073
    iput-wide p10, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 1074
    iput-wide p12, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    .line 1075
    iput-boolean p14, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 1078
    :try_start_23
    iget-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {p4, p1, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 1081
    nop

    .line 1082
    return-void

    .line 1079
    :catch_2a
    move-exception p1

    .line 1080
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist onPointerDown(JIIIFF)V
    .registers 9

    .line 1007
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 1008
    const-string p1, "FingerprintManager"

    const-string p2, "onPointerDown: no fingerprint service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1012
    :cond_c
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 1013
    int-to-float p4, p4

    iput p4, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 1014
    int-to-float p4, p5

    iput p4, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 1015
    iput p6, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 1016
    iput p7, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 1019
    :try_start_1b
    iget-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {p4, p1, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_22

    .line 1022
    nop

    .line 1023
    return-void

    .line 1020
    :catch_22
    move-exception p1

    .line 1021
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist onPointerUp(JI)V
    .registers 6

    .line 1030
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 1031
    const-string p1, "FingerprintManager"

    const-string p2, "onPointerUp: no fingerprint service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return-void

    .line 1035
    :cond_c
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 1038
    :try_start_11
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    .line 1041
    nop

    .line 1042
    return-void

    .line 1039
    :catch_18
    move-exception p1

    .line 1040
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist onPointerUp(JIIFFFFFJJZ)V
    .registers 16

    .line 1101
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 1102
    const-string p1, "FingerprintManager"

    const-string p2, "onPointerUp: no fingerprint service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1106
    :cond_c
    new-instance v0, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 1107
    iput p4, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 1108
    iput p5, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 1109
    iput p6, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 1110
    iput p7, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 1111
    iput p8, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 1112
    iput p9, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->orientation:F

    .line 1113
    iput-wide p10, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->time:J

    .line 1114
    iput-wide p12, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->gestureStart:J

    .line 1115
    iput-boolean p14, v0, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 1118
    :try_start_23
    iget-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {p4, p1, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintService;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 1121
    nop

    .line 1122
    return-void

    .line 1119
    :catch_2a
    move-exception p1

    .line 1120
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist onPowerPressed()V
    .registers 3

    .line 1147
    const-string v0, "FingerprintManager"

    const-string v1, "onPowerPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1149
    return-void
.end method

.method public blacklist onUdfpsUiEvent(IJI)V
    .registers 6

    .line 1129
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 1130
    const-string p1, "FingerprintManager"

    const-string p2, "onUdfpsUiEvent: no fingerprint service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-void

    .line 1135
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintService;->onUdfpsUiEvent(IJI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1138
    nop

    .line 1139
    return-void

    .line 1136
    :catch_13
    move-exception p1

    .line 1137
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V
    .registers 3

    .line 995
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 998
    nop

    .line 999
    return-void

    .line 996
    :catch_7
    move-exception p1

    .line 997
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .registers 12

    .line 875
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_29

    .line 876
    :try_start_4
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1, p1}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;ILandroid/hardware/fingerprint/Fingerprint;)V

    .line 878
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v4

    new-instance v6, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v6, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 880
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 878
    move v5, p2

    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 883
    goto :goto_29

    .line 881
    :catch_22
    move-exception v0

    move-object p1, v0

    .line 882
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 884
    :cond_29
    :goto_29
    return-void
.end method

.method public blacklist removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .registers 6

    .line 892
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_24

    .line 894
    :try_start_4
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/hardware/fingerprint/FingerprintCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;ILandroid/hardware/fingerprint/Fingerprint;)V

    .line 896
    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;

    invoke-direct {v2, p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintServiceReceiver;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintCallback;)V

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 898
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 896
    invoke-interface {p2, v1, p1, v2, v0}, Landroid/hardware/fingerprint/IFingerprintService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 901
    goto :goto_24

    .line 899
    :catch_1e
    move-exception p1

    .line 900
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 903
    :cond_24
    :goto_24
    return-void
.end method

.method public greylist-max-o rename(IILjava/lang/String;)V
    .registers 5

    .line 916
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_10

    .line 918
    :try_start_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 921
    goto :goto_17

    .line 919
    :catch_a
    move-exception p1

    .line 920
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 923
    :cond_10
    const-string p1, "FingerprintManager"

    const-string p2, "rename(): Service not connected!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :goto_17
    return-void
.end method

.method public blacklist resetLockout(II[B)V
    .registers 11

    .line 854
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1c

    .line 856
    :try_start_4
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 857
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 856
    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 860
    goto :goto_1c

    .line 858
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 859
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 862
    :cond_1c
    :goto_1c
    return-void
.end method

.method public blacklist revokeChallenge(IJ)V
    .registers 11

    .line 829
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_2d

    .line 831
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getFirstFingerprintSensor()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    .line 832
    if-nez v0, :cond_12

    .line 833
    const-string p1, "FingerprintManager"

    const-string p2, "No sensors"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void

    .line 836
    :cond_12
    move-object v1, v0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    move-object v2, v1

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 837
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 836
    move v3, p1

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_25} :catch_26

    .line 840
    goto :goto_2d

    .line 838
    :catch_26
    move-exception v0

    move-object p1, v0

    .line 839
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 842
    :cond_2d
    :goto_2d
    return-void
.end method

.method public blacklist scheduleWatchdog()V
    .registers 2

    .line 1293
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->scheduleWatchdog()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1296
    nop

    .line 1297
    return-void

    .line 1294
    :catch_7
    move-exception v0

    .line 1295
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist setIgnoreDisplayTouches(JIZ)V
    .registers 6

    .line 712
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 713
    const-string p1, "FingerprintManager"

    const-string p2, "setIgnoreDisplayTouches: no fingerprint service"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 718
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintService;->setIgnoreDisplayTouches(JIZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 721
    nop

    .line 722
    return-void

    .line 719
    :catch_13
    move-exception p1

    .line 720
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3

    .line 976
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_c

    .line 977
    const-string p1, "FingerprintManager"

    const-string v0, "setUdfpsOverlayController: no fingerprint service"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 982
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 985
    nop

    .line 986
    return-void

    .line 983
    :catch_13
    move-exception p1

    .line 984
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
