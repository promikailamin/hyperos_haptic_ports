.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;
    }
.end annotation


# static fields
.field private static final COMMAND_ENROLL_RESET_ENROLL_LOGIC:I = 0x1

.field private static final COMMAND_ENROLL_RESUME_ENROLL_LOGIC:I = 0x0

.field private static final COMMAND_ENROLL_STOP_ENROLL_LOGIC:I = 0x2

.field private static mCanNextFaceInputStep:Z


# instance fields
.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

.field private mFaceInputStep:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLazySession:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field private final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field private final mTag:Ljava/lang/String;

.field private mTestHalEnabled:Z

.field private final mToken:Landroid/os/IBinder;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLazySession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockoutCache(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvider(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmCanNextFaceInputStep()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCanNextFaceInputStep:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmCanNextFaceInputStep(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCanNextFaceInputStep:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCanNextFaceInputStep:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "sensorProperties"    # Landroid/hardware/face/FaceSensorPropertiesInternal;
    .param p6, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p7, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 528
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    .line 529
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 530
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 531
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 532
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 533
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 534
    new-instance v1, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    new-instance v6, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    new-instance v7, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;

    invoke-direct {v7, p0, p7, p6, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    .line 584
    new-instance v1, Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/LockoutCache;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 585
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 586
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 589
    :try_start_45
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 592
    goto :goto_55

    .line 590
    :catch_4d
    move-exception v0

    .line 591
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v2, "Unable to register user switch observer"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_55
    return-void
.end method


# virtual methods
.method createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 9
    .param p1, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;

    .line 612
    new-instance v6, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    move-object v0, v6

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    return-object v6
.end method

.method dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 20
    .param p1, "sensorId"    # I
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "clearSchedulerBuffer"    # Z

    .line 648
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide v2, 0x20b00000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 650
    .local v2, "sensorToken":J
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 651
    const-wide v7, 0x10e00000002L

    const/4 v4, 0x2

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 652
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 653
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v4

    .line 652
    const-wide v7, 0x10500000003L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 654
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->dumpProtoState(Z)[B

    move-result-object v4

    const-wide v8, 0x10b00000004L

    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 656
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 657
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 659
    .local v9, "userId":I
    const-wide v10, 0x20b00000005L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 660
    .local v10, "userToken":J
    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 661
    const-wide v12, 0x10500000002L

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v14, v14, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 662
    invoke-static {v14}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 663
    invoke-virtual {v14, v15, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 661
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 664
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 665
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    .end local v10    # "userToken":J
    goto :goto_50

    .line 667
    :cond_8e
    const-wide v4, 0x10800000006L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 669
    const-wide v4, 0x10800000007L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 672
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 673
    return-void
.end method

.method public extCmd(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IILjava/lang/String;)I
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p3, "cmd"    # I
    .param p4, "param"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 696
    const/4 v0, 0x1

    if-nez p3, :cond_b

    .line 697
    sput-boolean v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCanNextFaceInputStep:Z

    .line 698
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mFaceInputStep:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mFaceInputStep:I

    .line 699
    return v0

    .line 700
    :cond_b
    const/4 v1, 0x0

    if-ne p3, v0, :cond_1a

    .line 701
    sput-boolean v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCanNextFaceInputStep:Z

    .line 702
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mFaceInputStep:I

    .line 704
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->setEnrollStep(I)V

    .line 705
    return v0

    .line 707
    :cond_1a
    return v1
.end method

.method getAuthenticatorIds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    return-object v0
.end method

.method getLazySession()Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-object v0
.end method

.method getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;
    .registers 2

    .line 621
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    return-object v0
.end method

.method getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    return-object v0
.end method

.method getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object v0
.end method

.method getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .registers 3
    .param p1, "userId"    # I

    .line 604
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_d

    .line 605
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-object v0

    .line 607
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-server-biometrics-sensors-face-aidl-Sensor()I
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getUserId()I

    move-result v0

    goto :goto_b

    :cond_9
    const/16 v0, -0x2710

    :goto_b
    return v0
.end method

.method synthetic lambda$new$1$com-android-server-biometrics-sensors-face-aidl-Sensor()Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .registers 2

    .line 586
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method

.method public onBinderDied()V
    .registers 7

    .line 676
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 677
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v1, :cond_31

    .line 678
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 680
    .local v1, "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 683
    const/16 v2, 0x94

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-static {v2, v4, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 689
    .end local v1    # "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    :cond_31
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->recordCrashState()V

    .line 690
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->reset()V

    .line 691
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 692
    return-void
.end method

.method setTestHalEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 629
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestHalEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    if-eq p1, v0, :cond_3d

    .line 633
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v0, :cond_31

    .line 635
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v1, "Closing old session"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_31} :catch_32

    .line 640
    :cond_31
    goto :goto_3a

    .line 638
    :catch_32
    move-exception v0

    .line 639
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 643
    :cond_3d
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 644
    return-void
.end method
