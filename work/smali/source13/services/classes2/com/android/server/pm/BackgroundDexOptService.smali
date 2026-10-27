.class public final Lcom/android/server/pm/BackgroundDexOptService;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/BackgroundDexOptService$Injector;,
        Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;,
        Lcom/android/server/pm/BackgroundDexOptService$Status;
    }
.end annotation


# static fields
.field private static final ASSESS_SECONDARY:Z

.field private static final BOARD_TEMP_FILE:Ljava/lang/String; = "/sys/class/thermal/thermal_message/board_sensor_temp"

.field private static final CANCELLATION_WAIT_CHECK_INTERVAL_MS:J = 0xc8L

.field private static final DEBUG:Z

.field private static final DEBUG_DOWNGRADE:Z

.field private static final DOWNGRADE_MAXIMUM:I = 0x5

.field private static final DOWNGRADE_RECORD_FILE_DIR:Ljava/lang/String; = "/data/mqsas/clean/"

.field private static final DOWNGRADE_RECORD_FILE_PATH:Ljava/lang/String; = "/data/mqsas/clean/downgrade_records"

.field private static final IDLE_OPTIMIZATION_PERIOD:J

.field static final JOB_IDLE_OPTIMIZE:I = 0x320

.field static final JOB_POST_BOOT_UPDATE:I = 0x321

.field private static final LOW_THRESHOLD_MULTIPLIER_FOR_DOWNGRADE:I = 0x2

.field public static final STATUS_ABORT_BATTERY:I = 0x4

.field public static final STATUS_ABORT_BY_CANCELLATION:I = 0x1

.field public static final STATUS_ABORT_NO_SPACE_LEFT:I = 0x2

.field public static final STATUS_ABORT_THERMAL:I = 0x3

.field public static final STATUS_DEX_OPT_FAILED:I = 0x5

.field public static final STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field private static final THERMAL_CUTOFF_DEFAULT:I = 0x2

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field private static final sPauseBgDexoptReasons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downgradeRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDexOptCancellingThread:Ljava/lang/Thread;

.field private final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field private mDexOptThread:Ljava/lang/Thread;

.field private final mFailedPackageNamesPrimary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFailedPackageNamesSecondary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishedPostBootUpdate:Z

.field private final mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

.field private final mLastCancelledPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastExecutionDurationIncludingSleepMs:J

.field private mLastExecutionDurationMs:J

.field private mLastExecutionStartTimeMs:J

.field private mLastExecutionStartUptimeMs:J

.field private mLastExecutionStatus:I

.field private final mLock:Ljava/lang/Object;

.field private mPackagesUpdatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

.field private mThermalStatusCutoff:I


