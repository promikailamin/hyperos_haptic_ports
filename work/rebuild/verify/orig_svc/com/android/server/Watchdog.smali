.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field public static final PRE_WATCHDOG_COOL_OFF_MILLIS:J

.field public static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field public mActivity:Lcom/android/server/am/ActivityManagerService;

.field public mAllowRestart:Z

.field public mController:Landroid/app/IActivityController;

.field public final mHandlerCheckers:Ljava/util/ArrayList;

.field public final mInterestingJavaPids:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field public final mThread:Ljava/lang/Thread;

.field public final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

.field public volatile mWatchdogTimeoutMillis:J


# direct methods
.method public static synthetic $r8$lambda$IHmOjeSmDoiNkZR0B-wv71mYNoM(Lcom/android/server/Watchdog;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->run()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 26

    .line 87
    const-class v0, Lcom/android/server/Watchdog;

    const-wide/32 v0, 0x36ee80

    .line 111
    sput-wide v0, Lcom/android/server/Watchdog;->PRE_WATCHDOG_COOL_OFF_MILLIS:J

    .line 126
    const-string v22, "/apex/com.android.os.statsd/bin/statsd"

    const-string v23, "/apex/com.android.virt/bin/virtualizationservice"

    const-string v2, "/system/bin/audioserver"

    const-string v3, "/system/bin/cameraserver"

    const-string v4, "/system/bin/drmserver"

    const-string v5, "/system/bin/idmap2d"

    const-string v6, "/system/bin/keystore2"

    const-string v7, "/system/bin/mediadrmserver"

    const-string v8, "/system/bin/mediaserver"

    const-string v9, "/system/bin/netd"

    const-string v10, "/system/bin/sdcard"

    const-string v11, "/system/bin/servicemanager"

    const-string v12, "/system/bin/surfaceflinger"

    const-string v13, "/system/bin/vold"

    const-string/jumbo v14, "media.extractor"

    const-string/jumbo v15, "media.metrics"

    const-string/jumbo v16, "media.codec"

    const-string/jumbo v17, "media.swcodec"

    const-string/jumbo v18, "media.transcoding"

    const-string v19, "com.android.bluetooth"

    const-string v20, "/apex/com.android.art/bin/artd"

    const-string v21, "/apex/com.android.compos/bin/composd"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 151
    const-string v24, "android.hardware.vr@1.0::IVr"

    const-string v25, "android.system.suspend@1.0::ISystemSuspend"

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

    const-string v11, "android.hardware.graphics.allocator@4.0::IAllocator"

    const-string v12, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v13, "android.hardware.health@2.0::IHealth"

    const-string v14, "android.hardware.light@2.0::ILight"

    const-string v15, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v16, "android.hardware.media.omx@1.0::IOmx"

    const-string v17, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v18, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string v19, "android.hardware.power@1.0::IPower"

    const-string v20, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v21, "android.hardware.sensors@1.0::ISensors"

    const-string v22, "android.hardware.sensors@2.0::ISensors"

    const-string v23, "android.hardware.sensors@2.1::ISensors"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 179
    const-string v24, "android.hardware.wifi.supplicant.ISupplicant/"

    const-string v25, "android.system.suspend.ISystemSuspend/"

    const-string v1, "android.hardware.audio.core.IModule/"

    const-string v2, "android.hardware.audio.core.IConfig/"

    const-string v3, "android.hardware.audio.effect.IFactory/"

    const-string v4, "android.hardware.biometrics.face.IFace/"

    const-string v5, "android.hardware.biometrics.fingerprint.IFingerprint/"

    const-string v6, "android.hardware.bluetooth.IBluetoothHci/"

    const-string v7, "android.hardware.camera.provider.ICameraProvider/"

    const-string v8, "android.hardware.drm.IDrmFactory/"

    const-string v9, "android.hardware.gnss.IGnss/"

    const-string v10, "android.hardware.graphics.allocator.IAllocator/"

    const-string v11, "android.hardware.graphics.composer3.IComposer/"

    const-string v12, "android.hardware.health.IHealth/"

    const-string v13, "android.hardware.input.processor.IInputProcessor/"

    const-string v14, "android.hardware.light.ILights/"

    const-string v15, "android.hardware.media.c2.IComponentStore/"

    const-string v16, "android.hardware.neuralnetworks.IDevice/"

    const-string v17, "android.hardware.power.IPower/"

    const-string v18, "android.hardware.power.stats.IPowerStats/"

    const-string v19, "android.hardware.sensors.ISensors/"

    const-string v20, "android.hardware.vibrator.IVibrator/"

    const-string v21, "android.hardware.vibrator.IVibratorManager/"

    const-string v22, "android.hardware.wifi.hostapd.IHostapd/"

    const-string v23, "android.hardware.wifi.IWifi/"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 218
    iput-boolean v2, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    const-wide/32 v3, 0xea60

    .line 221
    iput-wide v3, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 493
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/Watchdog;)V

    const-string/jumbo v6, "watchdog"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 502
    new-instance v4, Lcom/android/server/ServiceThread;

    const-string/jumbo v5, "watchdog.monitor"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 504
    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->start()V

    .line 505
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v4, "monitor thread"

    invoke-direct {v2, v5, v4, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 506
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 510
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "foreground thread"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 508
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v4, Landroid/os/Handler;

    .line 516
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v5, "main thread"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 513
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 519
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "ui thread"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 518
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 522
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "i/o thread"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 521
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 526
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "display thread"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 524
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 531
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "animation thread"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    .line 528
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 536
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "surface animation thread"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v0

    .line 533
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 542
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    invoke-direct {v0}, Lcom/android/server/am/TraceErrorLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    return-void
.end method

.method public static addInterestingAidlPids(Ljava/util/HashSet;)V
    .registers 11

    .line 831
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2d

    .line 834
    :cond_7
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    .line 835
    sget-object v5, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_12
    if-ge v7, v6, :cond_2a

    aget-object v8, v5, v7

    .line 836
    iget-object v9, v4, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 837
    iget v8, v4, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_2d
    :goto_2d
    return-void
.end method

.method public static addInterestingHidlPids(Ljava/util/HashSet;)V
    .registers 7

    .line 811
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 813
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 815
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1d

    goto :goto_d

    .line 819
    :cond_1d
    sget-object v4, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v5, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_d

    .line 823
    :cond_28
    iget v3, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_33

    goto :goto_d

    :cond_32
    return-void

    :catch_33
    move-exception p0

    .line 826
    const-string v0, "Watchdog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .line 485
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 486
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 489
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .registers 5

    .line 844
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 845
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingAidlPids(Ljava/util/HashSet;)V

    .line 846
    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingHidlPids(Ljava/util/HashSet;)V

    .line 848
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_23

    .line 850
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_23

    aget v4, v1, v3

    .line 851
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 855
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static isInterestingJavaProcess(Ljava/lang/String;)Z
    .registers 2

    .line 628
    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.android.phone"

    .line 629
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object p0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {p0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 672
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 6

    .line 676
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 678
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 8

    .line 683
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 685
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    invoke-static {v3, p2, p3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withCustomTimeout(Lcom/android/server/Watchdog$HandlerChecker;J)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    .line 685
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final breakCrashLoop()V
    .registers 4

    .line 1185
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/dev/kmsg_debug"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_11

    .line 1186
    :try_start_8
    const-string v1, "Fatal reset to escape the system_server crashing loop\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_13

    .line 1187
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_24

    :catch_11
    move-exception v0

    goto :goto_1d

    :catchall_13
    move-exception v1

    .line 1185
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v0

    :try_start_19
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_11

    .line 1188
    :goto_1d
    const-string v1, "Watchdog"

    const-string v2, "Failed to append to kmsg"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    const/16 v0, 0x63

    .line 1190
    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    return-void
.end method

.method public final collectThreadDumps(Ljava/util/UUID;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 22

    move-object/from16 v1, p0

    if-eqz p2, :cond_9

    .line 1031
    const-string/jumbo v0, "pre_watchdog"

    :goto_7
    move-object v3, v0

    goto :goto_d

    :cond_9
    const-string/jumbo v0, "watchdog"

    goto :goto_7

    .line 1032
    :goto_d
    new-instance v11, Ljava/util/LinkedHashMap;

    const-string v0, "Watchdog-Type"

    .line 1033
    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1034
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    new-instance v5, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 1038
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 1039
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1041
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v7

    new-instance v12, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v12}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    const/4 v13, 0x0

    move-object/from16 v10, p3

    move-object/from16 v9, p4

    move-object/from16 v4, p5

    .line 1039
    invoke-static/range {v4 .. v13}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v2

    const-wide/16 v6, 0x1388

    .line 1046
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1047
    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    const/16 v4, 0xa

    .line 1048
    invoke-virtual {v5, v14, v15, v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v8}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_79

    const/16 v4, 0x77

    .line 1054
    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v4, 0x6d

    .line 1055
    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v4, 0x6c

    .line 1056
    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->doSysRq(C)V

    :cond_79
    move-object v4, v0

    .line 1062
    new-instance v0, Lcom/android/server/Watchdog$1;

    move-object v5, v2

    const-string/jumbo v2, "watchdogWriteToDropbox"

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    .line 1074
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v1, 0x7d0

    .line 1076
    :try_start_8a
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_8d

    :catch_8d
    return-void
.end method

.method public final describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 4

    .line 799
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 800
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 801
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 802
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 806
    :cond_29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final doSysRq(C)V
    .registers 3

    .line 1082
    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    const-string v0, "/proc/sysrq-trigger"

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 1084
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 1086
    const-string p1, "Watchdog"

    const-string v0, "Failed to write to /proc/sysrq-trigger"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1195
    const-string p2, "WatchdogTimeoutMillis="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public final evaluateCheckerCompletionLocked()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 780
    :goto_2
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 781
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 782
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_21
    return v1
.end method

.method public final getCheckersWithStateLocked(I)Ljava/util/ArrayList;
    .registers 6

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 789
    :goto_6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 790
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v2

    .line 791
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 792
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    return-object v0
.end method

.method public final hasActiveUsbConnection()Z
    .registers 3

    .line 1133
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/class/android_usb/android0/state"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1135
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1136
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_1c

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :catch_1c
    move-exception p0

    .line 1140
    const-string v0, "Watchdog"

    const-string v1, "Failed to determine if device was on USB"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    .line 564
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 565
    new-instance p2, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {p2, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.permission.REBOOT"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final isCrashLoopFound()Z
    .registers 14

    .line 1146
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

    .line 1147
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1148
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_window_seconds()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 1147
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1149
    const-string v4, "Watchdog"

    if-eqz v0, :cond_9a

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_33

    goto :goto_9a

    .line 1158
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->readTimeoutHistory()[Ljava/lang/String;

    move-result-object v7

    .line 1160
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    sub-int/2addr v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 1162
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    array-length v11, v7

    .line 1160
    invoke-static {v7, v9, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1165
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-virtual {p0, v8}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->hasActiveUsbConnection()Z

    move-result v7

    if-eqz v7, :cond_64

    return v1

    .line 1175
    :cond_64
    :try_start_64
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6e} :catch_7b

    .line 1181
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v0, :cond_7a

    sub-long/2addr v5, v11

    cmp-long p0, v5, v2

    if-gez p0, :cond_7a

    return v10

    :cond_7a
    return v1

    :catch_7b
    move-exception v0

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parseLong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->resetTimeoutHistory()V

    return v1

    :cond_9a
    :goto_9a
    int-to-long v5, v0

    cmp-long p0, v5, v2

    if-eqz p0, :cond_b1

    .line 1151
    const-string p0, "framework_watchdog.fatal_count"

    const-string v0, "framework_watchdog.fatal_window.second"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "sysprops \'%s\' and \'%s\' should be set or unset together"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    return v1
.end method

.method public final logWatchdog(ZLjava/lang/String;)Ljava/util/UUID;
    .registers 7

    .line 1008
    iget-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v0

    .line 1009
    iget-object v1, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v1}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1010
    iget-object v1, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    const-string/jumbo v2, "system_server"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 1012
    iget-object p0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    :cond_1f
    if-eqz p1, :cond_2e

    .line 1016
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/criticalevents/CriticalEventLog;->logHalfWatchdog(Ljava/lang/String;)V

    const/16 p0, 0x1cc

    .line 1017
    invoke-static {p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    return-object v0

    .line 1019
    :cond_2e
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logWatchdog(Ljava/lang/String;Ljava/util/UUID;)V

    const/16 p0, 0xaf2

    .line 1020
    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/16 p0, 0xb9

    .line 1024
    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    return-object v0
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .registers 8

    .line 733
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_3
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    if-ge v2, v1, :cond_2c

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 735
    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 736
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 737
    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    goto :goto_a

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 740
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public pauseWatchingCurrentThreadFor(ILjava/lang/String;)V
    .registers 9

    .line 698
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    if-ge v2, v1, :cond_2c

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 700
    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 701
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 702
    invoke-virtual {v3, p1, p2}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(ILjava/lang/String;)V

    goto :goto_a

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 705
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public pauseWatchingMonitorsFor(ILjava/lang/String;)V
    .registers 3

    .line 716
    iget-object p0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(ILjava/lang/String;)V

    return-void
.end method

.method public processDied(Ljava/lang/String;I)V
    .registers 6

    .line 649
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 650
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " died. Pid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object p1, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 652
    :try_start_27
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 653
    monitor-exit p1

    return-void

    :catchall_32
    move-exception p0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 6

    .line 637
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 638
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " started. Pid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object p1, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 640
    :try_start_27
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    monitor-exit p1

    return-void

    :catchall_32
    move-exception p0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    return-void
.end method

.method public final readTimeoutHistory()[Ljava/lang/String;
    .registers 8

    const/4 p0, 0x0

    .line 1107
    new-array v0, p0, [Ljava/lang/String;

    .line 1109
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_64
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_19

    .line 1110
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2e

    if-nez v2, :cond_1b

    .line 1123
    :cond_15
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_64
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception p0

    goto :goto_5d

    .line 1115
    :cond_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1116
    array-length v3, v2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2e

    const-string v4, ""

    const/4 v5, 0x1

    if-lt v3, v5, :cond_30

    :try_start_2b
    aget-object p0, v2, p0

    goto :goto_31

    :catchall_2e
    move-exception p0

    goto :goto_54

    :cond_30
    move-object p0, v4

    .line 1117
    :goto_31
    array-length v3, v2

    const/4 v6, 0x2

    if-lt v3, v6, :cond_37

    aget-object v4, v2, v5

    .line 1118
    :cond_37
    const-string/jumbo v2, "ro.boottime.zygote"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_15

    .line 1119
    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_2e

    .line 1123
    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_53} :catch_64
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_19

    return-object p0

    .line 1109
    :goto_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v1

    :try_start_59
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw p0
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5d} :catch_64
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_19

    .line 1126
    :goto_5d
    const-string v1, "Watchdog"

    const-string v2, "Failed to read file /data/system/watchdog-timeout-history.txt"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_64
    return-object v0
.end method

.method public rebootSystem(Ljava/lang/String;)V
    .registers 3

    .line 770
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rebooting system because: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Watchdog"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string/jumbo p0, "power"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Landroid/os/IPowerManager;

    const/4 v0, 0x0

    .line 773
    :try_start_20
    invoke-interface {p0, v0, p1, v0}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/Context;)V
    .registers 5

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "system_server_watchdog_timeout_ms"

    .line 608
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/Watchdog$SettingsObserver;

    invoke-direct {v2, p1, p0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    const/4 p0, 0x0

    .line 607
    invoke-virtual {v0, v1, p0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final resetTimeoutHistory()V
    .registers 2

    .line 1091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .registers 8

    .line 756
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_3
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    if-ge v2, v1, :cond_2c

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 758
    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v3

    .line 759
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 760
    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    goto :goto_a

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 763
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public final run()V
    .registers 15

    .line 860
    new-instance v7, Lcom/android/server/Watchdog$Throttler;

    .line 861
    invoke-static {}, Landroid/os/SystemClock;->uptimeClock()Ljava/time/Clock;

    move-result-object v0

    sget-wide v2, Lcom/android/server/Watchdog;->PRE_WATCHDOG_COOL_OFF_MILLIS:J

    invoke-direct {v7, v0, v2, v3}, Lcom/android/server/Watchdog$Throttler;-><init>(Ljava/time/Clock;J)V

    const/4 v8, 0x0

    :goto_c
    move v2, v8

    .line 870
    :goto_d
    iget-wide v3, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    const-wide/16 v5, 0x4

    .line 871
    div-long v5, v3, v5

    .line 873
    iget-object v9, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v9

    move v0, v8

    .line 877
    :goto_17
    :try_start_17
    iget-object v10, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_4a

    .line 878
    iget-object v10, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 881
    invoke-virtual {v10}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->checker()Lcom/android/server/Watchdog$HandlerChecker;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->customTimeoutMillis()Ljava/util/Optional;

    move-result-object v10

    sget v12, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v12, v12

    mul-long/2addr v12, v3

    .line 882
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 881
    invoke-virtual {v11, v12, v13}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :catchall_47
    move-exception v0

    goto/16 :goto_181

    .line 893
    :cond_4a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-wide v10, v5

    move v0, v8

    :goto_50
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    const/4 v13, 0x2

    if-lez v12, :cond_7d

    .line 895
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v12
    :try_end_5b
    .catchall {:try_start_17 .. :try_end_5b} :catchall_47

    if-eqz v12, :cond_5f

    move v12, v13

    goto :goto_60

    :cond_5f
    move v12, v0

    .line 899
    :goto_60
    :try_start_60
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_65} :catch_66
    .catchall {:try_start_60 .. :try_end_65} :catchall_47

    goto :goto_6c

    :catch_66
    move-exception v0

    .line 902
    :try_start_67
    const-string v10, "Watchdog"

    invoke-static {v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    :goto_6c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_74

    move v0, v13

    goto :goto_75

    :cond_74
    move v0, v12

    .line 907
    :goto_75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    sub-long v10, v5, v10

    goto :goto_50

    .line 910
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v3

    if-nez v3, :cond_85

    .line 914
    monitor-exit v9

    goto :goto_c

    :cond_85
    const/4 v4, 0x1

    if-ne v3, v4, :cond_8a

    .line 917
    monitor-exit v9

    goto :goto_d

    :cond_8a
    if-ne v3, v13, :cond_ae

    if-nez v2, :cond_ab

    .line 920
    const-string v2, "Watchdog"

    const-string v3, "WAITED_UNTIL_PRE_WATCHDOG"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0, v13}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 925
    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 926
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v2

    move v11, v4

    move v12, v11

    move-object v6, v5

    move-object v5, v3

    move v3, v12

    goto :goto_c5

    .line 929
    :cond_ab
    monitor-exit v9

    goto/16 :goto_d

    :cond_ae
    const/4 v3, 0x3

    .line 933
    invoke-virtual {p0, v3}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 934
    invoke-virtual {p0, v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 935
    iget-boolean v5, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 936
    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v11, v2

    move-object v10, v3

    move v12, v5

    move v3, v8

    move-object v5, v4

    .line 938
    :goto_c5
    monitor-exit v9
    :try_end_c6
    .catchall {:try_start_67 .. :try_end_c6} :catchall_47

    .line 949
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForSystemServerTraceFile()Ljava/lang/String;

    move-result-object v4

    .line 950
    invoke-virtual {p0, v3, v5}, Lcom/android/server/Watchdog;->logWatchdog(ZLjava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v3, :cond_da

    .line 951
    invoke-virtual {v7}, Lcom/android/server/Watchdog$Throttler;->isThrottled()Z

    move-result v9

    if-nez v9, :cond_e1

    :cond_da
    move-object v1, p0

    .line 952
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/Watchdog;->collectThreadDumps(Ljava/util/UUID;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 953
    invoke-virtual {v7}, Lcom/android/server/Watchdog$Throttler;->markTrigger()V

    :cond_e1
    if-eqz v3, :cond_e6

    move v2, v11

    goto/16 :goto_d

    .line 963
    :cond_e6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 964
    :try_start_e9
    iget-object v3, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 965
    monitor-exit v2
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_17e

    if-eqz v3, :cond_109

    .line 967
    const-string v2, "Watchdog"

    const-string v4, "Reporting stuck state to activity controller"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :try_start_f5
    const-string v2, "Service dumps disabled due to hung system process."

    invoke-static {v2}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 971
    invoke-interface {v3, v5}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_109

    .line 973
    const-string v2, "Watchdog"

    const-string v3, "Activity controller requested to coninue to wait"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_107} :catch_109

    goto/16 :goto_c

    .line 982
    :catch_109
    :cond_109
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_110

    move v0, v13

    :cond_110
    if-lt v0, v13, :cond_11b

    .line 986
    const-string v0, "Watchdog"

    const-string v2, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_11b
    if-lez v0, :cond_126

    .line 988
    const-string v0, "Watchdog"

    const-string v2, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_126
    if-nez v12, :cond_131

    .line 990
    const-string v0, "Watchdog"

    const-string v2, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 992
    :cond_131
    const-string v0, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {v10}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 994
    const-string v0, "Watchdog"

    const-string v2, "*** GOODBYE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_170

    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isCrashLoopFound()Z

    move-result v0

    if-eqz v0, :cond_170

    .line 996
    invoke-static {}, Landroid/sysprop/WatchdogProperties;->should_ignore_fatal_count()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_170

    .line 997
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->breakCrashLoop()V

    .line 999
    :cond_170
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    .line 1000
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_c

    :catchall_17e
    move-exception v0

    .line 965
    :try_start_17f
    monitor-exit v2
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v0

    .line 938
    :goto_181
    :try_start_181
    monitor-exit v9
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_47

    throw v0
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_3
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 660
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setAllowRestart(Z)V
    .registers 3

    .line 664
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 666
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public start()V
    .registers 1

    .line 555
    iget-object p0, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateWatchdogTimeout(J)V
    .registers 5

    .line 619
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_c

    const-wide/16 v0, 0x4e20

    cmp-long v0, p1, v0

    if-gtz v0, :cond_c

    const-wide/16 p1, 0x4e21

    .line 623
    :cond_c
    iput-wide p1, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 624
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Watchdog timeout updated to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " millis"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Watchdog"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeTimeoutHistory(Ljava/lang/Iterable;)V
    .registers 3

    .line 1095
    const-string p0, ","

    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 1097
    :try_start_6
    new-instance p1, Ljava/io/FileWriter;

    const-string v0, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {p1, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2d

    .line 1098
    :try_start_d
    const-string/jumbo v0, "ro.boottime.zygote"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1099
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    .line 1101
    :try_start_1f
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    return-void

    :catchall_23
    move-exception p0

    .line 1097
    :try_start_24
    invoke-virtual {p1}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p1

    :try_start_29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception p0

    .line 1102
    const-string p1, "Watchdog"

    const-string v0, "Failed to write file /data/system/watchdog-timeout-history.txt"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
