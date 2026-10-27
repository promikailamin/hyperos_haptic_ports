.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
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

.field private blacklist mDisableSensor:Z

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


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

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

.method static bridge synthetic blacklist -$$Nest$mshouldDisableSensor(Landroid/hardware/SystemSensorManager;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->shouldDisableSensor()Z

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

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 118
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 155
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 144
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    .line 156
    sget-object v1, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_39
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    if-nez v2, :cond_42

    .line 158
    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 159
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 161
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_95

    .line 163
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 165
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 166
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 168
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    :goto_61
    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "index":I
    :goto_64
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 173
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v3, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v3, v4, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v3

    if-nez v3, :cond_80

    .line 179
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/window/MiuiEmbeddingWindowStub;->isDisableSensor(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mDisableSensor:Z

    .line 181
    return-void

    .line 174
    .restart local v0    # "index":I
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_80
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 161
    .end local v0    # "index":I
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_95
    move-exception v0

    :try_start_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v0
.end method

.method private greylist-max-o cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .registers 9
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 411
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 414
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 415
    :try_start_17
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 418
    .local v1, "triggerListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/TriggerEventListener;Landroid/hardware/SystemSensorManager$TriggerEventQueue;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/TriggerEventListener;

    .line 420
    .local v3, "l":Landroid/hardware/TriggerEventListener;
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed trigger listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to sensor disconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 424
    nop

    .end local v3    # "l":Landroid/hardware/TriggerEventListener;
    goto :goto_26

    .line 425
    .end local v1    # "triggerListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/TriggerEventListener;Landroid/hardware/SystemSensorManager$TriggerEventQueue;>;"
    :cond_5b
    monitor-exit v0

    goto :goto_a6

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_17 .. :try_end_5f} :catchall_5d

    throw v1

    .line 427
    :cond_60
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 428
    :try_start_63
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 431
    .local v1, "sensorListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/SensorEventListener;Landroid/hardware/SystemSensorManager$SensorEventQueue;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEventListener;

    .line 433
    .local v3, "l":Landroid/hardware/SensorEventListener;
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed event listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to sensor disconnection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0, v3, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 437
    .end local v3    # "l":Landroid/hardware/SensorEventListener;
    goto :goto_72

    .line 438
    .end local v1    # "sensorListeners":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/SensorEventListener;Landroid/hardware/SystemSensorManager$SensorEventQueue;>;"
    :cond_a5
    monitor-exit v0

    .line 440
    :goto_a6
    return-void

    .line 438
    :catchall_a7
    move-exception v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_63 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method private static greylist-max-o diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 10
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

    .line 563
    .local p0, "oldList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p3, "added":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p4, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .line 565
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 567
    .local v2, "j":I
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 568
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-le v3, v4, :cond_34

    .line 569
    :cond_25
    const/4 v0, 0x1

    .line 570
    if-eqz p4, :cond_31

    .line 571
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 574
    :cond_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_70

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 575
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ge v3, v4, :cond_70

    .line 576
    :cond_56
    const/4 v0, 0x1

    .line 577
    if-eqz p3, :cond_62

    .line 578
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_62
    if-eqz p2, :cond_6d

    .line 581
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 584
    :cond_70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a3

    .line 585
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    if-ne v3, v4, :cond_a3

    .line 586
    if-eqz p2, :cond_9d

    .line 587
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 595
    :cond_a3
    return v0
.end method

.method private blacklist hasHighSamplingRateSensorsPermission()Z
    .registers 4

    .line 1118
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1119
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 1121
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1119
    const-string v2, "android.permission.HIGH_SAMPLING_RATE_SENSORS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1122
    .local v0, "granted":Z
    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mHasHighSamplingRateSensorsPermission:Ljava/util/Optional;

    .line 1125
    .end local v0    # "granted":Z
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
    .param p1, "sensorType"    # I

    .line 1109
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

.method private static native greylist-max-o nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I
.end method

.method private static native greylist-max-o nativeDestroyDirectChannel(JI)V
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

.method private static native greylist-max-o nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native greylist-max-o nativeIsDataInjectionEnabled(J)Z
.end method

.method private static native blacklist nativeRemoveSensorDisableApp(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeSetOperationParameter(JII[F[I)I
.end method

.method private static native blacklist nativeSetSensorDisableApp(JLjava/lang/String;)V
.end method

.method private greylist-max-o setupDynamicSensorBroadcastReceiver()V
    .registers 5

    .line 497
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1f

    .line 498
    new-instance v0, Landroid/hardware/SystemSensorManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dynamic_sensor_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 517
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1f
    return-void
.end method

.method private blacklist shouldDisableSensor()Z
    .registers 6

    .line 1130
    iget-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mDisableSensor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1131
    return v1

    .line 1133
    :cond_6
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1135
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isLetterBoxed()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1e

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_1e

    .line 1137
    return v1

    .line 1140
    :cond_1e
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1141
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 1142
    .local v2, "thread":Landroid/app/ActivityThread;
    if-eqz v2, :cond_45

    .line 1143
    invoke-virtual {v2}, Landroid/app/ActivityThread;->inMiuiSizeCompatMode()Z

    move-result v4

    if-eqz v4, :cond_45

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v3, :cond_45

    iget-object v4, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1145
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    invoke-static {v4}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1146
    return v1

    .line 1150
    .end local v2    # "thread":Landroid/app/ActivityThread;
    :cond_45
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1151
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_5c

    .line 1153
    return v1

    .line 1156
    :cond_5c
    invoke-static {}, Landroid/app/ActivityThread;->isNeedDisableAccSensor()Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1157
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    if-nez v2, :cond_8a

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1158
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    if-eq v2, v1, :cond_89

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1159
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_89

    .line 1160
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->inMiuiSizeCompatMode()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1161
    :cond_89
    return v1

    .line 1163
    :cond_8a
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o teardownDynamicSensorBroadcastReceiver()V
    .registers 3

    .line 520
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 521
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 523
    return-void
.end method

.method private greylist-max-o updateDynamicSensorList()V
    .registers 13

    .line 443
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    if-eqz v1, :cond_a6

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v2, "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v3, "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v4, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    invoke-static {v5, v1, v2, v3, v4}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    .line 455
    .local v5, "changed":Z
    if-eqz v5, :cond_a3

    .line 457
    const-string v6, "SensorManager"

    const-string v7, "DYNS dynamic sensor list cached should be updated"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 461
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 462
    .local v7, "s":Landroid/hardware/Sensor;
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    nop

    .end local v7    # "s":Landroid/hardware/Sensor;
    goto :goto_35

    .line 465
    :cond_50
    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 468
    .local v6, "mainHandler":Landroid/os/Handler;
    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_65
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 469
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 471
    .local v9, "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7f

    move-object v10, v6

    goto :goto_85

    :cond_7f
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Handler;

    .line 473
    .local v10, "handler":Landroid/os/Handler;
    :goto_85
    new-instance v11, Landroid/hardware/SystemSensorManager$1;

    invoke-direct {v11, p0, v3, v9, v4}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    nop

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    .end local v9    # "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    .end local v10    # "handler":Landroid/os/Handler;
    goto :goto_65

    .line 486
    :cond_8f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_93
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    .line 487
    .local v8, "s":Landroid/hardware/Sensor;
    invoke-direct {p0, v8}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    .line 488
    .end local v8    # "s":Landroid/hardware/Sensor;
    goto :goto_93

    .line 491
    .end local v6    # "mainHandler":Landroid/os/Handler;
    :cond_a3
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 493
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v2    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v5    # "changed":Z
    :cond_a6
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_a8
    move-exception v1

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_3 .. :try_end_aa} :catchall_a8

    throw v1
.end method


# virtual methods
.method protected greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .line 327
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    .line 328
    return v0

    .line 330
    :cond_b
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 331
    :try_start_e
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 332
    .local v2, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v2, :cond_35

    .line 334
    if-nez p2, :cond_1f

    .line 335
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_23

    .line 337
    .end local v0    # "result":Z
    :cond_1f
    invoke-virtual {v2, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v0

    .line 339
    .restart local v0    # "result":Z
    :goto_23
    if-eqz v0, :cond_33

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_33

    .line 340
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 343
    :cond_33
    monitor-exit v1

    return v0

    .line 345
    .end local v0    # "result":Z
    :cond_35
    monitor-exit v1

    return v0

    .line 346
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_37

    throw v0
.end method

.method protected greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .registers 9
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "rate"    # I

    .line 601
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 605
    if-ltz p3, :cond_79

    const/4 v0, 0x3

    if-gt p3, v0, :cond_79

    .line 610
    if-nez p2, :cond_19

    if-nez p3, :cond_10

    goto :goto_19

    .line 612
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "when sensor is null, rate can only be DIRECT_RATE_STOP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_19
    :goto_19
    if-nez p2, :cond_1d

    const/4 v0, -0x1

    goto :goto_21

    :cond_1d
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 617
    .local v0, "sensorHandle":I
    :goto_21
    const/4 v1, 0x1

    if-eqz p2, :cond_63

    .line 618
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager;->isSensorInCappedSet(I)Z

    move-result v2

    if-eqz v2, :cond_63

    if-le p3, v1, :cond_63

    iget-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mIsPackageDebuggable:Z

    if-eqz v2, :cond_63

    .line 621
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->hasHighSamplingRateSensorsPermission()Z

    move-result v2

    if-nez v2, :cond_63

    const-wide/32 v2, 0x81c4045

    .line 622
    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_63

    .line 623
    :cond_44
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To use the sampling rate level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", app needs to declare the normal permission HIGH_SAMPLING_RATE_SENSORS."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_63
    :goto_63
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 629
    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v4

    .line 628
    invoke-static {v2, v3, v4, v0, p3}, Landroid/hardware/SystemSensorManager;->nativeConfigDirectChannel(JIII)I

    move-result v2

    .line 630
    .local v2, "ret":I
    const/4 v3, 0x0

    if-nez p3, :cond_75

    .line 631
    if-nez v2, :cond_73

    goto :goto_74

    :cond_73
    move v1, v3

    :goto_74
    return v1

    .line 633
    :cond_75
    if-lez v2, :cond_78

    move v3, v2

    :cond_78
    return v3

    .line 607
    .end local v0    # "sensorHandle":I
    .end local v2    # "ret":I
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rate parameter invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 18
    .param p1, "memoryFile"    # Landroid/os/MemoryFile;
    .param p2, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 643
    move-object v7, p0

    const/16 v0, 0x68

    if-eqz p1, :cond_58

    .line 646
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v13
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_4f

    .line 649
    .local v13, "fd":I
    nop

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->length()I

    move-result v1

    if-lt v1, v0, :cond_47

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/os/MemoryFile;->length()I

    move-result v0

    int-to-long v0, v0

    .line 658
    .local v0, "size":J
    iget-wide v8, v7, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-wide v10, v0

    invoke-static/range {v8 .. v14}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    move-result v2

    .line 660
    .local v2, "id":I
    if-lez v2, :cond_29

    .line 664
    const/4 v3, 0x1

    .line 665
    .end local v13    # "fd":I
    .local v3, "type":I
    move-wide v8, v0

    move v0, v2

    move v10, v3

    goto :goto_93

    .line 661
    .end local v3    # "type":I
    .restart local v13    # "fd":I
    :cond_29
    new-instance v3, Ljava/io/UncheckedIOException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create MemoryFile direct channel failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 652
    .end local v0    # "size":J
    .end local v2    # "id":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size of MemoryFile has to be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    .end local v13    # "fd":I
    :catch_4f
    move-exception v0

    .line 648
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MemoryFile object is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    .end local v0    # "e":Ljava/io/IOException;
    :cond_58
    if-eqz p2, :cond_dc

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_d4

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_cc

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_c4

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_bc

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    int-to-long v0, v0

    .line 682
    .local v0, "size":J
    iget-wide v8, v7, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-wide v10, v0

    move-object/from16 v14, p2

    invoke-static/range {v8 .. v14}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    move-result v2

    .line 685
    .restart local v2    # "id":I
    if-lez v2, :cond_9e

    .line 689
    const/4 v3, 0x2

    move-wide v8, v0

    move v0, v2

    move v10, v3

    .line 693
    .end local v2    # "id":I
    .local v0, "id":I
    .local v8, "size":J
    .local v10, "type":I
    :goto_93
    new-instance v11, Landroid/hardware/SensorDirectChannel;

    move-object v1, v11

    move-object v2, p0

    move v3, v0

    move v4, v10

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorDirectChannel;-><init>(Landroid/hardware/SensorManager;IIJ)V

    return-object v11

    .line 686
    .end local v8    # "size":J
    .end local v10    # "type":I
    .local v0, "size":J
    .restart local v2    # "id":I
    :cond_9e
    new-instance v3, Ljava/io/UncheckedIOException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create HardwareBuffer direct channel failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 678
    .end local v0    # "size":J
    .end local v2    # "id":I
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HardwareBuffer must set usage flag USAGE_SENSOR_DIRECT_DATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width if HaradwareBuffer must be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height of HardwareBuffer must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format of HardwareBuffer must be BLOB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_dc
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "shared memory object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .registers 5
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;

    .line 698
    if-eqz p1, :cond_b

    .line 699
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager;->nativeDestroyDirectChannel(JI)V

    .line 701
    :cond_b
    return-void
.end method

.method protected greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
    .registers 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 350
    if-eqz p1, :cond_1e

    .line 352
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 353
    :try_start_5
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 354
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 355
    monitor-exit v0

    return v2

    .line 357
    :cond_12
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_19

    const/4 v2, 0x1

    :cond_19
    monitor-exit v0

    return v2

    .line 359
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1

    .line 350
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 208
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 209
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    .line 210
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    return-object v0
.end method

.method protected greylist-max-o getFullSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected greylist-max-o initDataInjectionImpl(Z)Z
    .registers 10
    .param p1, "enable"    # Z

    .line 363
    sget-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    const/4 v1, 0x1

    if-eqz p1, :cond_4d

    .line 365
    :try_start_6
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v2

    .line 367
    .local v2, "isDataInjectionModeEnabled":Z
    const/4 v3, 0x0

    if-nez v2, :cond_18

    .line 368
    const-string v1, "SensorManager"

    const-string v4, "Data Injection mode not enabled"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    monitor-exit v0

    return v3

    .line 372
    :cond_18
    sget-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_59

    if-nez v4, :cond_45

    .line 374
    :try_start_1c
    new-instance v4, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, p0, v6}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_2b} :catch_2c
    .catchall {:try_start_1c .. :try_end_2b} :catchall_59

    .line 378
    goto :goto_45

    .line 376
    :catch_2c
    move-exception v4

    .line 377
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_2d
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create InjectEventQueue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_45
    :goto_45
    sget-object v4, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v4, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    monitor-exit v0

    return v1

    .line 383
    .end local v2    # "isDataInjectionModeEnabled":Z
    :cond_4d
    sget-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v2, :cond_57

    .line 384
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 385
    const/4 v2, 0x0

    sput-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 387
    :cond_57
    monitor-exit v0

    return v1

    .line 389
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_2d .. :try_end_5b} :catchall_59

    throw v1
.end method

.method protected greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .registers 14
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 394
    sget-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_3
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    const/4 v7, 0x0

    if-nez v1, :cond_11

    .line 396
    const-string v1, "SensorManager"

    const-string v2, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    monitor-exit v0

    return v7

    .line 399
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v1

    .line 402
    .local v1, "ret":I
    if-eqz v1, :cond_26

    .line 403
    sget-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 404
    const/4 v2, 0x0

    sput-object v2, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 406
    :cond_26
    if-nez v1, :cond_29

    const/4 v7, 0x1

    :cond_29
    monitor-exit v0

    return v7

    .line 407
    .end local v1    # "ret":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 529
    const-string v0, "SensorManager"

    const-string v1, "DYNS Register dynamic sensor callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-eqz p1, :cond_1b

    .line 535
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 537
    return-void

    .line 540
    :cond_12
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 541
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void

    .line 533
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .line 217
    const/16 v0, 0x17d

    invoke-static {v0, p2, p3}, Landroid/util/SeempLog;->record_sensor_rate(ILandroid/hardware/Sensor;I)I

    .line 218
    const/4 v0, 0x0

    if-eqz p1, :cond_94

    if-nez p2, :cond_c

    goto/16 :goto_94

    .line 223
    :cond_c
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 224
    const-string v1, "SensorManager"

    const-string v2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v0

    .line 227
    :cond_1b
    if-ltz p5, :cond_8b

    if-gez p3, :cond_20

    goto :goto_8b

    .line 231
    :cond_20
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_82

    .line 241
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 242
    :try_start_2d
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 243
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_79

    .line 244
    if-eqz p4, :cond_3e

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_40

    :cond_3e
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 246
    .local v3, "looper":Landroid/os/Looper;
    :goto_40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_5f

    .line 248
    :cond_57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_5f
    nop

    .line 249
    .local v4, "fullClassName":Ljava/lang/String;
    new-instance v5, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    invoke-direct {v5, p1, v3, p0, v4}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    move-object v2, v5

    .line 250
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v5

    if-nez v5, :cond_71

    .line 251
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 252
    monitor-exit v1

    return v0

    .line 254
    :cond_71
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 257
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v4    # "fullClassName":Ljava/lang/String;
    :cond_79
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 259
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_7f
    move-exception v0

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_2d .. :try_end_81} :catchall_7f

    throw v0

    .line 232
    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "register failed, the sensor listeners size has exceeded the maximum limit 128"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_8b
    :goto_8b
    const-string v1, "SensorManager"

    const-string/jumbo v2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v0

    .line 219
    :cond_94
    :goto_94
    const-string v1, "SensorManager"

    const-string/jumbo v2, "sensor or listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v0
