.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# static fields
.field static final CHARGE_LIMIT_PERCENTAGE:I = 0x50


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field public final mAmbientDisplayComponent:Landroid/content/ComponentName;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBatteryChangedReceived:Landroid/content/BroadcastReceiver;

.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/server/dreams/DreamController;

.field public final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field public mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

.field public final mDismissDreamOnActivityStart:Z

.field public final mDockStateReceiver:Landroid/content/BroadcastReceiver;

.field public final mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mDozeEnabledObserver:Landroid/database/ContentObserver;

.field public final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mDreamOverlayServiceName:Landroid/content/ComponentName;

.field public final mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLogger;

.field public final mDreamsActivatedOnChargeByDefault:Z

.field public final mDreamsActivatedOnDockByDefault:Z

.field public final mDreamsActivatedOnPosturedByDefault:Z

.field public final mDreamsDisabledByAmbientModeSuppressionConfig:Z

.field public final mDreamsEnabledByDefaultConfig:Z

.field public mDreamsEnabledSetting:Z

.field public final mDreamsOnlyEnabledForDockUser:Z

.field public mForceAmbientDisplayEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsCharging:Z

.field public mIsDocked:Z

.field public mIsPostured:Z

.field public mIsWirelessCharging:Z

.field public final mKeepDreamingWhenUnpluggingDefault:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOnlyDreamOnWirelessChargingDefault:Z

.field public mOnlyDreamOnWirelessChargingSetting:Z

.field public final mPackageMonitors:Landroid/util/SparseArray;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

.field public mSystemDreamComponent:Landroid/content/ComponentName;

.field public final mSystemPropertiesChanged:Ljava/lang/Runnable;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUiModeManager:Landroid/app/UiModeManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWhenToDream:I


