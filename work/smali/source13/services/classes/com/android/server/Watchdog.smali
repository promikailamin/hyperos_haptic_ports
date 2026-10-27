.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$SettingsObserver;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    }
.end annotation


# static fields
.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field private static final COMPLETED:I = 0x0

.field private static final DB:Z = false

.field public static final DEBUG:Z = false

.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field private static final OVERDUE:I = 0x3

.field private static final PROP_FATAL_LOOP_COUNT:Ljava/lang/String; = "framework_watchdog.fatal_count"

.field private static final PROP_FATAL_LOOP_WINDOWS_SECS:Ljava/lang/String; = "framework_watchdog.fatal_window.second"

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field private static final TIMEOUT_HISTORY_FILE:Ljava/lang/String; = "/data/system/watchdog-timeout-history.txt"

.field private static final WAITED_HALF:I = 0x2

.field private static final WAITING:I = 0x1

.field private static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field private mActivity:Lcom/android/server/am/ActivityManagerService;

.field private mAllowRestart:Z

.field private mController:Landroid/app/IActivityController;

.field private final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialStack:Ljava/io/File;

.field private final mInterestingJavaPids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field private final mThread:Ljava/lang/Thread;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field private final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

.field private volatile mWatchdogTimeoutMillis:J

.field scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;

.field private watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;


# direct methods
.method public static synthetic $r8$lambda$W7y-nlYuEBh_r4--InIAt97WYPU(Lcom/android/server/Watchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/Watchdog;->run()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/Watchdog;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 28

    .line 118
    const-string v0, "/system/bin/audioserver"

    const-string v1, "/system/bin/cameraserver"

    const-string v2, "/system/bin/drmserver"

    const-string v3, "/system/bin/keystore2"

    const-string v4, "/system/bin/mediadrmserver"

    const-string v5, "/system/bin/mediaserver"

    const-string v6, "/system/bin/mediaserver64"

    const-string v7, "/system/bin/netd"

    const-string v8, "/system/bin/sdcard"

    const-string v9, "/system/bin/surfaceflinger"

    const-string v10, "/system/bin/vold"

    const-string/jumbo v11, "media.extractor"

    const-string/jumbo v12, "media.metrics"

    const-string/jumbo v13, "media.codec"

    const-string/jumbo v14, "media.swcodec"

    const-string/jumbo v15, "media.transcoding"

    const-string v16, "/apex/com.android.os.statsd/bin/statsd"

    const-string v17, "/system/bin/gatekeeperd"

    const-string v18, "/system/bin/keystore"

    const-string v19, "/system/bin/lmkd"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 144
    const-string v1, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@5.0::IDevicesFactory"

    const-string v3, "android.hardware.audio@6.0::IDevicesFactory"

    const-string v4, "android.hardware.audio@7.0::IDevicesFactory"

    const-string v5, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v6, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string v7, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v8, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v9, "android.hardware.gnss@1.0::IGnss"

    const-string v10, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v11, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v12, "android.hardware.health@2.0::IHealth"

    const-string v13, "android.hardware.light@2.0::ILight"

    const-string v14, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v15, "android.hardware.media.omx@1.0::IOmx"

    const-string v16, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v17, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string v18, "android.hardware.power@1.0::IPower"

    const-string v19, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v20, "android.hardware.sensors@1.0::ISensors"

    const-string v21, "android.hardware.sensors@2.0::ISensors"

    const-string v22, "android.hardware.sensors@2.1::ISensors"

    const-string v23, "android.hardware.vibrator@1.0::IVibrator"

    const-string v24, "android.hardware.vr@1.0::IVr"

    const-string v25, "android.system.suspend@1.0::ISystemSuspend"

    const-string v26, "android.hardware.keymaster@4.0::IKeymasterDevice"

    const-string v27, "android.hardware.keymaster@3.0::IKeymasterDevice"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 176
    const-string v1, "android.hardware.biometrics.face.IFace/"

    const-string v2, "android.hardware.biometrics.fingerprint.IFingerprint/"

    const-string v3, "android.hardware.light.ILights/"

    const-string v4, "android.hardware.power.IPower/"

    const-string v5, "android.hardware.power.stats.IPowerStats/"

    const-string v6, "android.hardware.vibrator.IVibrator/"

    const-string v7, "android.hardware.vibrator.IVibratorManager/"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 200
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 203
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "dd_MM_HH_mm_ss.SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 208
    new-instance v3, Lcom/android/server/ScoutWatchdogInfo;

    invoke-direct {v3}, Lcom/android/server/ScoutWatchdogInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/Watchdog;->watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;

    .line 209
    invoke-virtual {v3}, Lcom/android/server/ScoutWatchdogInfo;->getScoutIdInstance()Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/Watchdog;->scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    .line 424
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/Watchdog;)V

    const-string/jumbo v5, "watchdog"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 433
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "foreground thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 435
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v4, Landroid/os/Handler;

    .line 439
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v5, "main thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 438
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 442
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "ui thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 441
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 445
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "i/o thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 444
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 448
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "display thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 447
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 451
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "animation thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 450
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    .line 454
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "surface animation thread"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 453
    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v1, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor-IA;)V

    invoke-virtual {p0, v1}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 459
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ScoutStub;->scoutSystemMonitorEnable()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 463
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v1

    new-instance v2, Lcom/android/server/Watchdog$BinderThreadMonitor;

    invoke-direct {v2, v3}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor-IA;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ScoutStub;->scoutSystemMonitorInit(Lcom/android/server/Watchdog$Monitor;Ljava/lang/Object;)V

    .line 471
    :cond_fa
    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    invoke-direct {v0}, Lcom/android/server/am/TraceErrorLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 472
    return-void
.end method

