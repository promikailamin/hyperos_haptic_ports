.class public Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "AudioSystemAdapter.java"

# interfaces
.implements Landroid/media/AudioSystem$RoutingUpdateCallback;
.implements Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;,
        Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG_CACHE:Z = false

.field private static final ENABLE_GETDEVICES_STATS:Z = false

.field private static final METHOD_GETDEVICESFORATTRIBUTES:I = 0x0

.field private static final NB_MEASUREMENTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioSystemAdapter"

.field private static final USE_CACHE_FOR_GETDEVICES:Z = true

.field private static sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

.field private static final sRoutingListenerLock:Ljava/lang/Object;

.field private static sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

.field private static sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

.field private static final sVolRangeInitReqListenerLock:Ljava/lang/Object;


# instance fields
.field private mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/util/Pair<",
            "Landroid/media/AudioAttributes;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMethodCacheHit:[I

.field private mMethodCallCounter:[I

.field private mMethodNames:[Ljava/lang/String;

.field private mMethodTimeNs:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "getDevicesForAttributes"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodNames:[Ljava/lang/String;

    return-void
.end method

.method private static attrDeviceToDebugString(Landroid/media/AudioAttributes;Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .param p0, "attr"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 231
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " attrUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    invoke-static {p1}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->deviceSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    return-object v0
.end method

.method static final declared-synchronized getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .registers 4

    const-class v0, Lcom/android/server/audio/AudioSystemAdapter;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    if-nez v1, :cond_2a

    .line 139
    new-instance v1, Lcom/android/server/audio/AudioSystemAdapter;

    invoke-direct {v1}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    sput-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 140
    invoke-static {v1}, Landroid/media/AudioSystem;->setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V

    .line 141
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {v1}, Landroid/media/AudioSystem;->setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V

    .line 143
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 144
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    .line 152
    :cond_2a
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    monitor-exit v0

    return-object v1

    .line 137
    :catchall_2e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDevicesForAttributesImpl(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .registers 10
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "forVolume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/AudioAttributes;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 190
    :try_start_c
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 191
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceAttributes;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_57

    .line 194
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v5

    move-object v2, v5

    .line 195
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_50

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 196
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    if-nez v3, :cond_50

    .line 197
    const-string v3, "AudioSystemAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to get devices for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v1

    return-object v2

    .line 201
    :cond_50
    iget-object v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v1

    return-object v2

    .line 209
    :cond_57
    iget-object v5, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    aget v6, v5, v4

    add-int/2addr v6, v3

    aput v6, v5, v4

    .line 222
    monitor-exit v1

    .line 223
    return-object v2

    .line 222
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceAttributes;>;"
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_c .. :try_end_62} :catchall_60

    throw v2
.end method

.method private invalidateRoutingCache()V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_f

    .line 160
    monitor-enter v0

    .line 161
    :try_start_5
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 162
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 164
    :cond_f
    :goto_f
    return-void
.end method

.method static setRoutingListener(Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 103
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static setVolRangeInitReqListener(Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 127
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public clearDevicesRoleForCapturePreset(II)I
    .registers 4
    .param p1, "capturePreset"    # I
    .param p2, "role"    # I

    .line 330
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 331
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForCapturePreset(II)I

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 491
    const-string v0, "\nAudioSystemAdapter:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    const-string v0, " mDevicesForAttrCache:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_c4

    .line 495
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 496
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Landroid/media/AudioAttributes;Ljava/lang/Boolean;>;Ljava/util/ArrayList<Landroid/media/AudioDeviceAttributes;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioAttributes;

    .line 498
    .local v2, "attributes":Landroid/media/AudioAttributes;
    :try_start_2c
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v3

    .line 499
    .local v3, "stream":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " forVolume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    .line 503
    .local v5, "devAttr":Landroid/media/AudioDeviceAttributes;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_a2} :catch_a4

    .line 504
    .end local v5    # "devAttr":Landroid/media/AudioDeviceAttributes;
    goto :goto_80

    .line 509
    .end local v3    # "stream":I
    :cond_a3
    goto :goto_c2

    .line 505
    :catch_a4
    move-exception v3

    .line 507
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t dump failed for attributes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    const-string v4, "AudioSystemAdapter"

    const-string v5, "dump failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Landroid/media/AudioAttributes;Ljava/lang/Boolean;>;Ljava/util/ArrayList<Landroid/media/AudioDeviceAttributes;>;>;"
    .end local v2    # "attributes":Landroid/media/AudioAttributes;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c2
    goto/16 :goto_16

    .line 515
    :cond_c4
    return-void
.end method

.method public getDeviceConnectionState(ILjava/lang/String;)I
    .registers 4
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 255
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "forVolume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributesImpl(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getForceUse(I)I
    .registers 3
    .param p1, "usage"    # I

    .line 427
    invoke-static {p1}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    return v0
.end method

.method public handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "codecFormat"    # I

    .line 268
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 269
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isMicrophoneMuted()Z
    .registers 2

    .line 349
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isStreamActive(II)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "inPastMs"    # I

    .line 376
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isStreamActiveRemotely(II)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "inPastMs"    # I

    .line 386
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    return v0
.end method

.method public muteMicrophone(Z)I
    .registers 3
    .param p1, "on"    # Z

    .line 361
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    move-result v0

    return v0
.end method

.method public onRoutingUpdated()V
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 90
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_6
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 92
    .local v1, "listener":Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    .line 93
    if-eqz v1, :cond_e

    .line 94
    invoke-interface {v1}, Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;->onRoutingUpdatedFromNative()V

    .line 96
    :cond_e
    return-void

    .line 92
    .end local v1    # "listener":Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onVolumeRangeInitializationRequested()V
    .registers 3

    .line 114
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 116
    .local v1, "listener":Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 117
    if-eqz v1, :cond_b

    .line 118
    invoke-interface {v1}, Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;->onVolumeRangeInitRequestFromNative()V

    .line 120
    :cond_b
    return-void

    .line 116
    .end local v1    # "listener":Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .registers 4
    .param p2, "register"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation

    .line 437
    .local p1, "mixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 438
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public removeDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 5
    .param p1, "capturePreset"    # I
    .param p2, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 319
    .local p3, "devicesToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 320
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public removeDevicesRoleForStrategy(II)I
    .registers 4
    .param p1, "strategy"    # I
    .param p2, "role"    # I

    .line 293
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 294
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(II)I

    move-result v0

    return v0
.end method

.method public removeUidDeviceAffinities(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 459
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 460
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result v0

    return v0
.end method

.method public removeUserIdDeviceAffinities(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 482
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 483
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUserIdDeviceAffinities(I)I

    move-result v0

    return v0
.end method

.method public setAllowedCapturePolicy(II)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "flags"    # I

    .line 407
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result v0

    return v0
.end method

.method public setCurrentImeUid(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 369
    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    move-result v0

    return v0
.end method

.method public setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I
    .registers 5
    .param p1, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "state"    # I
    .param p3, "codecFormat"    # I

    .line 244
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 245
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    move-result v0

    return v0
.end method

.method public setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 5
    .param p1, "capturePreset"    # I
    .param p2, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 306
    .local p3, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 307
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public setDevicesRoleForStrategy(IILjava/util/List;)I
    .registers 5
    .param p1, "strategy"    # I
    .param p2, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 282
    .local p3, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 283
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public setForceUse(II)I
    .registers 4
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .line 417
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 418
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result v0

    return v0
.end method

.method public setParameters(Ljava/lang/String;)I
    .registers 3
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 340
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPhoneState(II)I
    .registers 4
    .param p1, "state"    # I
    .param p2, "uid"    # I

    .line 396
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 397
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setPhoneState(II)I

    move-result v0

    return v0
.end method

.method public setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "types"    # [I
    .param p3, "addresses"    # [Ljava/lang/String;

    .line 449
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 450
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "types"    # [I
    .param p3, "addresses"    # [Ljava/lang/String;

    .line 472
    invoke-direct {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 473
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
