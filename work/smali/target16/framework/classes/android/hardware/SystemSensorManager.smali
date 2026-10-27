.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static final blacklist CAPPED_SAMPLING_PERIOD_US:I = 0x1388

.field private static final blacklist CAPPED_SAMPLING_RATE_LEVEL:I = 0x1

.field static final blacklist CHANGE_ID_SAMPLING_RATE_SENSORS_PERMISSION:J = 0x81c4045L

.field private static final greylist-max-o DEBUG_DYNAMIC_SENSOR:Z = true

.field private static final blacklist HIGH_SAMPLING_RATE_SENSORS_PERMISSION:Ljava/lang/String; = "android.permission.HIGH_SAMPLING_RATE_SENSORS"

.field private static final greylist-max-o MAX_LISTENER_COUNT:I = 0x80

.field private static final greylist-max-o MIN_DIRECT_CHANNEL_BUFFER_SIZE:I = 0x68

.field private static greylist-max-o sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sNativeClassInited:Z


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDynamicSensorListDirty:Z

.field private greylist-max-o mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsPackageDebuggable:Z

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private final greylist-max-o mNativeInstance:J

.field private blacklist mRuntimeSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTargetSdkLevel:I

.field private final greylist-max-o mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVdm:Landroid/companion/virtual/VirtualDeviceManager;

