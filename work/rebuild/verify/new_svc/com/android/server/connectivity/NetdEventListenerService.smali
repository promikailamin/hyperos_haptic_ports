.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Lcom/android/net/module/util/BaseNetdEventListener;
.source "NetdEventListenerService.java"


# static fields
.field public static final ALLOWED_CALLBACK_TYPES:[I

.field public static final TAG:Ljava/lang/String;

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400

.field static final WAKEUP_EVENT_PREFIX_DELIM:Ljava/lang/String; = ":"


# instance fields
.field public final mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mConnectTb:Lcom/android/internal/util/TokenBucket;

.field public mLastSnapshot:J

.field public mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

.field public final mNetworkMetrics:Landroid/util/SparseArray;

.field public final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

.field public final mWakeupEvents:Lcom/android/internal/util/RingBuffer;

.field public final mWakeupStats:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 64
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 122
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 160
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 5

    .line 164
    invoke-direct {p0}, Lcom/android/net/module/util/BaseNetdEventListener;-><init>()V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 96
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 102
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 106
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;Lcom/android/server/connectivity/NetdEventListenerService-IA;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    .line 128
    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/net/INetdEventCallback;

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 166
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 168
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static isValidCallerType(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 151
    :goto_2
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_10

    .line 152
    aget v2, v2, v1

    if-ne p0, v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public static projectSnapshotTime(J)J
    .registers 4

    const-wide/32 v0, 0x493e0

    .line 173
    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 5

    monitor-enter p0

    .line 133
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 134
    sget-object p2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid caller type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_20

    .line 135
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_20
    move-exception p1

    goto :goto_29

    .line 137
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    aput-object p2, v0, p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_20

    .line 138
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_20

    throw p1
.end method

.method public final addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V
    .registers 4

    .line 363
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 365
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    if-nez v1, :cond_1b

    .line 367
    new-instance v1, Landroid/net/metrics/WakeupStats;

    invoke-direct {v1, v0}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    .line 368
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_1b
    invoke-virtual {v1, p1}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    return-void
.end method

.method public final collectPendingMetricsSnapshot(JZ)V
    .registers 8

    if-nez p3, :cond_12

    .line 198
    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long p3, v0, v2

    if-gtz p3, :cond_12

    goto :goto_26

    .line 201
    :cond_12
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 202
    iget-object p3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 203
    invoke-static {p1, p2, p3}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object p1

    .line 204
    iget-object p2, p1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    :goto_26
    return-void

    .line 207
    :cond_27
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 374
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 375
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 376
    iget v3, v2, Landroid/net/metrics/ConnectStats;->eventCount:I

    if-nez v3, :cond_1a

    goto :goto_21

    .line 379
    :cond_1a
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_24
    move-exception p1

    goto :goto_6e

    :cond_26
    move v1, v0

    .line 381
    :goto_27
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 382
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 383
    iget v3, v2, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-nez v3, :cond_3e

    goto :goto_45

    .line 386
    :cond_3e
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 388
    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 389
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 391
    :cond_62
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 392
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_24

    .line 393
    monitor-exit p0

    return-void

    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_24

    throw p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 359
    const-string p0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .registers 10

    .line 177
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 178
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    invoke-virtual {v1, p3}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->getNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 179
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    goto :goto_1b

    :cond_19
    const-wide/16 v2, 0x0

    :goto_1b
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 180
    iget-wide v4, v0, Landroid/net/metrics/NetworkMetrics;->transports:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 182
    :goto_28
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    if-eqz v0, :cond_31

    if-eqz v1, :cond_30

    goto :goto_31

    :cond_30
    return-object v0

    .line 184
    :cond_31
    :goto_31
    new-instance p1, Landroid/net/metrics/NetworkMetrics;

    iget-object p2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {p1, p3, v2, v3, p2}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    .line 185
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public final getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .registers 4

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    .line 192
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object p0
.end method

.method public final hasWifiTransport(Landroid/net/Network;)Z
    .registers 2

    .line 282
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 p1, 0x1

    .line 283
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .registers 7

    monitor-enter p0

    .line 396
    :try_start_1
    const-string v0, "dns/connect events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 397
    :goto_8
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 398
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_20
    move-exception p1

    goto :goto_8b

    :cond_22
    move v1, v0

    .line 400
    :goto_23
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 401
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 403
    :cond_3b
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string/jumbo v1, "network statistics:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_4c
    if-ge v3, v2, :cond_56

    aget-object v4, v1, v3

    .line 406
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 408
    :cond_56
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v1, "packet wakeup events:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    .line 410
    :goto_62
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 411
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 413
    :cond_76
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/metrics/WakeupEvent;

    array-length v2, v1

    :goto_7f
    if-ge v0, v2, :cond_89

    aget-object v3, v1, v0

    .line 414
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 416
    :cond_89
    monitor-exit p0

    return-void

    :goto_8b
    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_20

    throw p1
.end method

.method public declared-synchronized listAsProtos()Ljava/util/List;
    .registers 5

    monitor-enter p0

    .line 422
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 423
    :goto_8
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 424
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/metrics/NetworkMetrics;

    iget-object v3, v3, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_24
    move-exception v0

    goto :goto_5f

    :cond_26
    move v2, v1

    .line 426
    :goto_27
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 427
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/metrics/NetworkMetrics;

    iget-object v3, v3, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 429
    :cond_43
    :goto_43
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5d

    .line 430
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/WakeupStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_24

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 432
    :cond_5d
    monitor-exit p0

    return-object v0

    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_24

    throw v0
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .registers 10

    monitor-enter p0

    move v0, p2

    move v1, p3

    move-object p2, p4

    move p3, p5

    .line 267
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    .line 268
    invoke-virtual {p0, p4, p5, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 p1, 0x0

    move v2, p1

    :goto_15
    if-ge v2, v1, :cond_2c

    aget-object p1, v0, v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1f

    if-eqz p1, :cond_29

    .line 273
    :try_start_1b
    invoke-interface/range {p1 .. p6}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_22
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_29

    :catchall_1f
    move-exception v0

    move-object p1, v0

    goto :goto_2e

    :catch_22
    move-exception v0

    move-object p1, v0

    .line 275
    :try_start_24
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_1f

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 279
    :cond_2c
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_1f

    throw p1
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 22

    monitor-enter p0

    .line 215
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 216
    invoke-virtual {p0, v7, v8, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v0

    move/from16 v3, p3

    move/from16 v1, p4

    invoke-virtual {v0, p2, v3, v1}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 218
    iget-object v10, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v11, v10

    const/4 v0, 0x0

    move v12, v0

    :goto_15
    if-ge v12, v11, :cond_38

    aget-object v0, v10, v12
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_29

    if-eqz v0, :cond_33

    move v1, p1

    move v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v9, p8

    .line 221
    :try_start_25
    invoke-interface/range {v0 .. v9}, Landroid/net/INetdEventCallback;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_2c
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_33

    :catchall_29
    move-exception v0

    move-object p1, v0

    goto :goto_3a

    :catch_2c
    move-exception v0

    move-object p1, v0

    .line 224
    :try_start_2e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_29

    :cond_33
    :goto_33
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p3

    goto :goto_15

    .line 228
    :cond_38
    monitor-exit p0

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_29

    throw p1
.end method

.method public declared-synchronized onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 9

    monitor-enter p0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz v3, :cond_17

    .line 238
    :try_start_b
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception p1

    goto :goto_1c

    :catch_11
    move-exception p1

    .line 240
    :try_start_12
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    :cond_17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 244
    :cond_1a
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_f

    throw p1
.end method

.method public declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    monitor-enter p0

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    if-eqz v3, :cond_17

    .line 254
    :try_start_b
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception p1

    goto :goto_1c

    :catch_11
    move-exception p1

    .line 256
    :try_start_12
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    :cond_17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 260
    :cond_1a
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_f

    throw p1
.end method

.method public declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 14

    monitor-enter p0

    .line 332
    :try_start_1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_32

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_32

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_32

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_12

    goto :goto_32

    .line 340
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 341
    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_30

    .line 342
    aget v3, p1, v2

    .line 343
    aget v4, p2, v2

    .line 344
    aget v5, p3, v2

    .line 345
    aget v6, p4, v2

    .line 346
    aget v7, p5, v2

    .line 347
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v3

    .line 348
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2e

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catchall_2e
    move-exception p1

    goto :goto_3b

    .line 350
    :cond_30
    monitor-exit p0

    return-void

    .line 336
    :cond_32
    :goto_32
    :try_start_32
    sget-object p1, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string p2, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2e

    .line 337
    monitor-exit p0

    return-void

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2e

    throw p1
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15

    monitor-enter p0

    .line 289
    :try_start_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 290
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_90

    const/4 p1, 0x0

    .line 294
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 295
    invoke-static {v1, v2}, Landroid/net/Network;->fromNetworkHandle(J)Landroid/net/Network;

    move-result-object p1

    .line 297
    new-instance v1, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v1}, Landroid/net/metrics/WakeupEvent;-><init>()V

    const/4 v2, 0x1

    .line 298
    aget-object v0, v0, v2

    iput-object v0, v1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 299
    iput p2, v1, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 300
    iput p3, v1, Landroid/net/metrics/WakeupEvent;->ethertype:I

    .line 301
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->hasWifiTransport(Landroid/net/Network;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 303
    sget-object p2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Empty mac address on WiFi transport, network: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :catchall_47
    move-exception p1

    goto :goto_ac

    :cond_49
    :goto_49
    const/4 p2, 0x0

    .line 305
    iput-object p2, v1, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    goto :goto_53

    .line 307
    :cond_4d
    invoke-static {p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p2

    iput-object p2, v1, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 309
    :goto_53
    iput-object p6, v1, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    .line 310
    iput-object p7, v1, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    .line 311
    iput p4, v1, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    .line 312
    iput p8, v1, Landroid/net/metrics/WakeupEvent;->srcPort:I

    .line 313
    iput p9, v1, Landroid/net/metrics/WakeupEvent;->dstPort:I

    const-wide/16 p2, 0x0

    cmp-long p2, p10, p2

    if-lez p2, :cond_6a

    const-wide/32 p2, 0xf4240

    .line 315
    div-long/2addr p10, p2

    iput-wide p10, v1, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    goto :goto_70

    .line 317
    :cond_6a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, v1, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 319
    :goto_70
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 321
    const-class p2, Landroid/os/BatteryStatsInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/BatteryStatsInternal;

    if-eqz p2, :cond_8e

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide p5, v1, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    add-long/2addr p3, p5

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p3, p5

    .line 325
    iget p5, v1, Landroid/net/metrics/WakeupEvent;->uid:I

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/os/BatteryStatsInternal;->noteCpuWakingNetworkPacket(Landroid/net/Network;JI)V
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_47

    .line 327
    :cond_8e
    monitor-exit p0

    return-void

    .line 291
    :cond_90
    :try_start_90
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Prefix "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " required in format <nethandle>:<interface>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 327
    :goto_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_90 .. :try_end_ad} :catchall_47

    throw p1
.end method

.method public declared-synchronized removeNetdEventCallback(I)Z
    .registers 5

    monitor-enter p0

    .line 142
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 143
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_20

    .line 144
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_20
    move-exception p1

    goto :goto_2a

    .line 146
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_20

    .line 147
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_20

    throw p1
.end method
