.class public Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "AudioSystemAdapter.java"

# interfaces
.implements Landroid/media/AudioSystem$RoutingUpdateCallback;
.implements Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# static fields
.field public static sAudioProductStrategies:Ljava/util/List;

.field public static final sAudioProductStrategiesLock:Ljava/lang/Object;

.field public static sAudioProductStrategiesWithoutInternal:Ljava/util/List;

.field public static final sDeviceCacheLock:Ljava/lang/Object;

.field public static sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

.field public static final sRoutingListenerLock:Ljava/lang/Object;

.field public static sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

.field public static sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

.field public static final sVolRangeInitReqListenerLock:Ljava/lang/Object;


# instance fields
.field public mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

.field public mDevicesForAttributesCacheClearTimeMs:J

.field public final mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

.field public mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

.field public mMethodCacheHit:[I

.field public mMethodNames:[Ljava/lang/String;

.field public final mRegisteredAttributesMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategiesLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "getDevicesForAttributes"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodNames:[Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static final declared-synchronized getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .registers 5

    const-class v0, Lcom/android/server/audio/AudioSystemAdapter;

    monitor-enter v0

    .line 273
    :try_start_3
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    if-nez v1, :cond_34

    .line 274
    new-instance v1, Lcom/android/server/audio/AudioSystemAdapter;

    invoke-direct {v1}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    sput-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 275
    invoke-static {v1}, Landroid/media/AudioSystem;->setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V

    .line 276
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {v1}, Landroid/media/AudioSystem;->setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V

    .line 278
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_32

    .line 279
    :try_start_19
    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 280
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v3, v2, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 281
    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    .line 282
    monitor-exit v1

    goto :goto_34

    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v2

    :catchall_32
    move-exception v1

    goto :goto_38

    .line 289
    :cond_34
    :goto_34
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_32

    monitor-exit v0

    return-object v1

    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_32

    throw v1
.end method

.method public static setRoutingListener(Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;)V
    .registers 2

    .line 168
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 170
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setVolRangeInitReqListener(Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;)V
    .registers 2

    .line 262
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 264
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method


# virtual methods
.method public addDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 4

    .line 478
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 479
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->addDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;ZLandroid/media/IDevicesForAttributesCallback;)V
    .registers 9

    .line 190
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 192
    :try_start_c
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p3}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_30

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p3}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_3e

    .line 199
    :cond_30
    :goto_30
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_39

    .line 200
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_2e

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    return-void

    .line 202
    :goto_3e
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2e

    throw p0
.end method

.method public clearDevicesRoleForCapturePreset(II)I
    .registers 3

    .line 489
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 490
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public clearDevicesRoleForStrategy(II)I
    .registers 3

    .line 439
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 440
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForStrategy(II)I

    move-result p0

    return p0
.end method

.method public clearPreferredMixerAttributes(Landroid/media/AudioAttributes;II)I
    .registers 4

    .line 819
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->clearPreferredMixerAttributes(Landroid/media/AudioAttributes;II)I

    move-result p0

    return p0
.end method

.method public clearRoutingCache()V
    .registers 1

    .line 180
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10

    .line 867
    const-string v0, "\nAudioSystemAdapter:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    const-string v0, "MM-dd HH:mm:ss:SSS"

    .line 869
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 870
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 871
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 872
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 873
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " last cache clear time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 874
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 873
    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const-string v0, " mDevicesForAttrCache:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_ec

    .line 878
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4b
    :goto_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 879
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioAttributes;
    :try_end_61
    .catchall {:try_start_1c .. :try_end_61} :catchall_cc

    .line 881
    :try_start_61
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v3

    .line 882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " forVolume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_ad
    if-ge v4, v3, :cond_4b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_cb} :catch_ce
    .catchall {:try_start_61 .. :try_end_cb} :catchall_cc

    goto :goto_ad

    :catchall_cc
    move-exception p0

    goto :goto_ee

    :catch_ce
    move-exception v0

    .line 890
    :try_start_cf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t dump failed for attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string v2, "AudioSystemAdapter"

    const-string v3, "dump failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .line 895
    :cond_ec
    monitor-exit v1

    return-void

    :goto_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_cf .. :try_end_ef} :catchall_cc

    throw p0
