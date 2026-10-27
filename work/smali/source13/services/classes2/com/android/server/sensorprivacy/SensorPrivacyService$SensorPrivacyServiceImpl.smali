.class Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;
.super Landroid/hardware/ISensorPrivacyManager$Stub;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorPrivacyServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

.field private mSuppressReminders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public static synthetic $r8$lambda$0UzZREkoVHZ_8z5ovkvwBCohbmA(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialog(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AsR1ISuD1QLThnVCnQFgV5CXMFk(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIZJZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIZJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gzpy2ZZsBbiTDwj31f_GvNqblvU(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUserReminderDialog(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSensorPrivacyStateController(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misToggleSensorPrivacyEnabledInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogSensorPrivacyToggle(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIZJZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIZJZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSuppressPackageReminderToken(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msensorStrToId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->sensorStrToId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetGlobalRestriction(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->userSwitching(II)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 269
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 235
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 239
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    .line 270
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 271
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 273
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_92

    .line 275
    .local v1, "micAndCameraOps":[I
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 276
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 280
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetACTION_DISABLE_TOGGLE_SENSOR_PRIVACY()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "android.permission.MANAGE_SENSOR_PRIVACY"

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 291
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 305
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;)V

    .line 304
    invoke-virtual {v2, v0, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setAllSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V

    .line 306
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V

    .line 310
    return-void

    :array_92
    .array-data 4
        0x1b
        0x64
        0x1a
        0x65
    .end array-data
.end method

.method private canChangeToggleSensorPrivacy(II)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "sensor"    # I

    .line 725
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCallStateHelper(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->isInEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 727
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t change mic toggle during an emergency call"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return v1

    .line 731
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

    .line 732
    invoke-virtual {v2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 733
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t change mic/cam toggle while device is locked"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v1

    .line 737
    :cond_3e
    if-ne p2, v0, :cond_58

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    const-string v3, "disallow_microphone_toggle"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 739
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t change mic toggle due to admin restriction"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v1

    .line 743
    :cond_58
    const/4 v2, 0x2

    if-ne p2, v2, :cond_73

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    const-string v3, "disallow_camera_toggle"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 745
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t change camera toggle due to admin restriction"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return v1

    .line 748
    :cond_73
    return v0
.end method

.method private enforceManageSensorPrivacyPermission()V
    .registers 3

    .line 827
    const-string v0, "android.permission.MANAGE_SENSOR_PRIVACY"

    const-string v1, "Changing sensor privacy requires the following permission: android.permission.MANAGE_SENSOR_PRIVACY"

    invoke-direct {p0, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method private enforceObserveSensorPrivacyPermission()V
    .registers 7

    .line 837
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "systemUIPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 839
    const-wide/32 v3, 0x100000

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v1, v2, :cond_22

    .line 841
    return-void

    .line 843
    :cond_22
    const-string v1, "android.permission.OBSERVE_SENSOR_PRIVACY"

    const-string v2, "Observing sensor privacy changes requires the following permission: android.permission.OBSERVE_SENSOR_PRIVACY"

    invoke-direct {p0, v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 849
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 850
    return-void

    .line 852
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enqueueSensorUseReminderDialog(ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sensor"    # I

    .line 512
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 514
    .local v0, "info":Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 515
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 516
    .local v1, "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p4, v3, :cond_27

    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    :cond_27
    if-ne p4, v2, :cond_49

    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/Pair;

    .line 518
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 519
    :cond_3a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 522
    :cond_49
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 524
    :goto_50
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 528
    return-void

    .line 530
    .end local v1    # "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_66
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 531
    .restart local v1    # "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "sensor"    # I

    .line 505
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda6;-><init>()V

    .line 506
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 507
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 505
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    return-void
.end method

.method private getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 573
    .local p1, "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 574
    .local v1, "sensor":Ljava/lang/Integer;
    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 575
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10402be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 578
    .end local v1    # "sensor":Ljava/lang/Integer;
    :cond_2d
    goto :goto_4

    .line 579
    :cond_2e
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isTelevision(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 664
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 665
    .local v0, "uiMode":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private isToggleSensorPrivacyEnabledInternal(III)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "toggleType"    # I
    .param p3, "sensor"    # I

    .line 889
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    .line 890
    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result v0

    .line 889
    return v0
.end method

.method private logSensorPrivacyToggle(IIZJZ)V
    .registers 18
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z
    .param p4, "lastChange"    # J
    .param p6, "onShutDown"    # Z

    .line 753
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 755
    .local v0, "logMins":J
    const/4 v2, -0x1

    .line 756
    .local v2, "logAction":I
    if-eqz p6, :cond_18

    .line 758
    if-eqz p3, :cond_16

    .line 759
    const/4 v2, 0x0

    goto :goto_1d

    .line 761
    :cond_16
    const/4 v2, 0x0

    goto :goto_1d

    .line 764
    :cond_18
    if-eqz p3, :cond_1c

    .line 765
    const/4 v2, 0x2

    goto :goto_1d

    .line 767
    :cond_1c
    const/4 v2, 0x1

    .line 771
    :goto_1d
    const/4 v3, -0x1

    .line 772
    .local v3, "logSensor":I
    packed-switch p2, :pswitch_data_40

    .line 780
    const/4 v3, 0x0

    goto :goto_27

    .line 774
    :pswitch_23
    const/4 v3, 0x2

    .line 775
    goto :goto_27

    .line 777
    :pswitch_25
    const/4 v3, 0x1

    .line 778
    nop

    .line 783
    :goto_27
    const/4 v4, -0x1

    .line 784
    .local v4, "logSource":I
    packed-switch p1, :pswitch_data_48

    .line 795
    const/4 v4, 0x0

    move v10, v4

    goto :goto_36

    .line 789
    :pswitch_2e
    const/4 v4, 0x1

    .line 790
    move v10, v4

    goto :goto_36

    .line 792
    :pswitch_31
    const/4 v4, 0x2

    .line 793
    move v10, v4

    goto :goto_36

    .line 786
    :pswitch_34
    const/4 v4, 0x3

    .line 787
    move v10, v4

    .line 803
    .end local v4    # "logSource":I
    .local v10, "logSource":I
    :goto_36
    const/16 v4, 0x17d

    move v5, v3

    move v6, v2

    move v7, v10

    move-wide v8, v0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    .line 805
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_25
        :pswitch_23
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_34
        :pswitch_31
        :pswitch_2e
    .end packed-switch
.end method

.method private onSensorUseStarted(ILjava/lang/String;I)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sensor"    # I

    .line 370
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 371
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {p0, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 372
    return-void

    .line 375
    :cond_11
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_16

    .line 378
    return-void

    .line 381
    :cond_16
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_19
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 383
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suppressed sensor privacy reminder for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    monitor-exit v1

    return-void

    .line 388
    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_19 .. :try_end_51} :catchall_19f

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v1, "tasksOfPackageUsingSensor":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityTaskManager;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 401
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 402
    .local v4, "numTasks":I
    const/4 v5, 0x0

    .local v5, "taskNum":I
    :goto_68
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v4, :cond_bd

    .line 403
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 405
    .local v8, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v9, :cond_ba

    .line 406
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_90

    .line 407
    iget-boolean v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v6, :cond_8c

    .line 409
    iget v3, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v3, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 411
    return-void

    .line 414
    :cond_8c
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 415
    :cond_90
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/util/ArraySet;

    new-array v7, v7, [Ljava/lang/Integer;

    .line 416
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v6

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v10, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v10}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    iget-boolean v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v6, :cond_ba

    .line 418
    iget v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v6, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 402
    .end local v8    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_ba
    :goto_ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 426
    .end local v5    # "taskNum":I
    :cond_bd
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_cf

    .line 427
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v3, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 429
    return-void

    .line 430
    :cond_cf
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_d9

    .line 431
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 432
    return-void

    .line 437
    :cond_d9
    iget-object v5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 439
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 440
    .local v5, "numServices":I
    const/4 v6, 0x0

    .local v6, "serviceNum":I
    :goto_e8
    if-ge v6, v5, :cond_107

    .line 441
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 443
    .local v8, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v9, v8, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v9, :cond_104

    iget-object v9, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_104

    .line 444
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 445
    return-void

    .line 440
    .end local v8    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_104
    add-int/lit8 v6, v6, 0x1

    goto :goto_e8

    .line 449
    .end local v6    # "serviceNum":I
    :cond_107
    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v6

    .line 450
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "default_input_method"

    .line 451
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 449
    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 452
    .local v6, "inputMethodComponent":Ljava/lang/String;
    const/4 v8, 0x0

    .line 453
    .local v8, "inputMethodPackageName":Ljava/lang/String;
    if-eqz v6, :cond_126

    .line 454
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 455
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 460
    :cond_126
    :try_start_126
    iget-object v9, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v9}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManagerInternal;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/app/ActivityManagerInternal;->getUidCapability(I)I

    move-result v9
    :try_end_130
    .catch Ljava/lang/IllegalArgumentException; {:try_start_126 .. :try_end_130} :catch_196

    .line 464
    .local v9, "capability":I
    nop

    .line 466
    const/4 v10, -0x1

    if-ne p3, v7, :cond_156

    .line 467
    const-class v7, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 468
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 469
    .local v7, "voiceInteractionManagerInternal":Landroid/service/voice/VoiceInteractionManagerInternal;
    if-eqz v7, :cond_148

    .line 470
    invoke-virtual {v7, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->hasActiveSession(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_148

    .line 471
    invoke-direct {p0, v10, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 472
    return-void

    .line 475
    :cond_148
    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_156

    and-int/lit8 v11, v9, 0x4

    if-eqz v11, :cond_156

    .line 477
    invoke-direct {p0, v10, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 478
    return-void

    .line 482
    .end local v7    # "voiceInteractionManagerInternal":Landroid/service/voice/VoiceInteractionManagerInternal;
    :cond_156
    const/4 v7, 0x2

    if-ne p3, v7, :cond_167

    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_167

    and-int/lit8 v7, v9, 0x2

    if-eqz v7, :cond_167

    .line 484
    invoke-direct {p0, v10, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 485
    return-void

    .line 488
    :cond_167
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " started using sensor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but no activity or foreground service was running. The user will not be informed. System components should check if sensor privacy is enabled for the sensor before accessing it."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 461
    .end local v9    # "capability":I
    :catch_196
    move-exception v7

    .line 462
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    return-void

    .line 388
    .end local v1    # "tasksOfPackageUsingSensor":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v4    # "numTasks":I
    .end local v5    # "numServices":I
    .end local v6    # "inputMethodComponent":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "inputMethodPackageName":Ljava/lang/String;
    :catchall_19f
    move-exception v2

    :try_start_1a0
    monitor-exit v1
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    throw v2
.end method

.method private removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 9
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 1093
    .local p1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 1095
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1096
    .local v1, "suppressPackageReminderTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    if-nez v1, :cond_29

    .line 1097
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No tokens for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    monitor-exit v0

    return-void

    .line 1101
    :cond_29
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1102
    .local v2, "wasRemoved":Z
    if-eqz v2, :cond_3f

    .line 1103
    const/4 v3, 0x0

    invoke-interface {p2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1105
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1106
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 1109
    :cond_3f
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not remove sensor use reminder suppression token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    .end local v1    # "suppressPackageReminderTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v2    # "wasRemoved":Z
    :cond_63
    :goto_63
    monitor-exit v0

    .line 1113
    return-void

    .line 1112
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v1
.end method

.method private sensorStrToId(Ljava/lang/String;)I
    .registers 6
    .param p1, "sensor"    # Ljava/lang/String;

    .line 1180
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1181
    return v0

    .line 1184
    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_2a

    :cond_d
    goto :goto_22

    :sswitch_e
    const-string/jumbo v2, "microphone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v1, v0

    goto :goto_22

    :sswitch_19
    const-string v2, "camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v1, v3

    :goto_22
    packed-switch v1, :pswitch_data_34

    .line 1190
    return v0

    .line 1188
    :pswitch_26
    const/4 v0, 0x2

    return v0

    .line 1186
    :pswitch_28
    return v3

    nop

    :sswitch_data_2a
    .sparse-switch
        -0x51863cdb -> :sswitch_19
        0x51b6992a -> :sswitch_e
    .end sparse-switch

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_28
        :pswitch_26
    .end packed-switch
.end method

.method private setGlobalRestriction(IZ)V
    .registers 6
    .param p1, "sensor"    # I
    .param p2, "enabled"    # Z

    .line 1065
    packed-switch p1, :pswitch_data_5c

    goto :goto_5b

    .line 1077
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object v0

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object v0

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    goto :goto_5b

    .line 1067
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object v0

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object v0

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object v0

    const/16 v1, 0x78

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1075
    nop

    .line 1083
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_4
    .end packed-switch
.end method

.method private setToggleSensorPrivacyUnchecked(IIIIZ)V
    .registers 18
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "source"    # I
    .param p4, "sensor"    # I
    .param p5, "enable"    # Z

    .line 705
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 706
    .local v0, "lastChange":[J
    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v11, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p4

    move-object v6, v0

    move/from16 v7, p5

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III[JZI)V

    invoke-virtual {v10, v11}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    .line 722
    return-void
.end method

.method private showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 23
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sensor"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 598
    :try_start_8
    iget-object v0, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 599
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v6

    .line 600
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_25} :catch_13e

    .line 604
    .local v0, "packageLabel":Ljava/lang/CharSequence;
    nop

    .line 606
    const/4 v6, 0x1

    if-ne v4, v6, :cond_32

    .line 607
    const v7, 0x1080504

    .line 608
    .local v7, "iconRes":I
    const v8, 0x10408a2

    .line 609
    .local v8, "messageRes":I
    const/16 v9, 0x41

    .local v9, "notificationId":I
    goto :goto_3a

    .line 611
    .end local v7    # "iconRes":I
    .end local v8    # "messageRes":I
    .end local v9    # "notificationId":I
    :cond_32
    const v7, 0x1080361

    .line 612
    .restart local v7    # "iconRes":I
    const v8, 0x10408a0

    .line 613
    .restart local v8    # "messageRes":I
    const/16 v9, 0x42

    .line 616
    .restart local v9    # "notificationId":I
    :goto_3a
    iget-object v10, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v10}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v10

    const-class v11, Landroid/app/NotificationManager;

    .line 617
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 618
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    new-instance v11, Landroid/app/NotificationChannel;

    iget-object v12, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 620
    invoke-virtual {v12}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x104089f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    const-string/jumbo v14, "sensor_privacy"

    invoke-direct {v11, v14, v12, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 622
    .local v11, "channel":Landroid/app/NotificationChannel;
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 623
    invoke-virtual {v11, v6}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 624
    invoke-virtual {v11, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 625
    invoke-virtual {v11, v5}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 627
    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 629
    iget-object v12, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v12}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    .line 631
    .local v12, "icon":Landroid/graphics/drawable/Icon;
    iget-object v13, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v13}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 632
    .local v13, "contentTitle":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v15}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v16, v7

    .end local v7    # "iconRes":I
    .local v16, "iconRes":I
    const v7, 0x10408a3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v15, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    .line 634
    .local v5, "contentText":Landroid/text/Spanned;
    iget-object v6, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.settings.PRIVACY_SETTINGS"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0xc000000

    invoke-static {v6, v4, v7, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 639
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    iget-object v7, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getUiContext()Landroid/content/Context;

    move-result-object v7

    const v15, 0x10408a1

    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 641
    .local v7, "actionTitle":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v15}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v17, v0

    .end local v0    # "packageLabel":Ljava/lang/CharSequence;
    .local v17, "packageLabel":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    move/from16 v18, v8

    .end local v8    # "messageRes":I
    .local v18, "messageRes":I
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetACTION_DISABLE_TOGGLE_SENSOR_PRIVACY()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v8

    .line 643
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v8, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 644
    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 645
    const-string v8, "android.intent.extra.USER"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 641
    const/high16 v8, 0xc000000

    invoke-static {v15, v4, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 648
    .local v0, "actionIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v15, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v15}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v8, v15, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 651
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 652
    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v8

    new-instance v14, Landroid/app/Notification$Action$Builder;

    invoke-direct {v14, v12, v7, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 654
    invoke-virtual {v14}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v14

    .line 653
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 655
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    new-instance v14, Landroid/app/Notification$TvExtender;

    invoke-direct {v14}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 656
    invoke-virtual {v8, v14}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 657
    iget-object v14, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v14}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isTelevision(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_130

    .line 658
    const-wide/16 v14, 0x1

    goto :goto_132

    .line 659
    :cond_130
    const-wide/16 v14, 0x0

    .line 657
    :goto_132
    invoke-virtual {v8, v14, v15}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 660
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 648
    invoke-virtual {v10, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 661
    return-void

    .line 601
    .end local v0    # "actionIntent":Landroid/app/PendingIntent;
    .end local v5    # "contentText":Landroid/text/Spanned;
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "actionTitle":Ljava/lang/String;
    .end local v9    # "notificationId":I
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    .end local v11    # "channel":Landroid/app/NotificationChannel;
    .end local v12    # "icon":Landroid/graphics/drawable/Icon;
    .end local v13    # "contentTitle":Ljava/lang/String;
    .end local v16    # "iconRes":I
    .end local v17    # "packageLabel":Ljava/lang/CharSequence;
    .end local v18    # "messageRes":I
    :catch_13e
    move-exception v0

    .line 602
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot show sensor use notification for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method private showSensorUserReminderDialog(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V
    .registers 8
    .param p1, "info"    # Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    .line 535
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 536
    .local v0, "sensors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    if-nez v0, :cond_19

    .line 538
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to show sensor use dialog because sensor set is null. Was the dialog queue modified from outside the handler thread?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 542
    :cond_19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 543
    .local v1, "dialogIntent":Landroid/content/Intent;
    nop

    .line 544
    invoke-direct {p0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 543
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 546
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 547
    .local v2, "options":Landroid/app/ActivityOptions;
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->-$$Nest$fgetmTaskId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 548
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 550
    const/high16 v4, 0x840000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 553
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->-$$Nest$fgetmPackageName(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ne v4, v3, :cond_5a

    .line 555
    sget-object v3, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_66

    .line 556
    :cond_5a
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_76

    .line 557
    sget-object v4, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 564
    :goto_66
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 565
    return-void

    .line 560
    :cond_76
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to show sensor use dialog for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sensors"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method private userSwitching(II)V
    .registers 21
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 1017
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    const/4 v11, 0x2

    new-array v12, v11, [Z

    .line 1018
    .local v12, "micState":[Z
    new-array v13, v11, [Z

    .line 1019
    .local v13, "camState":[Z
    new-array v14, v11, [Z

    .line 1020
    .local v14, "prevMicState":[Z
    new-array v15, v11, [Z

    .line 1021
    .local v15, "prevCamState":[Z
    const/16 v16, 0x0

    .line 1022
    .local v16, "swToggleIdx":I
    const/16 v17, 0x1

    .line 1024
    .local v17, "hwToggleIdx":I
    iget-object v7, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v6, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p1

    move-object v4, v15

    move-object v5, v12

    move-object v11, v6

    move/from16 v6, p2

    move-object v10, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V

    invoke-virtual {v10, v11}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    .line 1035
    iget-object v10, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v11, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda9;

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V

    invoke-virtual {v10, v11}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    .line 1046
    const/16 v0, -0x2710

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v9, v0, :cond_4b

    aget-boolean v3, v14, v1

    aget-boolean v4, v12, v1

    if-ne v3, v4, :cond_4b

    aget-boolean v3, v14, v2

    aget-boolean v4, v12, v2

    if-eq v3, v4, :cond_48

    goto :goto_4b

    :cond_48
    move/from16 v5, p2

    goto :goto_6b

    .line 1048
    :cond_4b
    :goto_4b
    iget-object v3, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v4, v12, v1

    move/from16 v5, p2

    invoke-virtual {v3, v5, v2, v2, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1050
    iget-object v3, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v4, v12, v2

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6, v2, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1052
    aget-boolean v3, v12, v1

    if-nez v3, :cond_67

    aget-boolean v3, v12, v2

    if-eqz v3, :cond_65

    goto :goto_67

    :cond_65
    move v3, v1

    goto :goto_68

    :cond_67
    :goto_67
    move v3, v2

    :goto_68
    invoke-direct {v8, v2, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    .line 1054
    :goto_6b
    if-eq v9, v0, :cond_79

    aget-boolean v0, v15, v1

    aget-boolean v3, v13, v1

    if-ne v0, v3, :cond_79

    aget-boolean v0, v15, v2

    aget-boolean v3, v13, v2

    if-eq v0, v3, :cond_95

    .line 1056
    :cond_79
    iget-object v0, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v3, v13, v1

    const/4 v4, 0x2

    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1058
    iget-object v0, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v3, v13, v2

    invoke-virtual {v0, v5, v4, v4, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1060
    aget-boolean v0, v13, v1

    if-nez v0, :cond_90

    aget-boolean v0, v13, v2

    if-eqz v0, :cond_91

    :cond_90
    move v1, v2

    :cond_91
    const/4 v0, 0x2

    invoke-direct {v8, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    .line 1062
    :cond_95
    return-void
.end method


# virtual methods
.method public addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 921
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 922
    if-eqz p1, :cond_b

    .line 925
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 926
    return-void

    .line 923
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 933
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 934
    if-eqz p1, :cond_b

    .line 937
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addToggleListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 938
    return-void

    .line 935
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public binderDied()V
    .registers 1

    .line 1132
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1122
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1123
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1124
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    invoke-direct {p0, v2, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    .line 1125
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    goto :goto_d

    .line 1126
    :cond_1d
    monitor-exit v0

    .line 1127
    return-void

    .line 1126
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1136
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 1140
    :cond_14
    const/4 v0, 0x0

    .line 1141
    .local v0, "opti":I
    const/4 v1, 0x0

    .line 1142
    .local v1, "dumpAsProto":Z
    :goto_16
    array-length v2, p3

    if-ge v0, v2, :cond_56

    .line 1143
    aget-object v2, p3, v0

    .line 1144
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_56

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2d

    .line 1145
    goto :goto_56

    .line 1147
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    .line 1148
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1149
    const/4 v1, 0x1

    goto :goto_55

    .line 1151
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    .end local v2    # "opt":Ljava/lang/String;
    :goto_55
    goto :goto_16

    .line 1155
    :cond_56
    :goto_56
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1157
    .local v2, "identity":J
    if-eqz v1, :cond_6c

    .line 1158
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v4, v5}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    goto :goto_82

    .line 1161
    :cond_6c
    const-string v4, "SENSOR PRIVACY MANAGER STATE (dumpsys sensor_privacy)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Landroid/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v6, p2, v7}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    :try_end_82
    .catchall {:try_start_5c .. :try_end_82} :catchall_87

    .line 1168
    :goto_82
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    nop

    .line 1170
    return-void

    .line 1168
    :catchall_87
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    throw v4
.end method

.method public isCombinedToggleSensorPrivacyEnabled(I)Z
    .registers 4
    .param p1, "sensor"    # I

    .line 882
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x2

    .line 883
    invoke-virtual {p0, v1, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    nop

    .line 882
    :goto_12
    return v0
.end method

.method public isSensorPrivacyEnabled()Z
    .registers 2

    .line 860
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 861
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getAllSensorState()Z

    move-result v0

    return v0
.end method

.method public isToggleSensorPrivacyEnabled(II)Z
    .registers 5
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I

    .line 874
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 876
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result v0

    .line 876
    return v0
.end method

.method synthetic lambda$new$0$com-android-server-sensorprivacy-SensorPrivacyService$SensorPrivacyServiceImpl(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 7
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "sensor"    # I
    .param p4, "state"    # Lcom/android/server/sensorprivacy/SensorState;

    .line 308
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 309
    invoke-virtual {p4}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result v1

    .line 308
    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    return-void
.end method

.method synthetic lambda$setToggleSensorPrivacyForProfileGroup$3$com-android-server-sensorprivacy-SensorPrivacyService$SensorPrivacyServiceImpl(IIIZLjava/lang/Integer;)V
    .registers 8
    .param p1, "parentId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z
    .param p5, "userId2"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 817
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    .line 819
    :cond_17
    return-void
.end method

.method synthetic lambda$setToggleSensorPrivacyUnchecked$1$com-android-server-sensorprivacy-SensorPrivacyService$SensorPrivacyServiceImpl(IIIZ[JZ)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z
    .param p5, "lastChange"    # [J
    .param p6, "changeSuccessful"    # Z

    .line 713
    if-eqz p6, :cond_34

    .line 714
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    if-ne p1, v0, :cond_34

    .line 715
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 717
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v2, 0x0

    aget-wide v6, p5, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 715
    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    :cond_34
    return-void
.end method

.method synthetic lambda$setToggleSensorPrivacyUnchecked$2$com-android-server-sensorprivacy-SensorPrivacyService$SensorPrivacyServiceImpl(III[JZI)V
    .registers 25
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "sensor"    # I
    .param p4, "lastChange"    # [J
    .param p5, "enable"    # Z
    .param p6, "source"    # I

    .line 707
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 708
    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p3

    invoke-virtual {v0, v15, v14, v13}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v16

    .line 709
    .local v16, "sensorState":Lcom/android/server/sensorprivacy/SensorState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p4, v2

    .line 710
    iget-object v8, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    iget-object v12, v7, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v17, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p6

    move/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ[J)V

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object v0, v12

    move/from16 v12, p5

    move-object v13, v0

    move-object/from16 v14, v17

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setState(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V

    .line 721
    return-void
.end method

.method synthetic lambda$userSwitching$4$com-android-server-sensorprivacy-SensorPrivacyService$SensorPrivacyServiceImpl([ZI[Z[ZI[Z)V
    .registers 11
    .param p1, "prevMicState"    # [Z
    .param p2, "from"    # I
    .param p3, "prevCamState"    # [Z
    .param p4, "micState"    # [Z
    .param p5, "to"    # I
    .param p6, "camState"    # [Z

    .line 1025
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, p1, v2

    .line 1027
    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v3

    aput-boolean v3, p3, v2

    .line 1029
    invoke-direct {p0, p5, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v3

    aput-boolean v3, p4, v2

    .line 1031
    invoke-direct {p0, p5, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v0

    aput-boolean v0, p6, v2

    .line 1033
    return-void
.end method

.method synthetic lambda$userSwitching$5$com-android-server-sensorprivacy-SensorPrivacyService$SensorPrivacyServiceImpl([ZI[Z[ZI[Z)V
    .registers 10
    .param p1, "prevMicState"    # [Z
    .param p2, "from"    # I
    .param p3, "prevCamState"    # [Z
    .param p4, "micState"    # [Z
    .param p5, "to"    # I
    .param p6, "camState"    # [Z

    .line 1036
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v2

    aput-boolean v2, p1, v1

    .line 1038
    invoke-direct {p0, p2, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v2

    aput-boolean v2, p3, v1

    .line 1040
    invoke-direct {p0, p5, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v2

    aput-boolean v2, p4, v1

    .line 1042
    invoke-direct {p0, p5, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v0

    aput-boolean v0, p6, v1

    .line 1044
    return-void
.end method

.method public onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 337
    and-int/lit8 v0, p5, 0xd

    if-nez v0, :cond_5

    .line 338
    return-void

    .line 342
    :cond_5
    const/4 v0, 0x1

    if-ne p6, v0, :cond_2f

    .line 343
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x64

    if-ne p1, v0, :cond_11

    goto :goto_1d

    .line 345
    :cond_11
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1a

    goto :goto_1b

    .line 348
    :cond_1a
    return-void

    .line 346
    :cond_1b
    :goto_1b
    const/4 v0, 0x2

    .local v0, "sensor":I
    goto :goto_1e

    .line 344
    .end local v0    # "sensor":I
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 354
    .restart local v0    # "sensor":I
    :goto_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 356
    .local v1, "token":J
    :try_start_22
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onSensorUseStarted(ILjava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 358
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    throw v3

    .line 351
    .end local v0    # "sensor":I
    .end local v1    # "token":J
    :cond_2f
    return-void
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 330
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V

    .line 331
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1199
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 1253
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1254
    return-void
.end method

.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 316
    const-string v0, "disallow_camera_toggle"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 317
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 318
    const/4 v2, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 320
    :cond_17
    const-string v0, "disallow_microphone_toggle"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 321
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 322
    const/4 v2, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 325
    :cond_2e
    return-void
.end method

.method public removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 945
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 946
    if-eqz p1, :cond_b

    .line 949
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 950
    return-void

    .line 947
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 957
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 958
    if-eqz p1, :cond_b

    .line 961
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeToggleListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 962
    return-void

    .line 959
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requiresAuthentication()Z
    .registers 3

    .line 999
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1000
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1001
    const v1, 0x11101a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1000
    return v0
.end method

.method public setSensorPrivacy(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 675
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 676
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setAllSensorState(Z)V

    .line 677
    return-void
.end method

.method public setToggleSensorPrivacy(IIIZ)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z

    .line 692
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 693
    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 694
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 696
    :cond_c
    invoke-direct {p0, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->canChangeToggleSensorPrivacy(II)Z

    move-result v0

    if-nez v0, :cond_13

    .line 697
    return-void

    .line 700
    :cond_13
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 701
    return-void
.end method

.method public setToggleSensorPrivacyForProfileGroup(IIIZ)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "source"    # I
    .param p3, "sensor"    # I
    .param p4, "enable"    # Z

    .line 810
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 811
    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 812
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 814
    :cond_c
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 815
    .local v0, "parentId":I
    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    new-instance v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda7;

    move-object v1, v8

    move-object v2, p0

    move v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V

    invoke-static {v7, v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 820
    return-void
.end method

.method public showSensorUseDialog(I)V
    .registers 5
    .param p1, "sensor"    # I

    .line 1006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_20

    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1010
    return-void

    .line 1012
    :cond_f
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v1

    .line 1013
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1012
    const-string v2, "android"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1014
    return-void

    .line 1007
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by the system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsSensorToggle(II)Z
    .registers 6
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I

    .line 895
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2c

    .line 896
    if-ne p2, v1, :cond_18

    .line 897
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101cd

    .line 898
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 897
    return v0

    .line 899
    :cond_18
    if-ne p2, v0, :cond_56

    .line 900
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101c8

    .line 901
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 900
    return v0

    .line 903
    :cond_2c
    if-ne p1, v0, :cond_56

    .line 904
    if-ne p2, v1, :cond_42

    .line 905
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101cb

    .line 906
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 905
    return v0

    .line 907
    :cond_42
    if-ne p2, v0, :cond_56

    .line 908
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101ca

    .line 909
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 908
    return v0

    .line 912
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments. toggleType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "sensor"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "suppress"    # Z

    .line 967
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 968
    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 969
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 971
    :cond_c
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 975
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/os/UserHandle;>;"
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    if-eqz p4, :cond_4d

    .line 978
    const/4 v2, 0x0

    :try_start_22
    invoke-interface {p3, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_41
    .catchall {:try_start_22 .. :try_end_25} :catchall_54

    .line 982
    nop

    .line 984
    :try_start_26
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 985
    .local v2, "suppressPackageReminderTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    if-nez v2, :cond_3c

    .line 986
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 987
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_3c
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    nop

    .end local v2    # "suppressPackageReminderTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    goto :goto_52

    .line 979
    :catch_41
    move-exception v2

    .line 980
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not suppress sensor use reminder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    monitor-exit v1

    return-void

    .line 992
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4d
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    .line 994
    :goto_52
    monitor-exit v1

    .line 995
    return-void

    .line 994
    :catchall_54
    move-exception v2

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_26 .. :try_end_56} :catchall_54

    throw v2
.end method