.method private static addInterestingAidlPids(Ljava/util/HashSet;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p0, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    .line 742
    .local v0, "infos":[Landroid/os/ServiceDebugInfo;
    if-nez v0, :cond_7

    return-void

    .line 744
    :cond_7
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    .line 745
    .local v4, "info":Landroid/os/ServiceDebugInfo;
    sget-object v5, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_12
    if-ge v7, v6, :cond_2a

    aget-object v8, v5, v7

    .line 746
    .local v8, "prefix":Ljava/lang/String;
    iget-object v9, v4, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 747
    iget v9, v4, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 745
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 744
    .end local v4    # "info":Landroid/os/ServiceDebugInfo;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 751
    :cond_2d
    return-void
.end method

.method private static addInterestingHidlPids(Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 721
    .local p0, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 722
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 723
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 724
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 725
    .local v3, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    .line 726
    goto :goto_d

    .line 729
    :cond_1f
    sget-object v4, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v5, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 730
    goto :goto_d

    .line 733
    :cond_2a
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_36

    .line 734
    nop

    .end local v3    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    goto :goto_d

    .line 737
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    :cond_35
    goto :goto_3c

    .line 735
    :catch_36
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .param p1, "writeTo"    # Ljava/io/File;
    .param p2, "copyFrom"    # Ljava/io/File;

    .line 1242
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1243
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 1244
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 1247
    .local v2, "line":Ljava/lang/String;
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_21

    .line 1248
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1249
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_11

    .line 1251
    :cond_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1252
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 1256
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_33

    .line 1253
    :catch_28
    move-exception v0

    .line 1254
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1257
    .end local v0    # "e":Ljava/io/IOException;
    :goto_33
    return-void
.end method

.method private binderStateRead()V
    .registers 7

    .line 1261
    const-string v0, "Watchdog"

    const/4 v1, 0x0

    .line 1262
    .local v1, "binderfsNodePresent":Z
    const/4 v2, 0x0

    .line 1263
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_4
    const-string v3, "Collecting Binder Transaction Status Information"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_7e

    .line 1265
    :try_start_9
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/dev/binderfs/binder_logs/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1266
    const-string v3, "Collecting Binder state file from binderfs"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_1d

    .line 1267
    const/4 v1, 0x1

    .line 1270
    goto :goto_23

    .line 1268
    :catch_1d
    move-exception v3

    .line 1269
    .local v3, "e":Ljava/io/IOException;
    :try_start_1e
    const-string v4, "Binderfs node not found, Trying to collect it from debugfs"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_7e

    .line 1272
    .end local v3    # "e":Ljava/io/IOException;
    :goto_23
    if-nez v1, :cond_3f

    .line 1273
    :try_start_25
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/kernel/debug/binder/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1274
    const-string v3, "Collecting Binder state file from debugfs"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_37} :catch_38

    goto :goto_3f

    .line 1276
    :catch_38
    move-exception v3

    .line 1277
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_39
    const-string v4, "Debugfs node not found"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1278
    return-void

    .line 1279
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    nop

    .line 1280
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/anr/BinderTraces_pid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1281
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    .line 1285
    .local v4, "line":Ljava/lang/String;
    :goto_67
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_77

    .line 1286
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1287
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(I)V

    goto :goto_67

    .line 1289
    :cond_77
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1290
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_7d} :catch_7e

    .line 1293
    .end local v1    # "binderfsNodePresent":Z
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "out":Ljava/io/FileWriter;
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_84

    .line 1291
    :catch_7e
    move-exception v1

    .line 1292
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to collect state file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    .end local v1    # "e":Ljava/io/IOException;
    :goto_84
    return-void
.end method

.method private breakCrashLoop()V
    .registers 4

    .line 1226
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/dev/kmsg_debug"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 1227
    .local v0, "kmsg":Ljava/io/FileWriter;
    :try_start_8
    const-string v1, "Fatal reset to escape the system_server crashing loop\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 1228
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1b

    .line 1230
    .end local v0    # "kmsg":Ljava/io/FileWriter;
    goto :goto_23

    .line 1226
    .restart local v0    # "kmsg":Ljava/io/FileWriter;
    :catchall_11
    move-exception v1

    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    :try_start_17
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/Watchdog;
    :goto_1a
    throw v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 1228
    .end local v0    # "kmsg":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/Watchdog;
    :catch_1b
    move-exception v0

    .line 1229
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to append to kmsg"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    .end local v0    # "e":Ljava/io/IOException;
    :goto_23
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1232
    return-void
.end method

.method private collectWatchdogTrace(Ljava/io/File;Ljava/io/File;)V
    .registers 12
    .param p1, "initialStack"    # Ljava/io/File;
    .param p2, "finalStack"    # Ljava/io/File;

    .line 1073
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traces_SystemServer_WDT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1074
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_pid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1075
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, "newTracesPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/anr"

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    .local v2, "watchdogTraces":Ljava/io/File;
    :try_start_36
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 1079
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x180

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1085
    if-eqz p1, :cond_7f

    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1090
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1091
    .local v3, "age":J
    const-wide/32 v5, 0x493e0

    .line 1092
    .local v5, "FIVE_MINUTES_IN_MILLIS":J
    const-wide/32 v7, 0x493e0

    cmp-long v7, v3, v7

    if-gez v7, :cond_79

    .line 1093
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First set of traces taken from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1094
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1093
    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0, v2, p1}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_7e

    .line 1097
    :cond_79
    const-string v7, "First set of traces were collected more than 5 minutes ago, ignoring ..."

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .end local v3    # "age":J
    .end local v5    # "FIVE_MINUTES_IN_MILLIS":J
    :goto_7e
    goto :goto_84

    .line 1101
    :cond_7f
    const-string v3, "First set of traces are empty!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_84
    if-eqz p2, :cond_a4

    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second set of traces taken from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1106
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1105
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-direct {p0, v2, p2}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_af

    .line 1109
    :cond_a4
    const-string v3, "Second set of traces are empty!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1112
    :cond_aa
    const-string v3, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_af} :catch_b0

    .line 1118
    :goto_af
    goto :goto_b6

    .line 1114
    :catch_b0
    move-exception v3

    .line 1117
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception creating Watchdog dump file:"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1119
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b6
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 709
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 710
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 711
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 712
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 716
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .registers 5
    .param p1, "c"    # C

    .line 1123
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v0, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 1125
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1128
    .end local v0    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_16

    .line 1126
    :catch_e
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1129
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 691
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 692
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 690
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 694
    .end local v1    # "i":I
    :cond_21
    return v0