.end method

.method public final getAllProductStrategies()Ljava/util/List;
    .registers 5

    .line 776
    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategiesLock:Ljava/lang/Object;

    monitor-enter p0

    .line 777
    :try_start_3
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategies:Ljava/util/List;

    if-nez v0, :cond_38

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->native_list_audio_product_strategies(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_32

    .line 781
    const-string v0, "AudioSystemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while getting audio product strategies "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-static {v1}, Landroid/media/AudioSystem;->audioSystemErrorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_30
    move-exception v0

    goto :goto_3c

    .line 785
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategies:Ljava/util/List;

    .line 787
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_30

    .line 789
    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategies:Ljava/util/List;

    return-object p0

    .line 787
    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_30

    throw v0
.end method

.method public getAudioProductStrategies(Z)Ljava/util/List;
    .registers 3

    if-eqz p1, :cond_1c

    .line 759
    sget-object p1, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategiesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 760
    :try_start_5
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategiesWithoutInternal:Ljava/util/List;

    if-nez v0, :cond_16

    .line 762
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->getAllProductStrategies()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->filterNonInternalStrategies(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategiesWithoutInternal:Ljava/util/List;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_1a

    .line 764
    :cond_16
    :goto_16
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_14

    .line 765
    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sAudioProductStrategiesWithoutInternal:Ljava/util/List;

    return-object p0

    .line 764
    :goto_1a
    :try_start_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw p0

    .line 767
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->getAllProductStrategies()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceConnectionState(ILjava/lang/String;)I
    .registers 3

    .line 388
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .registers 3

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributesImpl(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getDevicesForAttributesImpl(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .registers 6

    .line 329
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_c
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_23

    .line 333
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 334
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    monitor-exit v1

    return-object p1

    :catchall_21
    move-exception p0

    goto :goto_2e

    .line 342
    :cond_23
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    const/4 p1, 0x0

    aget p2, p0, p1

    add-int/lit8 p2, p2, 0x1

    aput p2, p0, p1

    .line 355
    monitor-exit v1

    return-object v2

    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_21

    throw p0
.end method

.method public getRegisteredPolicyMixes()Ljava/util/List;
    .registers 4

    .line 667
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    invoke-static {p0}, Landroid/media/AudioSystem;->getRegisteredPolicyMixes(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_10

    .line 673
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 670
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot fetch registered policy mixes. Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 401
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 402
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final invalidateRoutingCache()V
    .registers 4

    .line 296
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1c

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 300
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 302
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    .line 304
    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public isMicrophoneMuted()Z
    .registers 1

    .line 509
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result p0

    return p0
.end method

.method public isStreamActive(II)Z
    .registers 3

    .line 536
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p0

    return p0
.end method

.method public isStreamActiveRemotely(II)Z
    .registers 3

    .line 546
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p0

    return p0
.end method

.method public muteMicrophone(Z)I
    .registers 2

    .line 521
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    move-result p0

    return p0
.end method

.method public onRoutingUpdated()V
    .registers 9

    .line 125
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 127
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_6
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 129
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_8d

    if-eqz v1, :cond_e

    .line 131
    invoke-interface {v1}, Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;->onRoutingUpdatedFromNative()V

    .line 134
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 135
    :try_start_11
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_84

    .line 138
    iget-object v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    .line 139
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/IDevicesForAttributesCallback;

    .line 140
    iget-object v4, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    .line 141
    invoke-interface {v3}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_7c

    .line 147
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_34
    :cond_34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 148
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/media/AudioAttributes;

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    .line 149
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 150
    iget-object v7, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    iget-object v7, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/audio/AudioSystemAdapter;->sameDeviceList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7
    :try_end_64
    .catchall {:try_start_11 .. :try_end_64} :catchall_67

    if-nez v7, :cond_34

    goto :goto_69

    :catchall_67
    move-exception p0

    goto :goto_8b

    .line 153
    :cond_69
    :goto_69
    :try_start_69
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/media/AudioAttributes;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 154
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 153
    invoke-interface {v3, v7, v5, v6}, Landroid/media/IDevicesForAttributesCallback;->onDevicesForAttributesChanged(Landroid/media/AudioAttributes;ZLjava/util/List;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_78} :catch_34
    .catchall {:try_start_69 .. :try_end_78} :catchall_67

    goto :goto_34

    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 144
    :cond_7c
    :try_start_7c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attribute list must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_84
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 160
    monitor-exit v1

    return-void

    :goto_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_67

    throw p0

    :catchall_8d
    move-exception p0

    .line 129
    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public onVolumeRangeInitializationRequested()V
    .registers 2

    .line 249
    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter p0

    .line 250
    :try_start_3
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 251
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v0, :cond_b

    .line 253
    invoke-interface {v0}, Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;->onVolumeRangeInitRequestFromNative()V

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    .line 251
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public registerAudioVolumeGroupCallback(Landroid/media/INativeAudioVolumeGroupCallback;)I
    .registers 2

    .line 847
    invoke-static {p1}, Landroid/media/AudioSystem;->registerAudioVolumeGroupCallback(Landroid/media/INativeAudioVolumeGroupCallback;)I

    move-result p0

    return p0
.end method

.method public registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .registers 3

    .line 659
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 660
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result p0

    return p0
.end method

.method public removeDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 4

    .line 465
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 466
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public removeDevicesRoleForStrategy(IILjava/util/List;)I
    .registers 4

    .line 428
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 429
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 216
    const-string p0, "AudioSystemAdapter"

    const-string/jumbo p1, "listener to be removed is not found."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    goto :goto_2b

    .line 219
    :cond_1b
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 221
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_19

    throw p0
.end method

.method public removeUidDeviceAffinities(I)I
    .registers 2

    .line 709
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 710
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result p0

    return p0
.end method

.method public removeUserIdDeviceAffinities(I)I
    .registers 2

    .line 732
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 733
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUserIdDeviceAffinities(I)I

    move-result p0

    return p0
.end method

.method public final sameDeviceList(Ljava/util/List;Ljava/util/List;)Z
    .registers 5

    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 231
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 235
    :cond_18
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioDeviceAttributes;

    .line 236
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    return v1

    :cond_2f
    const/4 p0, 0x1

    return p0
.end method

.method public setAllowedCapturePolicy(II)I
    .registers 3

    .line 614
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result p0

    return p0
.end method

.method public setCurrentImeUid(I)I
    .registers 2

    .line 529
    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    move-result p0

    return p0
.end method

.method public setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I
    .registers 5

    .line 648
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I
    .registers 5

    .line 377
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 378
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p0

    return p0
.end method

.method public setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 4

    .line 452
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 453
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setDevicesRoleForStrategy(IILjava/util/List;)I
    .registers 4

    .line 415
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 416
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setForceUse(II)I
    .registers 3

    .line 624
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 625
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result p0

    return p0
.end method

.method public setMasterMute(Z)I
    .registers 2

    .line 828
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    move-result p0

    return p0
.end method

.method public setParameters(Ljava/lang/String;)I
    .registers 2

    .line 499
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 500
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setPhoneState(II)I
    .registers 3

    .line 603
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 604
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setPhoneState(II)I

    move-result p0

    return p0
.end method

.method public setPreferredMixerAttributes(Landroid/media/AudioAttributes;IILandroid/media/AudioMixerAttributes;)I
    .registers 5

    .line 807
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setPreferredMixerAttributes(Landroid/media/AudioAttributes;IILandroid/media/AudioMixerAttributes;)I

    move-result p0

    return p0
.end method

.method public setStreamVolumeIndexAS(IIZI)I
    .registers 5

    .line 557
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(IIZI)I

    move-result p0

    return p0
.end method

.method public setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .registers 4

    .line 699
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 700
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
    .registers 4

    .line 722
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 723
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IZI)I
    .registers 5

    .line 563
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IZI)I

    move-result p0

    return p0
.end method

.method public updateMixingRules([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;)I
    .registers 3

    .line 687
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 688
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->updatePolicyMixes([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;)I

    move-result p0

    return p0
.end method