.field private blacklist mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFullRuntimeSensorListByDevice(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPackageDebuggable(Landroid/hardware/SystemSensorManager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeInstance(Landroid/hardware/SystemSensorManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRuntimeSensorListByDeviceByType(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargetSdkLevel(Landroid/hardware/SystemSensorManager;)I
    .registers 1

    iget p0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDynamicSensorListDirty(Landroid/hardware/SystemSensorManager;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupSensorConnection(Landroid/hardware/SystemSensorManager;Landroid/hardware/Sensor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhasHighSamplingRateSensorsPermission(Landroid/hardware/SystemSensorManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->hasHighSamplingRateSensorsPermission()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSensorInCappedSet(Landroid/hardware/SystemSensorManager;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager;->isSensorInCappedSet(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDynamicSensorList(Landroid/hardware/SystemSensorManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 113
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6

    .line 149
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 146
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    .line 150
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_47
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    if-nez v2, :cond_50

    .line 152
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 153
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 155
    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_ad

    .line 157
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 159
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 160
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 162
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_70

    move p1, v0

    goto :goto_71

    :cond_70
    move p1, p2

    :goto_71
    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    .line 165
    iget-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager;->getSensorPolicy(I)I

    move-result p1

    if-ne p1, v0, :cond_89

    .line 166
    iget-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager;->createRuntimeSensorListLocked(I)Ljava/util/List;

    goto :goto_97

    .line 168
    :cond_89
    nop

    .line 169
    :goto_8a
    new-instance p1, Landroid/hardware/Sensor;

    invoke-direct {p1}, Landroid/hardware/Sensor;-><init>()V

    .line 170
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/SystemSensorManager;->nativeGetDefaultDeviceSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_98

    .line 175
    :goto_97
    return-void

    .line 171
    :cond_98
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    add-int/lit8 p2, p2, 0x1

    goto :goto_8a

    .line 155
    :catchall_ad
    move-exception p1

    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p1
.end method

.method private greylist-max-o cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .registers 8

    .line 494
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5f

    .line 497
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 498
    :try_start_17
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 501
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/TriggerEventListener;

    .line 503
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removed trigger listener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to sensor disconnection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p1, v3}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 507
    goto :goto_26

    .line 508
    :cond_5a
    monitor-exit v0

    goto :goto_a5

    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_17 .. :try_end_5e} :catchall_5c

    throw p1

    .line 510
    :cond_5f
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 511
    :try_start_62
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 514
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorEventListener;

    .line 516
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removed event listener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/hardware/SensorEventListener;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to sensor disconnection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0, v2, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 520
    goto :goto_71

    .line 521
    :cond_a4
    monitor-exit v0

    .line 523
    :goto_a5
    return-void

    .line 521
    :catchall_a6
    move-exception p1

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_62 .. :try_end_a8} :catchall_a6

    throw p1
.end method

.method private blacklist createRuntimeSensorListLocked(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 582
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupVirtualDeviceListener()V

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v1, v2, p1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetRuntimeSensors(JILjava/util/List;)V

    .line 585
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 588
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    goto :goto_20

    .line 590
    :cond_3a
    return-object v0
.end method

.method private static greylist-max-o diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    .line 686
    nop

    .line 688
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 690
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_37

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 691
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    if-le v3, v5, :cond_37

    .line 692
    :cond_27
    nop

    .line 693
    if-eqz p4, :cond_33

    .line 694
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_33
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_4

    .line 697
    :cond_37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_74

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_59

    .line 698
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    if-ge v3, v5, :cond_74

    .line 699
    :cond_59
    nop

    .line 700
    if-eqz p3, :cond_65

    .line 701
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_65
    if-eqz p2, :cond_70

    .line 704
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_70
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_4

    .line 707
    :cond_74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a7

    .line 708
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ne v3, v4, :cond_a7

    .line 709
    if-eqz p2, :cond_a1

    .line 710
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 718
    :cond_a7
    return v2
.end method

.method private blacklist getSensorPolicy(I)I
    .registers 5

    .line 1224
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1225
    return v0

    .line 1227
    :cond_4
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v1, :cond_14

    .line 1228
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 1230
    :cond_14
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v1, :cond_1a

    .line 1231
    const/4 p1, -0x1

    return p1

    .line 1233
    :cond_1a
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1, p1, v0}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result p1

    return p1
.end method

.method private blacklist hasHighSamplingRateSensorsPermission()Z
    .registers 4

    .line 1253
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1254
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 1256
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1254
    const-string v2, "android.permission.HIGH_SAMPLING_RATE_SENSORS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1257
    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    .line 1260
    :cond_2b
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private blacklist isSensorInCappedSet(I)Z
    .registers 4

    .line 1244
    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/16 v1, 0x23

    if-eq p1, v1, :cond_17

    const/4 v1, 0x4

    if-eq p1, v1, :cond_17

    const/16 v1, 0x10

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/16 v1, 0xe

    if-ne p1, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    return v0
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private static native greylist-max-o nativeConfigDirectChannel(JIII)I
.end method

.method private static native greylist-max-o nativeCreate(Ljava/lang/String;)J
.end method

.method private static native blacklist nativeCreateDirectChannel(JIJIILandroid/hardware/HardwareBuffer;)I
.end method

.method private static native greylist-max-o nativeDestroyDirectChannel(JI)V
.end method

.method private static native blacklist nativeGetDefaultDeviceSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native greylist-max-o nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeGetRuntimeSensors(JILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native greylist-max-o nativeIsDataInjectionEnabled(J)Z
.end method

.method private static native blacklist nativeIsHalBypassReplayDataInjectionEnabled(J)Z
.end method

.method private static native blacklist nativeIsReplayDataInjectionEnabled(J)Z
.end method

.method private static native greylist-max-o nativeSetOperationParameter(JII[F[I)I
.end method

.method private greylist-max-o setupDynamicSensorBroadcastReceiver()V
    .registers 5

    .line 622
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1f

    .line 623
    new-instance v0, Landroid/hardware/SystemSensorManager$3;

    invoke-direct {v0, p0}, Landroid/hardware/SystemSensorManager$3;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 637
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dynamic_sensor_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 638
    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 642
    :cond_1f
    return-void
.end method

.method private blacklist setupVirtualDeviceListener()V
    .registers 4

    .line 594
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    if-eqz v0, :cond_5

    .line 595
    return-void

    .line 597
    :cond_5
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_1a

    .line 598
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 599
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_1a

    .line 600
    return-void

    .line 603
    :cond_1a
    new-instance v0, Landroid/hardware/SystemSensorManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 618
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    .line 619
    return-void
.end method

.method private greylist-max-o updateDynamicSensorList()V
    .registers 10

    .line 526
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    monitor-enter v0

    .line 527
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    if-eqz v1, :cond_ab

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    .line 531
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 535
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    invoke-static {v5, v1, v2, v3, v4}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    .line 538
    if-eqz v1, :cond_a8

    .line 540
    const-string v1, "SensorManager"

    const-string v5, "DYNS dynamic sensor list cached should be updated"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 544
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 545
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    goto :goto_35

    .line 548
    :cond_4f
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 550
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_ad

    .line 552
    :try_start_5d
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 553
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 555
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_81

    move-object v6, v1

    goto :goto_87

    :cond_81
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    .line 557
    :goto_87
    new-instance v8, Landroid/hardware/SystemSensorManager$1;

    invoke-direct {v8, p0, v3, v7, v4}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    goto :goto_67

    .line 569
    :cond_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_5d .. :try_end_91} :catchall_a5

    .line 571
    :try_start_91
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 572
    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V
    :try_end_a4
    .catchall {:try_start_91 .. :try_end_a4} :catchall_ad

    .line 573
    goto :goto_95

    .line 569
    :catchall_a5
    move-exception v1

    :try_start_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    :try_start_a7
    throw v1

    .line 576
    :cond_a8
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 578
    :cond_ab
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_ad
    move-exception v1

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_ad

    throw v1
.end method


# virtual methods
.method protected greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 7

    .line 383
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    .line 384
    return v0

    .line 386
    :cond_b
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 387
    :try_start_e
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 388
    if-eqz v2, :cond_35

    .line 390
    if-nez p2, :cond_1f

    .line 391
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result p2

    goto :goto_23

    .line 393
    :cond_1f
    invoke-virtual {v2, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result p2

    .line 395
    :goto_23
    if-eqz p2, :cond_33

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result p3

    if-nez p3, :cond_33

    .line 396
    iget-object p3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 399
    :cond_33
    monitor-exit v1

    return p2

    .line 401
    :cond_35
    monitor-exit v1

    return v0

    .line 402
    :catchall_37
    move-exception p1

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_37

    throw p1
.end method

.method protected greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .registers 8

    .line 724
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 728
    if-ltz p3, :cond_7a

    const/4 v0, 0x3

    if-gt p3, v0, :cond_7a

    .line 733
    if-nez p2, :cond_19

    if-nez p3, :cond_10

    goto :goto_19

    .line 735
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "when sensor is null, rate can only be DIRECT_RATE_STOP"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :cond_19
    :goto_19
    if-nez p2, :cond_1d

    const/4 v0, -0x1

    goto :goto_21

    :cond_1d
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 740
    :goto_21
    const/4 v1, 0x1

    if-eqz p2, :cond_63

    .line 741
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/hardware/SystemSensorManager;->isSensorInCappedSet(I)Z

    move-result p2

    if-eqz p2, :cond_63

    if-le p3, v1, :cond_63

    iget-boolean p2, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    if-eqz p2, :cond_63

    .line 744
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->hasHighSamplingRateSensorsPermission()Z

    move-result p2

    if-nez p2, :cond_63

    .line 745
    const-wide/32 v2, 0x81c4045

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p2

    if-nez p2, :cond_44

    goto :goto_63

    .line 746
    :cond_44
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "To use the sampling rate level "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", app needs to declare the normal permission HIGH_SAMPLING_RATE_SENSORS."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 751
    :cond_63
    :goto_63
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 752
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result p1

    .line 751
    invoke-static {v2, v3, p1, v0, p3}, Landroid/hardware/SystemSensorManager;->nativeConfigDirectChannel(JIII)I

    move-result p1

    .line 753
    const/4 p2, 0x0

    if-nez p3, :cond_75

    .line 754
    if-nez p1, :cond_73

    goto :goto_74

    :cond_73
    move v1, p2

    :goto_74
    return v1

    .line 756
    :cond_75
    if-lez p1, :cond_78

    goto :goto_79

    :cond_78
    move p1, p2

    :goto_79
    return p1

    .line 730
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "rate parameter invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 725
    :cond_83
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "channel is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 14

    .line 763
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    .line 764
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->getSensorPolicy(I)I

    move-result v2

    .line 765
    const/4 v3, -0x1

    if-eq v2, v3, :cond_fa

    .line 768
    if-nez v2, :cond_12

    .line 769
    const/4 v0, 0x0

    move v4, v0

    goto :goto_13

    .line 768
    :cond_12
    move v4, v0

    .line 774
    :goto_13
    const/16 v0, 0x68

    const/4 v10, 0x1

    if-eqz p1, :cond_6a

    .line 777
    :try_start_18
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v8
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_61

    .line 780
    nop

    .line 782
    invoke-virtual {p1}, Landroid/os/MemoryFile;->length()I

    move-result v2

    if-lt v2, v0, :cond_59

    .line 788
    invoke-virtual {p1}, Landroid/os/MemoryFile;->length()I

    move-result v0

    int-to-long v5, v0

    .line 789
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JIJIILandroid/hardware/HardwareBuffer;)I

    move-result v0

    .line 791
    if-lez v0, :cond_3b

    .line 795
    nop

    .line 796
    move v2, v0

    move-wide v4, v5

    move v3, v10

    goto :goto_a4

    .line 792
    :cond_3b
    new-instance v1, Ljava/io/UncheckedIOException;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create MemoryFile direct channel failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 783
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size of MemoryFile has to be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :catch_61
    move-exception v0

    .line 779
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MemoryFile object is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_6a
    if-eqz p2, :cond_f1

    .line 797
    if-nez v4, :cond_e9

    .line 801
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_e1

    .line 804
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    if-ne v2, v10, :cond_d9

    .line 807
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    if-lt v2, v0, :cond_d1

    .line 812
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v2

    const-wide/32 v5, 0x800000

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_c9

    .line 816
    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    int-to-long v5, v0

    .line 817
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v7, 0x2

    const/4 v8, -0x1

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JIJIILandroid/hardware/HardwareBuffer;)I

    move-result v0

    .line 820
    if-lez v0, :cond_ab

    .line 824
    const/4 v10, 0x2

    move v2, v0

    move-wide v4, v5

    move v3, v10

    .line 828
    :goto_a4
    new-instance v0, Landroid/hardware/SensorDirectChannel;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorDirectChannel;-><init>(Landroid/hardware/SensorManager;IIJ)V

    return-object v0

    .line 821
    :cond_ab
    new-instance v1, Ljava/io/UncheckedIOException;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create HardwareBuffer direct channel failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 813
    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HardwareBuffer must set usage flag USAGE_SENSOR_DIRECT_DATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width if HardwareBuffer must be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of HardwareBuffer must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_e1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format of HardwareBuffer must be BLOB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_e9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HardwareBuffer direct channel is only supported for default device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_f1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "shared memory object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid device id in context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .registers 4

    .line 833
    if-eqz p1, :cond_b

    .line 834
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/hardware/SystemSensorManager;->nativeDestroyDirectChannel(JI)V

    .line 836
    :cond_b
    return-void
.end method

.method protected greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
    .registers 4

    .line 406
    if-eqz p1, :cond_1e

    .line 408
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 409
    :try_start_5
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 410
    const/4 v1, 0x0

    if-nez p1, :cond_12

    .line 411
    monitor-exit v0

    return v1

    .line 413
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result p1

    if-nez p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    monitor-exit v0

    return v1

    .line 415
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p1

    .line 406
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected greylist-max-o getFullDynamicSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 251
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    .line 252
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    return-object v0
.end method

.method protected greylist-max-o getFullSensorList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    .line 221
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->getSensorPolicy(I)I

    move-result v1

    .line 222
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 223
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 225
    :cond_12
    if-nez v1, :cond_17

    .line 226
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0

    .line 230
    :cond_17
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    monitor-enter v1

    .line 231
    :try_start_1a
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 232
    if-nez v2, :cond_28

    .line 233
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->createRuntimeSensorListLocked(I)Ljava/util/List;

    move-result-object v2

    .line 235
    :cond_28
    monitor-exit v1

    .line 236
    return-object v2

    .line 235
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public blacklist getSensorByHandle(I)Landroid/hardware/Sensor;
    .registers 3

    .line 242
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Sensor;

    return-object p1
.end method

.method public whitelist getSensorList(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    .line 181
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->getSensorPolicy(I)I

    move-result v1

    .line 182
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 185
    :cond_12
    if-nez v1, :cond_19

    .line 186
    invoke-super {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 191
    :cond_19
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    monitor-enter v1

    .line 192
    :try_start_1c
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mFullRuntimeSensorListByDevice:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 193
    if-nez v3, :cond_2a

    .line 194
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager;->createRuntimeSensorListLocked(I)Ljava/util/List;

    move-result-object v3

    .line 196
    :cond_2a
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mRuntimeSensorListByDeviceByType:Landroid/util/SparseArray;

    .line 197
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 198
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 199
    if-nez v4, :cond_64

    .line 200
    if-ne p1, v2, :cond_3d

    .line 201
    goto :goto_5d

    .line 203
    :cond_3d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 205
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p1, :cond_5b

    .line 206
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_5b
    goto :goto_46

    .line 204
    :cond_5c
    move-object v3, v2

    .line 210
    :goto_5d
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 211
    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 213
    :cond_64
    monitor-exit v1

    .line 214
    return-object v4

    .line 213
    :catchall_66
    move-exception p1

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_1c .. :try_end_68} :catchall_66

    throw p1
.end method

.method protected blacklist initDataInjectionImpl(ZI)Z
    .registers 12

    .line 419
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    nop

    .line 421
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_7a

    .line 422
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_8c

    :pswitch_c
    move v3, p1

    goto :goto_23

    .line 431
    :pswitch_e
    :try_start_e
    iget-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v3, v4}, Landroid/hardware/SystemSensorManager;->nativeIsHalBypassReplayDataInjectionEnabled(J)Z

    move-result v3

    .line 433
    goto :goto_23

    .line 427
    :pswitch_15
    iget-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v3, v4}, Landroid/hardware/SystemSensorManager;->nativeIsReplayDataInjectionEnabled(J)Z

    move-result v3

    .line 429
    goto :goto_23

    .line 424
    :pswitch_1c
    iget-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v3, v4}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v3

    .line 425
    nop

    .line 438
    :goto_23
    if-nez v3, :cond_2e

    .line 439
    const-string p2, "SensorManager"

    const-string v0, "The correct Data Injection mode has not been enabled"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    monitor-exit v1

    return p1

    .line 442
    :cond_2e
    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v3, :cond_41

    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->getDataInjectionMode()I

    move-result v3

    if-eq v3, p2, :cond_41

    .line 445
    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 446
    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 449
    :cond_41
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_87

    if-nez v0, :cond_72

    .line 451
    :try_start_45
    new-instance v3, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 452
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v4, p0

    move v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_57} :catch_58
    .catchall {:try_start_45 .. :try_end_57} :catchall_87

    .line 455
    goto :goto_72

    .line 453
    :catch_58
    move-exception v0

    move-object p2, v0

    .line 454
    :try_start_5a
    const-string v0, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create InjectEventQueue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_72
    :goto_72
    sget-object p2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz p2, :cond_77

    goto :goto_78

    :cond_77
    move v2, p1

    :goto_78
    monitor-exit v1

    return v2

    .line 460
    :cond_7a
    sget-object p1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz p1, :cond_85

    .line 461
    sget-object p1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 462
    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 464
    :cond_85
    monitor-exit v1

    return v2

    .line 466
    :catchall_87
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_5a .. :try_end_8a} :catchall_87

    throw p1

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_c
        :pswitch_15
        :pswitch_e
    .end packed-switch
.end method

.method protected greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .registers 15

    .line 471
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_3
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 473
    const-string p1, "SensorManager"

    const-string p2, "Data injection mode not activated before calling injectSensorData"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-exit v1

    return v2

    .line 476
    :cond_11
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->getDataInjectionMode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2a

    .line 477
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2a

    .line 480
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sensor does not support data injection"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 482
    :cond_2a
    :goto_2a
    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result p1

    .line 485
    if-eqz p1, :cond_41

    .line 486
    sget-object p2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p2}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 487
    const/4 p2, 0x0

    sput-object p2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 489
    :cond_41
    if-nez p1, :cond_44

    const/4 v2, 0x1

    :cond_44
    monitor-exit v1

    return v2

    .line 490
    :catchall_46
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_46

    throw p1
.end method

.method protected greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 5

    .line 648
    const-string v0, "SensorManager"

    const-string v1, "DYNS Register dynamic sensor callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz p1, :cond_23

    .line 654
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 655
    :try_start_c
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 657
    monitor-exit v0

    return-void

    .line 660
    :cond_16
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 661
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_20

    throw p1

    .line 652
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .registers 11

    .line 259
    const/4 p6, 0x0

    if-eqz p1, :cond_145

    if-nez p2, :cond_7

    goto/16 :goto_145

    .line 264
    :cond_7
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 265
    const-string p1, "SensorManager"

    const-string p2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return p6

    .line 268
    :cond_16
    if-ltz p5, :cond_13c

    if-gez p3, :cond_1c

    goto/16 :goto_13c

    .line 272
    :cond_1c
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x1

    if-lt v0, v1, :cond_e7

    .line 273
    const-string p1, "SensorManager"

    const-string p2, "Too many sensor listeners! Dump:"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 275
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 276
    nop

    .line 277
    :try_start_37
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, p6

    :goto_42
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/SensorEventListener;

    .line 278
    invoke-interface {p4}, Landroid/hardware/SensorEventListener;->toString()Ljava/lang/String;

    move-result-object p4

    .line 279
    const-string p5, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/2addr p3, v2

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/16 p5, 0x40

    invoke-virtual {p4, p5}, Ljava/lang/String;->indexOf(I)I

    move-result p5

    .line 281
    if-gez p5, :cond_7e

    goto :goto_82

    .line 282
    :cond_7e
    invoke-virtual {p4, p6, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 283
    :goto_82
    nop

    .line 284
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p4, p5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    add-int/2addr p5, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 283
    invoke-interface {p1, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    goto :goto_42

    .line 286
    :cond_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_37 .. :try_end_9b} :catchall_e4

    .line 287
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 288
    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 289
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Too many sensor listeners (128). Most common: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 290
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 286
    :catchall_e4
    move-exception p1

    :try_start_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw p1

    .line 298
    :cond_e7
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 299
    :try_start_ea
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 300
    if-nez v1, :cond_133

    .line 301
    if-eqz p4, :cond_fb

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    goto :goto_fd

    :cond_fb
    iget-object p4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 303
    :goto_fd
    invoke-interface {p1}, Landroid/hardware/SensorEventListener;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_114

    .line 304
    invoke-interface {p1}, Landroid/hardware/SensorEventListener;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_11c

    .line 305
    :cond_114
    invoke-interface {p1}, Landroid/hardware/SensorEventListener;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 306
    :goto_11c
    new-instance v3, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    invoke-direct {v3, p1, p4, p0, v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result p2

    if-nez p2, :cond_12c

    .line 308
    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 309
    monitor-exit v0

    return p6

    .line 311
    :cond_12c
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    monitor-exit v0

    return v2

    .line 314
    :cond_133
    invoke-virtual {v1, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 316
    :catchall_139
    move-exception p1

    monitor-exit v0
    :try_end_13b
    .catchall {:try_start_ea .. :try_end_13b} :catchall_139

    throw p1

    .line 269
    :cond_13c
    :goto_13c
    const-string p1, "SensorManager"

    const-string/jumbo p2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return p6

    .line 260
    :cond_145
    :goto_145
    const-string p1, "SensorManager"

    const-string/jumbo p2, "sensor or listener is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return p6
.end method

.method protected greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 8

    .line 347
    if-eqz p2, :cond_78

    .line 349
    if-eqz p1, :cond_6f

    .line 351
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    return v2

    .line 353
    :cond_d
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_66

    .line 359
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 360
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 361
    if-nez v1, :cond_5d

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    .line 365
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 366
    :goto_43
    new-instance v3, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v3, p1, v4, p0, v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result p2

    if-nez p2, :cond_55

    .line 368
    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 369
    monitor-exit v0

    return v2

    .line 371
    :cond_55
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 374
    :cond_5d
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 376
    :catchall_63
    move-exception p1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_1a .. :try_end_65} :catchall_63

    throw p1

    .line 354
    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "request failed, the trigger listeners size has exceeded the maximum limit 128"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :cond_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sensor cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 9

    .line 1216
    nop

    .line 1217
    iget-object v0, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    move v3, v0

    .line 1218
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    iget v4, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    iget-object v5, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    iget-object v6, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    invoke-static/range {v1 .. v6}, Landroid/hardware/SystemSensorManager;->nativeSetOperationParameter(JII[F[I)I

    move-result p1

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method protected greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 4

    .line 669
    const-string v0, "SensorManager"

    const-string v1, "Removing dynamic sensor listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 672
    :try_start_a
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p1
.end method

.method protected greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 6

    .line 323
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 324
    return-void

    .line 327
    :cond_a
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 328
    :try_start_d
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 329
    if-eqz v1, :cond_33

    .line 331
    if-nez p2, :cond_1e

    .line 332
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result p2

    goto :goto_23

    .line 334
    :cond_1e
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result p2

    .line 336
    :goto_23
    if-eqz p2, :cond_33

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result p2

    if-nez p2, :cond_33

    .line 337
    iget-object p2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 341
    :cond_33
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_35

    throw p1
.end method
