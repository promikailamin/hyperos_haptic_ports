.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "BiometricService.java"


# instance fields
.field mAuthSession:Lcom/android/server/biometrics/AuthSession;

.field mAuthenticationPolicyManager:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

.field public final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

.field mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mEnabledOnKeyguardCallbacks:Ljava/util/List;

.field mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mHandler:Landroid/os/Handler;

.field public final mIdentityCheckStateListeners:Ljava/util/List;

.field final mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

.field public final mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

.field mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mRandom:Ljava/util/Random;

.field public final mRequestCounter:Ljava/util/function/Supplier;

.field public final mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$CmVOENY8IdAaMEf_QUxGOSguP4U(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/biometrics/BiometricService;->lambda$handleAuthenticate$2(ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CvTgGFu-J4JV962Mv6dITI6-xBY(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->lambda$createClientDeathReceiver$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBJAJrsZwlWaoxKYP2XZFmwTfLA(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->lambda$createClientDeathReceiver$0(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricContext(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/log/BiometricContext;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricNotificationLogger(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricNotificationLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabledOnKeyguardCallbacks(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdentityCheckStateListeners(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mIdentityCheckStateListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestCounter(Lcom/android/server/biometrics/BiometricService;)Ljava/util/function/Supplier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/biometrics/BiometricService;)Landroid/os/UserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->createPreAuthInfo(Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSensorForId(Lcom/android/server/biometrics/BiometricService;I)Lcom/android/server/biometrics/BiometricSensor;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService;->getSensorForId(I)Lcom/android/server/biometrics/BiometricSensor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticate(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationRejected(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationRejected(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationSucceeded(Lcom/android/server/biometrics/BiometricService;JI[B)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(JI[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthenticationTimedOut(Lcom/android/server/biometrics/BiometricService;JIIII)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationTimedOut(JIIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCancelAuthentication(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnAcquired(Lcom/android/server/biometrics/BiometricService;JIII)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(JIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDeviceCredentialPressed(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnDeviceCredentialPressed(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDialogAnimatedIn(Lcom/android/server/biometrics/BiometricService;JZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnDialogAnimatedIn(JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/BiometricService;JI[B)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(JI[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnError(Lcom/android/server/biometrics/BiometricService;JIIII)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService;->handleOnError(JIIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnPauseAuthentication(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnPauseAuthentication(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnReadyForAuthentication(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnResumeAuthentication(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnResumeAuthentication(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnStartFingerprintNow(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnStartFingerprintNow(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnSystemEvent(Lcom/android/server/biometrics/BiometricService;JI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnSystemEvent(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOnTryAgainPressed(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1529
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricService$Injector;-><init>()V

    invoke-static {}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getInstance()Lcom/android/server/biometrics/BiometricHandlerProvider;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;Lcom/android/server/biometrics/BiometricHandlerProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;Lcom/android/server/biometrics/BiometricHandlerProvider;)V
    .registers 6

    .line 1535
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 148
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1537
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1538
    invoke-virtual {p3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 1539
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1540
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService-IA;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 1541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 1542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mIdentityCheckStateListeners:Ljava/util/List;

    .line 1543
    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 1545
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getRequestGenerator()Ljava/util/function/Supplier;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Ljava/util/function/Supplier;

    .line 1546
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricContext(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 1547
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    .line 1548
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricCameraManager(Landroid/content/Context;)Lcom/android/server/biometrics/BiometricCameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    .line 1549
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getKeyStoreAuthorization()Landroid/security/KeyStoreAuthorization;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 1550
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

    .line 1551
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getNotificationLogger()Lcom/android/server/biometrics/BiometricNotificationLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

    .line 1554
    :try_start_65
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class p0, Lcom/android/server/biometrics/BiometricService;

    .line 1569
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1554
    invoke-interface {p1, p2, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_77} :catch_78

    return-void

    :catch_78
    move-exception p0

    .line 1572
    const-string p1, "BiometricService"

    const-string p2, "Failed to register user switch observer"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy Settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->-$$Nest$fgetmUseLegacyFaceOnlySettings(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1987
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1989
    const-string v0, "Sensors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 1993
    :cond_49
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method


# virtual methods
.method public final authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V
    .registers 35

    move-object/from16 v0, p0

    move-wide/from16 v11, p2

    .line 1911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating authSession with authRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "BiometricService"

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz v1, :cond_3f

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing AuthSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    const/4 v1, 0x0

    .line 1921
    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1924
    :cond_3f
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthenticationPolicyManager:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    if-nez v1, :cond_56

    .line 1925
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricService$Injector;->getAuthenticationPolicyManager(Landroid/content/Context;)Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthenticationPolicyManager:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    if-nez v1, :cond_56

    .line 1928
    const-string v1, "AuthenticationPolicyManager is null"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_56
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v15, p6

    invoke-virtual {v1, v2, v15}, Lcom/android/server/biometrics/BiometricService$Injector;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v20

    .line 1933
    new-instance v8, Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v14, v0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1934
    invoke-virtual {v0, v11, v12}, Lcom/android/server/biometrics/BiometricService;->createSysuiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    move-object/from16 v17, v7

    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    move-object/from16 v18, v8

    .line 1935
    invoke-virtual {v0, v11, v12}, Lcom/android/server/biometrics/BiometricService;->createClientDeathReceiver(J)Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    move-result-object v8

    move-object/from16 v19, v16

    .line 1936
    invoke-virtual {v0, v11, v12}, Lcom/android/server/biometrics/BiometricService;->createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v16

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1938
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/BiometricService$Injector;->getFingerprintSensorProperties(Landroid/content/Context;)Ljava/util/List;

    move-result-object v21

    new-instance v22, Lcom/android/server/biometrics/WatchRangingHelper;

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mAuthenticationPolicyManager:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    iget-object v5, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    move-wide v2, v11

    move-object v11, v1

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/WatchRangingHelper;-><init>(JLandroid/security/authenticationpolicy/AuthenticationPolicyManager;Landroid/os/Handler;Lcom/android/server/biometrics/WatchRangingHelper$WatchRangingListener;)V

    move-object v6, v11

    move-object v4, v14

    move-object/from16 v23, v17

    move-object/from16 v1, v18

    move-object/from16 v5, v19

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-wide v11, v2

    move-object v2, v10

    move-object v3, v13

    move-object/from16 v10, p1

    move-wide/from16 v13, p4

    invoke-direct/range {v1 .. v22}, Lcom/android/server/biometrics/AuthSession;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/WatchRangingHelper;)V

    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 1943
    :try_start_b8
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->goToInitialState()V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_bb} :catch_bc

    return-void

    :catch_bc
    move-exception v0

    .line 1945
    const-string v1, "RemoteException"

    move-object/from16 v2, v23

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .registers 4

    .line 817
    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final createClientDeathReceiver(J)Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;
    .registers 4

    .line 898
    new-instance v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final createPreAuthInfo(Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .registers 15

    .line 1400
    new-instance v5, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v5}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 1401
    invoke-virtual {v5, p3}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 1403
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    iget-object v10, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    const/4 v7, 0x0

    move-object v6, p1

    move v4, p2

    .line 1403
    invoke-static/range {v0 .. v10}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;Landroid/os/UserManager;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method public final createSysuiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .registers 4

    .line 853
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    return-object v0
.end method

.method public final getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;
    .registers 5

    .line 1612
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p0, :cond_d

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getRequestId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSensorForId(I)Lcom/android/server/biometrics/BiometricSensor;
    .registers 4

    .line 1967
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1968
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleAuthenticate(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 22

    .line 1830
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v8, p1

    move-wide v6, p2

    move-wide/from16 v9, p4

    move/from16 v3, p6

    move-object/from16 v11, p7

    move-object/from16 v5, p8

    move-object/from16 v4, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleAuthenticationRejected(JI)V
    .registers 6

    .line 1633
    const-string v0, "handleAuthenticationRejected()"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_13

    .line 1639
    const-string p0, "handleAuthenticationRejected: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1643
    :cond_13
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationRejected(I)V

    return-void
.end method

.method public final handleAuthenticationSucceeded(JI[B)V
    .registers 7

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAuthenticationSucceeded(), sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_22

    .line 1625
    const-string p0, "handleAuthenticationSucceeded: AuthSession is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1629
    :cond_22
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService;->isStrongBiometric(I)Z

    move-result p0

    invoke-virtual {p1, p3, p0, p4}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationSucceeded(IZ[B)V

    return-void
.end method

.method public final handleAuthenticationTimedOut(JIIII)V
    .registers 9

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAuthenticationTimedOut(), sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_3a

    .line 1656
    const-string p0, "handleAuthenticationTimedOut: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1660
    :cond_3a
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/biometrics/AuthSession;->onAuthenticationTimedOut(IIII)V

    return-void
.end method

.method public final handleCancelAuthentication(J)V
    .registers 4

    .line 1951
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    .line 1952
    const-string p2, "BiometricService"

    if-nez p1, :cond_e

    .line 1953
    const-string p0, "handleCancelAuthentication: AuthSession is not current"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 1958
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1960
    const-string p1, "handleCancelAuthentication: AuthSession finished"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1961
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :cond_1d
    return-void
.end method

.method public final handleClientDied(J)V
    .registers 5

    .line 1749
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    .line 1750
    const-string p2, "BiometricService"

    if-nez p1, :cond_e

    .line 1751
    const-string p0, "handleClientDied: AuthSession is not current"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1755
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->onClientDied()Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    .line 1758
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :cond_2b
    return-void
.end method

.method public final handleOnAcquired(JIII)V
    .registers 6

    .line 1690
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_f

    .line 1692
    const-string p0, "BiometricService"

    const-string/jumbo p1, "onAcquired: AuthSession is not current"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1696
    :cond_f
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/biometrics/AuthSession;->onAcquired(III)V

    return-void
.end method

.method public final handleOnDeviceCredentialPressed(J)V
    .registers 5

    .line 1726
    const-string/jumbo v0, "onDeviceCredentialPressed"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_14

    .line 1729
    const-string p0, "handleOnDeviceCredentialPressed: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1733
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onDeviceCredentialPressed()V

    return-void
.end method

.method public final handleOnDialogAnimatedIn(JZ)V
    .registers 6

    .line 1763
    const-string v0, "handleOnDialogAnimatedIn"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_13

    .line 1767
    const-string p0, "handleOnDialogAnimatedIn: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1771
    :cond_13
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onDialogAnimatedIn(Z)V

    return-void
.end method

.method public final handleOnDismissed(JI[B)V
    .registers 5

    .line 1702
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_23

    .line 1704
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onDismissed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", AuthSession is not current"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1708
    :cond_23
    invoke-virtual {p1, p3, p4}, Lcom/android/server/biometrics/AuthSession;->onDialogDismissed(I[B)V

    const/4 p1, 0x0

    .line 1709
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    return-void
.end method

.method public final handleOnError(JIIII)V
    .registers 9

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnError() sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_3a

    .line 1672
    const-string p0, "handleOnError: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1677
    :cond_3a
    :try_start_3a
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/android/server/biometrics/AuthSession;->onErrorReceived(IIII)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 1679
    const-string p1, "handleOnError: AuthSession finished"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1680
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception p0

    goto :goto_4c

    :cond_4b
    return-void

    .line 1683
    :goto_4c
    const-string p1, "RemoteException"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleOnPauseAuthentication(J)V
    .registers 5

    .line 1787
    const-string v0, "handleOnPauseAuthentication"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_13

    .line 1791
    const-string p0, "handleOnPauseAuthentication: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1795
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onPauseAuthentication()V

    return-void
.end method

.method public final handleOnReadyForAuthentication(JI)V
    .registers 4

    .line 1815
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_e

    .line 1820
    const-string p0, "BiometricService"

    const-string p1, "handleOnReadyForAuthentication: AuthSession is not current"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1824
    :cond_e
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onCookieReceived(I)V

    return-void
.end method

.method public final handleOnResumeAuthentication(J)V
    .registers 5

    .line 1799
    const-string v0, "handleOnResumeAuthentication"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_13

    .line 1803
    const-string p0, "handleOnResumeAuthentication: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1807
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onResumeAuthentication()V

    return-void
.end method

.method public final handleOnStartFingerprintNow(J)V
    .registers 5

    .line 1775
    const-string v0, "handleOnStartFingerprintNow"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_13

    .line 1779
    const-string p0, "handleOnStartFingerprintNow: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1783
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onStartFingerprint()V

    return-void
.end method

.method public final handleOnSystemEvent(JI)V
    .registers 6

    .line 1737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSystemEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_23

    .line 1741
    const-string p0, "handleOnSystemEvent: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1745
    :cond_23
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/AuthSession;->onSystemEvent(I)V

    return-void
.end method

.method public final handleOnTryAgainPressed(J)V
    .registers 5

    .line 1713
    const-string/jumbo v0, "onTryAgainPressed"

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_14

    .line 1718
    const-string p0, "handleOnTryAgainPressed: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1722
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->onTryAgainPressed()V

    return-void
.end method

.method public final isStrongBiometric(I)Z
    .registers 4

    .line 1600
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1601
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_6

    .line 1602
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p0

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0

    return p0

    .line 1606
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensorId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$createClientDeathReceiver$0(J)V
    .registers 3

    .line 898
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleClientDied(J)V

    return-void
.end method

.method public final synthetic lambda$createClientDeathReceiver$1(J)V
    .registers 5

    .line 898
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$handleAuthenticate$2(ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .registers 23

    .line 1832
    const-string v12, "BiometricService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1834
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    move-result v8

    .line 1835
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    iget-object v11, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    .line 1832
    invoke-static/range {v1 .. v11}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;Landroid/os/UserManager;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object v10

    .line 1838
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1839
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401bc

    .line 1841
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1840
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_40

    :catch_3d
    move-exception v0

    goto/16 :goto_127

    .line 1845
    :cond_40
    :goto_40
    invoke-virtual {v10}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v1

    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_4d

    move v2, v3

    goto :goto_4e

    :cond_4d
    move v2, v5

    :goto_4e
    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_54

    goto :goto_55

    :cond_54
    move v3, v5

    .line 1851
    :goto_55
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    move-result v1

    if-eqz v1, :cond_9e

    if-eqz v2, :cond_6e

    if-eqz v3, :cond_6e

    .line 1853
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401bb

    .line 1854
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1853
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_9e

    :cond_6e
    if-eqz v2, :cond_7f

    .line 1856
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104045d

    .line 1857
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1856
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_9e

    :cond_7f
    if-eqz v3, :cond_90

    .line 1859
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040422

    .line 1860
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1859
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_9e

    .line 1862
    :cond_90
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10409d8

    .line 1863
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1862
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1867
    :cond_9e
    :goto_9e
    invoke-virtual {v10}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    move-result-object v1

    .line 1869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAuthenticate: modality("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), status("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), preAuthInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " requestId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " promptInfo.isIgnoreEnrollmentState: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1869
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_111

    .line 1880
    iget-boolean v1, v10, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v1, :cond_100

    iget-boolean v1, v10, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_100

    iget-object v1, v10, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 1881
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_100

    const v1, 0x8000

    .line 1882
    invoke-virtual {p2, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 1885
    :cond_100
    iget v6, v10, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    move-object v0, p0

    move-object v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p6

    move-object/from16 v7, p9

    move-wide v2, v3

    move-wide/from16 v4, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V

    return-void

    .line 1888
    :cond_111
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1889
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v7, p9

    .line 1888
    invoke-interface {v7, v0, v1, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_126} :catch_3d

    return-void

    .line 1893
    :goto_127
    const-string v1, "Remote exception"

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1578
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1579
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 1580
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V

    .line 1581
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 1582
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricStrengthController;->startListening()V

    .line 1584
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$4;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricService$4;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