.end method

.method public blacklist removeSensorDisableApp(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 193
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Landroid/hardware/SystemSensorManager;->nativeRemoveSensorDisableApp(JLjava/lang/String;)V

    .line 194
    return-void
.end method

.method protected greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 9
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 291
    if-eqz p2, :cond_79

    .line 293
    if-eqz p1, :cond_71

    .line 295
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    return v2

    .line 297
    :cond_d
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_68

    .line 303
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 304
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 305
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_5f

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 309
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_43
    nop

    .line 310
    .local v3, "fullClassName":Ljava/lang/String;
    new-instance v4, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v4, p1, v5, p0, v3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    move-object v1, v4

    .line 311
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    if-nez v4, :cond_57

    .line 312
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 313
    monitor-exit v0

    return v2

    .line 315
    :cond_57
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 318
    .end local v3    # "fullClassName":Ljava/lang/String;
    :cond_5f
    invoke-virtual {v1, p2, v2, v2}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 320
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_1a .. :try_end_67} :catchall_65

    throw v1

    .line 298
    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request failed, the trigger listeners size has exceeded the maximum limit 128"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 9
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 1094
    const/4 v0, -0x1

    .line 1095
    .local v0, "handle":I
    iget-object v1, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_b

    iget-object v1, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1096
    :cond_b
    iget-wide v1, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    iget v4, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    iget-object v5, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    iget-object v6, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/hardware/SystemSensorManager;->nativeSetOperationParameter(JII[F[I)I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public blacklist setSensorDisableApp(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Landroid/hardware/SystemSensorManager;->nativeSetSensorDisableApp(JLjava/lang/String;)V

    .line 188
    return-void
.end method

.method protected greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 548
    const-string v0, "SensorManager"

    const-string v1, "Removing dynamic sensor listerner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    return-void
.end method

.method protected greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 265
    const/16 v0, 0x17e

    invoke-static {v0, p2}, Landroid/util/SeempLog;->record_sensor(ILandroid/hardware/Sensor;)I

    .line 267
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 268
    return-void

    .line 271
    :cond_f
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 272
    :try_start_12
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 273
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v1, :cond_38

    .line 275
    if-nez p2, :cond_23

    .line 276
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v2

    .local v2, "result":Z
    goto :goto_28

    .line 278
    .end local v2    # "result":Z
    :cond_23
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v2

    .line 280
    .restart local v2    # "result":Z
    :goto_28
    if-eqz v2, :cond_38

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_38

    .line 281
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 285
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v2    # "result":Z
    :cond_38
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_3a

    throw v1
.end method
