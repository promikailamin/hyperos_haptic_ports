.class public Lcom/android/server/sensors/SensorService;
.super Lcom/android/server/SystemService;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensors/SensorService$DeviceStateListener;,
        Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;,
        Lcom/android/server/sensors/SensorService$ProximityListenerProxy;,
        Lcom/android/server/sensors/SensorService$LocalService;
    }
.end annotation


# static fields
.field private static final START_NATIVE_SENSOR_SERVICE:Ljava/lang/String; = "StartNativeSensorService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mProximityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;",
            "Lcom/android/server/sensors/SensorService$ProximityListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mPtr:J

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smregisterProximityActiveListenerNative(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->registerProximityActiveListenerNative(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetReversedStateNative(JI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/sensors/SensorService;->setReversedStateNative(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smunregisterProximityActiveListenerNative(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->unregisterProximityActiveListenerNative(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 67
    iput-object p1, p0, Lcom/android/server/sensors/SensorService;->mContext:Landroid/content/Context;

    .line 68
    monitor-enter v0

    .line 69
    :try_start_14
    new-instance v1, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService;)V

    const-string v2, "StartNativeSensorService"

    invoke-static {v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private static native registerProximityActiveListenerNative(J)V
.end method

.method private static native setReversedStateNative(JI)V
.end method

.method private static native startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J
.end method

.method private static native unregisterProximityActiveListenerNative(J)V
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-server-sensors-SensorService()V
    .registers 6

    .line 70
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 71
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartNativeSensorService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;Lcom/android/server/sensors/SensorService$ProximityListenerDelegate-IA;)V

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J

    move-result-wide v1

    .line 73
    .local v1, "ptr":J
    iget-object v3, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 74
    :try_start_16
    iput-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 75
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 76
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 77
    return-void

    .line 75
    :catchall_1d
    move-exception v4

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v4
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 88
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_16

    .line 89
    iget-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v1, "StartNativeSensorService"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    const/4 v1, 0x0

    :try_start_f
    iput-object v1, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 93
    monitor-exit v0

    goto :goto_46

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1

    .line 95
    :cond_16
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_46

    .line 96
    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_26

    const/4 v1, 0x1

    :cond_26
    move v0, v1

    .line 97
    .local v0, "isFoldable":Z
    if-eqz v0, :cond_46

    .line 98
    iget-object v1, p0, Lcom/android/server/sensors/SensorService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 100
    .local v1, "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Lcom/android/server/sensors/SensorService$DeviceStateListener;

    iget-object v4, p0, Lcom/android/server/sensors/SensorService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/server/sensors/SensorService$DeviceStateListener;-><init>(Lcom/android/server/sensors/SensorService;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 105
    .end local v0    # "isFoldable":Z
    .end local v1    # "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    :cond_46
    :goto_46
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 83
    const-class v0, Lcom/android/server/sensors/SensorManagerInternal;

    new-instance v1, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/SensorService$LocalService;-><init>(Lcom/android/server/sensors/SensorService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 84
    return-void
.end method