.end method

.method private getCheckersWithStateLocked(I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "completionState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 700
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 701
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 702
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 705
    .end local v1    # "i":I
    :cond_26
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .line 416
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 417
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 420
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 755
    .local v0, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingAidlPids(Ljava/util/HashSet;)V

    .line 756
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingHidlPids(Ljava/util/HashSet;)V

    .line 758
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 759
    .local v1, "nativePids":[I
    if-eqz v1, :cond_23

    .line 760
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_23

    aget v4, v1, v3

    .line 761
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 760
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 765
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method private hasActiveUsbConnection()Z
    .registers 4

    .line 1174
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "state":Ljava/lang/String;
    const-string v1, "CONFIGURED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_1d

    if-eqz v1, :cond_1c

    .line 1178
    const/4 v1, 0x1

    return v1

    .line 1182
    .end local v0    # "state":Ljava/lang/String;
    :cond_1c
    goto :goto_25

    .line 1180
    :catch_1d
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to determine if device was on USB"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    .end local v0    # "e":Ljava/io/IOException;
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private isCrashLoopFound()Z
    .registers 15

    .line 1187
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_count()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1188
    .local v0, "fatalCount":I
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1189
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_window_seconds()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 1188
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1190
    .local v2, "fatalWindowMs":J
    const-string v4, "Watchdog"

    const/4 v5, 0x1

    if-eqz v0, :cond_9e

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_34

    goto :goto_9e

    .line 1199
    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1200
    .local v6, "nowMs":J
    invoke-direct {p0}, Lcom/android/server/Watchdog;->readTimeoutHistory()[Ljava/lang/String;

    move-result-object v8

    .line 1201
    .local v8, "rawCrashHistory":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v8

    sub-int/2addr v10, v0

    sub-int/2addr v10, v5

    .line 1203
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    array-length v11, v8

    .line 1201
    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1206
    .local v9, "crashHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-direct {p0, v9}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1210
    invoke-direct {p0}, Lcom/android/server/Watchdog;->hasActiveUsbConnection()Z

    move-result v10

    if-eqz v10, :cond_64

    .line 1211
    return v1

    .line 1216
    :cond_64
    :try_start_64
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6e} :catch_7d

    .line 1221
    .local v10, "firstCrashMs":J
    nop

    .line 1222
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v0, :cond_7c

    sub-long v12, v6, v10

    cmp-long v4, v12, v2

    if-gez v4, :cond_7c

    move v1, v5

    :cond_7c
    return v1

    .line 1217
    .end local v10    # "firstCrashMs":J
    :catch_7d
    move-exception v5

    .line 1218
    .local v5, "t":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parseLong "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    invoke-direct {p0}, Lcom/android/server/Watchdog;->resetTimeoutHistory()V

    .line 1220
    return v1

    .line 1191
    .end local v5    # "t":Ljava/lang/NumberFormatException;
    .end local v6    # "nowMs":J
    .end local v8    # "rawCrashHistory":[Ljava/lang/String;
    .end local v9    # "crashHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9e
    :goto_9e
    int-to-long v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_b8

    .line 1192
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "framework_watchdog.fatal_count"

    aput-object v7, v6, v1

    const-string v7, "framework_watchdog.fatal_window.second"

    aput-object v7, v6, v5

    const-string/jumbo v5, "sysprops \'%s\' and \'%s\' should be set or unset together"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_b8
    return v1
.end method

.method private static isInterestingJavaProcess(Ljava/lang/String;)Z
    .registers 2
    .param p0, "processName"    # Ljava/lang/String;

    .line 555
    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 556
    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 558
    const-string v0, "com.android.commands.monkey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 559
    const-string v0, "com.android.bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 555
    :goto_24
    return v0
.end method

.method private logWatchog(ZLjava/lang/String;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 27
    .param p1, "halfWatchdog"    # Z
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 955
    .local p3, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local p4, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v7, p4

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v6

    .line 959
    .local v6, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForSystemServerTraceFile()Ljava/lang/String;

    move-result-object v17

    .line 960
    .local v17, "criticalEvents":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v5

    .line 961
    .local v5, "errorId":Ljava/util/UUID;
    iget-object v0, v8, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 962
    iget-object v0, v8, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    const-string/jumbo v1, "system_server"

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/TraceErrorLogger;->addErrorIdToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 963
    iget-object v0, v8, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0, v9, v5}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 967
    :cond_2d
    if-eqz p1, :cond_3c

    .line 968
    const-string/jumbo v0, "pre_watchdog"

    .line 969
    .local v0, "dropboxTag":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/criticalevents/CriticalEventLog;->logHalfWatchdog(Ljava/lang/String;)V

    move-object/from16 v18, v0

    goto :goto_52

    .line 971
    .end local v0    # "dropboxTag":Ljava/lang/String;
    :cond_3c
    const-string/jumbo v0, "watchdog"

    .line 972
    .restart local v0    # "dropboxTag":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v1

    invoke-virtual {v1, v9, v5}, Lcom/android/server/criticalevents/CriticalEventLog;->logWatchdog(Ljava/lang/String;Ljava/util/UUID;)V

    .line 973
    const/16 v1, 0xaf2

    invoke-static {v1, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 977
    const/16 v1, 0xb9

    invoke-static {v1, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    move-object/from16 v18, v0

    .line 980
    .end local v0    # "dropboxTag":Ljava/lang/String;
    .local v18, "dropboxTag":Ljava/lang/String;
    :goto_52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 981
    .local v3, "anrTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 982
    .local v2, "report":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v15, v0

    .line 984
    .local v15, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 985
    .local v14, "tracesFileException":Ljava/io/StringWriter;
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    iget-object v10, v8, Lcom/android/server/Watchdog;->watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;

    invoke-virtual {v0, v7, v6, v10}, Lcom/android/server/ScoutStub;->scoutSystemCheckBinderCallChain(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/ScoutWatchdogInfo;)V

    .line 987
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v8, Lcom/android/server/Watchdog;->watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;

    .line 989
    invoke-virtual {v10}, Lcom/android/server/ScoutWatchdogInfo;->getBinderTransInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    move-object/from16 v10, p4

    move-object v11, v15

    move-object v13, v6

    move-object/from16 v19, v15

    .end local v15    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v19, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object v15, v0

    move-object/from16 v16, v17

    invoke-static/range {v10 .. v16}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 991
    .local v10, "finalStack":Ljava/io/File;
    if-eqz v10, :cond_b0

    .line 992
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, v7, v6, v10}, Lcom/android/server/am/trace/SmartTraceUtils;->dumpStackTraces(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 995
    :cond_b0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_b7

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 1001
    :cond_b7
    const-wide/16 v11, 0x1388

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 1002
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1003
    move-object/from16 v11, v19

    .end local v19    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v11, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    invoke-virtual {v11, v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v14}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 1008
    if-eqz p1, :cond_d4

    .line 1009
    iput-object v10, v8, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    goto :goto_d9

    .line 1011
    :cond_d4
    iget-object v0, v8, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    invoke-direct {v8, v0, v10}, Lcom/android/server/Watchdog;->collectWatchdogTrace(Ljava/io/File;Ljava/io/File;)V

    .line 1014
    :goto_d9
    const/16 v12, 0x6c

    const/16 v13, 0x77

    if-nez p1, :cond_e5

    .line 1017
    invoke-direct {v8, v13}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1018
    invoke-direct {v8, v12}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1021
    :cond_e5
    if-eqz p1, :cond_118

    .line 1022
    invoke-static {}, Lcom/android/server/WatchdogStub;->getInstance()Lcom/android/server/WatchdogStub;

    move-result-object v0

    iget-object v15, v8, Lcom/android/server/Watchdog;->watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;

    invoke-virtual {v15}, Lcom/android/server/ScoutWatchdogInfo;->getBinderTransInfo()Ljava/lang/String;

    move-result-object v15

    iget-object v1, v8, Lcom/android/server/Watchdog;->scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    invoke-virtual {v1}, Lcom/android/server/ScoutWatchdogInfo$ScoutId;->getUuid()Ljava/lang/String;

    move-result-object v19

    const/4 v12, 0x0

    move-object v1, v0

    move-object/from16 v16, v2

    .end local v2    # "report":Ljava/lang/StringBuilder;
    .local v16, "report":Ljava/lang/StringBuilder;
    move-object/from16 v2, p2

    move-object/from16 v20, v14

    move-wide v13, v3

    .end local v3    # "anrTime":J
    .end local v14    # "tracesFileException":Ljava/io/StringWriter;
    .local v13, "anrTime":J
    .local v20, "tracesFileException":Ljava/io/StringWriter;
    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v21, v5

    .end local v5    # "errorId":Ljava/util/UUID;
    .local v21, "errorId":Ljava/util/UUID;
    move-object v5, v15

    move-object v15, v6

    .end local v6    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v15, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WatchdogStub;->onHalfWatchdog(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v0, v8, Lcom/android/server/Watchdog;->watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;

    invoke-virtual {v0}, Lcom/android/server/ScoutWatchdogInfo;->getMonkeyPid()I

    move-result v0

    .line 1024
    .local v0, "monkeyPid":I
    if-eqz v0, :cond_117

    .line 1025
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1027
    .end local v0    # "monkeyPid":I
    :cond_117
    goto :goto_140

    .line 1029
    .end local v13    # "anrTime":J
    .end local v15    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "report":Ljava/lang/StringBuilder;
    .end local v20    # "tracesFileException":Ljava/io/StringWriter;
    .end local v21    # "errorId":Ljava/util/UUID;
    .restart local v2    # "report":Ljava/lang/StringBuilder;
    .restart local v3    # "anrTime":J
    .restart local v5    # "errorId":Ljava/util/UUID;
    .restart local v6    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "tracesFileException":Ljava/io/StringWriter;
    :cond_118
    move v12, v1

    move-object/from16 v16, v2

    move-object/from16 v21, v5

    move-object v15, v6

    move-object/from16 v20, v14

    move-wide v13, v3

    .end local v2    # "report":Ljava/lang/StringBuilder;
    .end local v3    # "anrTime":J
    .end local v5    # "errorId":Ljava/util/UUID;
    .end local v6    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "tracesFileException":Ljava/io/StringWriter;
    .restart local v13    # "anrTime":J
    .restart local v15    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "report":Ljava/lang/StringBuilder;
    .restart local v20    # "tracesFileException":Ljava/io/StringWriter;
    .restart local v21    # "errorId":Ljava/util/UUID;
    invoke-static {}, Lcom/android/server/WatchdogStub;->getInstance()Lcom/android/server/WatchdogStub;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/WatchdogStub;->setWatchdogPropTimestamp(J)V

    .line 1030
    invoke-static {}, Lcom/android/server/WatchdogStub;->getInstance()Lcom/android/server/WatchdogStub;

    move-result-object v1

    iget-object v0, v8, Lcom/android/server/Watchdog;->watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;

    invoke-virtual {v0}, Lcom/android/server/ScoutWatchdogInfo;->getBinderTransInfo()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v8, Lcom/android/server/Watchdog;->scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;

    invoke-virtual {v0}, Lcom/android/server/ScoutWatchdogInfo$ScoutId;->getUuid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p2

    move-object v3, v10

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/WatchdogStub;->onWatchdog(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :goto_140
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v3, "watchdogWriteToDropbox"

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, v18

    move-object/from16 v5, v16

    move-object v6, v10

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    .line 1049
    .local v1, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1051
    const-wide/16 v2, 0x7d0

    :try_start_157
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_15a
    .catch Ljava/lang/InterruptedException; {:try_start_157 .. :try_end_15a} :catch_15b

    .line 1052
    :goto_15a
    goto :goto_15d

    :catch_15b
    move-exception v0

    goto :goto_15a

    .line 1056
    :goto_15d
    nop

    .line 1057
    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1058
    .local v0, "crashOnWatchdog":Z
    if-nez p1, :cond_184

    if-eqz v0, :cond_184

    .line 1061
    const-string v2, "Watchdog"

    const-string v3, "Triggering SysRq for system_server watchdog,s"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/16 v2, 0x77

    invoke-direct {v8, v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1063
    const/16 v2, 0x6c

    invoke-direct {v8, v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1066
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1068
    const/16 v2, 0x63

    invoke-direct {v8, v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1070
    :cond_184
    return-void
.end method

.method private readTimeoutHistory()[Ljava/lang/String;
    .registers 10

    .line 1148
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 1150
    .local v1, "emptyStringArray":[Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_6a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_61

    .line 1151
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_57

    .line 1152
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_1a

    .line 1153
    nop

    .line 1164
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_19} :catch_6a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_61

    .line 1153
    return-object v1

    .line 1156
    :cond_1a
    :try_start_1a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1157
    .local v4, "data":[Ljava/lang/String;
    array-length v5, v4
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_57

    const-string v6, ""

    const/4 v7, 0x1

    if-lt v5, v7, :cond_2d

    :try_start_2a
    aget-object v0, v4, v0

    goto :goto_2e

    :cond_2d
    move-object v0, v6

    .line 1158
    .local v0, "boottime":Ljava/lang/String;
    :goto_2e
    array-length v5, v4

    const/4 v8, 0x2

    if-lt v5, v8, :cond_34

    aget-object v6, v4, v7

    :cond_34
    move-object v5, v6

    .line 1159
    .local v5, "history":Ljava/lang/String;
    const-string/jumbo v6, "ro.boottime.zygote"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_52

    .line 1160
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_57

    .line 1164
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1160
    return-object v6

    .line 1162
    :cond_52
    nop

    .line 1164
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_56} :catch_6a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_61

    .line 1162
    return-object v1

    .line 1150
    .end local v0    # "boottime":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "data":[Ljava/lang/String;
    .end local v5    # "history":Ljava/lang/String;
    :catchall_57
    move-exception v0

    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v3

    :try_start_5d
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "emptyStringArray":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/Watchdog;
    :goto_60
    throw v0
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_61} :catch_6a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_61

    .line 1166
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "emptyStringArray":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/Watchdog;
    :catch_61
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Watchdog"

    const-string v3, "Failed to read file /data/system/watchdog-timeout-history.txt"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    return-object v1

    .line 1164
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6a
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method

.method private resetTimeoutHistory()V
    .registers 2

    .line 1132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1133
    return-void
.end method

.method private run()V
    .registers 25

    .line 769
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 771
    .local v0, "waitedHalf":Z
    new-instance v2, Lcom/android/server/ScoutWatchdogInfo;

    invoke-direct {v2}, Lcom/android/server/ScoutWatchdogInfo;-><init>()V

    iput-object v2, v1, Lcom/android/server/Watchdog;->watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;

    move v2, v0

    .line 773
    .end local v0    # "waitedHalf":Z
    .local v2, "waitedHalf":Z
    :goto_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 774
    .local v9, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v10, ""

    .line 775
    .local v10, "subject":Ljava/lang/String;
    const/4 v11, 0x1

    .line 776
    .local v11, "allowRestart":Z
    const/4 v3, 0x0

    .line 777
    .local v3, "debuggerWasConnected":I
    const/4 v12, 0x0

    .line 780
    .local v12, "doWaitedHalfDump":Z
    iget-wide v13, v1, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 781
    .local v13, "watchdogTimeoutMillis":J
    const-wide/16 v4, 0x2

    div-long v15, v13, v4

    .line 783
    .local v15, "checkIntervalMillis":J
    iget-object v8, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 784
    move-wide v4, v15

    .line 787
    .local v4, "timeout":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    :try_start_1f
    iget-object v6, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_27b

    if-ge v0, v6, :cond_5a

    .line 788
    :try_start_27
    iget-object v6, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 791
    .local v6, "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    invoke-virtual {v6}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v7

    move-wide/from16 v17, v4

    .end local v4    # "timeout":J
    .local v17, "timeout":J
    invoke-virtual {v6}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->customTimeoutMillis()Ljava/util/Optional;

    move-result-object v4

    sget v5, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    move-object/from16 v19, v6

    .end local v6    # "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .local v19, "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    int-to-long v5, v5

    mul-long/2addr v5, v13

    .line 792
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 791
    invoke-virtual {v7, v4, v5}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V
    :try_end_50
    .catchall {:try_start_27 .. :try_end_50} :catchall_55

    .line 787
    .end local v19    # "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v17

    goto :goto_1f

    .line 869
    .end local v0    # "i":I
    .end local v17    # "timeout":J
    :catchall_55
    move-exception v0

    move-object/from16 v23, v8

    goto/16 :goto_282

    .line 787
    .restart local v0    # "i":I
    .restart local v4    # "timeout":J
    :cond_5a
    move-wide/from16 v17, v4

    .line 795
    .end local v0    # "i":I
    .end local v4    # "timeout":J
    .restart local v17    # "timeout":J
    if-lez v3, :cond_60

    .line 796
    add-int/lit8 v3, v3, -0x1

    .line 803
    :cond_60
    :try_start_60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide/from16 v19, v4

    .line 805
    .local v19, "start":J
    const/4 v0, 0x0

    move-wide/from16 v6, v17

    move/from16 v17, v0

    .line 807
    .local v6, "timeout":J
    .local v17, "count":I
    :goto_6b
    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-lez v0, :cond_e0

    .line 808
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_27b

    if-eqz v0, :cond_7b

    .line 809
    const/4 v0, 0x2

    move/from16 v18, v0

    .end local v3    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    goto :goto_7d

    .line 808
    .end local v0    # "debuggerWasConnected":I
    .restart local v3    # "debuggerWasConnected":I
    :cond_7b
    move/from16 v18, v3

    .line 818
    .end local v3    # "debuggerWasConnected":I
    .local v18, "debuggerWasConnected":I
    :goto_7d
    :try_start_7d
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ScoutStub;->scoutSystemMonitorEnable()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 819
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/Watchdog;->scoutId:Lcom/android/server/ScoutWatchdogInfo$ScoutId;
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_d5

    move-wide v4, v6

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-wide v9, v6

    .end local v6    # "timeout":J
    .end local v10    # "subject":Ljava/lang/String;
    .local v9, "timeout":J
    .local v21, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v22, "subject":Ljava/lang/String;
    move/from16 v6, v17

    move v7, v2

    move-object/from16 v23, v8

    move-object v8, v0

    :try_start_99
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/ScoutStub;->scoutSystemMonitorWork(JIZLcom/android/server/ScoutWatchdogInfo$ScoutId;)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_ac

    .line 820
    add-int/lit8 v17, v17, 0x1

    goto :goto_bb

    .line 823
    .end local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v22    # "subject":Ljava/lang/String;
    .restart local v6    # "timeout":J
    .local v9, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v10    # "subject":Ljava/lang/String;
    :cond_9f
    move-object/from16 v23, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-wide v9, v6

    .end local v6    # "timeout":J
    .end local v10    # "subject":Ljava/lang/String;
    .local v9, "timeout":J
    .restart local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v22    # "subject":Ljava/lang/String;
    :try_start_a6
    iget-object v0, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_ab} :catch_b5
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_ac

    .line 827
    goto :goto_bb

    .line 869
    .end local v9    # "timeout":J
    .end local v17    # "count":I
    .end local v19    # "start":J
    :catchall_ac
    move-exception v0

    move/from16 v3, v18

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_282

    .line 825
    .restart local v9    # "timeout":J
    .restart local v17    # "count":I
    .restart local v19    # "start":J
    :catch_b5
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_b6
    const-string v3, "Watchdog"

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_bb
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_ac

    if-eqz v0, :cond_c4

    .line 832
    const/4 v0, 0x2

    move v3, v0

    .end local v18    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    goto :goto_c6

    .line 831
    .end local v0    # "debuggerWasConnected":I
    .restart local v18    # "debuggerWasConnected":I
    :cond_c4
    move/from16 v3, v18

    .line 834
    .end local v18    # "debuggerWasConnected":I
    .restart local v3    # "debuggerWasConnected":I
    :goto_c6
    :try_start_c6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v19

    sub-long v6, v15, v4

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v8, v23

    .end local v9    # "timeout":J
    .restart local v6    # "timeout":J
    goto :goto_6b

    .line 869
    .end local v3    # "debuggerWasConnected":I
    .end local v6    # "timeout":J
    .end local v17    # "count":I
    .end local v19    # "start":J
    .end local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v22    # "subject":Ljava/lang/String;
    .local v9, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v10    # "subject":Ljava/lang/String;
    .restart local v18    # "debuggerWasConnected":I
    :catchall_d5
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v3, v18

    .end local v9    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v10    # "subject":Ljava/lang/String;
    .restart local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v22    # "subject":Ljava/lang/String;
    goto/16 :goto_282

    .line 838
    .end local v18    # "debuggerWasConnected":I
    .end local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v22    # "subject":Ljava/lang/String;
    .restart local v3    # "debuggerWasConnected":I
    .restart local v6    # "timeout":J
    .restart local v9    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v10    # "subject":Ljava/lang/String;
    .restart local v17    # "count":I
    .restart local v19    # "start":J
    :cond_e0
    move-object/from16 v23, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-wide v9, v6

    .end local v6    # "timeout":J
    .end local v10    # "subject":Ljava/lang/String;
    .local v9, "timeout":J
    .restart local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v22    # "subject":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WatchdogStub;->getInstance()Lcom/android/server/WatchdogStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/WatchdogStub;->checkOOMState()V

    .line 841
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v0

    .line 842
    .local v0, "waitState":I
    if-nez v0, :cond_fb

    .line 844
    const/4 v2, 0x0

    .line 845
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    .line 846
    monitor-exit v23

    goto/16 :goto_b

    .line 847
    :cond_fb
    const/4 v4, 0x1

    if-ne v0, v4, :cond_101

    .line 849
    monitor-exit v23

    goto/16 :goto_b

    .line 850
    :cond_101
    const/4 v4, 0x2

    if-ne v0, v4, :cond_125

    .line 851
    if-nez v2, :cond_122

    .line 852
    const-string v5, "Watchdog"

    const-string v6, "WAITED_HALF"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v2, 0x1

    .line 855
    invoke-direct {v1, v4}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_112
    .catchall {:try_start_c6 .. :try_end_112} :catchall_275

    .line 856
    .end local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v5, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :try_start_112
    invoke-direct {v1, v5}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6
    :try_end_116
    .catchall {:try_start_112 .. :try_end_116} :catchall_270

    .line 857
    .end local v22    # "subject":Ljava/lang/String;
    .local v6, "subject":Ljava/lang/String;
    :try_start_116
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_11d
    .catchall {:try_start_116 .. :try_end_11d} :catchall_26c

    .line 858
    .local v7, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    move-object v9, v5

    move-object v10, v6

    move v12, v8

    .end local v12    # "doWaitedHalfDump":Z
    .local v8, "doWaitedHalfDump":Z
    goto :goto_13a

    .line 860
    .end local v5    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v6    # "subject":Ljava/lang/String;
    .end local v7    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "doWaitedHalfDump":Z
    .restart local v12    # "doWaitedHalfDump":Z
    .restart local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v22    # "subject":Ljava/lang/String;
    :cond_122
    :try_start_122
    monitor-exit v23

    goto/16 :goto_b

    .line 864
    :cond_125
    const/4 v5, 0x3

    invoke-direct {v1, v5}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_275

    .line 865
    .end local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v5    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :try_start_12a
    invoke-direct {v1, v5}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6
    :try_end_12e
    .catchall {:try_start_12a .. :try_end_12e} :catchall_270

    .line 866
    .end local v22    # "subject":Ljava/lang/String;
    .restart local v6    # "subject":Ljava/lang/String;
    :try_start_12e
    iget-boolean v7, v1, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move v11, v7

    .line 867
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_138
    .catchall {:try_start_12e .. :try_end_138} :catchall_26c

    move-object v9, v5

    move-object v10, v6

    .line 869
    .end local v0    # "waitState":I
    .end local v5    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v6    # "subject":Ljava/lang/String;
    .end local v17    # "count":I
    .end local v19    # "start":J
    .restart local v7    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v10    # "subject":Ljava/lang/String;
    :goto_13a
    :try_start_13a
    monitor-exit v23
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_268

    .line 877
    const-wide/16 v5, 0x0

    .line 878
    .local v5, "dueTime":J
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isPerfettoDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 879
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->traceStart()Z

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    const-wide/16 v19, 0x7530

    add-long v5, v17, v19

    .line 885
    :cond_14e
    invoke-direct {v1, v12, v10, v9, v7}, Lcom/android/server/Watchdog;->logWatchog(ZLjava/lang/String;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 886
    if-eqz v12, :cond_155

    .line 890
    goto/16 :goto_b

    .line 894
    :cond_155
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/Watchdog;->watchdoginfo:Lcom/android/server/ScoutWatchdogInfo;

    invoke-virtual {v8}, Lcom/android/server/ScoutWatchdogInfo;->getDThreadState()Z

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/ScoutStub;->crashIfHasDThread(Z)V

    .line 897
    iget-object v8, v1, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 898
    :try_start_165
    iget-object v0, v1, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object/from16 v17, v0

    .line 899
    .local v17, "controller":Landroid/app/IActivityController;
    monitor-exit v8
    :try_end_16a
    .catchall {:try_start_165 .. :try_end_16a} :catchall_261

    .line 900
    move-object/from16 v8, v17

    .end local v17    # "controller":Landroid/app/IActivityController;
    .local v8, "controller":Landroid/app/IActivityController;
    if-eqz v8, :cond_199

    .line 901
    const-string v0, "Watchdog"

    const-string v4, "Reporting stuck state to activity controller"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :try_start_175
    const-string v0, "Service dumps disabled due to hung system process."

    invoke-static {v0}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 905
    invoke-interface {v8, v10}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 906
    .local v0, "res":I
    if-ltz v0, :cond_18c

    .line 907
    const-string v4, "Watchdog"

    move/from16 v18, v0

    .end local v0    # "res":I
    .local v18, "res":I
    const-string v0, "Activity controller requested to coninue to wait"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_189} :catch_198
    .catch Ljava/lang/NullPointerException; {:try_start_175 .. :try_end_189} :catch_18f

    .line 908
    const/4 v2, 0x0

    .line 909
    goto/16 :goto_b

    .line 906
    .end local v18    # "res":I
    .restart local v0    # "res":I
    :cond_18c
    move/from16 v18, v0

    .end local v0    # "res":I
    goto :goto_199

    .line 912
    :catch_18f
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "Watchdog"

    const-string v1, "IActivityController systemNotResponding catch NullPointerException"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_199

    .line 911
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_198
    move-exception v0

    .line 918
    :cond_199
    :goto_199
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 919
    const/4 v3, 0x2

    .line 921
    :cond_1a0
    const/4 v1, 0x2

    if-lt v3, v1, :cond_1b0

    .line 922
    const-string v0, "Watchdog"

    const-string v1, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v2

    move/from16 v18, v3

    goto/16 :goto_25c

    .line 923
    :cond_1b0
    if-lez v3, :cond_1bf

    .line 924
    const-string v0, "Watchdog"

    const-string v1, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v2

    move/from16 v18, v3

    goto/16 :goto_25c

    .line 925
    :cond_1bf
    if-nez v11, :cond_1ce

    .line 926
    const-string v0, "Watchdog"

    const-string v1, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v2

    move/from16 v18, v3

    goto/16 :goto_25c

    .line 928
    :cond_1ce
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {v9}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 930
    const-string v0, "Watchdog"

    const-string v1, "*** GOODBYE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isPerfettoDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_22a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-lez v0, :cond_22a

    .line 932
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, v5, v0

    .line 934
    .local v0, "timeDelta":J
    const-string v4, "Watchdog"

    move/from16 v17, v2

    .end local v2    # "waitedHalf":Z
    .local v17, "waitedHalf":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "debuggerWasConnected":I
    .local v18, "debuggerWasConnected":I
    const-string v3, "Sleep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms to make sure perfetto log to be dumped completely"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_22e

    .line 931
    .end local v0    # "timeDelta":J
    .end local v17    # "waitedHalf":Z
    .end local v18    # "debuggerWasConnected":I
    .restart local v2    # "waitedHalf":Z
    .restart local v3    # "debuggerWasConnected":I
    :cond_22a
    move/from16 v17, v2

    move/from16 v18, v3

    .line 938
    .end local v2    # "waitedHalf":Z
    .end local v3    # "debuggerWasConnected":I
    .restart local v17    # "waitedHalf":Z
    .restart local v18    # "debuggerWasConnected":I
    :goto_22e
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_250

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->isCrashLoopFound()Z

    move-result v0

    if-eqz v0, :cond_250

    .line 939
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->should_ignore_fatal_count()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_250

    .line 940
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->breakCrashLoop()V

    .line 942
    :cond_250
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 943
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 946
    :goto_25c
    const/4 v2, 0x0

    .line 947
    .end local v5    # "dueTime":J
    .end local v7    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "controller":Landroid/app/IActivityController;
    .end local v9    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v10    # "subject":Ljava/lang/String;
    .end local v11    # "allowRestart":Z
    .end local v12    # "doWaitedHalfDump":Z
    .end local v13    # "watchdogTimeoutMillis":J
    .end local v15    # "checkIntervalMillis":J
    .end local v17    # "waitedHalf":Z
    .end local v18    # "debuggerWasConnected":I
    .restart local v2    # "waitedHalf":Z
    move-object/from16 v1, p0

    goto/16 :goto_b

    .line 899
    .restart local v3    # "debuggerWasConnected":I
    .restart local v5    # "dueTime":J
    .restart local v7    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v10    # "subject":Ljava/lang/String;
    .restart local v11    # "allowRestart":Z
    .restart local v12    # "doWaitedHalfDump":Z
    .restart local v13    # "watchdogTimeoutMillis":J
    .restart local v15    # "checkIntervalMillis":J
    :catchall_261
    move-exception v0

    move/from16 v17, v2

    .end local v2    # "waitedHalf":Z
    .restart local v17    # "waitedHalf":Z
    :goto_264
    :try_start_264
    monitor-exit v8
    :try_end_265
    .catchall {:try_start_264 .. :try_end_265} :catchall_266

    throw v0

    :catchall_266
    move-exception v0

    goto :goto_264

    .line 869
    .end local v5    # "dueTime":J
    .end local v7    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "waitedHalf":Z
    .restart local v2    # "waitedHalf":Z
    :catchall_268
    move-exception v0

    move/from16 v17, v2

    .end local v2    # "waitedHalf":Z
    .restart local v17    # "waitedHalf":Z
    goto :goto_282

    .end local v9    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v10    # "subject":Ljava/lang/String;
    .end local v17    # "waitedHalf":Z
    .restart local v2    # "waitedHalf":Z
    .local v5, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v6    # "subject":Ljava/lang/String;
    :catchall_26c
    move-exception v0

    move-object v9, v5

    move-object v10, v6

    goto :goto_282

    .end local v6    # "subject":Ljava/lang/String;
    .restart local v22    # "subject":Ljava/lang/String;
    :catchall_270
    move-exception v0

    move-object v9, v5

    move-object/from16 v10, v22

    goto :goto_282

    .end local v5    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :catchall_275
    move-exception v0

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto :goto_282

    .end local v21    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v22    # "subject":Ljava/lang/String;
    .restart local v9    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v10    # "subject":Ljava/lang/String;
    :catchall_27b
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    :goto_282
    :try_start_282
    monitor-exit v23
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_284

    throw v0

    :catchall_284
    move-exception v0

    goto :goto_282
.end method

.method private writeTimeoutHistory(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1136
    .local p1, "crashHistory":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "data":Ljava/lang/String;
    :try_start_6
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2d

    .line 1139
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_d
    const-string/jumbo v2, "ro.boottime.zygote"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1140
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    .line 1142
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    .line 1144
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_35

    .line 1138
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catchall_23
    move-exception v2

    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v3

    :try_start_29
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "data":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/Watchdog;
    .end local p1    # "crashHistory":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :goto_2c
    throw v2
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    .line 1142
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/Watchdog;
    .restart local p1    # "crashHistory":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :catch_2d
    move-exception v1

    .line 1143
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Watchdog"

    const-string v3, "Failed to write file /data/system/watchdog-timeout-history.txt"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1145
    .end local v1    # "e":Ljava/io/IOException;
    :goto_35
    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .line 609
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_3
    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 611
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 6
    .param p1, "thread"    # Landroid/os/Handler;

    .line 615
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    nop

    .end local v1    # "name":Ljava/lang/String;
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 8
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .line 622
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    .line 625
    invoke-static {v3, p2, p3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withCustomTimeout(Lcom/android/server/Watchdog$HandlerChecker;J)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v3

    .line 624
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    nop

    .end local v1    # "name":Ljava/lang/String;
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1236
    const-string v0, "WatchdogTimeoutMillis="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1238
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .line 487
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 488
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 492
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ScoutStub;->scoutSystemMonitorEnable()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 493
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ScoutStub;->scoutSystemMonitorInitContext(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 496
    :cond_25
    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 645
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 646
    .local v3, "checker":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 647
    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    .line 649
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .end local v3    # "checker":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_2a
    goto :goto_9

    .line 650
    :cond_2b
    monitor-exit v0

    .line 651
    return-void

    .line 650
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public processDied(Ljava/lang/String;I)V
    .registers 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 583
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 584
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " died. Pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 588
    const-string v1, "com.android.commands.monkey"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 589
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ScoutStub;->checkAndSetMonkeyPid(Ljava/lang/String;I)V

    .line 592
    :cond_44
    monitor-exit v0

    goto :goto_49

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_46

    throw v1

    .line 594
    :cond_49
    :goto_49
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 568
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 569
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started. Pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/ScoutStub;->checkAndSetMonkeyPid(Ljava/lang/String;I)V

    .line 575
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_3d

    throw v1

    .line 577
    :cond_40
    :goto_40
    return-void
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rebooting system because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 683
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    :try_start_22
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    .line 685
    goto :goto_27

    .line 684
    :catch_26
    move-exception v1

    .line 686
    :goto_27
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 536
    const-string/jumbo v1, "system_server_watchdog_timeout_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/Watchdog$SettingsObserver;

    invoke-direct {v2, p1, p0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    .line 535
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 540
    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_3
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 668
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 669
    .local v3, "checker":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 670
    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    .line 672
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .end local v3    # "checker":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_2a
    goto :goto_9

    .line 673
    :cond_2b
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 4
    .param p1, "controller"    # Landroid/app/IActivityController;

    .line 597
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_3
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 599
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setAllowRestart(Z)V
    .registers 4
    .param p1, "allowRestart"    # Z

    .line 603
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 605
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public start()V
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 479
    return-void
.end method

.method updateWatchdogTimeout(J)V
    .registers 6
    .param p1, "timeoutMillis"    # J

    .line 547
    const-wide/16 v0, 0x7530

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 548
    const-wide/16 p1, 0x7531

    .line 550
    :cond_8
    iput-wide p1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog timeout updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method
