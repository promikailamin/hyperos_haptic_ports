.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;
.super Landroid/hardware/ISensorPrivacyManager$Stub;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedInternalListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field public final mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

.field public mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

.field public mSuppressReminders:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public static synthetic $r8$lambda$1Hb4a2aX7-Cg8zP4a5K2P10E1uY(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$userSwitching$8([ZI[Z[ZI[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4ASAP2NtxClBlWT0L_Mp4qb9t60(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZLjava/lang/Integer;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyForProfileGroup$7(IIIZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YvnU_XQ8KZnw0qRQcJ8elN8zr8(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIZJZ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIZJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNNrOzh72CB48YCYTefj-5Ur_i8(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUserReminderDialog(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5UJAff4UqfWh7ynVZTZYqCQLWo(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ[JZ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyUnchecked$5(IIIZ[JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hkd26DN4nuSefr9gIihdZGLrYG0(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIJZ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyStateToggle(IIIJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LWErkewuSQjm1-ZNatckHx4ENbk(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIILjava/lang/Integer;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyStateForProfileGroup$4(IIIILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MgWM2tYuFxXDGXygMm-xP8eWSNA(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$userSwitching$9([ZI[Z[ZI[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ub_q5m6N3HI6HgtdCycPZ7WY5_w(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialog(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XuReIy-L0A4ALWOhrtfFXpmomtA(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III[JZI)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyUnchecked$6(III[JZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$hHW_75kPIFgOeizyyjsWYeCp1U4(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$correctStateIfNeeded$1(IIILcom/android/server/sensorprivacy/SensorState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iiIiQJuf0b86Y0-N_U7kq4uM2ds(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III[JII)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyStateUnchecked$3(III[JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOiKzW_1NwRYam4a5FklNHaZ-S0(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$new$0(IIILcom/android/server/sensorprivacy/SensorState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mfjJZlfTpOtZ0b9Z-_epju6_u7M(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIII[JZ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyStateUnchecked$2(IIII[JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorPrivacyStateController(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misAutomotive(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/content/Context;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isAutomotive(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misToggleSensorPrivacyEnabledInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogSensorPrivacyToggle(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIZJZ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIZJZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterSettingsObserver(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->registerSettingsObserver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSuppressPackageReminderToken(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msensorStrToId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->sensorStrToId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetGlobalRestriction(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowSensorStateChangedActivity(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorStateChangedActivity(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->userSwitching(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .registers 11

    .line 307
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;-><init>()V

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 273
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 277
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    .line 308
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 309
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 311
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->correctStateIfNeeded()V

    const/16 v1, 0x65

    const/16 v2, 0x79

    const/16 v3, 0x1b

    const/16 v4, 0x64

    const/16 v5, 0x1a

    .line 313
    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 315
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 316
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 319
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetACTION_DISABLE_TOGGLE_SENSOR_PRIVACY()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v6, "android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 339
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 352
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 353
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;)V

    .line 352
    invoke-virtual {p1, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setAllSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V

    .line 354
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V

    return-void
.end method


# virtual methods
.method public addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 3

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    if-eqz p1, :cond_f

    .line 1335
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addListener(Landroid/hardware/ISensorPrivacyListener;I)V

    return-void

    .line 1333
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 3

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    if-eqz p1, :cond_f

    .line 1347
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addToggleListener(Landroid/hardware/ISensorPrivacyListener;I)V

    return-void

    .line 1345
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public binderDied()V
    .registers 1

    .line 0
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 5

    .line 1555
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1556
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1557
    invoke-virtual {p0, v2, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    goto :goto_d

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 1559
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public final canChangeToggleSensorPrivacy(II)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1a

    .line 1093
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCallStateHelper(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->isInEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1095
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t change mic toggle during an emergency call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1099
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->requiresAuthentication()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/KeyguardManager;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/KeyguardManager;

    move-result-object v2

    .line 1100
    invoke-virtual {v2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1101
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t change mic/cam toggle while device is locked"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3e
    if-ne p2, v1, :cond_58

    .line 1105
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    const-string v3, "disallow_microphone_toggle"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1107
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t change mic toggle due to admin restriction"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_58
    const/4 v2, 0x2

    if-ne p2, v2, :cond_73

    .line 1111
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    const-string p2, "disallow_camera_toggle"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_73

    .line 1113
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t change camera toggle due to admin restriction"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_73
    return v1
.end method

.method public final correctStateIfNeeded()V
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->forEachState(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 1569
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1575
    :goto_17
    array-length v3, p3

    if-ge v1, v3, :cond_53

    .line 1576
    aget-object v3, p3, v1

    if-eqz v3, :cond_53

    .line 1577
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_53

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2d

    goto :goto_53

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    .line 1581
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v2, 0x1

    goto :goto_17

    .line 1584
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    .line 1588
    :cond_53
    :goto_53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz v2, :cond_6b

    .line 1591
    :try_start_59
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    goto :goto_81

    :catchall_69
    move-exception p0

    goto :goto_85

    .line 1594
    :cond_6b
    const-string p1, "SENSOR PRIVACY MANAGER STATE (dumpsys sensor_privacy)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance p1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p3, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {p3, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    :try_end_81
    .catchall {:try_start_59 .. :try_end_81} :catchall_69

    .line 1601
    :goto_81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1602
    throw p0
.end method

.method public final enforceManageSensorPrivacyPermission()V
    .registers 2

    .line 1232
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    return-void

    .line 1239
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Changing sensor privacy requires the following permission: android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceObserveSensorPrivacyPermission()V
    .registers 6

    .line 1248
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1249
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const-wide/32 v2, 0x100000

    const/4 v4, 0x0

    .line 1250
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1249
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1251
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v1

    if-ne v1, v0, :cond_26

    goto :goto_34

    .line 1255
    :cond_26
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.OBSERVE_SENSOR_PRIVACY"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_35

    :goto_34
    return-void

    .line 1262
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Observing sensor privacy changes requires the following permission: android.permission.OBSERVE_SENSOR_PRIVACY"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceValidCallingUser(I)V
    .registers 4

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isValidCallingUser(I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1196
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not permitted to toggle sensor privacy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enqueueSensorUseReminderDialog(ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 10

    const/4 v0, 0x2

    .line 614
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 616
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 610
    new-instance v4, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 612
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 613
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    if-ne p4, v2, :cond_2b

    .line 614
    iget-object p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3a

    :cond_2b
    if-ne p4, v0, :cond_41

    iget-object p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/Pair;

    .line 616
    invoke-direct {v0, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 617
    :cond_3a
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 620
    :cond_41
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_48
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {p2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p2, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 628
    :cond_5e
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 629
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 12

    .line 603
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda9;-><init>()V

    .line 604
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 605
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 603
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getCameraPrivacyAllowlist()Ljava/util/List;
    .registers 1

    .line 997
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 998
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    return-object p0
.end method

.method public final getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;
    .registers 4

    .line 671
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 672
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10402fe

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 677
    :cond_2d
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10402fd

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleSensorPrivacyState(II)I
    .registers 4

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1057
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result p0

    return p0
.end method

.method public final isAutomotive(Landroid/content/Context;)Z
    .registers 2

    .line 795
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x3

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraPrivacyEnabled(Ljava/lang/String;)Z
    .registers 6

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1026
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v0

    if-ne v0, v2, :cond_18

    return v2

    :cond_18
    const/4 v1, 0x0

    if-ne v0, v3, :cond_1c

    return v1

    :cond_1c
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3b

    .line 1033
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1034
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v1

    :cond_3a
    return v2

    :cond_3b
    return v1
.end method

.method public isCombinedToggleSensorPrivacyEnabled(I)Z
    .registers 4

    const/4 v0, 0x1

    .line 1292
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x2

    .line 1293
    invoke-virtual {p0, v1, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    return v0
.end method

.method public isSensorPrivacyEnabled()Z
    .registers 1

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1271
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getAllSensorState()Z

    move-result p0

    return p0
.end method

.method public final isTelevision(Landroid/content/Context;)Z
    .registers 2

    .line 789
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x4

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isToggleSensorPrivacyEnabled(II)Z
    .registers 4

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1286
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final isToggleSensorPrivacyEnabledInternal(III)Z
    .registers 4

    .line 1299
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final isValidCallingUser(I)Z
    .registers 6

    .line 1206
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p1, :cond_37

    .line 1210
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v0

    if-ne p1, v0, :cond_13

    goto :goto_37

    .line 1214
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1216
    :try_start_17
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/UserManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result p0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_32

    if-eqz p0, :cond_2d

    .line 1220
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_2d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1221
    throw p0

    :cond_37
    :goto_37
    return v1
.end method

.method public final synthetic lambda$correctStateIfNeeded$1(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_19

    .line 374
    :cond_4
    invoke-virtual {p0, v0, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->supportsSensorToggle(II)Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {p4}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move v4, p3

    .line 375
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final synthetic lambda$new$0(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 7

    .line 357
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 358
    invoke-virtual {p4}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result v1

    .line 357
    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 360
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 361
    invoke-virtual {p4}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result p4

    .line 360
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIII)V

    return-void
.end method

.method public final synthetic lambda$setToggleSensorPrivacyForProfileGroup$7(IIIZLjava/lang/Integer;)V
    .registers 8

    .line 1184
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 1185
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    :cond_17
    return-void
.end method

.method public final synthetic lambda$setToggleSensorPrivacyStateForProfileGroup$4(IIIILjava/lang/Integer;)V
    .registers 8

    .line 987
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 988
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyState(IIII)V

    :cond_17
    return-void
.end method

.method public final synthetic lambda$setToggleSensorPrivacyStateUnchecked$2(IIII[JZ)V
    .registers 14

    if-eqz p6, :cond_32

    .line 904
    iget-object p6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p6

    if-ne p1, p6, :cond_32

    .line 905
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda13;-><init>()V

    .line 908
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 p2, 0x0

    aget-wide p2, p5, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, p0

    .line 905
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_32
    return-void
.end method

.method public final synthetic lambda$setToggleSensorPrivacyStateUnchecked$3(III[JII)V
    .registers 14

    .line 897
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 898
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    const/4 v1, 0x0

    .line 899
    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v2

    aput-wide v2, p4, v1

    move-object v1, p0

    .line 900
    iget-object p0, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move v5, p5

    iget-object p5, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda12;

    move v2, p2

    move v4, p3

    move-object v6, p4

    move v3, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIII[J)V

    move-object p6, v0

    move p4, v5

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setState(IIIILandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V

    return-void
.end method

.method public final synthetic lambda$setToggleSensorPrivacyUnchecked$5(IIIZ[JZ)V
    .registers 14

    if-eqz p6, :cond_32

    .line 1082
    iget-object p6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p6

    if-ne p1, p6, :cond_32

    .line 1083
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda14;-><init>()V

    .line 1085
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 p2, 0x0

    aget-wide p2, p5, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, p0

    .line 1083
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_32
    return-void
.end method

.method public final synthetic lambda$setToggleSensorPrivacyUnchecked$6(III[JZI)V
    .registers 14

    .line 1075
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 1076
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    const/4 v1, 0x0

    .line 1077
    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v2

    aput-wide v2, p4, v1

    move-object v1, p0

    .line 1078
    iget-object p0, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move v5, p5

    iget-object p5, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;

    move v2, p2

    move v4, p3

    move-object v6, p4

    move v3, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ[J)V

    move-object p6, v0

    move p4, v5

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setState(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V

    return-void
.end method

.method public final synthetic lambda$userSwitching$8([ZI[Z[ZI[Z)V
    .registers 10

    const/4 v0, 0x1

    .line 1435
    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, p1, v2

    const/4 p1, 0x2

    .line 1437
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p2

    aput-boolean p2, p3, v2

    .line 1439
    invoke-virtual {p0, p5, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p2

    aput-boolean p2, p4, v2

    .line 1441
    invoke-virtual {p0, p5, v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p0

    aput-boolean p0, p6, v2

    return-void
.end method

.method public final synthetic lambda$userSwitching$9([ZI[Z[ZI[Z)V
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1446
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v2

    aput-boolean v2, p1, v1

    .line 1448
    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p1

    aput-boolean p1, p3, v1

    .line 1450
    invoke-virtual {p0, p5, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p1

    aput-boolean p1, p4, v1

    .line 1452
    invoke-virtual {p0, p5, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p0

    aput-boolean p0, p6, v1

    return-void
.end method

.method public final logSensorPrivacyStateToggle(IIIJZ)V
    .registers 15

    .line 918
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide/32 p4, 0xea60

    div-long/2addr v0, p4

    const-wide/16 p4, 0x0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 p0, 0x3

    const/4 p4, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-nez p6, :cond_1b

    if-eq p3, p5, :cond_21

    if-eq p3, p4, :cond_1f

    if-eq p3, p0, :cond_1d

    :cond_1b
    move v4, v0

    goto :goto_22

    :cond_1d
    move v4, p0

    goto :goto_22

    :cond_1f
    move v4, p5

    goto :goto_22

    :cond_21
    move v4, p4

    :goto_22
    if-eq p2, p5, :cond_2a

    if-eq p2, p4, :cond_28

    move v3, v0

    goto :goto_2b

    :cond_28
    move v3, p4

    goto :goto_2b

    :cond_2a
    move v3, p5

    :goto_2b
    if-eq p1, p5, :cond_37

    if-eq p1, p4, :cond_35

    if-eq p1, p0, :cond_33

    move v5, v0

    goto :goto_38

    :cond_33
    move v5, p5

    goto :goto_38

    :cond_35
    move v5, p4

    goto :goto_38

    :cond_37
    move v5, p0

    :goto_38
    const/16 v2, 0x17d

    .line 972
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    return-void
.end method

.method public final logSensorPrivacyToggle(IIZJZ)V
    .registers 15

    .line 1121
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide/32 p4, 0xea60

    div-long/2addr v0, p4

    const-wide/16 p4, 0x0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 p0, 0x0

    const/4 p4, 0x1

    const/4 p5, 0x2

    if-eqz p6, :cond_16

    move v4, p0

    goto :goto_1b

    :cond_16
    if-eqz p3, :cond_1a

    move v4, p5

    goto :goto_1b

    :cond_1a
    move v4, p4

    :goto_1b
    if-eq p2, p4, :cond_23

    if-eq p2, p5, :cond_21

    move v3, p0

    goto :goto_24

    :cond_21
    move v3, p5

    goto :goto_24

    :cond_23
    move v3, p4

    :goto_24
    const/4 p2, 0x3

    if-eq p1, p4, :cond_31

    if-eq p1, p5, :cond_2f

    if-eq p1, p2, :cond_2d

    move v5, p0

    goto :goto_32

    :cond_2d
    move v5, p4

    goto :goto_32

    :cond_2f
    move v5, p5

    goto :goto_32

    :cond_31
    move v5, p2

    :goto_32
    const/16 v2, 0x17d

    .line 1171
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    return-void
.end method

.method public onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 9

    and-int/lit8 p4, p5, 0xd

    if-nez p4, :cond_5

    goto :goto_36

    :cond_5
    const/4 p4, 0x1

    if-ne p6, p4, :cond_36

    const/16 p5, 0x1b

    const/16 p6, 0x65

    const/16 v0, 0x64

    if-eq p1, p5, :cond_1f

    if-eq p1, v0, :cond_1f

    const/16 p5, 0x79

    if-ne p1, p5, :cond_17

    goto :goto_1f

    :cond_17
    const/16 p5, 0x1a

    if-eq p1, p5, :cond_1d

    if-ne p1, p6, :cond_36

    :cond_1d
    const/4 p5, 0x2

    goto :goto_20

    :cond_1f
    :goto_1f
    move p5, p4

    :goto_20
    if-eq p1, v0, :cond_26

    if-ne p1, p6, :cond_25

    goto :goto_26

    :cond_25
    const/4 p4, 0x0

    .line 437
    :cond_26
    :goto_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 439
    :try_start_2a
    invoke-virtual {p0, p2, p3, p5, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onSensorUseStarted(ILjava/lang/String;IZ)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 441
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    throw p0

    :cond_36
    :goto_36
    return-void
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 408
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public final onSensorUseStarted(ILjava/lang/String;IZ)V
    .registers 16

    .line 455
    iget-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p4

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    const/4 v0, 0x2

    if-ne p3, v0, :cond_20

    .line 457
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    .line 458
    invoke-virtual {p0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isAutomotive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 459
    invoke-virtual {p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_26

    .line 462
    :cond_20
    invoke-virtual {p0, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v1

    if-nez v1, :cond_27

    :goto_26
    return-void

    :cond_27
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2c

    return-void

    .line 475
    :cond_2c
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 477
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Suppressed sensor privacy reminder for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    monitor-exit v1

    return-void

    :catchall_62
    move-exception p0

    goto/16 :goto_1c5

    .line 482
    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_2f .. :try_end_66} :catchall_62

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityTaskManager;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 495
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_7e
    if-ge v6, v4, :cond_d1

    .line 497
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 499
    iget-boolean v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v8, :cond_ce

    .line 500
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 501
    iget-boolean v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v8, :cond_a0

    .line 503
    iget p1, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 508
    :cond_a0
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    .line 509
    :cond_a4
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/util/ArraySet;

    .line 510
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v9}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v9

    .line 509
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    iget-boolean v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v8, :cond_ce

    .line 512
    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v7, p4, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    :cond_ce
    :goto_ce
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 520
    :cond_d1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e4

    .line 521
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 524
    :cond_e4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_ee

    .line 525
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 531
    :cond_ee
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 533
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_fc
    if-ge v5, v2, :cond_11b

    .line 535
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 537
    iget-boolean v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v6, :cond_118

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 538
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    :cond_118
    add-int/lit8 v5, v5, 0x1

    goto :goto_fc

    .line 543
    :cond_11b
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    .line 545
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 543
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_154

    .line 548
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 550
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_155

    .line 552
    :cond_13c
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse inputMethodComponent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_154
    const/4 v1, 0x0

    .line 558
    :goto_155
    :try_start_155
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->getUidCapability(I)I

    move-result v2
    :try_end_15f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_155 .. :try_end_15f} :catch_1bc

    const/4 v3, -0x1

    if-ne p3, v4, :cond_184

    .line 565
    const-class v4, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 566
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/voice/VoiceInteractionManagerInternal;

    if-eqz v4, :cond_176

    .line 568
    invoke-virtual {v4, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->hasActiveSession(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 569
    invoke-virtual {p0, v3, p4, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 573
    :cond_176
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_184

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_184

    .line 575
    invoke-virtual {p0, v3, p4, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    :cond_184
    if-ne p3, v0, :cond_193

    .line 580
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_193

    and-int/2addr v0, v2

    if-eqz v0, :cond_193

    .line 582
    invoke-virtual {p0, v3, p4, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 586
    :cond_193
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " started using sensor "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but no activity or foreground service was running. The user will not be informed. System components should check if sensor privacy is enabled for the sensor before accessing it."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1bc
    move-exception p0

    .line 560
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 482
    :goto_1c5
    :try_start_1c5
    monitor-exit v1
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_62

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1633
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1710
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 389
    const-string v2, "disallow_camera_toggle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 390
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 391
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isValidCallingUser(I)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x5

    move-object v3, p0

    move/from16 v5, p1

    .line 392
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 396
    :cond_22
    const-string v2, "disallow_microphone_toggle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 397
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 398
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isValidCallingUser(I)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x5

    move-object v9, p0

    move/from16 v11, p1

    .line 399
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    :cond_40
    return-void
.end method

.method public final registerSettingsObserver()V
    .registers 5

    .line 1536
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "receive_explicit_user_interaction_audio_enabled"

    .line 1537
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;

    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/os/Handler;)V

    const/4 p0, 0x0

    .line 1536
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    if-eqz p1, :cond_b

    .line 1359
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeListener(Landroid/hardware/ISensorPrivacyListener;)V

    return-void

    .line 1357
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 6

    .line 1513
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1514
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 1515
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_29

    .line 1517
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No tokens for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    goto :goto_61

    .line 1521
    :cond_29
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x0

    .line 1523
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1525
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 1526
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 1529
    :cond_3f
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not remove sensor use reminder suppression token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_5f
    :goto_5f
    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_27

    throw p0
.end method

.method public removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    if-eqz p1, :cond_b

    .line 1371
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeToggleListener(Landroid/hardware/ISensorPrivacyListener;)V

    return-void

    .line 1369
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requiresAuthentication()Z
    .registers 2

    .line 1409
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1410
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110255

    .line 1411
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final sensorStrToId(Ljava/lang/String;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1617
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "microphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x2

    return p0
.end method

.method public setCameraPrivacyAllowlist(Ljava/util/List;)V
    .registers 3

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 1010
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyAllowlist:Ljava/util/List;

    return-void
.end method

.method public final setGlobalRestriction(IZ)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    return-void

    .line 1497
    :cond_7
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {p1, v1, p2, v0}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1499
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p1, v0, p2, p0}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    return-void

    .line 1477
    :cond_2a
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {p1, v2, p2, v1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1479
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x88

    invoke-virtual {p1, v2, p2, v1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1481
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p1, v2, p2, v1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1485
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {p1, v2, p2, v1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1489
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "receive_explicit_user_interaction_audio_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_84

    move p1, v0

    goto :goto_85

    :cond_84
    move p1, v1

    .line 1492
    :goto_85
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object v2

    if-eqz p2, :cond_90

    if-nez p1, :cond_90

    goto :goto_91

    :cond_90
    move v0, v1

    :goto_91
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object p0

    const/16 p1, 0x79

    invoke-virtual {v2, p1, v0, p0}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    return-void
.end method

.method public setSensorPrivacy(Z)V
    .registers 3

    .line 806
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 809
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceValidCallingUser(I)V

    .line 811
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setAllSensorState(Z)V

    return-void
.end method

.method public setToggleSensorPrivacy(IIIZ)V
    .registers 11

    .line 828
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 830
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    :cond_c
    move v2, p1

    .line 834
    invoke-virtual {p0, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceValidCallingUser(I)V

    .line 836
    invoke-virtual {p0, v2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->canChangeToggleSensorPrivacy(II)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_20

    :cond_17
    if-eqz p4, :cond_21

    const/4 p1, 0x1

    .line 839
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->supportsSensorToggle(II)Z

    move-result p1

    if-nez p1, :cond_21

    :goto_20
    return-void

    :cond_21
    const/4 v1, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 844
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    return-void
.end method

.method public setToggleSensorPrivacyForProfileGroup(IIIZ)V
    .registers 12

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 1180
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 1182
    :cond_c
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 1183
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V

    invoke-static {p1, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public setToggleSensorPrivacyState(IIII)V
    .registers 11

    .line 862
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 864
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    :cond_c
    move v2, p1

    .line 868
    invoke-virtual {p0, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceValidCallingUser(I)V

    .line 870
    invoke-virtual {p0, v2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->canChangeToggleSensorPrivacy(II)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_1e

    :cond_17
    const/4 p1, 0x1

    .line 873
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->supportsSensorToggle(II)Z

    move-result p1

    if-nez p1, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    const/4 v1, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 878
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyStateUnchecked(IIIII)V

    return-void
.end method

.method public setToggleSensorPrivacyStateForProfileGroup(IIII)V
    .registers 12

    .line 981
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 983
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 985
    :cond_c
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 986
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIII)V

    invoke-static {p1, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public final setToggleSensorPrivacyStateUnchecked(IIIII)V
    .registers 15

    const/4 v0, 0x1

    .line 895
    new-array v6, v0, [J

    .line 896
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v8, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III[JII)V

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setToggleSensorPrivacyUnchecked(IIIIZ)V
    .registers 15

    const/4 v0, 0x1

    .line 1073
    new-array v6, v0, [J

    .line 1074
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v8, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III[JZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showSensorStateChangedActivity(II)V
    .registers 6

    .line 767
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    .line 773
    :cond_18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 775
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 774
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 777
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v2, 0x1

    .line 778
    invoke-virtual {v0, v2, v2}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    const/high16 v2, 0x840000

    .line 780
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    sget-object v2, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 784
    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_TOGGLE_TYPE:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 785
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public showSensorUseDialog(I)V
    .registers 5

    .line 1416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_20

    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1422
    :cond_f
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v0

    .line 1423
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "android"

    const/4 v2, -0x1

    .line 1422
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 1417
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by the system uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 14

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 697
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    .line 698
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1d} :catch_148

    const/4 v0, 0x1

    if-ne p3, v0, :cond_29

    const v2, 0x1080598

    const v3, 0x10409f4

    const/16 v4, 0x41

    goto :goto_31

    :cond_29
    const v2, 0x10803e8

    const v3, 0x10409f2

    const/16 v4, 0x42

    .line 714
    :goto_31
    new-instance v5, Landroid/app/NotificationChannel;

    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 716
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10409f1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const-string/jumbo v8, "sensor_privacy"

    invoke-direct {v5, v8, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v6, 0x0

    .line 718
    invoke-virtual {v5, v6, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 719
    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 720
    invoke-virtual {v5, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 721
    invoke-virtual {v5, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 723
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 725
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 727
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 728
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x10409f5

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v3, v5, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    .line 730
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/safetycenter/SafetyCenterManager;

    .line 731
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetyCenterManager;

    .line 732
    invoke-virtual {v1}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 733
    const-string v1, "android.settings.PRIVACY_CONTROLS"

    goto :goto_a3

    :cond_a1
    const-string v1, "android.settings.PRIVACY_SETTINGS"

    .line 735
    :goto_a3
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0xc000000

    invoke-static {v3, p3, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 740
    iget-object v5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10409f3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 742
    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetACTION_DISABLE_TOGGLE_SENSOR_PRIVACY()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v9}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v9

    .line 744
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    sget-object v9, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 745
    invoke-virtual {v7, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    sget-object v9, Landroid/hardware/SensorPrivacyManager;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    .line 746
    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v9, "android.intent.extra.USER"

    .line 747
    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 742
    invoke-static {v6, p3, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 750
    iget-object p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/NotificationManager;

    move-result-object p3

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 753
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 754
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v1, Landroid/app/Notification$Action$Builder;

    invoke-direct {v1, v0, v5, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 756
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 755
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 757
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$TvExtender;

    invoke-direct {p2}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 758
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 759
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isTelevision(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_13a

    const-wide/16 v0, 0x1

    goto :goto_13c

    :cond_13a
    const-wide/16 v0, 0x0

    :goto_13c
    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 762
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 750
    invoke-virtual {p3, v4, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 700
    :catch_148
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot show sensor use notification for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final showSensorUserReminderDialog(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V
    .registers 7

    .line 633
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 634
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 636
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to show sensor use dialog because sensor set is null. Was the dialog queue modified from outside the handler thread?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 640
    :cond_19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 641
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 644
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 645
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->-$$Nest$fgetmTaskId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    const/4 v3, 0x1

    .line 646
    invoke-virtual {v2, v3, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    const/high16 v4, 0x840000

    .line 648
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 651
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->-$$Nest$fgetmPackageName(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-ne p1, v3, :cond_59

    .line 653
    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_65

    .line 654
    :cond_59
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_75

    .line 655
    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    :goto_65
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    .line 658
    :cond_75
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to show sensor use dialog for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sensors"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public supportsSensorToggle(II)Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2c

    if-ne p2, v1, :cond_18

    .line 1307
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110294

    .line 1308
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_18
    if-ne p2, v0, :cond_56

    .line 1310
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x111028f

    .line 1311
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_2c
    if-ne p1, v0, :cond_56

    if-ne p2, v1, :cond_42

    .line 1315
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110292

    .line 1316
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_42
    if-ne p2, v0, :cond_56

    .line 1318
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110291

    .line 1319
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    .line 1322
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid arguments. toggleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sensor="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    .registers 6

    .line 1377
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 1379
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 1381
    :cond_c
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1385
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p4, :cond_4d

    const/4 p2, 0x0

    .line 1388
    :try_start_22
    invoke-interface {p3, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_41
    .catchall {:try_start_22 .. :try_end_25} :catchall_3b

    .line 1394
    :try_start_25
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_3d

    .line 1396
    new-instance p2, Ljava/util/ArrayList;

    const/4 p4, 0x1

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1397
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_54

    .line 1400
    :cond_3d
    :goto_3d
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :catch_41
    move-exception p0

    .line 1390
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Could not suppress sensor use reminder"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1391
    monitor-exit p1

    return-void

    .line 1402
    :cond_4d
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    .line 1404
    :goto_52
    monitor-exit p1

    return-void

    :goto_54
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_3b

    throw p0
.end method

.method public final userSwitching(II)V
    .registers 13

    const/4 v0, 0x2

    .line 1427
    new-array v6, v0, [Z

    .line 1428
    new-array v8, v0, [Z

    .line 1429
    new-array v3, v0, [Z

    .line 1430
    new-array v5, v0, [Z

    .line 1434
    iget-object v9, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda6;

    move-object v2, p0

    move v4, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V

    invoke-virtual {v9, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    .line 1445
    iget-object p0, v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 p2, -0x2710

    if-eq v4, p2, :cond_32

    .line 1456
    aget-boolean v1, v3, p0

    aget-boolean v9, v6, p0

    if-ne v1, v9, :cond_32

    aget-boolean v1, v3, p1

    aget-boolean v3, v6, p1

    if-eq v1, v3, :cond_4f

    .line 1458
    :cond_32
    iget-object v1, v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v3, v6, p0

    invoke-virtual {v1, v7, p1, p1, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1460
    iget-object v1, v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v3, v6, p1

    invoke-virtual {v1, v7, v0, p1, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1462
    aget-boolean v1, v6, p0

    if-nez v1, :cond_4b

    aget-boolean v1, v6, p1

    if-eqz v1, :cond_49

    goto :goto_4b

    :cond_49
    move v1, p0

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v1, p1

    :goto_4c
    invoke-virtual {v2, p1, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    :cond_4f
    if-eq v4, p2, :cond_5f

    .line 1464
    aget-boolean p2, v5, p0

    aget-boolean v1, v8, p0

    if-ne p2, v1, :cond_5f

    aget-boolean p2, v5, p1

    aget-boolean v1, v8, p1

    if-eq p2, v1, :cond_5e

    goto :goto_5f

    :cond_5e
    return-void

    .line 1466
    :cond_5f
    :goto_5f
    iget-object p2, v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v1, v8, p0

    invoke-virtual {p2, v7, p1, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1468
    iget-object p2, v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v1, v8, p1

    invoke-virtual {p2, v7, v0, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1470
    aget-boolean p2, v8, p0

    if-nez p2, :cond_75

    aget-boolean p2, v8, p1

    if-eqz p2, :cond_76

    :cond_75
    move p0, p1

    :cond_76
    invoke-virtual {v2, v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    return-void
.end method