# direct methods
.method public static synthetic $r8$lambda$ycTtqWNgpTEagdZYSyId_EId2fw(Lcom/android/server/pm/BackgroundDexOptService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelDexOptAndWaitForCompletion()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/pm/BackgroundDexOptService;)Lcom/android/server/pm/BackgroundDexOptService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscheduleAJob(Lcom/android/server/pm/BackgroundDexOptService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->scheduleAJob(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG_DOWNGRADE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 96
    const-string v0, "BackgroundDexOptService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    .line 99
    nop

    .line 100
    const-string/jumbo v0, "persist.sys.downgrade_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    .line 101
    nop

    .line 102
    const-string/jumbo v0, "persist.sys.downgrade_assess_secondary"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->ASSESS_SECONDARY:Z

    .line 107
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 111
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/BackgroundDexOptJobService;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPauseBgDexoptReasons:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexManager"    # Lcom/android/server/pm/dex/DexManager;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 219
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>(Lcom/android/server/pm/BackgroundDexOptService$Injector;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/BackgroundDexOptService$Injector;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    invoke-direct {v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 194
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    .line 200
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    .line 202
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    .line 209
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    .line 1121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->downgradeRecords:Ljava/util/List;

    .line 224
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 225
    invoke-virtual {p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexOptHelper()Lcom/android/server/pm/DexOptHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 226
    const-class v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->getInstance()Lcom/android/server/pm/BackgroundDexOptServiceStub;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->initInternal(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/BackgroundDexOptService$Injector;Landroid/content/ComponentName;)V

    .line 230
    return-void
.end method

.method private abortIdleOptimizations(J)I
    .registers 9
    .param p1, "lowStorageThreshold"    # J

    .line 1345
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1347
    const/4 v0, 0x1

    return v0

    .line 1352
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getCurrentThermalStatus()I

    move-result v0

    .line 1353
    .local v0, "thermalStatus":I
    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    const-string v2, "BackgroundDexOptService"

    if-eqz v1, :cond_2a

    .line 1354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thermal throttling status during bgdexopt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_2a
    iget v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    if-lt v0, v1, :cond_30

    .line 1357
    const/4 v1, 0x3

    return v1

    .line 1360
    :cond_30
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBatteryLevelLow()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1361
    const/4 v1, 0x4

    return v1

    .line 1364
    :cond_3a
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v3

    .line 1365
    .local v3, "usableSpace":J
    cmp-long v1, v3, p1

    if-gez v1, :cond_5c

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v1, 0x2

    return v1

    .line 1371
    :cond_5c
    const/4 v1, 0x0

    return v1
.end method

.method private cancelDexOptAndWaitForCompletion()V
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-nez v1, :cond_9

    .line 480
    monitor-exit v0

    return-void

    .line 482
    :cond_9
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 484
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V

    .line 487
    monitor-exit v0

    return-void

    .line 489
    :cond_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_45

    .line 493
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_21
    invoke-direct {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 494
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_36

    .line 497
    :try_start_27
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    .line 498
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 499
    invoke-direct {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 500
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 501
    nop

    .line 502
    monitor-exit v0

    .line 503
    return-void

    .line 497
    :catchall_36
    move-exception v1

    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    .line 498
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 499
    invoke-direct {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 500
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 501
    nop

    .end local p0    # "this":Lcom/android/server/pm/BackgroundDexOptService;
    throw v1

    .line 502
    .restart local p0    # "this":Lcom/android/server/pm/BackgroundDexOptService;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private controlDexOptBlockingLocked(Z)V
    .registers 4
    .param p1, "block"    # Z

    .line 550
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    .line 551
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/DexOptHelper;->controlDexOptBlocking(Z)V

    .line 552
    return-void
.end method

.method private convertPackageDexOptimizerStatusToInternal(I)I
    .registers 6
    .param p1, "pdoStatus"    # I

    .line 1327
    const/4 v0, 0x5

    packed-switch p1, :pswitch_data_28

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkknown error code from PackageDexOptimizer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "BackgroundDexOptService"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
    return v0

    .line 1329
    :pswitch_22
    const/4 v0, 0x1

    return v0

    .line 1334
    :pswitch_24
    const/4 v0, 0x0

    return v0

    .line 1331
    :pswitch_26
    return v0

    nop

    :pswitch_data_28
    .packed-switch -0x1
        :pswitch_26
        :pswitch_24
        :pswitch_24
        :pswitch_22
    .end packed-switch
.end method

.method private downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I
    .registers 24
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "isForPrimaryDex"    # Z
    .param p5, "isPostBootUpdate"    # Z

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1024
    const/4 v3, 0x2

    return v3

    .line 1026
    :cond_10
    const/16 v11, 0xb

    .line 1027
    .local v11, "reason":I
    const/16 v3, 0x24

    .line 1028
    .local v3, "dexoptFlags":I
    if-nez p5, :cond_1a

    .line 1029
    or-int/lit16 v3, v3, 0x200

    move v12, v3

    goto :goto_1b

    .line 1028
    :cond_1a
    move v12, v3

    .line 1033
    .end local v3    # "dexoptFlags":I
    .local v12, "dexoptFlags":I
    :goto_1b
    const-wide/16 v3, 0x0

    .line 1034
    .local v3, "package_size_before":J
    const/4 v5, 0x0

    .line 1035
    .local v5, "result":I
    const-string v6, "BackgroundDexOptService"

    if-nez p4, :cond_55

    const-string v7, "android"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_55

    .line 1052
    :cond_2b
    sget-boolean v7, Lcom/android/server/pm/BackgroundDexOptService;->ASSESS_SECONDARY:Z

    if-eqz v7, :cond_4e

    .line 1053
    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/BackgroundDexOptService;->getSecondarySize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v3

    .line 1054
    sget-boolean v7, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v7, :cond_4e

    .line 1055
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package_size_before_secondary:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_4e
    invoke-direct {v0, v10, v11, v12}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;II)I

    move-result v5

    move-wide v13, v3

    move v15, v5

    goto :goto_86

    .line 1039
    :cond_55
    :goto_55
    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v3

    .line 1040
    sget-boolean v7, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v7, :cond_74

    .line 1041
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package_size_before_primary:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_74
    invoke-virtual {v2, v1, v10}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 1046
    invoke-virtual {v2, v1, v10}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-wide v13, v3

    move v15, v5

    goto :goto_86

    .line 1048
    :cond_80
    invoke-direct {v0, v10, v11, v12}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;II)I

    move-result v5

    move-wide v13, v3

    move v15, v5

    .line 1061
    .end local v3    # "package_size_before":J
    .end local v5    # "result":I
    .local v13, "package_size_before":J
    .local v15, "result":I
    :goto_86
    const/4 v3, 0x1

    if-ne v15, v3, :cond_1c1

    .line 1063
    const-string v3, ":"

    if-eqz p4, :cond_10e

    .line 1064
    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v4

    .line 1065
    .local v4, "package_size_after":J
    sget-boolean v7, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v7, :cond_ac

    .line 1066
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "package_size_after_primary:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_ac
    iget-object v8, v0, Lcom/android/server/pm/BackgroundDexOptService;->downgradeRecords:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v11

    move/from16 v17, v12

    .end local v11    # "reason":I
    .end local v12    # "dexoptFlags":I
    .local v16, "reason":I
    .local v17, "dexoptFlags":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    if-eqz v7, :cond_1ae

    .line 1071
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ae

    .line 1074
    .end local v4    # "package_size_after":J
    .end local v16    # "reason":I
    .end local v17    # "dexoptFlags":I
    .restart local v11    # "reason":I
    .restart local v12    # "dexoptFlags":I
    :cond_10e
    move/from16 v16, v11

    move/from16 v17, v12

    .end local v11    # "reason":I
    .end local v12    # "dexoptFlags":I
    .restart local v16    # "reason":I
    .restart local v17    # "dexoptFlags":I
    sget-boolean v4, Lcom/android/server/pm/BackgroundDexOptService;->ASSESS_SECONDARY:Z

    if-eqz v4, :cond_1ae

    .line 1075
    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/BackgroundDexOptService;->getSecondarySize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v4

    .line 1076
    .restart local v4    # "package_size_after":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package_size_after_secondary:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    cmp-long v7, v4, v13

    if-nez v7, :cond_14d

    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Equal secondary size:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 v3, -0x1

    return v3

    .line 1081
    :cond_14d
    iget-object v7, v0, Lcom/android/server/pm/BackgroundDexOptService;->downgradeRecords:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " secondary :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    sget-boolean v7, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v7, :cond_1af

    .line 1084
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1af

    .line 1074
    .end local v4    # "package_size_after":J
    :cond_1ae
    :goto_1ae
    nop

    .line 1089
    :cond_1af
    :goto_1af
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    .line 1090
    .local v11, "newSnapshot":Lcom/android/server/pm/Computer;
    const/16 v3, 0x80

    .line 1091
    invoke-direct {v0, v11, v10}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    .line 1090
    move-object/from16 v4, p3

    move-wide v5, v13

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    goto :goto_1c5

    .line 1061
    .end local v16    # "reason":I
    .end local v17    # "dexoptFlags":I
    .local v11, "reason":I
    .restart local v12    # "dexoptFlags":I
    :cond_1c1
    move/from16 v16, v11

    move/from16 v17, v12

    .line 1093
    .end local v11    # "reason":I
    .end local v12    # "dexoptFlags":I
    .restart local v16    # "reason":I
    .restart local v17    # "dexoptFlags":I
    :goto_1c5
    return v15
.end method

.method private enforceRootOrShell()V
    .registers 4

    .line 542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 543
    .local v0, "uid":I
    if-eqz v0, :cond_13

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 544
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Should be shell or root user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 546
    :cond_13
    :goto_13
    return-void
.end method

.method private getBatteryLevel()I
    .registers 2

    .line 1225
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method private getBoardTemp()I
    .registers 9

    .line 1098
    const-string v0, "fileInputStream close failed"

    const-string v1, "BackgroundDexOptService"

    const/4 v2, 0x0

    .line 1099
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v3, -0x1

    .line 1101
    .local v3, "temperature":I
    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/sys/class/thermal/thermal_message/board_sensor_temp"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1102
    const/16 v4, 0xa

    new-array v4, v4, [B

    .line 1103
    .local v4, "buffer":[B
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 1104
    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2a

    .line 1105
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_36
    .catchall {:try_start_6 .. :try_end_29} :catchall_34

    move v3, v6

    .line 1111
    .end local v4    # "buffer":[B
    .end local v5    # "len":I
    :cond_2a
    nop

    .line 1112
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 1116
    :cond_2e
    :goto_2e
    goto :goto_42

    .line 1114
    :catch_2f
    move-exception v4

    .line 1115
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_42

    .line 1110
    :catchall_34
    move-exception v4

    goto :goto_43

    .line 1107
    :catch_36
    move-exception v4

    .line 1108
    .local v4, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v5, "get boardtemp failed"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    .line 1111
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2e

    .line 1112
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_2f

    goto :goto_2e

    .line 1118
    :goto_42
    return v3

    .line 1111
    :goto_43
    if-eqz v2, :cond_4e

    .line 1112
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4e

    .line 1114
    :catch_49
    move-exception v5

    .line 1115
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 1116
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4e
    :goto_4e
    nop

    .line 1117
    :goto_4f
    throw v4
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .registers 10
    .param p1, "f"    # Ljava/io/File;

    .line 665
    const-wide/16 v0, 0x0

    .line 666
    .local v0, "size":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 667
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    .line 668
    .local v5, "file":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 667
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 671
    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 673
    :cond_1e
    return-wide v0
.end method

.method private getDirectorySizeByChannel(Ljava/io/File;)J
    .registers 10
    .param p1, "f"    # Ljava/io/File;

    .line 734
    const-wide/16 v0, 0x0

    .line 735
    .local v0, "size":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 736
    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->isEmptyDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 737
    const-wide/16 v2, 0x0

    return-wide v2

    .line 739
    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_43

    aget-object v5, v2, v4

    .line 740
    .local v5, "file":Ljava/io/File;
    sget-boolean v6, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v6, :cond_37

    .line 741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUB_FILE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BackgroundDexOptService"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_37
    invoke-direct {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySizeByChannel(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 739
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 746
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    .line 748
    :cond_43
    return-wide v0
.end method

.method private getDowngradeRecordFile()Ljava/io/File;
    .registers 5

    .line 1202
    const-string v0, "BackgroundDexOptService"

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/mqsas/clean/downgrade_records"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v1, "recordFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1204
    return-object v1

    .line 1207
    :cond_10
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1208
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1209
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 777 /data/mqsas/clean/"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1210
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 777 /data/mqsas/clean/downgrade_records"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1211
    return-object v1

    .line 1213
    :cond_3d
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_41} :catch_45

    if-eqz v2, :cond_44

    .line 1214
    return-object v1

    .line 1218
    .end local v1    # "recordFile":Ljava/io/File;
    :cond_44
    goto :goto_4b

    .line 1216
    :catch_45
    move-exception v1

    .line 1217
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "IOException occurred"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4b
    const-string v1, "get downgrade record file fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFileSize(Ljava/io/File;)J
    .registers 11
    .param p1, "f"    # Ljava/io/File;

    .line 767
    const-string/jumbo v0, "resource close error"

    const-string v1, "BackgroundDexOptService"

    const/4 v2, 0x0

    .line 768
    .local v2, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v3, 0x0

    .line 769
    .local v3, "aFile":Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x0

    .line 771
    .local v4, "size":J
    :try_start_9
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 772
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    move-object v2, v6

    .line 773
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-wide v4, v6

    .line 774
    sget-boolean v6, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v6, :cond_50

    .line 775
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COUNT_NOT_DIR_FILE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FILE_SIZE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_50} :catch_63
    .catchall {:try_start_9 .. :try_end_50} :catchall_61

    .line 788
    :cond_50
    if-eqz v2, :cond_58

    .line 789
    :try_start_52
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_58

    .line 794
    :catch_56
    move-exception v6

    goto :goto_5d

    .line 791
    :cond_58
    :goto_58
    nop

    .line 792
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_56

    .line 796
    :cond_5c
    :goto_5c
    goto :goto_82

    .line 795
    .local v6, "e":Ljava/lang/Exception;
    :goto_5d
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_82

    .line 787
    :catchall_61
    move-exception v6

    goto :goto_83

    .line 778
    :catch_63
    move-exception v6

    .line 779
    .restart local v6    # "e":Ljava/lang/Exception;
    if-nez v3, :cond_6b

    .line 780
    :try_start_66
    const-string v7, "GET_FILE_ERROR: aFile is null"

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_6b
    if-nez v2, :cond_72

    .line 783
    const-string v7, "GET_FILE_ERROR: inChannel is null"

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_72
    const-string v7, "GET_FILE_ERROR:"

    invoke-static {v1, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_66 .. :try_end_77} :catchall_61

    .line 788
    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_7c

    .line 789
    :try_start_79
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 791
    :cond_7c
    if-eqz v3, :cond_5c

    .line 792
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_56

    goto :goto_5c

    .line 798
    :goto_82
    return-wide v4

    .line 788
    :goto_83
    if-eqz v2, :cond_8b

    .line 789
    :try_start_85
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_8b

    .line 794
    :catch_89
    move-exception v7

    goto :goto_91

    .line 791
    :cond_8b
    :goto_8b
    if-eqz v3, :cond_95

    .line 792
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_90} :catch_89

    goto :goto_95

    .line 795
    .local v7, "e":Ljava/lang/Exception;
    :goto_91
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 796
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_95
    :goto_95
    nop

    .line 797
    :goto_96
    throw v6
.end method

.method private getLowStorageThreshold()J
    .registers 5

    .line 597
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirStorageLowBytes()J

    move-result-wide v0

    .line 598
    .local v0, "lowThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 599
    const-string v2, "BackgroundDexOptService"

    const-string v3, "Invalid low storage threshold"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_13
    return-wide v0
.end method

.method private getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .registers 14
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 678
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 679
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const-wide/16 v4, 0x0

    .line 680
    .local v4, "size":J
    if-eqz v3, :cond_5d

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_5d

    .line 681
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 682
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 683
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 685
    :cond_27
    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 686
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 687
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v6, v1

    move v7, v2

    :goto_3c
    if-ge v7, v6, :cond_5c

    aget-object v8, v1, v7

    .line 688
    .local v8, "splitSourceDir":Ljava/lang/String;
    new-array v9, v2, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 690
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 692
    :cond_54
    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v4, v9

    .line 687
    .end local v8    # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 695
    :cond_5c
    return-wide v4

    .line 697
    .end local v0    # "path":Ljava/io/File;
    :cond_5d
    return-wide v0
.end method

.method private getSecondarySize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .registers 21
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 704
    .local v6, "info":Landroid/content/pm/PackageInfo;
    const-wide/16 v7, 0x0

    .line 705
    .local v7, "size":J
    iget-object v9, v0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v9}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v9

    .line 706
    .local v9, "mDexManager":Lcom/android/server/pm/dex/DexManager;
    if-eqz v6, :cond_9c

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_9c

    .line 708
    invoke-virtual {v9, v1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 709
    .local v2, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v3

    .line 711
    .local v3, "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9a

    .line 712
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_31
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_98

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 713
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 714
    .local v12, "secondaryDexPath":Ljava/lang/String;
    new-array v13, v4, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    invoke-interface {v13}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v13

    .line 716
    .local v13, "path":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 717
    sget-boolean v14, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    const-string v15, "BackgroundDexOptService"

    if-eqz v14, :cond_6d

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSecondarySize() counting secondary in:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_6d
    const-wide/16 v16, 0x0

    .line 721
    .local v16, "secondarySize":J
    move-object v4, v2

    .end local v2    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .local v4, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-direct {v0, v13}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySizeByChannel(Ljava/io/File;)J

    move-result-wide v1

    .line 722
    .end local v16    # "secondarySize":J
    .local v1, "secondarySize":J
    if-eqz v14, :cond_90

    .line 723
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v0, " size: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_90
    add-long/2addr v7, v1

    .line 726
    .end local v1    # "secondarySize":J
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12    # "secondaryDexPath":Ljava/lang/String;
    .end local v13    # "path":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v4

    const/4 v4, 0x0

    goto :goto_31

    .line 712
    .end local v4    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v2    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :cond_98
    move-object v4, v2

    .end local v2    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v4    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    goto :goto_9b

    .line 711
    .end local v4    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v2    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :cond_9a
    move-object v4, v2

    .line 728
    .end local v2    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v4    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :goto_9b
    return-wide v7

    .line 730
    .end local v3    # "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v4    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :cond_9c
    return-wide v2
.end method

.method public static getService()Lcom/android/server/pm/BackgroundDexOptService;
    .registers 1

    .line 293
    const-class v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BackgroundDexOptService;

    return-object v0
.end method

.method private idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JZ)I
    .registers 32
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "lowStorageThreshold"    # J
    .param p5, "isPostBootUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZ)I"
        }
    .end annotation

    .line 805
    .local p2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v0

    .line 808
    .local v9, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_a
    iget-object v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->supportSecondaryDex()Z

    move-result v0

    move v10, v0

    .line 810
    .local v10, "supportSecondaryDex":Z
    if-eqz v10, :cond_21

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles()I

    move-result v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_228

    .line 812
    .local v0, "result":I
    if-eqz v0, :cond_21

    .line 813
    nop

    .line 953
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 957
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 813
    return v0

    .line 820
    .end local v0    # "result":I
    :cond_21
    const-wide/16 v0, 0x2

    mul-long v11, p3, v0

    .line 823
    .local v11, "lowStorageThresholdForDowngrade":J
    :try_start_25
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade()Z

    move-result v0

    move v13, v0

    .line 836
    .local v13, "shouldDowngrade":Z
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_228

    const-string v14, "BackgroundDexOptService"

    if-nez v0, :cond_34

    :try_start_30
    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v1, :cond_4a

    .line 837
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should Downgrade "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_4a
    if-eqz v13, :cond_211

    .line 841
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v15, v1

    .line 842
    .local v15, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v1, 0x0

    .line 843
    .local v1, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "dalvik.vm.dexopt.force_downgrade"

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 844
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    move-object v5, v1

    goto :goto_6f

    .line 846
    :cond_63
    iget-object v2, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 847
    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDowngradeUnusedAppsThresholdInMillis()J

    move-result-wide v2

    invoke-interface {v15, v2, v3}, Lcom/android/server/pm/Computer;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v2
    :try_end_6d
    .catchall {:try_start_30 .. :try_end_6d} :catchall_228

    move-object v1, v2

    move-object v5, v1

    .line 850
    .end local v1    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_6f
    const-string v4, ","

    if-nez v0, :cond_77

    :try_start_73
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v0, :cond_91

    .line 851
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsused Packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_91
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20d

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide/from16 v16, v0

    .line 857
    .local v16, "startDowngrade":J
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_a1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 858
    .local v3, "pkg":Ljava/lang/String;
    const-wide/16 v0, -0x1

    invoke-direct {v7, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v0
    :try_end_b4
    .catchall {:try_start_73 .. :try_end_b4} :catchall_228

    move/from16 v19, v0

    .line 859
    .local v19, "abortCode":I
    if-eqz v19, :cond_c0

    .line 861
    nop

    .line 953
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 957
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 861
    return v19

    .line 885
    :cond_c0
    :try_start_c0
    iget-object v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 886
    .local v0, "kpm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c0 .. :try_end_cd} :catch_1b0
    .catchall {:try_start_c0 .. :try_end_cd} :catchall_228

    .line 890
    .end local v0    # "kpm":Landroid/content/pm/PackageManager;
    nop

    .line 891
    :try_start_ce
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBoardTemp()I

    move-result v0

    const/16 v1, 0x27

    if-le v0, v1, :cond_eb

    .line 892
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v0, :cond_e5

    .line 893
    const-string v0, "Downgrade terminated due to high temperature."

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v24, v11

    move-object v11, v4

    move-object v12, v5

    goto/16 :goto_1d9

    .line 892
    :cond_e5
    move-wide/from16 v24, v11

    move-object v11, v4

    move-object v12, v5

    goto/16 :goto_1d9

    .line 897
    :cond_eb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v20, v0, v16

    .line 898
    .local v20, "duration":J
    const-wide/32 v0, 0xea60

    cmp-long v0, v20, v0

    if-lez v0, :cond_10d

    .line 899
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v0, :cond_107

    .line 900
    const-string v0, "Downgrade terminated due to timeout."

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v24, v11

    move-object v11, v4

    move-object v12, v5

    goto/16 :goto_1d9

    .line 899
    :cond_107
    move-wide/from16 v24, v11

    move-object v11, v4

    move-object v12, v5

    goto/16 :goto_1d9

    .line 904
    :cond_10d
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v0, :cond_127

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start downgrading primary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_127
    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v23, v3

    .end local v3    # "pkg":Ljava/lang/String;
    .local v23, "pkg":Ljava/lang/String;
    move-object/from16 v3, p1

    move-wide/from16 v24, v11

    move-object v11, v4

    .end local v11    # "lowStorageThresholdForDowngrade":J
    .local v24, "lowStorageThresholdForDowngrade":J
    move-object/from16 v4, v23

    move-object v12, v5

    .end local v5    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v12, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v5, v22

    move/from16 v22, v6

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v1

    .line 911
    .local v1, "dex_opt_performed":I
    invoke-direct {v7, v1}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v2

    .line 912
    .local v2, "status":I
    if-eqz v2, :cond_166

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downgrade package fail "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v3, v23

    .end local v23    # "pkg":Ljava/lang/String;
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catchall {:try_start_ce .. :try_end_15e} :catchall_228

    .line 914
    nop

    .line 953
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 957
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 914
    return v2

    .line 916
    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v23    # "pkg":Ljava/lang/String;
    :cond_166
    move-object/from16 v3, v23

    .end local v23    # "pkg":Ljava/lang/String;
    .restart local v3    # "pkg":Ljava/lang/String;
    if-eqz v10, :cond_182

    .line 917
    if-eqz v0, :cond_182

    .line 918
    :try_start_16c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start downgrading secondary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_182
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1a0

    .line 924
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 925
    if-eqz v0, :cond_1a0

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish downgrading "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1a0
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v4, 0x5

    if-lt v0, v4, :cond_1a8

    .line 934
    goto :goto_1d9

    .line 937
    .end local v1    # "dex_opt_performed":I
    .end local v2    # "status":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v19    # "abortCode":I
    .end local v20    # "duration":J
    :cond_1a8
    move-object v4, v11

    move-object v5, v12

    move/from16 v6, v22

    move-wide/from16 v11, v24

    goto/16 :goto_a1

    .line 887
    .end local v12    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24    # "lowStorageThresholdForDowngrade":J
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v5    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "lowStorageThresholdForDowngrade":J
    .restart local v19    # "abortCode":I
    :catch_1b0
    move-exception v0

    move/from16 v22, v6

    move-wide/from16 v24, v11

    move-object v11, v4

    move-object v12, v5

    .line 888
    .end local v5    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "lowStorageThresholdForDowngrade":J
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "lowStorageThresholdForDowngrade":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downgrade terminated due to non-existent app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    move-object v4, v11

    move-object v5, v12

    move/from16 v6, v22

    move-wide/from16 v11, v24

    goto/16 :goto_a1

    .line 857
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v12    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "abortCode":I
    .end local v24    # "lowStorageThresholdForDowngrade":J
    .restart local v5    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "lowStorageThresholdForDowngrade":J
    :cond_1d5
    move-wide/from16 v24, v11

    move-object v11, v4

    move-object v12, v5

    .line 939
    .end local v5    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "lowStorageThresholdForDowngrade":J
    .restart local v12    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "lowStorageThresholdForDowngrade":J
    :goto_1d9
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v0, :cond_1e2

    .line 940
    const-string v0, "DOWNGRADE MAX 5"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_1e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrade Packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->writeDowngradeState()V

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_204
    .catchall {:try_start_16c .. :try_end_204} :catchall_228

    move-object v1, v0

    .line 946
    .end local p2    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_205
    invoke-interface {v1, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_208
    .catchall {:try_start_205 .. :try_end_208} :catchall_20a

    move-object v8, v1

    goto :goto_213

    .line 953
    .end local v10    # "supportSecondaryDex":Z
    .end local v12    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "shouldDowngrade":Z
    .end local v15    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v16    # "startDowngrade":J
    .end local v24    # "lowStorageThresholdForDowngrade":J
    :catchall_20a
    move-exception v0

    move-object v8, v1

    goto :goto_229

    .line 854
    .end local v1    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "supportSecondaryDex":Z
    .restart local v11    # "lowStorageThresholdForDowngrade":J
    .restart local v13    # "shouldDowngrade":Z
    .restart local v15    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_20d
    move-wide/from16 v24, v11

    move-object v12, v5

    .end local v5    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "lowStorageThresholdForDowngrade":J
    .restart local v12    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "lowStorageThresholdForDowngrade":J
    goto :goto_213

    .line 840
    .end local v12    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v24    # "lowStorageThresholdForDowngrade":J
    .restart local v11    # "lowStorageThresholdForDowngrade":J
    :cond_211
    move-wide/from16 v24, v11

    .line 950
    .end local v11    # "lowStorageThresholdForDowngrade":J
    .end local p2    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "lowStorageThresholdForDowngrade":J
    :goto_213
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide/from16 v3, p3

    move-object v5, v9

    move/from16 v6, p5

    :try_start_21b
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Ljava/util/List;JLandroid/util/ArraySet;Z)I

    move-result v0
    :try_end_21f
    .catchall {:try_start_21b .. :try_end_21f} :catchall_226

    .line 953
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 957
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 950
    return v0

    .line 953
    .end local v10    # "supportSecondaryDex":Z
    .end local v13    # "shouldDowngrade":Z
    .end local v24    # "lowStorageThresholdForDowngrade":J
    :catchall_226
    move-exception v0

    goto :goto_229

    .end local v8    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_228
    move-exception v0

    .end local p2    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_229
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 957
    invoke-direct {v7, v9}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 958
    throw v0
.end method

.method private isCancelling()Z
    .registers 3

    .line 1439
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1440
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 1441
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private isEmptyDirectory(Ljava/io/File;)Z
    .registers 5
    .param p1, "f"    # Ljava/io/File;

    .line 752
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v0, :cond_1c

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COUNT_DIR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_1c
    const/4 v0, 0x1

    if-nez p1, :cond_20

    .line 756
    return v0

    .line 758
    :cond_20
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "flist":[Ljava/lang/String;
    if-eqz v1, :cond_2c

    array-length v2, v1

    if-gtz v2, :cond_2a

    goto :goto_2c

    .line 763
    .end local v1    # "flist":[Ljava/lang/String;
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 760
    .restart local v1    # "flist":[Ljava/lang/String;
    :cond_2c
    :goto_2c
    return v0
.end method

.method private logStatus(I)V
    .registers 5
    .param p1, "status"    # I

    .line 606
    const-string v0, "BackgroundDexOptService"

    packed-switch p1, :pswitch_data_42

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle optimizations ended with unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 623
    :pswitch_1c
    const-string v1, "Idle optimizations failed from dexopt."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    goto :goto_40

    .line 620
    :pswitch_22
    const-string v1, "Idle optimizations aborted by low battery."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    goto :goto_40

    .line 617
    :pswitch_28
    const-string v1, "Idle optimizations aborted by thermal throttling."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    goto :goto_40

    .line 611
    :pswitch_2e
    const-string v1, "Idle optimizations aborted because of space constraints."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    goto :goto_40

    .line 614
    :pswitch_34
    const-string v1, "Idle optimizations aborted by cancellation."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    goto :goto_40

    .line 608
    :pswitch_3a
    const-string v1, "Idle optimizations completed."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    nop

    .line 629
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method

.method private markDexOptCompleted()V
    .registers 5

    .line 522
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_15

    .line 528
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 530
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 531
    monitor-exit v0

    .line 532
    return-void

    .line 524
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only mDexOptThread can mark completion, mDexOptThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/BackgroundDexOptService;
    throw v1

    .line 531
    .restart local p0    # "this":Lcom/android/server/pm/BackgroundDexOptService;
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 1445
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x321

    if-eq v0, v1, :cond_9

    .line 1446
    return-void

    .line 1448
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1449
    :try_start_c
    iget-boolean v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    if-nez v2, :cond_13

    .line 1450
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    .line 1452
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1e

    .line 1454
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 1455
    return-void

    .line 1452
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private notifyPackagesUpdated(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1467
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1468
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    .line 1469
    .local v2, "listener":Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;
    invoke-interface {v2, p1}, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;->onPackagesUpdated(Landroid/util/ArraySet;)V

    .line 1470
    .end local v2    # "listener":Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;
    goto :goto_9

    .line 1471
    :cond_19
    monitor-exit v0

    .line 1472
    return-void

    .line 1471
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private notifyPinService(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1458
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPinnerService()Lcom/android/server/PinnerService;

    move-result-object v0

    .line 1459
    .local v0, "pinnerService":Lcom/android/server/PinnerService;
    if-eqz v0, :cond_24

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinning optimized code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundDexOptService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    .line 1463
    :cond_24
    return-void
.end method

.method private optimizePackage(Ljava/lang/String;ZZ)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isForPrimaryDex"    # Z
    .param p3, "isPostBootUpdate"    # Z

    .line 1256
    if-eqz p3, :cond_4

    const/4 v0, 0x2

    goto :goto_6

    .line 1257
    :cond_4
    const/16 v0, 0x9

    :goto_6
    nop

    .line 1258
    .local v0, "reason":I
    const/4 v1, 0x4

    .line 1259
    .local v1, "dexoptFlags":I
    if-nez p3, :cond_c

    .line 1260
    or-int/lit16 v1, v1, 0x201

    .line 1266
    :cond_c
    if-nez p2, :cond_1c

    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_1c

    .line 1269
    :cond_17
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;II)I

    move-result v2

    return v2

    .line 1267
    :cond_1c
    :goto_1c
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;II)I

    move-result v2

    return v2
.end method

.method private optimizePackages(Ljava/util/List;JLandroid/util/ArraySet;Z)I
    .registers 16
    .param p2, "lowStorageThreshold"    # J
    .param p5, "isPostBootUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 964
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->supportSecondaryDex()Z

    move-result v0

    .line 967
    .local v0, "supportSecondaryDex":Z
    const/4 v1, 0x0

    .line 971
    .local v1, "status":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 973
    .local v3, "pkg":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->pauseBgDexOptIfNeed()V

    .line 975
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v4

    .line 976
    .local v4, "abortCode":I
    if-eqz v4, :cond_21

    .line 978
    return v4

    .line 982
    :cond_21
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Ljava/lang/String;ZZ)I

    move-result v6

    .line 983
    .local v6, "primaryResult":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2a

    .line 984
    return v5

    .line 986
    :cond_2a
    const/4 v8, -0x1

    if-ne v6, v5, :cond_31

    .line 987
    invoke-virtual {p4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 988
    :cond_31
    if-ne v6, v8, :cond_37

    .line 989
    invoke-direct {p0, v6}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v1

    .line 992
    :cond_37
    :goto_37
    if-nez v0, :cond_3a

    .line 993
    goto :goto_b

    .line 997
    :cond_3a
    const/4 v9, 0x0

    .line 998
    invoke-direct {p0, v3, v9, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Ljava/lang/String;ZZ)I

    move-result v9

    .line 999
    .local v9, "secondaryResult":I
    if-ne v9, v7, :cond_42

    .line 1000
    return v5

    .line 1002
    :cond_42
    if-ne v9, v8, :cond_48

    .line 1003
    invoke-direct {p0, v9}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v1

    .line 1005
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "abortCode":I
    .end local v6    # "primaryResult":I
    .end local v9    # "secondaryResult":I
    :cond_48
    goto :goto_b

    .line 1006
    :cond_49
    return v1
.end method

.method public static pauseBgDexOpt(Ljava/lang/String;)V
    .registers 3
    .param p0, "reason"    # Ljava/lang/String;

    .line 566
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPauseBgDexoptReasons:Ljava/util/ArrayList;

    monitor-enter v0

    .line 567
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static pauseBgDexOptIfNeed()V
    .registers 5

    .line 583
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPauseBgDexoptReasons:Ljava/util/ArrayList;

    monitor-enter v0

    .line 584
    :goto_3
    :try_start_3
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sPauseBgDexoptReasons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 585
    const-string v2, "BackgroundDexOptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pause dex optimization because of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 586
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3f

    .line 588
    :try_start_2f
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_3a} :catch_3b
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3f

    goto :goto_3c

    .line 589
    :catch_3b
    move-exception v1

    .line 590
    :goto_3c
    goto :goto_3

    .line 592
    :cond_3d
    :try_start_3d
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private performDexOptPrimary(Ljava/lang/String;II)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "dexoptFlags"    # I

    .line 1275
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 1276
    .local v0, "dexoptOptions":Lcom/android/server/pm/dex/DexoptOptions;
    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result v1

    return v1
.end method

.method private performDexOptSecondary(Ljava/lang/String;II)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "dexoptFlags"    # I

    .line 1282
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    or-int/lit8 v1, p3, 0x8

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 1284
    .local v0, "dexoptOptions":Lcom/android/server/pm/dex/DexoptOptions;
    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result v1

    return v1
.end method

.method private reconcileSecondaryDexFiles()I
    .registers 4

    .line 1233
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DexManager;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1234
    .local v1, "p":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1235
    const/4 v0, 0x1

    return v0

    .line 1238
    :cond_22
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->pauseBgDexOptIfNeed()V

    .line 1240
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1241
    .end local v1    # "p":Ljava/lang/String;
    goto :goto_e

    .line 1242
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method private resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 536
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 537
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 539
    return-void
.end method

.method public static resumeBgDexOpt(Ljava/lang/String;)V
    .registers 6
    .param p0, "reason"    # Ljava/lang/String;

    .line 572
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPauseBgDexoptReasons:Ljava/util/ArrayList;

    monitor-enter v0

    .line 573
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 574
    const-string v1, "BackgroundDexOptService"

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 577
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 579
    :cond_30
    monitor-exit v0

    .line 580
    return-void

    .line 579
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z
    .registers 15
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "isPostBootUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 637
    .local p2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    .line 639
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    .line 641
    iput-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 642
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_4c

    .line 643
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    move-result-wide v1

    .line 644
    .local v1, "lowStorageThreshold":J
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-wide v8, v1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JZ)I

    move-result v3

    .line 645
    .local v3, "status":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->logStatus(I)V

    .line 646
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 647
    :try_start_29
    iput v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 648
    nop

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    .line 650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 651
    monitor-exit v4

    .line 653
    if-eqz v3, :cond_47

    const/4 v0, 0x5

    if-ne v3, v0, :cond_45

    goto :goto_47

    :cond_45
    const/4 v0, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    const/4 v0, 0x1

    :goto_48
    return v0

    .line 651
    :catchall_49
    move-exception v0

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_49

    throw v0

    .line 642
    .end local v1    # "lowStorageThreshold":J
    .end local v3    # "status":I
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private scheduleAJob(I)V
    .registers 7
    .param p1, "jobId"    # I

    .line 555
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 556
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, p1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 557
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 558
    .local v1, "builder":Landroid/app/job/JobInfo$Builder;
    const/16 v3, 0x320

    if-ne p1, v3, :cond_1f

    .line 559
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 561
    :cond_1f
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 562
    return-void
.end method

.method private shouldDowngrade()Z
    .registers 13

    .line 1385
    const-string v0, "dalvik.vm.dexopt.force_downgrade"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "BackgroundDexOptService"

    if-eqz v0, :cond_1b

    .line 1386
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v0, :cond_19

    .line 1387
    :cond_13
    const-string/jumbo v0, "system will force downgrade all app..."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 1391
    :cond_1b
    const/4 v0, 0x0

    .line 1393
    .local v0, "shouldDowngrade":Z
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->-$$Nest$fgetmDataDir(Lcom/android/server/pm/BackgroundDexOptService$Injector;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v3

    .line 1394
    .local v3, "totalSpace":J
    iget-object v5, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-static {v5}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->-$$Nest$fgetmDataDir(Lcom/android/server/pm/BackgroundDexOptService$Injector;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v5

    .line 1395
    .local v5, "usableSpace":J
    long-to-double v7, v5

    long-to-double v9, v3

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    .line 1396
    .local v7, "usablePercentage":D
    sget-boolean v9, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-nez v9, :cond_42

    sget-boolean v10, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v10, :cond_62

    .line 1397
    :cond_42
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device sotrage space total="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " free="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_62
    const-wide v10, 0x3b9aca0000L

    cmp-long v10, v3, v10

    if-ltz v10, :cond_7c

    .line 1401
    const-wide v10, 0x4a817c800L

    cmp-long v10, v5, v10

    if-ltz v10, :cond_75

    .line 1402
    return v1

    .line 1404
    :cond_75
    const/4 v0, 0x1

    .line 1405
    const-string v1, "device total sotrage space is over 256GB, free space less than 20GB."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 1406
    :cond_7c
    const-wide v10, 0x1dcd650000L

    cmp-long v10, v3, v10

    if-ltz v10, :cond_93

    .line 1407
    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    cmpl-double v10, v7, v10

    if-ltz v10, :cond_8c

    .line 1408
    return v1

    .line 1410
    :cond_8c
    const/4 v0, 0x1

    .line 1411
    const-string v1, "device total sotrage space is over 128GB, free space less than 12%."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 1413
    :cond_93
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    cmpl-double v10, v7, v10

    if-ltz v10, :cond_9a

    .line 1414
    return v1

    .line 1416
    :cond_9a
    const/4 v0, 0x1

    .line 1417
    const-string v1, "device total sotrage space is 64GB or less, free space less than 20%."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :goto_a0
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBatteryLevel()I

    move-result v1

    .line 1421
    .local v1, "batteryLevel":I
    const/16 v10, 0x50

    if-ge v1, v10, :cond_cb

    .line 1422
    if-nez v9, :cond_ae

    sget-boolean v10, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v10, :cond_ca

    .line 1423
    :cond_ae
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Battery level "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% is lower than 80%."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_ca
    const/4 v0, 0x0

    .line 1427
    :cond_cb
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBoardTemp()I

    move-result v10

    .line 1428
    .local v10, "boardTemp":I
    const/16 v11, 0x27

    if-le v10, v11, :cond_f6

    .line 1429
    if-nez v9, :cond_d9

    sget-boolean v9, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    if-eqz v9, :cond_f5

    .line 1430
    :cond_d9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Board temperature "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " is higher than 39."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_f5
    const/4 v0, 0x0

    .line 1434
    :cond_f6
    return v0
.end method

.method private shouldDowngrade(J)Z
    .registers 5
    .param p1, "lowStorageThresholdForDowngrade"    # J

    .line 1376
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    .line 1377
    const/4 v0, 0x1

    return v0

    .line 1380
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isForPrimaryDex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1304
    .local p3, "performDexOptWrapper":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1306
    if-eqz p2, :cond_8

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    goto :goto_a

    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 1307
    .local v1, "failedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_a
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1309
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1311
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_3d

    .line 1312
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1313
    .local v0, "result":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2c

    .line 1314
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1315
    :try_start_24
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1316
    monitor-exit v2

    goto :goto_3c

    :catchall_29
    move-exception v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_29

    throw v3

    .line 1317
    :cond_2c
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3c

    .line 1318
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1319
    :try_start_32
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1320
    monitor-exit v2

    goto :goto_3c

    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw v3

    .line 1322
    :cond_3c
    :goto_3c
    return v0

    .line 1311
    .end local v0    # "result":I
    .end local v1    # "failedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private waitForDexOptThreadToFinishLocked()V
    .registers 6

    .line 507
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "BackgroundDexOptService"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 508
    .local v0, "tr":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string/jumbo v2, "waitForDexOptThreadToFinishLocked"

    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 511
    :goto_10
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 512
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_21} :catch_23

    goto :goto_10

    .line 517
    :cond_22
    goto :goto_30

    .line 514
    :catch_23
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted while waiting for dexopt thread"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 518
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_30
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 519
    return-void
.end method

.method private writeDowngradeState()V
    .registers 16

    .line 1124
    const-string/jumbo v0, "resource close error"

    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG_DOWNGRADE:Z

    const-string v2, "BackgroundDexOptService"

    if-eqz v1, :cond_f

    .line 1125
    const-string/jumbo v1, "writeDowngradeState enter"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->downgradeRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1128
    const-string v0, "d r empty"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return-void

    .line 1131
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getDowngradeRecordFile()Ljava/io/File;

    move-result-object v1

    .line 1132
    .local v1, "downgradeRecordFile":Ljava/io/File;
    if-nez v1, :cond_24

    .line 1133
    return-void

    .line 1136
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d r file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v3, 0x0

    .line 1138
    .local v3, "bufferReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1139
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1140
    .local v5, "bufferedWriter":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 1142
    .local v6, "fileReader":Ljava/io/FileReader;
    const/4 v7, 0x2

    :try_start_43
    new-array v7, v7, [B

    .line 1143
    .local v7, "line":[B
    const/16 v8, 0xd

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    .line 1144
    const/16 v8, 0xa

    const/4 v10, 0x1

    aput-byte v8, v7, v10

    .line 1146
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x1400

    cmp-long v8, v11, v13

    if-lez v8, :cond_ac

    .line 1147
    const-string/jumbo v8, "over size limit"

    invoke-static {v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v8, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v6, v11

    .line 1151
    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v11

    .line 1152
    const/16 v11, 0x14

    .line 1153
    .local v11, "deleteCount":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 1154
    .local v12, "record":Ljava/lang/String;
    :goto_76
    if-eqz v12, :cond_85

    .line 1155
    add-int/lit8 v11, v11, -0x1

    .line 1156
    if-gtz v11, :cond_7f

    .line 1157
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_7f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    goto :goto_76

    .line 1161
    :cond_85
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1163
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v4, v13

    .line 1165
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_92
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1166
    .local v13, "r":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 1167
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 1168
    .end local v13    # "r":Ljava/lang/String;
    goto :goto_92

    .line 1169
    :cond_a9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1172
    .end local v8    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "deleteCount":I
    .end local v12    # "record":Ljava/lang/String;
    :cond_ac
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v4, v8

    .line 1173
    iget-object v8, p0, Lcom/android/server/pm/BackgroundDexOptService;->downgradeRecords:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cf

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1174
    .local v9, "r":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 1175
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_ce} :catch_e8
    .catchall {:try_start_43 .. :try_end_ce} :catchall_e6

    .line 1176
    .end local v9    # "r":Ljava/lang/String;
    goto :goto_b8

    .line 1181
    .end local v7    # "line":[B
    :cond_cf
    if-eqz v5, :cond_d7

    .line 1182
    :try_start_d1
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    goto :goto_d7

    .line 1193
    :catch_d5
    move-exception v7

    goto :goto_106

    .line 1184
    :cond_d7
    :goto_d7
    nop

    .line 1185
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1187
    if-eqz v3, :cond_e0

    .line 1188
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1190
    :cond_e0
    if-eqz v6, :cond_10a

    .line 1191
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_e5} :catch_d5

    goto :goto_10a

    .line 1180
    :catchall_e6
    move-exception v7

    goto :goto_112

    .line 1177
    :catch_e8
    move-exception v7

    .line 1178
    .local v7, "e":Ljava/lang/Exception;
    :try_start_e9
    const-string v8, "downgradeRecordFile error"

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_e6

    .line 1181
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_f6

    .line 1182
    :try_start_f0
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    goto :goto_f6

    .line 1193
    :catch_f4
    move-exception v7

    goto :goto_106

    .line 1184
    :cond_f6
    :goto_f6
    if-eqz v4, :cond_fb

    .line 1185
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1187
    :cond_fb
    if-eqz v3, :cond_100

    .line 1188
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1190
    :cond_100
    if-eqz v6, :cond_10a

    .line 1191
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_105} :catch_f4

    goto :goto_10a

    .line 1194
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_106
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10b

    .line 1195
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_10a
    :goto_10a
    nop

    .line 1196
    :goto_10b
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->downgradeRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1197
    nop

    .line 1198
    return-void

    .line 1181
    :goto_112
    if-eqz v5, :cond_11a

    .line 1182
    :try_start_114
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    goto :goto_11a

    .line 1193
    :catch_118
    move-exception v8

    goto :goto_12a

    .line 1184
    :cond_11a
    :goto_11a
    if-eqz v4, :cond_11f

    .line 1185
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1187
    :cond_11f
    if-eqz v3, :cond_124

    .line 1188
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1190
    :cond_124
    if-eqz v6, :cond_12e

    .line 1191
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_129} :catch_118

    goto :goto_12e

    .line 1194
    .local v8, "e":Ljava/lang/Exception;
    :goto_12a
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    .line 1195
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_12e
    :goto_12e
    nop

    .line 1196
    :goto_12f
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->downgradeRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1197
    throw v7
.end method

.method private writeStatsLog(Landroid/app/job/JobParameters;)V
    .registers 10
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 1478
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_3
    iget v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 1480
    .local v2, "status":I
    iget-wide v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 1481
    .local v4, "durationMs":J
    iget-wide v6, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    .line 1482
    .local v6, "durationIncludingSleepMs":J
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    .line 1484
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;->write(IIJJ)V

    .line 1485
    return-void

    .line 1482
    .end local v2    # "status":I
    .end local v4    # "durationMs":J
    .end local v6    # "durationIncludingSleepMs":J
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method public addPackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public cancelBackgroundDexoptJob()V
    .registers 2

    .line 337
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    .line 338
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 339
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "writer"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 257
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBackgroundDexOptDisabled()Z

    move-result v0

    .line 258
    .local v0, "disabled":Z
    const-string v1, "enabled:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 259
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 260
    if-eqz v0, :cond_13

    .line 261
    return-void

    .line 263
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_16
    const-string v2, "mDexOptThread:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 266
    const-string v2, "mDexOptCancellingThread:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 268
    const-string v2, "mFinishedPostBootUpdate:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget-boolean v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 270
    const-string v2, "mLastExecutionStatus:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 272
    const-string v2, "mLastExecutionStartTimeMs:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 274
    const-string v2, "mLastExecutionDurationIncludingSleepMs:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 276
    const-string v2, "mLastExecutionStartUptimeMs:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 277
    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 278
    const-string v2, "mLastExecutionDurationMs:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-wide v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 280
    const-string/jumbo v2, "now:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 282
    const-string v2, "mLastCancelledPackages:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    const-string v2, ","

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    const-string v2, "mFailedPackageNamesPrimary:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 285
    const-string v2, ","

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const-string v2, "mFailedPackageNamesSecondary:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 287
    const-string v2, ","

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_a5
    move-exception v2

    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_16 .. :try_end_a7} :catchall_a5

    throw v2
.end method

.method synthetic lambda$cancelBackgroundDexoptJob$0$com-android-server-pm-BackgroundDexOptService()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelDexOptAndWaitForCompletion()V

    return-void
.end method

.method synthetic lambda$onStartJob$1$com-android-server-pm-BackgroundDexOptService(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V
    .registers 26
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkgs"    # Ljava/util/List;
    .param p3, "params"    # Landroid/app/job/JobParameters;
    .param p4, "job"    # Lcom/android/server/pm/BackgroundDexOptJobService;

    .line 408
    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v10, "false"

    const-string v11, " isPowerConstraint:"

    const-string v12, " completed:"

    const-string v13, "dexopt finishing. jobid:"

    const-string/jumbo v14, "persist.sys.idle_job"

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v15, "BackgroundDexOptService"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v15, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    move-object v7, v0

    .line 410
    .local v7, "tr":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v0, "jobExecution"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 411
    const/16 v16, 0x0

    .line 412
    .local v16, "completed":Z
    const/4 v6, 0x0

    .line 415
    .local v6, "isPowerConstraint":Z
    const/16 v5, 0x321

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_28
    invoke-static {v14, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_110

    if-eqz v0, :cond_6b

    .line 416
    nop

    .line 417
    :try_start_2f
    invoke-virtual/range {p3 .. p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_56

    if-ne v0, v5, :cond_37

    move v0, v4

    goto :goto_38

    :cond_37
    move v0, v3

    .line 416
    :goto_38
    move-object/from16 v2, p1

    move-object/from16 v17, v10

    move-object/from16 v10, p2

    :try_start_3e
    invoke-direct {v1, v2, v10, v0}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result v0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_47

    move v10, v3

    move v2, v4

    move-object/from16 v19, v7

    .end local v16    # "completed":Z
    .local v0, "completed":Z
    goto :goto_93

    .line 428
    .end local v0    # "completed":Z
    .restart local v16    # "completed":Z
    :catchall_47
    move-exception v0

    move v10, v3

    move v2, v4

    move v4, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v3, v17

    move-object v5, v0

    move/from16 v0, v16

    goto/16 :goto_11f

    :catchall_56
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v17, v10

    move-object/from16 v10, p2

    move v10, v3

    move v2, v4

    move v4, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v3, v17

    move-object v5, v0

    move/from16 v0, v16

    goto/16 :goto_11f

    .line 422
    :cond_6b
    move-object/from16 v2, p1

    move-object/from16 v17, v10

    move-object/from16 v10, p2

    :try_start_71
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->getInstance()Lcom/android/server/pm/BackgroundDexOptServiceStub;

    move-result-object v0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_105

    .line 423
    move-object v2, v0

    move v10, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move/from16 v18, v6

    .end local v6    # "isPowerConstraint":Z
    .local v18, "isPowerConstraint":Z
    move-object/from16 v6, p3

    move-object/from16 v19, v7

    .end local v7    # "tr":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v19, "tr":Lcom/android/server/utils/TimingsTraceAndSlog;
    move/from16 v7, v16

    :try_start_85
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->ifRunIdleOptimization(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BackgroundDexOptJobService;Ljava/util/List;Landroid/app/job/JobParameters;Z)[Z

    move-result-object v0

    .line 424
    .local v0, "result":[Z
    aget-boolean v2, v0, v10
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_fb

    move/from16 v16, v2

    .line 425
    const/4 v2, 0x1

    :try_start_8e
    aget-boolean v3, v0, v2
    :try_end_90
    .catchall {:try_start_8e .. :try_end_90} :catchall_f2

    move v6, v3

    move/from16 v0, v16

    .line 428
    .end local v16    # "completed":Z
    .end local v18    # "isPowerConstraint":Z
    .local v0, "completed":Z
    .restart local v6    # "isPowerConstraint":Z
    :goto_93
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {v1, v8}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    const/16 v4, 0x321

    if-ne v3, v4, :cond_d7

    .line 436
    if-eqz v0, :cond_ce

    .line 437
    invoke-direct {v1, v8}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    .line 440
    :cond_ce
    if-nez v0, :cond_d2

    move v4, v2

    goto :goto_d3

    :cond_d2
    move v4, v10

    :goto_d3
    invoke-virtual {v9, v8, v4}, Lcom/android/server/pm/BackgroundDexOptJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_ed

    .line 442
    :cond_d7
    invoke-static {v14, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 443
    invoke-virtual {v9, v8, v2}, Lcom/android/server/pm/BackgroundDexOptJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 444
    move-object/from16 v3, v17

    invoke-static {v14, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ed

    .line 449
    :cond_e6
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->getInstance()Lcom/android/server/pm/BackgroundDexOptServiceStub;

    move-result-object v2

    invoke-virtual {v2, v9, v8, v0, v6}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->rescheduleIdleOptJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;ZZ)V

    .line 453
    :goto_ed
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    .line 454
    nop

    .line 455
    return-void

    .line 428
    .end local v0    # "completed":Z
    .end local v6    # "isPowerConstraint":Z
    .restart local v16    # "completed":Z
    .restart local v18    # "isPowerConstraint":Z
    :catchall_f2
    move-exception v0

    move-object/from16 v3, v17

    const/16 v4, 0x321

    move-object v5, v0

    move/from16 v0, v16

    goto :goto_11f

    :catchall_fb
    move-exception v0

    move-object/from16 v3, v17

    const/4 v2, 0x1

    const/16 v4, 0x321

    move-object v5, v0

    move/from16 v0, v16

    goto :goto_11f

    .end local v18    # "isPowerConstraint":Z
    .end local v19    # "tr":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v6    # "isPowerConstraint":Z
    .restart local v7    # "tr":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_105
    move-exception v0

    move v10, v3

    move v2, v4

    move v4, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v3, v17

    goto :goto_11c

    :catchall_110
    move-exception v0

    move v2, v4

    move v4, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move v10, v3

    move-object/from16 v3, v20

    :goto_11c
    move-object v5, v0

    move/from16 v0, v16

    .end local v6    # "isPowerConstraint":Z
    .end local v7    # "tr":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v16    # "completed":Z
    .restart local v0    # "completed":Z
    .restart local v18    # "isPowerConstraint":Z
    .restart local v19    # "tr":Lcom/android/server/utils/TimingsTraceAndSlog;
    :goto_11f
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v7, v18

    .end local v18    # "isPowerConstraint":Z
    .local v7, "isPowerConstraint":Z
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {v1, v8}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v6

    if-ne v6, v4, :cond_163

    .line 436
    if-eqz v0, :cond_15a

    .line 437
    invoke-direct {v1, v8}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    .line 440
    :cond_15a
    if-nez v0, :cond_15e

    move v4, v2

    goto :goto_15f

    :cond_15e
    move v4, v10

    :goto_15f
    invoke-virtual {v9, v8, v4}, Lcom/android/server/pm/BackgroundDexOptJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_177

    .line 442
    :cond_163
    invoke-static {v14, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_170

    .line 443
    invoke-virtual {v9, v8, v2}, Lcom/android/server/pm/BackgroundDexOptJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 444
    invoke-static {v14, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_177

    .line 449
    :cond_170
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->getInstance()Lcom/android/server/pm/BackgroundDexOptServiceStub;

    move-result-object v2

    invoke-virtual {v2, v9, v8, v0, v7}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->rescheduleIdleOptJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;ZZ)V

    .line 453
    :goto_177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    .line 454
    throw v5
.end method

.method synthetic lambda$performDexOptPrimary$2$com-android-server-pm-BackgroundDexOptService(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .registers 3
    .param p1, "dexoptOptions"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$performDexOptSecondary$3$com-android-server-pm-BackgroundDexOptService(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .registers 3
    .param p1, "dexoptOptions"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 1286
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1287
    const/4 v0, 0x1

    goto :goto_b

    .line 1288
    :cond_a
    const/4 v0, -0x1

    .line 1286
    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public miuiRunIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z
    .registers 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "isPostBootUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 659
    .local p2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public notifyPackageChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method onStartJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z
    .registers 19
    .param p1, "job"    # Lcom/android/server/pm/BackgroundDexOptJobService;
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 371
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v0, "BackgroundDexOptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartJob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x321

    if-ne v0, v2, :cond_2d

    move v0, v9

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    move v10, v0

    .line 377
    .local v10, "isPostBootUpdateJob":Z
    iget-object v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v11

    .line 378
    .local v11, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 379
    const-string v0, "BackgroundDexOptService"

    const-string v2, "Low storage, skipping this run"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {v7, v8}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    .line 381
    return v1

    .line 384
    :cond_46
    iget-object v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object v12

    .line 385
    .local v12, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 386
    const-string v0, "BackgroundDexOptService"

    const-string v2, "No packages to optimize"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {v7, v8}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    .line 388
    return v1

    .line 391
    :cond_61
    iget-object v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexOptThermalCutoff()I

    move-result v0

    iput v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    .line 393
    iget-object v13, v7, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 395
    :try_start_6c
    iget-object v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 397
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->getInstance()Lcom/android/server/pm/BackgroundDexOptServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->rescheduleIdleOptJob()V

    .line 398
    monitor-exit v13

    return v1

    .line 400
    :cond_7f
    if-nez v10, :cond_8e

    iget-boolean v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    if-nez v0, :cond_8e

    .line 402
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->getInstance()Lcom/android/server/pm/BackgroundDexOptServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->rescheduleIdleOptJob()V

    .line 403
    monitor-exit v13

    return v1

    .line 405
    :cond_8e
    iget-object v0, v7, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundDexOptService_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    if-eqz v10, :cond_a0

    const-string v2, "PostBoot"

    goto :goto_a2

    :cond_a0
    const-string v2, "Idle"

    :goto_a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V

    .line 405
    invoke-virtual {v0, v14, v15}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/pm/BackgroundDexOptService;->resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V

    .line 456
    monitor-exit v13

    .line 458
    return v9

    .line 456
    :catchall_c1
    move-exception v0

    monitor-exit v13
    :try_end_c3
    .catchall {:try_start_6c .. :try_end_c3} :catchall_c1

    throw v0
.end method

.method onStopJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z
    .registers 6
    .param p1, "job"    # Lcom/android/server/pm/BackgroundDexOptJobService;
    .param p2, "params"    # Landroid/app/job/JobParameters;

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopJob:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    const-string v2, "DexOptCancel"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method public removePackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 352
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public runBackgroundDexoptJob(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 308
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    .line 309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 311
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_38

    .line 313
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V

    .line 314
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V

    .line 315
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_35

    .line 316
    :try_start_15
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    .line 318
    .local v2, "pm":Lcom/android/server/pm/PackageManagerService;
    if-nez p1, :cond_28

    .line 319
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object v3

    .local v3, "packagesToOptimize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_29

    .line 321
    .end local v3    # "packagesToOptimize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28
    move-object v3, p1

    .line 323
    .restart local v3    # "packagesToOptimize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_29
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_38

    .line 325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    .line 323
    return v4

    .line 315
    .end local v2    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v3    # "packagesToOptimize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_35
    move-exception v3

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/pm/BackgroundDexOptService;
    .end local p1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_37
    throw v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 325
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/pm/BackgroundDexOptService;
    .restart local p1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    .line 327
    throw v2
.end method

.method public systemReady()V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBackgroundDexOptDisabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    return-void

    .line 238
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->getInstance()Lcom/android/server/pm/BackgroundDexOptServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptServiceStub;->miuiRegisterReceiver()V

    .line 253
    return-void
.end method
