.class public Lcom/android/server/sensors/SensorService;
.super Lcom/android/server/SystemService;
.source "SensorService.java"


# static fields
.field public static final START_NATIVE_SENSOR_SERVICE:Ljava/lang/String; = "StartNativeSensorService"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mProximityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;",
            "Lcom/android/server/sensors/SensorService$ProximityListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field public mPtr:J

.field public final mRuntimeSensorHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$tuvhrgJDhAzfGFTh_3IUBIw3Spg(Lcom/android/server/sensors/SensorService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/sensors/SensorService;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimeSensorHandles(Lcom/android/server/sensors/SensorService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smregisterProximityActiveListenerNative(J)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->registerProximityActiveListenerNative(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smregisterRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
    .registers 13

    .line 0
    invoke-static/range {p0 .. p12}, Lcom/android/server/sensors/SensorService;->registerRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z
    .registers 8

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/android/server/sensors/SensorService;->sendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendRuntimeSensorEventNative(JIIJ[F)Z
    .registers 7

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/sensors/SensorService;->sendRuntimeSensorEventNative(JIIJ[F)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smunregisterRuntimeSensorNative(JI)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/sensors/SensorService;->unregisterRuntimeSensorNative(JI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 72
    monitor-enter p1

    .line 73
    :try_start_19
    new-instance v0, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService;)V

    const-string v1, "StartNativeSensorService"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 82
    monitor-exit p1

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    .line 74
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 75
    const-string v1, "StartNativeSensorService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;Lcom/android/server/sensors/SensorService-IA;)V

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J

    move-result-wide v1

    .line 77
    iget-object v3, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 78
    :try_start_16
    iput-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 79
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 80
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_1d
    move-exception p0

    .line 79
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private static native registerProximityActiveListenerNative(J)V
.end method

.method private static native registerRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
.end method

.method private static native sendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z
.end method

.method private static native sendRuntimeSensorEventNative(JIIJ[F)Z
.end method

.method private static native startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J
.end method

.method private static native unregisterProximityActiveListenerNative(J)V
.end method

.method private static native unregisterRuntimeSensorNative(JI)V
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_16

    .line 93
    iget-object p1, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v0, "StartNativeSensorService"

    invoke-static {p1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 96
    :try_start_f
    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 97
    monitor-exit p1

    return-void

    :catchall_13
    move-exception p0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw p0

    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 87
    new-instance v0, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/sensors/SensorService$LocalService;-><init>(Lcom/android/server/sensors/SensorService;)V

    const-class p0, Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