# direct methods
.method public static synthetic $r8$lambda$34m2PRuKMn6VEJYH0MoOlefw52w(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->lambda$onUserStarting$1(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8kQpMJHyaaBcwsaFwBy_cBa6IeA(I)[Landroid/content/ComponentName;
    .registers 1

    .line 866
    new-array p0, p0, [Landroid/content/ComponentName;

    return-object p0
.end method

.method public static synthetic $r8$lambda$9tk70TRtbXjOR7FkzhKsDEbrHzo(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->lambda$setDevicePosturedInternal$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$A9PeWP1dPt5WVlwRjqrAipwmJbQ(ZLandroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .registers 2

    .line 519
    invoke-interface {p1, p0}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onKeepDreamingWhenUnpluggingChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BRmfdgCI09tEXiZNrTJCdwkjb3Y(Lcom/android/server/dreams/DreamManagerService;Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->lambda$notifyDreamStateListeners$7(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDoG7T4C1Vl6xZBc_FzIHXmU54o(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->lambda$cleanupDreamLocked$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$QjZPI7Qt3sOCMIpqUG-NcgDvtks(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->lambda$onUserStopping$2(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a8qAkvqZYpCclM2efAfxVuYowmY(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .registers 1

    .line 523
    invoke-interface {p0}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onDreamingStarted()V

    return-void
.end method

.method public static synthetic $r8$lambda$cQJfjZl6T2DyWFLPoYS_AMBL8Rg(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    .line 865
    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->isSamePackage(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$hDNYLRSNlFyB5EWx8p8ITg3fSxA(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .registers 1

    .line 527
    invoke-interface {p0}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onDreamingStopped()V

    return-void
.end method

.method public static synthetic $r8$lambda$mjpYB2fEx6256Aox3LGr_sIvzA0(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->lambda$onUserSwitching$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$r6hfoT-w7HwqjeDW2NovxGVnwn0(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->lambda$stopDreamLocked$12(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rB49yCzoy2TwA93kKKJu45km_-g(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;Landroid/os/Binder;ZZILandroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/dreams/DreamManagerService;->lambda$startDreamLocked$11(Landroid/content/ComponentName;Landroid/os/Binder;ZZILandroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sMmNEbNeBRVRL3JipOyQxrAuOZ0(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->lambda$dumpInternal$3(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAtmInternal(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryManagerInternal(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/BatteryManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmController(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamManagerService$DreamRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDreamManagerStateListeners(Lcom/android/server/dreams/DreamManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPmInternal(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManagerInternal(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDreamOverlayServiceName(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamOverlayServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsCharging(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mIsCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDocked(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mIsDocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWirelessCharging(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mIsWirelessCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupDreamLocked(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishSelfInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforceAmbientDisplayEnabledInternal(Lcom/android/server/dreams/DreamManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->forceAmbientDisplayEnabledInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDefaultDreamComponentForUser(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDozeComponent(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDreamComponentsForUser(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misDreamingInternal(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDreamingOrInPreviewInternal(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingOrInPreviewInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreportDreamingStarted(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->reportDreamingStarted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportDreamingStopped(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->reportDreamingStopped()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestAwakenInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestDreamInternal(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDreamComponentsForUser(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSystemDreamComponentInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->setSystemDreamComponentInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldKeepDreamingWhenUnplugging(Lcom/android/server/dreams/DreamManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->shouldKeepDreamingWhenUnplugging()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstopDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtestDreamInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDreamOnPackageRemoved(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->updateDreamOnPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWhenToDreamSettings(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->updateWhenToDreamSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwritePulseGestureEnabled(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 271
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;-><init>(Lcom/android/server/dreams/DreamManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService$Injector;)V
    .registers 7

    .line 276
    invoke-interface {p1}, Lcom/android/server/dreams/DreamManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPackageMonitors:Landroid/util/SparseArray;

    .line 193
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 226
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mBatteryChangedReceived:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDockStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1069
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 1091
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    .line 1614
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    .line 277
    invoke-interface {p1}, Lcom/android/server/dreams/DreamManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 278
    invoke-interface {p1}, Lcom/android/server/dreams/DreamManagerService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 279
    invoke-interface {p1, v0}, Lcom/android/server/dreams/DreamManagerService$Injector;->getDreamController(Lcom/android/server/dreams/DreamController$Listener;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 281
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 282
    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v3}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    iput-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 283
    const-class v3, Landroid/app/UiModeManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    iput-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 284
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v3}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 285
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v3}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 286
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mUserManager:Landroid/os/UserManager;

    const/16 v3, 0x40

    .line 287
    const-string v4, "dream:doze"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 288
    invoke-interface {p1}, Lcom/android/server/dreams/DreamManagerService$Injector;->getDozeConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 289
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 290
    new-instance v0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;

    .line 291
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/dreams/DreamUiEventLoggerImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLogger;

    .line 293
    invoke-virtual {p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    .line 295
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111016e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForDockUser:Z

    .line 296
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDismissDreamOnActivityStart:Z

    .line 299
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111016c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 301
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111016a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnChargeByDefault:Z

    .line 303
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110168

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnDockByDefault:Z

    .line 305
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110169

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnPosturedByDefault:Z

    .line 307
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110227

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mOnlyDreamOnWirelessChargingDefault:Z

    .line 309
    new-instance p1, Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    invoke-direct {p1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$SettingsObserver;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    .line 310
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11101ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mKeepDreamingWhenUnpluggingDefault:Z

    .line 312
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111016b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    .line 315
    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-void
.end method

.method public static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1061
    :cond_4
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1062
    array-length v0, p0

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    .line 1063
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 1064
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method public static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1044
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    if-nez v3, :cond_12

    goto :goto_24

    .line 1049
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    const/16 v4, 0x2c

    .line 1050
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    :cond_1d
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1054
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 10

    .line 424
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_3
    const-string v0, "DREAM MANAGER (dumpsys dreams)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentDream="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mForceAmbientDisplayEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDreamsOnlyEnabledForDockUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForDockUser:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDreamsEnabledSetting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDreamsActivatedOnDockByDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnDockByDefault:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDreamsActivatedOnChargeByDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnChargeByDefault:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDreamsActivatedOnPosturedByDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnPosturedByDefault:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOnlyDreamOnWirelessChargingSetting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mOnlyDreamOnWirelessChargingSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOnlyDreamOnWirelessChargingDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mOnlyDreamOnWirelessChargingDefault:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsDocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mIsDocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsCharging="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mIsCharging:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWhenToDream="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mKeepDreamingWhenUnpluggingDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mKeepDreamingWhenUnpluggingDefault:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDozeComponent()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDreamOverlayServiceName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamOverlayServiceName:Landroid/content/ComponentName;

    .line 445
    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 448
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    const-string v5, ""

    const-wide/16 v6, 0xc8

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 449
    monitor-exit v1

    return-void

    :catchall_17d
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_180
    .catchall {:try_start_3 .. :try_end_180} :catchall_17d

    throw p0
.end method

.method public static isSamePackage(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 877
    :cond_5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canStartDreamingInternal(Z)Z
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    .line 611
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->dreamIsFrontmost()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 612
    monitor-exit v0

    return v1

    :catchall_14
    move-exception p0

    goto :goto_59

    .line 615
    :cond_16
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 616
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getActiveProjectionTypes()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_22

    .line 619
    monitor-exit v0

    return v1

    .line 622
    :cond_22
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledSetting:Z

    if-nez p1, :cond_28

    .line 623
    monitor-exit v0

    return v1

    .line 626
    :cond_28
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dreamsEnabledForUser(I)Z

    move-result p1

    if-nez p1, :cond_34

    .line 627
    monitor-exit v0

    return v1

    .line 630
    :cond_34
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 631
    monitor-exit v0

    return v1

    .line 634
    :cond_3e
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 635
    invoke-virtual {p1}, Landroid/os/PowerManagerInternal;->isAmbientDisplaySuppressed()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 637
    const-string p0, "DreamManagerService"

    const-string p1, "Can\'t start dreaming because ambient is suppressed."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    monitor-exit v0

    return v1

    .line 643
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->dreamConditionActiveInternalLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 644
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_6 .. :try_end_5a} :catchall_14

    throw p0
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 4

    .line 1027
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 1029
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final chooseDreamForUser(ZI)Landroid/content/ComponentName;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 796
    invoke-virtual {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 797
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;I)Z

    move-result p0

    if-eqz p0, :cond_e

    return-object p1

    :cond_e
    return-object v0

    .line 800
    :cond_f
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    if-eqz p1, :cond_14

    return-object p1

    .line 804
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 805
    array-length p1, p0

    if-eqz p1, :cond_21

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_21
    return-object v0
.end method

.method public final cleanupDreamLocked()V
    .registers 4

    .line 1002
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1004
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-nez v0, :cond_f

    return-void

    .line 1008
    :cond_f
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1010
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_STOP:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1011
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLogger;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    iget-object v2, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 1012
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    invoke-interface {v0, v1, v2}, Lcom/android/server/dreams/DreamUiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V

    .line 1014
    :cond_2d
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    if-eqz v0, :cond_38

    .line 1021
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_38
    const/4 v0, 0x0

    .line 1023
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    return-void
.end method

.method public final currentDreamCanDozeLocked()Z
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public dreamConditionActiveInternal()Z
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->dreamConditionActiveInternalLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 571
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final dreamConditionActiveInternalLocked()Z
    .registers 4

    .line 575
    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 576
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mOnlyDreamOnWirelessChargingSetting:Z

    if-eqz v0, :cond_e

    .line 577
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mIsWirelessCharging:Z

    return p0

    .line 579
    :cond_e
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mIsCharging:Z

    return p0

    :cond_11
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 586
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mIsDocked:Z

    return p0

    :cond_19
    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2a

    .line 590
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mOnlyDreamOnWirelessChargingSetting:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mIsWirelessCharging:Z

    if-nez v0, :cond_27

    return v2

    .line 593
    :cond_27
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mIsPostured:Z

    return p0

    :cond_2a
    return v2
.end method

.method public final dreamIsFrontmost()Z
    .registers 1

    .line 650
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController;->dreamIsFrontmost()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public dreamsEnabled()Z
    .registers 1

    .line 601
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledSetting:Z

    return p0
.end method

.method public final dreamsEnabledForUser(I)Z
    .registers 4

    .line 928
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsOnlyEnabledForDockUser:Z

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    if-gez p1, :cond_a

    return p0

    .line 930
    :cond_a
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v1

    if-ne p1, v1, :cond_19

    return v0

    :cond_19
    return p0
.end method

.method public final finishSelfInternal(Landroid/os/IBinder;Z)V
    .registers 5

    .line 692
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    if-ne v1, p1, :cond_13

    .line 694
    const-string p1, "finished self"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(ZLjava/lang/String;)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 696
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public final forceAmbientDisplayEnabledInternal(Z)V
    .registers 3

    .line 775
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    .line 777
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .registers 3

    .line 908
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screensaver_default_component"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 911
    :cond_11
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getDozeComponent()Landroid/content/ComponentName;
    .registers 2

    .line 915
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getDozeComponent(I)Landroid/content/ComponentName;
    .registers 3

    .line 919
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mForceAmbientDisplayEnabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->enabled(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return-object p0

    .line 920
    :cond_f
    :goto_f
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 8

    .line 825
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dreamsEnabledForUser(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 830
    :cond_8
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v0

    .line 836
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_32

    .line 838
    array-length v2, v0

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_32

    aget-object v4, v0, v3

    .line 839
    invoke-virtual {p0, v4, p1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 840
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 846
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 849
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Falling back to default dream "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DreamManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/ComponentName;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 4

    .line 935
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p1, :cond_19

    .line 937
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    :cond_19
    return-object p2
.end method

.method public final isDreamingInternal()Z
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_3
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-eqz p0, :cond_13

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isPreview:Z

    if-nez v1, :cond_13

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    .line 545
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final isDreamingOrInPreviewInternal()Z
    .registers 2

    .line 557
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-eqz p0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    .line 559
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public final synthetic lambda$cleanupDreamLocked$13()V
    .registers 2

    .line 1002
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyActiveDreamChanged(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final synthetic lambda$dumpInternal$3(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 448
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final synthetic lambda$notifyDreamStateListeners$7(Ljava/util/function/Consumer;)V
    .registers 3

    .line 534
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;

    .line 535
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final synthetic lambda$onUserStarting$1(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6

    .line 397
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 398
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 399
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService-IA;)V

    .line 400
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 401
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 403
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package monitor already registered for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DreamManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$onUserStopping$2(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPackageMonitors:Landroid/util/SparseArray;

    .line 415
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 414
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    if-eqz p0, :cond_11

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_11
    return-void
.end method

.method public final synthetic lambda$onUserSwitching$0()V
    .registers 4

    .line 385
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    .line 386
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_6
    const-string/jumbo v1, "user switched"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(ZLjava/lang/String;)V

    .line 388
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final synthetic lambda$setDevicePosturedInternal$8(Z)V
    .registers 2

    .line 785
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setDevicePostured(Z)V

    return-void
.end method

.method public final synthetic lambda$startDreamLocked$11(Landroid/content/ComponentName;Landroid/os/Binder;ZZILandroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .registers 18

    .line 977
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyActiveDreamChanged(Landroid/content/ComponentName;)V

    .line 978
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    iget-object v8, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamOverlayServiceName:Landroid/content/ComponentName;

    move-object v3, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/dreams/DreamController;->startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$stopDreamLocked$12(ZLjava/lang/String;)V
    .registers 3

    .line 996
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    return-void
.end method

.method public final notifyDreamStateListeners(Ljava/util/function/Consumer;)V
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/dreams/DreamManagerService;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBootPhase(I)V
    .registers 8

    const/16 v0, 0x258

    if-ne p1, v0, :cond_cb

    .line 327
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_d

    .line 328
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 331
    :cond_d
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "doze_pulse_on_double_tap"

    .line 332
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 331
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    .line 336
    iget-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mDismissDreamOnActivityStart:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_2f

    .line 337
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 342
    :cond_2f
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDockStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 348
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 349
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mBatteryChangedReceived:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    new-instance p1, Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1}, Lcom/android/server/dreams/DreamManagerService$SettingsObserver;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    .line 352
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screensaver_activate_on_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 355
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screensaver_activate_on_dock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 358
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screensaver_activate_on_postured"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 361
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 364
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screensaver_restrict_to_writeless_charging"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mSettingsObserver:Lcom/android/server/dreams/DreamManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 371
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mIsCharging:Z

    .line 372
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p1, v0}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mIsWirelessCharging:Z

    .line 376
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->updateWhenToDreamSettings()V

    :cond_cb
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 320
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService-IA;)V

    const-string v2, "dreams"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 394
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 396
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 411
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 382
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->updateWhenToDreamSettings()V

    .line 384
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final reportDreamingStarted()V
    .registers 2

    .line 523
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->notifyDreamStateListeners(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final reportDreamingStopped()V
    .registers 2

    .line 527
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->notifyDreamStateListeners(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final reportKeepDreamingWhenUnpluggingChanged(Z)V
    .registers 3

    .line 518
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->notifyDreamStateListeners(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final requestAwakenInternal(Ljava/lang/String;)V
    .registers 6

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 676
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 677
    invoke-virtual {p0, v3, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(ZLjava/lang/String;)V

    return-void
.end method

.method public final requestDreamInternal()V
    .registers 5

    .line 658
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->dreamIsFrontmost()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->bringDreamToFront()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 666
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 667
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 668
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0, v1, v3}, Landroid/os/PowerManagerInternal;->nap(JZ)V

    return-void
.end method

.method public requestStartDreamFromShell()V
    .registers 1

    .line 654
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method public requestStopDreamFromShell()V
    .registers 3

    const/4 v0, 0x0

    .line 718
    const-string/jumbo v1, "stopping dream from shell"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(ZLjava/lang/String;)V

    return-void
.end method

.method public setDevicePosturedInternal(Z)V
    .registers 5

    .line 782
    const-string v0, "DreamManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device postured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_19
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService;->mIsPostured:Z

    .line 785
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/dreams/DreamManagerService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .registers 4

    .line 881
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screensaver_components"

    .line 883
    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    .line 881
    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setSystemDreamComponentInternal(Landroid/content/ComponentName;)V
    .registers 4

    .line 888
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 890
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_45

    .line 893
    :cond_f
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    .line 894
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->shouldKeepDreamingWhenUnplugging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->reportKeepDreamingWhenUnpluggingChanged(Z)V

    .line 896
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->currentDreamCanDozeLocked()Z

    move-result p1

    if-nez p1, :cond_43

    .line 897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_30

    const-string v1, "clear"

    goto :goto_33

    :cond_30
    const-string/jumbo v1, "set"

    :goto_33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " system dream component"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(ZLjava/lang/String;)V

    .line 900
    :cond_43
    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_d

    throw p0
.end method

.method public final shouldKeepDreamingWhenUnplugging()Z
    .registers 2

    .line 904
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mKeepDreamingWhenUnpluggingDefault:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public startDozingInternal(Landroid/os/IBinder;IIFZ)V
    .registers 9

    .line 732
    const-string v0, "DreamManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dream requested to start dozing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", screenState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-static {p3}, Landroid/view/Display;->stateReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", useNormalBrightnessForDoze="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_41
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-eqz v1, :cond_67

    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    if-ne v2, p1, :cond_67

    iget-boolean p1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    if-eqz p1, :cond_67

    .line 740
    iput p2, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenState:I

    .line 741
    iput p4, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenBrightness:F

    .line 742
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(IIFZ)V

    .line 744
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    iget-boolean p2, p1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    if-nez p2, :cond_67

    const/4 p2, 0x1

    .line 745
    iput-boolean p2, p1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 746
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_67

    :catchall_65
    move-exception p0

    goto :goto_69

    .line 749
    :cond_67
    :goto_67
    monitor-exit v0

    return-void

    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_41 .. :try_end_6a} :catchall_65

    throw p0
.end method

.method public startDreamInternal(ZLjava/lang/String;)V
    .registers 10

    .line 708
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 709
    invoke-virtual {p0, p1, v4}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 711
    iget-object v6, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    .line 712
    :try_start_11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZILjava/lang/String;)V

    .line 713
    monitor-exit v6

    return-void

    :catchall_16
    move-exception v0

    move-object p0, v0

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_16

    throw p0

    :cond_1a
    return-void
.end method

.method public final startDreamLocked(Landroid/content/ComponentName;ZZILjava/lang/String;)V
    .registers 16

    .line 948
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    const-string v3, "DreamManagerService"

    if-eqz v0, :cond_26

    iget-boolean v7, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    if-nez v7, :cond_26

    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 950
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    iget-boolean v7, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isPreview:Z

    if-ne v7, p2, :cond_26

    iget-boolean v7, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    if-ne v7, p3, :cond_26

    iget v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->userId:I

    if-ne v0, p4, :cond_26

    .line 954
    const-string v0, "Already in target dream."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 958
    :cond_26
    const-string v0, "Entering dreamland."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-eqz v0, :cond_38

    iget-boolean v3, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    if-eqz v3, :cond_38

    .line 961
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    .line 964
    :cond_38
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/android/server/dreams/DreamManagerService$DreamRecord;-><init>(Landroid/content/ComponentName;IZZ)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 966
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mAmbientDisplayComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 968
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->DREAM_START:Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;

    invoke-interface {v0, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 969
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamUiEventLogger:Lcom/android/server/dreams/DreamUiEventLogger;

    iget-object v7, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    iget-object v7, v7, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 970
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 969
    invoke-interface {v0, v3, v7}, Lcom/android/server/dreams/DreamUiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V

    .line 973
    :cond_5d
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v7, "dream:dream"

    .line 974
    invoke-virtual {v0, v3, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 975
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    iget-object v3, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 976
    iget-object v9, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;Landroid/os/Binder;ZZILandroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stopDozingInternal(Landroid/os/IBinder;)V
    .registers 5

    .line 757
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-eqz v1, :cond_22

    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    if-ne v2, p1, :cond_22

    iget-boolean p1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    .line 759
    iput-boolean p1, v1, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 760
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 761
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x5

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1, v1, v2, p1}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(IIFZ)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_24

    .line 767
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_20

    throw p0
.end method

.method public stopDreamInternal(ZLjava/lang/String;)V
    .registers 4

    .line 723
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(ZLjava/lang/String;)V

    .line 725
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final stopDreamLocked(ZLjava/lang/String;)V
    .registers 5

    .line 985
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    if-eqz v0, :cond_2a

    .line 986
    const-string v1, "DreamManagerService"

    if-eqz p1, :cond_11

    .line 987
    const-string v0, "Leaving dreamland."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    goto :goto_20

    .line 989
    :cond_11
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    if-eqz v0, :cond_16

    goto :goto_2a

    .line 992
    :cond_16
    const-string v0, "Gently waking up from dream."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 996
    :goto_20
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final testDreamInternal(Landroid/content/ComponentName;I)V
    .registers 11

    .line 700
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 701
    :try_start_3
    const-string/jumbo v7, "test dream"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZILjava/lang/String;)V

    .line 703
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p0
.end method

.method public final updateDreamOnPackageRemoved(Ljava/lang/String;I)V
    .registers 6

    .line 857
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 858
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 857
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 864
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda10;-><init>()V

    .line 866
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ComponentName;

    .line 867
    array-length v1, p1

    array-length v0, v0

    if-eq v1, v0, :cond_32

    .line 868
    invoke-virtual {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    :cond_32
    return-void
.end method

.method public final updateWhenToDreamSettings()V
    .registers 8

    .line 480
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 483
    const-string/jumbo v2, "screensaver_restrict_to_writeless_charging"

    .line 485
    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService;->mOnlyDreamOnWirelessChargingDefault:Z

    const/4 v4, -0x2

    .line 483
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_19

    move v2, v5

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    iput-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mOnlyDreamOnWirelessChargingSetting:Z

    .line 487
    iput v3, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    .line 489
    const-string/jumbo v2, "screensaver_activate_on_sleep"

    .line 491
    iget-boolean v6, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnChargeByDefault:Z

    .line 489
    invoke-static {v1, v2, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_32

    .line 493
    iget v2, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_63

    .line 496
    :cond_32
    :goto_32
    const-string/jumbo v2, "screensaver_activate_on_dock"

    .line 498
    iget-boolean v6, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnDockByDefault:Z

    .line 496
    invoke-static {v1, v2, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_42

    .line 500
    iget v2, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    .line 503
    :cond_42
    const-string/jumbo v2, "screensaver_activate_on_postured"

    .line 505
    iget-boolean v6, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsActivatedOnPosturedByDefault:Z

    .line 503
    invoke-static {v1, v2, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_53

    .line 507
    iget v2, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/dreams/DreamManagerService;->mWhenToDream:I

    .line 510
    :cond_53
    const-string/jumbo v2, "screensaver_enabled"

    .line 512
    iget-boolean v6, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 510
    invoke-static {v1, v2, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_5f

    move v3, v5

    :cond_5f
    iput-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamsEnabledSetting:Z

    .line 514
    monitor-exit v0

    return-void

    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_30

    throw p0
.end method

.method public final validateDream(Landroid/content/ComponentName;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 810
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 811
    const-string v1, "Dream "

    const-string v2, "DreamManagerService"

    if-nez p0, :cond_29

    .line 812
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist on user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 814
    :cond_29
    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x15

    if-lt p2, v3, :cond_5b

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 815
    const-string p2, "android.permission.BIND_DREAM_SERVICE"

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    .line 816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not available because its manifest is missing the "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission on the dream service declaration."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5b
    const/4 p0, 0x1

    return p0
.end method

.method public final writePulseGestureEnabled()V
    .registers 3

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1036
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;I)Z

    move-result p0

    .line 1037
    const-class v0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerInternal;->setPulseGestureEnabled(Z)V

    return-void
.end method
