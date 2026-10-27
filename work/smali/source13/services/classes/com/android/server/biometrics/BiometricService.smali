.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricService$Injector;,
        Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;,
        Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;,
        Lcom/android/server/biometrics/BiometricService$SettingObserver;,
        Lcom/android/server/biometrics/BiometricService$InvalidationTracker;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BiometricService"


# instance fields
.field mAuthSession:Lcom/android/server/biometrics/AuthSession;

.field mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mEnabledOnKeyguardCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field final mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

.field private final mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

.field mKeyStore:Landroid/security/KeyStore;

.field private final mRandom:Ljava/util/Random;

.field private final mRequestCounter:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mSensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;"
        }
    .end annotation
.end field

.field final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mTrustManager:Landroid/app/trust/ITrustManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnabledOnKeyguardCallbacks(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestCounter(Lcom/android/server/biometrics/BiometricService;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkInternalPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->createPreAuthInfo(Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSensorForId(Lcom/android/server/biometrics/BiometricService;I)Lcom/android/server/biometrics/BiometricSensor;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->getSensorForId(I)Lcom/android/server/biometrics/BiometricSensor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAuthenticate(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuthenticationRejected(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationRejected(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuthenticationSucceeded(Lcom/android/server/biometrics/BiometricService;JI[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(JI[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuthenticationTimedOut(Lcom/android/server/biometrics/BiometricService;JIIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationTimedOut(JIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCancelAuthentication(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnAcquired(Lcom/android/server/biometrics/BiometricService;JIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(JIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnDeviceCredentialPressed(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnDeviceCredentialPressed(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnDialogAnimatedIn(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnDialogAnimatedIn(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/BiometricService;JI[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(JI[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnError(Lcom/android/server/biometrics/BiometricService;JIIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService;->handleOnError(JIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnReadyForAuthentication(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnSystemEvent(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnSystemEvent(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnTryAgainPressed(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 980
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V

    .line 981
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/biometrics/BiometricService$Injector;

    .line 985
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 987
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 988
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 989
    new-instance v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper-IA;)V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 990
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 991
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 993
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getRequestGenerator()Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Ljava/util/function/Supplier;

    .line 998
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v0

    .line 999
    .local v0, "coexCoordinator":Lcom/android/server/biometrics/sensors/CoexCoordinator;
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->isAdvancedCoexLogicEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->setAdvancedLogicEnabled(Z)V

    .line 1000
    nop

    .line 1001
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->isCoexFaceNonBypassHapticsDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 1000
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->setFaceHapticDisabledWhenNonBypass(Z)V

    .line 1004
    :try_start_52
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class v3, Lcom/android/server/biometrics/BiometricService;

    .line 1011
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1004
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_64} :catch_65

    .line 1015
    goto :goto_6d

    .line 1013
    :catch_65
    move-exception v1

    .line 1014
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricService"

    const-string v3, "Failed to register user switch observer"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1016
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6d
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V
    .registers 35
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J
    .param p4, "operationId"    # J
    .param p6, "userId"    # I
    .param p7, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p10, "preAuthInfo"    # Lcom/android/server/biometrics/PreAuthInfo;

    .line 1273
    move-object/from16 v1, p0

    move-wide/from16 v13, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating authSession with authRequest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v15, p10

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "BiometricService"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz v0, :cond_43

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing AuthSession: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    .line 1283
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1286
    :cond_43
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v12, p6

    invoke-virtual {v0, v2, v12}, Lcom/android/server/biometrics/BiometricService$Injector;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v22

    .local v22, "debugEnabled":Z
    move/from16 v20, v22

    .line 1287
    new-instance v0, Lcom/android/server/biometrics/AuthSession;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1288
    invoke-direct {v1, v13, v14}, Lcom/android/server/biometrics/BiometricService;->createSysuiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 1289
    invoke-direct {v1, v13, v14}, Lcom/android/server/biometrics/BiometricService;->createClientDeathReceiver(J)Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    move-result-object v8

    .line 1290
    invoke-direct {v1, v13, v14}, Lcom/android/server/biometrics/BiometricService;->createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v16

    iget-object v9, v1, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/biometrics/BiometricService$Injector;->getFingerprintSensorProperties(Landroid/content/Context;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v9, p10

    move-object/from16 v10, p1

    move-object/from16 v23, v11

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    invoke-direct/range {v2 .. v21}, Lcom/android/server/biometrics/AuthSession;-><init>(Landroid/content/Context;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStore;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;)V

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1294
    :try_start_8b
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->goToInitialState()V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 1297
    goto :goto_99

    .line 1295
    :catch_8f
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    move-object/from16 v3, v23

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1298
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_99
    return-void
.end method

.method private checkInternalPermission()V
    .registers 4

    .line 858
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method private createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .registers 4
    .param p1, "requestId"    # J

    .line 420
    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method private createClientDeathReceiver(J)Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;
    .registers 4
    .param p1, "requestId"    # J

    .line 486
    new-instance v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method private createPreAuthInfo(Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .registers 14
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 868
    new-instance v0, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 869
    .local v0, "promptInfo":Landroid/hardware/biometrics/PromptInfo;
    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 871
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 873
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 871
    const/4 v8, 0x0

    move v5, p2

    move-object v6, v0

    move-object v7, p1

    invoke-static/range {v1 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object v1

    return-object v1
.end method

.method private createSysuiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .registers 4
    .param p1, "requestId"    # J

    .line 456
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy Settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->-$$Nest$fgetmUseLegacyFaceOnlySettings(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1329
    const-string v0, "Sensors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1331
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_2a

    .line 1333
    :cond_4d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoexCoordinator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1338
    return-void
.end method

.method private getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;
    .registers 6
    .param p1, "requestId"    # J

    .line 1041
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1042
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->getRequestId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_d

    .line 1043
    return-object v0

    .line 1045
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSensorForId(I)Lcom/android/server/biometrics/BiometricSensor;
    .registers 5
    .param p1, "sensorId"    # I

    .line 1317
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1318
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v2, p1, :cond_17

    .line 1319
    return-object v1

    .line 1321
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_17
    goto :goto_6

    .line 1322
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleAuthenticate(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 24
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J
    .param p4, "operationId"    # J
    .param p6, "userId"    # I
    .param p7, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;

    .line 1221
    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p8

    move-wide/from16 v5, p2

    move-object v7, p1

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1259
    return-void
.end method

.method private handleAuthenticationRejected(JI)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 1062
    const-string v0, "BiometricService"

    const-string/jumbo v1, "handleAuthenticationRejected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v1

    .line 1067
    .local v1, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v1, :cond_15

    .line 1068
    const-string/jumbo v2, "handleAuthenticationRejected: AuthSession is not current"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void

    .line 1072
    :cond_15
    invoke-virtual {v1, p3}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationRejected(I)V

    .line 1073
    return-void
.end method

.method private handleAuthenticationSucceeded(JI[B)V
    .registers 8
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "token"    # [B

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAuthenticationSucceeded(), sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1053
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v0, :cond_26

    .line 1054
    const-string/jumbo v2, "handleAuthenticationSucceeded: AuthSession is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return-void

    .line 1058
    :cond_26
    invoke-direct {p0, p3}, Lcom/android/server/biometrics/BiometricService;->isStrongBiometric(I)Z

    move-result v1

    invoke-virtual {v0, p3, v1, p4}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationSucceeded(IZ[B)V

    .line 1059
    return-void
.end method

.method private handleAuthenticationTimedOut(JIIII)V
    .registers 10
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "cookie"    # I
    .param p5, "error"    # I
    .param p6, "vendorCode"    # I

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAuthenticationTimedOut(), sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1084
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v0, :cond_44

    .line 1085
    const-string/jumbo v2, "handleAuthenticationTimedOut: AuthSession is not current"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-void

    .line 1089
    :cond_44
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationTimedOut(IIII)V

    .line 1090
    return-void
.end method

.method private handleCancelAuthentication(J)V
    .registers 7
    .param p1, "requestId"    # J

    .line 1301
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1302
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    const-string v1, "BiometricService"

    if-nez v0, :cond_f

    .line 1303
    const-string/jumbo v2, "handleCancelAuthentication: AuthSession is not current"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    return-void

    .line 1308
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    move-result v2

    .line 1309
    .local v2, "finished":Z
    if-eqz v2, :cond_1f

    .line 1310
    const-string/jumbo v3, "handleCancelAuthentication: AuthSession finished"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1313
    :cond_1f
    return-void
.end method

.method private handleClientDied(J)V
    .registers 7
    .param p1, "requestId"    # J

    .line 1177
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1178
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    const-string v1, "BiometricService"

    if-nez v0, :cond_f

    .line 1179
    const-string/jumbo v2, "handleClientDied: AuthSession is not current"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void

    .line 1183
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->onClientDied()Z

    move-result v1

    .line 1185
    .local v1, "finished":Z
    if-eqz v1, :cond_2e

    .line 1186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1188
    :cond_2e
    return-void
.end method

.method private handleOnAcquired(JIII)V
    .registers 9
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "acquiredInfo"    # I
    .param p5, "vendorCode"    # I

    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1120
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v0, :cond_f

    .line 1121
    const-string v1, "BiometricService"

    const-string/jumbo v2, "onAcquired: AuthSession is not current"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1125
    :cond_f
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/biometrics/AuthSession;->onAcquired(III)V

    .line 1126
    return-void
.end method

.method private handleOnDeviceCredentialPressed(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 1154
    const-string v0, "BiometricService"

    const-string/jumbo v1, "onDeviceCredentialPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v1

    .line 1156
    .local v1, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v1, :cond_15

    .line 1157
    const-string/jumbo v2, "handleOnDeviceCredentialPressed: AuthSession is not current"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return-void

    .line 1161
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->onDeviceCredentialPressed()V

    .line 1162
    return-void
.end method

.method private handleOnDialogAnimatedIn(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 1191
    const-string v0, "BiometricService"

    const-string/jumbo v1, "handleOnDialogAnimatedIn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v1

    .line 1194
    .local v1, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v1, :cond_15

    .line 1195
    const-string/jumbo v2, "handleOnDialogAnimatedIn: AuthSession is not current"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return-void

    .line 1199
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->onDialogAnimatedIn()V

    .line 1200
    return-void
.end method

.method private handleOnDismissed(JI[B)V
    .registers 8
    .param p1, "requestId"    # J
    .param p3, "reason"    # I
    .param p4, "credentialAttestation"    # [B

    .line 1130
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1131
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v0, :cond_26

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDismissed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AuthSession is not current"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return-void

    .line 1136
    :cond_26
    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/AuthSession;->onDialogDismissed(I[B)V

    .line 1137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1138
    return-void
.end method

.method private handleOnError(JIIII)V
    .registers 11
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "cookie"    # I
    .param p5, "error"    # I
    .param p6, "vendorCode"    # I

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleOnError() sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1100
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v0, :cond_44

    .line 1101
    const-string/jumbo v2, "handleOnError: AuthSession is not current"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return-void

    .line 1106
    :cond_44
    :try_start_44
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/biometrics/AuthSession;->onErrorReceived(IIII)Z

    move-result v2

    .line 1107
    .local v2, "finished":Z
    if-eqz v2, :cond_53

    .line 1108
    const-string/jumbo v3, "handleOnError: AuthSession finished"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_53} :catch_54

    .line 1113
    .end local v2    # "finished":Z
    :cond_53
    goto :goto_5a

    .line 1111
    :catch_54
    move-exception v2

    .line 1112
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5a
    return-void
.end method

.method private handleOnReadyForAuthentication(JI)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "cookie"    # I

    .line 1207
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1208
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v0, :cond_f

    .line 1212
    const-string v1, "BiometricService"

    const-string/jumbo v2, "handleOnReadyForAuthentication: AuthSession is not current"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void

    .line 1216
    :cond_f
    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/AuthSession;->onCookieReceived(I)V

    .line 1217
    return-void
.end method

.method private handleOnSystemEvent(JI)V
    .registers 7
    .param p1, "requestId"    # J
    .param p3, "event"    # I

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSystemEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    .line 1168
    .local v0, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v0, :cond_26

    .line 1169
    const-string/jumbo v2, "handleOnSystemEvent: AuthSession is not current"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return-void

    .line 1173
    :cond_26
    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/AuthSession;->onSystemEvent(I)V

    .line 1174
    return-void
.end method

.method private handleOnTryAgainPressed(J)V
    .registers 6
    .param p1, "requestId"    # J

    .line 1141
    const-string v0, "BiometricService"

    const-string/jumbo v1, "onTryAgainPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v1

    .line 1145
    .local v1, "session":Lcom/android/server/biometrics/AuthSession;
    if-nez v1, :cond_15

    .line 1146
    const-string/jumbo v2, "handleOnTryAgainPressed: AuthSession is not current"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void

    .line 1150
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->onTryAgainPressed()V

    .line 1151
    return-void
.end method

.method private isStrongBiometric(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 1029
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1030
    .local v1, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v2, p1, :cond_21

    .line 1031
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v0

    const/16 v2, 0xf

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    return v0

    .line 1034
    .end local v1    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_21
    goto :goto_6

    .line 1035
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method synthetic lambda$createClientDeathReceiver$0$com-android-server-biometrics-BiometricService(J)V
    .registers 3
    .param p1, "requestId"    # J

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleClientDied(J)V

    return-void
.end method

.method synthetic lambda$createClientDeathReceiver$1$com-android-server-biometrics-BiometricService(J)V
    .registers 5
    .param p1, "requestId"    # J

    .line 486
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$handleAuthenticate$2$com-android-server-biometrics-BiometricService(ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .registers 26
    .param p1, "userId"    # I
    .param p2, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "requestId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "operationId"    # J
    .param p9, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1223
    move-object/from16 v12, p0

    const-string v13, "BiometricService"

    :try_start_4
    iget-object v1, v12, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v2, v12, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v12, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v4, v12, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    move-result v8

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 1223
    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object v0

    .line 1228
    .local v0, "preAuthInfo":Lcom/android/server/biometrics/PreAuthInfo;
    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    move-result-object v1

    move-object v14, v1

    .line 1230
    .local v14, "preAuthStatus":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAuthenticate: modality("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), status("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), preAuthInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v10, p4

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " promptInfo.isIgnoreEnrollmentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1230
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v1, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9c

    iget-object v1, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1237
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_85

    move-object/from16 v15, p9

    goto :goto_9e

    .line 1251
    :cond_85
    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1252
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_95} :catch_d7

    const/4 v3, 0x0

    .line 1251
    move-object/from16 v15, p9

    :try_start_98
    invoke-interface {v15, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_d4

    .line 1236
    :cond_9c
    move-object/from16 v15, p9

    .line 1243
    :goto_9e
    iget-boolean v1, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a0} :catch_d5

    if-eqz v1, :cond_be

    :try_start_a2
    iget-boolean v1, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_be

    iget-object v1, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 1244
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_ac} :catch_ba

    if-eqz v1, :cond_b7

    .line 1245
    const v1, 0x8000

    move-object/from16 v9, p2

    :try_start_b3
    invoke-virtual {v9, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    goto :goto_c0

    .line 1244
    :cond_b7
    move-object/from16 v9, p2

    goto :goto_c0

    .line 1255
    .end local v0    # "preAuthInfo":Lcom/android/server/biometrics/PreAuthInfo;
    .end local v14    # "preAuthStatus":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_ba
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_da

    .line 1243
    .restart local v0    # "preAuthInfo":Lcom/android/server/biometrics/PreAuthInfo;
    .restart local v14    # "preAuthStatus":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_be
    move-object/from16 v9, p2

    .line 1248
    :goto_c0
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    move-wide/from16 v5, p7

    move/from16 v7, p1

    move-object/from16 v8, p9

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_d4} :catch_d5

    .line 1257
    .end local v0    # "preAuthInfo":Lcom/android/server/biometrics/PreAuthInfo;
    .end local v14    # "preAuthStatus":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_d4
    goto :goto_df

    .line 1255
    :catch_d5
    move-exception v0

    goto :goto_da

    :catch_d7
    move-exception v0

    move-object/from16 v15, p9

    .line 1256
    .local v0, "e":Landroid/os/RemoteException;
    :goto_da
    const-string v1, "Remote exception"

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_df
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1020
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    .line 1021
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1022
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 1023
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V

    .line 1024
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 1025
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricStrengthController;->startListening()V

    .line 1026
    return-void
.end method
