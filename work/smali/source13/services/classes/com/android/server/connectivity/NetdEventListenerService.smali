.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;,
        Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    }
.end annotation


# static fields
.field private static final ALLOWED_CALLBACK_TYPES:[I

.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final DBG:Z = false

.field private static final MEMORY_LIMIT_FOR_THE_COMPLETE_LOGS:D = 1.6

.field private static final MEMORY_LIMIT_FOR_THE_LOGS:D = 2.0

.field private static final METRICS_SNAPSHOT_BUFFER_SIZE:I = 0x30

.field private static final METRICS_SNAPSHOT_SPAN_MS:J = 0x493e0L

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400

.field static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"


# instance fields
.field final mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;

.field private mLastSnapshot:J

.field private mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

.field private final mNetworkMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 5
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .line 173
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 105
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 111
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 115
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    .line 137
    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/net/INetdEventCallback;

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 175
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 177
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 179
    return-void
.end method

.method private addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/net/metrics/WakeupEvent;

    .line 414
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 415
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 416
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    .line 417
    .local v1, "stats":Landroid/net/metrics/WakeupStats;
    if-nez v1, :cond_1c

    .line 418
    new-instance v2, Landroid/net/metrics/WakeupStats;

    invoke-direct {v2, v0}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 419
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1c
    invoke-virtual {v1, p1}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 422
    return-void
.end method

.method private checkConnectStatsNeedToClean()V
    .registers 14

    .line 205
    const-wide/16 v0, 0x0

    .line 206
    .local v0, "statsMemoryUsage":D
    const/4 v2, 0x0

    .line 207
    .local v2, "normalRecordNum":I
    const/4 v3, 0x0

    .line 208
    .local v3, "recordNum":I
    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_c
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    if-ltz v4, :cond_52

    .line 209
    iget-object v9, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/metrics/NetworkMetrics;

    iget-object v9, v9, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 211
    .local v9, "stats":Landroid/net/metrics/ConnectStats;
    iget-object v10, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    sub-int/2addr v10, v5

    if-ne v4, v10, :cond_25

    move v8, v5

    :cond_25
    invoke-virtual {v9, v8}, Landroid/net/metrics/ConnectStats;->CalculateMemoryUsage(Z)D

    move-result-wide v10

    add-double/2addr v0, v10

    .line 213
    if-nez v2, :cond_3f

    const-wide v10, 0x3ff999999999999aL    # 1.6

    .line 214
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-ltz v8, :cond_3f

    .line 215
    iget-object v8, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v4

    move v2, v8

    .line 218
    :cond_3f
    if-nez v3, :cond_4f

    .line 219
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-ltz v6, :cond_4f

    .line 220
    iget-object v6, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v4

    move v3, v6

    .line 208
    .end local v9    # "stats":Landroid/net/metrics/ConnectStats;
    :cond_4f
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 223
    .end local v4    # "i":I
    :cond_52
    sget-object v4, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "statsMemoryUsage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v11, v8

    const-string v12, "%.4f"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-ne v9, v5, :cond_d1

    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " > "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Mb mNetworkMetrics.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 229
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " recordNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "normalRecordNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0, v3, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->cleanConnectStats(II)V

    .line 234
    :cond_d1
    return-void
.end method

.method private cleanConnectStats(II)V
    .registers 7
    .param p1, "recordNum"    # I
    .param p2, "normalRecordNum"    # I

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 239
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 240
    .local v1, "stats":Landroid/net/metrics/ConnectStats;
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_24

    .line 241
    invoke-virtual {v1}, Landroid/net/metrics/ConnectStats;->clearDnsRecords()V

    .line 242
    invoke-virtual {v1}, Landroid/net/metrics/ConnectStats;->clearTcpConnectRecords()V

    .line 247
    :cond_24
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, p1

    if-le v0, v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 248
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, p2

    if-ge v0, v2, :cond_3f

    .line 249
    invoke-virtual {v1}, Landroid/net/metrics/ConnectStats;->isResetRecords()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 250
    invoke-virtual {v1}, Landroid/net/metrics/ConnectStats;->resetRecords()V

    .line 238
    .end local v1    # "stats":Landroid/net/metrics/ConnectStats;
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    .end local v0    # "i":I
    :cond_42
    return-void
.end method

.method private collectPendingMetricsSnapshot(JZ)V
    .registers 8
    .param p1, "timeMs"    # J
    .param p3, "forceCollect"    # Z

    .line 264
    if-nez p3, :cond_12

    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 265
    return-void

    .line 267
    :cond_12
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 268
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 269
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    .line 270
    .local v0, "snapshot":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 271
    return-void

    .line 273
    :cond_27
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method private getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .registers 11
    .param p1, "timeMs"    # J
    .param p3, "netId"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 187
    .local v0, "metrics":Landroid/net/metrics/NetworkMetrics;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    invoke-virtual {v1, p3}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->getNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 188
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    goto :goto_1b

    :cond_19
    const-wide/16 v2, 0x0

    .line 189
    .local v2, "transports":J
    :goto_1b
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    iget-wide v4, v0, Landroid/net/metrics/NetworkMetrics;->transports:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    .line 191
    .local v4, "forceCollect":Z
    :goto_28
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    .line 192
    if-eqz v0, :cond_2f

    if-eqz v4, :cond_3f

    .line 194
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->checkConnectStatsNeedToClean()V

    .line 196
    new-instance v5, Landroid/net/metrics/NetworkMetrics;

    iget-object v6, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {v5, p3, v2, v3, v6}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    move-object v0, v5

    .line 197
    iget-object v5, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v5, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    :cond_3f
    return-object v0
.end method

.method private getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .registers 4

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    .line 258
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object v0
.end method

.method private static isValidCallerType(I)Z
    .registers 4
    .param p0, "callerType"    # I

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_f

    .line 161
    aget v1, v1, v0

    if-ne p0, v1, :cond_c

    .line 162
    const/4 v1, 0x1

    return v1

    .line 160
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static projectSnapshotTime(J)J
    .registers 6
    .param p0, "timeMs"    # J

    .line 182
    const-wide/32 v0, 0x493e0

    div-long v2, p0, v0

    mul-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 6
    .param p1, "callerType"    # I
    .param p2, "callback"    # Landroid/net/INetdEventCallback;

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

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_29

    .line 144
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 146
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    aput-object p2, v0, p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_29

    .line 147
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 141
    .end local p1    # "callerType":I
    .end local p2    # "callback":Landroid/net/INetdEventCallback;
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    monitor-enter p0

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 426
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 427
    .local v1, "stats":Landroid/net/metrics/ConnectStats;
    iget v2, v1, Landroid/net/metrics/ConnectStats;->eventCount:I

    if-nez v2, :cond_19

    .line 428
    goto :goto_20

    .line 430
    :cond_19
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v1    # "stats":Landroid/net/metrics/ConnectStats;
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 432
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_24
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 433
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 434
    .local v1, "ev":Landroid/net/metrics/DnsEvent;
    iget v2, v1, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-nez v2, :cond_3b

    .line 435
    goto :goto_42

    .line 437
    :cond_3b
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v1    # "ev":Landroid/net/metrics/DnsEvent;
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 439
    .end local v0    # "i":I
    :cond_45
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_46
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 440
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 442
    .end local v0    # "i":I
    :cond_60
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 443
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_6a
    .catchall {:try_start_2 .. :try_end_6a} :catchall_6c

    .line 444
    monitor-exit p0

    return-void

    .line 424
    .end local p1    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentInfoByNetId(I)Ljava/lang/String;
    .registers 9
    .param p1, "netId"    # I

    monitor-enter p0

    .line 541
    :try_start_1
    const-string v0, ""

    .line 542
    .local v0, "temp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_c7

    .line 543
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget v2, v2, Landroid/net/metrics/NetworkMetrics;->netId:I

    if-ne v2, p1, :cond_c3

    .line 545
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 546
    .local v2, "con":Landroid/net/metrics/ConnectStats;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/net/metrics/ConnectStats;->eventCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/net/metrics/ConnectStats;->connectCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/metrics/ConnectStats;->latencyCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/metrics/ConnectStats;->latencySum:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/metrics/ConnectStats;->tcpLossSum:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/metrics/ConnectStats;->tcpSendSum:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/metrics/ConnectStats;->tcpRttSum:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/metrics/ConnectStats;->tcpCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 549
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/metrics/NetworkMetrics;

    iget-object v3, v3, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 550
    .local v3, "dns":Landroid/net/metrics/DnsEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/metrics/DnsEvent;->successCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Landroid/net/metrics/DnsEvent;->latencySum:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_c1
    .catchall {:try_start_1 .. :try_end_c1} :catchall_c9

    move-object v0, v4

    .line 551
    goto :goto_c7

    .line 542
    .end local v2    # "con":Landroid/net/metrics/ConnectStats;
    .end local v3    # "dns":Landroid/net/metrics/DnsEvent;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_c3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 554
    .end local v1    # "i":I
    :cond_c7
    :goto_c7
    monitor-exit p0

    return-object v0

    .line 540
    .end local v0    # "temp":Ljava/lang/String;
    .end local p1    # "netId":I
    :catchall_c9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 410
    const-string v0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 447
    :try_start_1
    const-string v0, "dns/connect events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 449
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 451
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 452
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 454
    .end local v0    # "i":I
    :cond_38
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    const-string/jumbo v0, "network statistics:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_4a
    if-ge v3, v1, :cond_54

    aget-object v4, v0, v3

    .line 457
    .local v4, "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 456
    .end local v4    # "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 459
    :cond_54
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const-string/jumbo v0, "packet wakeup events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_60
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 462
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 464
    .end local v0    # "i":I
    :cond_74
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/metrics/WakeupEvent;

    array-length v1, v0

    :goto_7d
    if-ge v2, v1, :cond_87

    aget-object v3, v0, v2

    .line 465
    .local v3, "wakeup":Landroid/net/metrics/WakeupEvent;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_1 .. :try_end_84} :catchall_89

    .line 464
    .end local v3    # "wakeup":Landroid/net/metrics/WakeupEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 467
    :cond_87
    monitor-exit p0

    return-void

    .line 446
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listAsProtos()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 473
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 475
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 477
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_24
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 478
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 480
    .end local v1    # "i":I
    :cond_40
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_41
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 481
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/WakeupStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5d

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 483
    .end local v1    # "i":I
    :cond_5b
    monitor-exit p0

    return-object v0

    .line 472
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .registers 26
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    .line 333
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 335
    .local v2, "timestamp":J
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    move-object v12, v4

    .line 336
    .local v12, "metrics":Landroid/net/metrics/NetworkMetrics;
    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 339
    new-instance v16, Landroid/net/metrics/MiuiTcpRecordParams;

    move-object/from16 v4, v16

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide v10, v2

    invoke-direct/range {v4 .. v11}, Landroid/net/metrics/MiuiTcpRecordParams;-><init>(IILjava/lang/String;IIJ)V

    move-object/from16 v10, v16

    .line 341
    .local v10, "miuiTcpParam":Landroid/net/metrics/MiuiTcpRecordParams;
    invoke-virtual {v12, v0, v10}, Landroid/net/metrics/NetworkMetrics;->addMiuiConnectResult(ILandroid/net/metrics/MiuiTcpRecordParams;)V

    .line 344
    iget-object v11, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v9, v11

    const/4 v4, 0x0

    move v7, v4

    :goto_33
    if-ge v7, v9, :cond_55

    aget-object v4, v11, v7

    move-object/from16 v16, v4

    .line 345
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_4c

    .line 346
    move-object/from16 v4, v16

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v17, v7

    move-wide v7, v2

    move/from16 v18, v9

    move/from16 v9, p6

    invoke-interface/range {v4 .. v9}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_57

    goto :goto_50

    .line 345
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_4c
    move/from16 v17, v7

    move/from16 v18, v9

    .line 344
    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    :goto_50
    add-int/lit8 v7, v17, 0x1

    move/from16 v9, v18

    goto :goto_33

    .line 349
    :cond_55
    monitor-exit p0

    return-void

    .line 332
    .end local v2    # "timestamp":J
    .end local v10    # "miuiTcpParam":Landroid/net/metrics/MiuiTcpRecordParams;
    .end local v12    # "metrics":Landroid/net/metrics/NetworkMetrics;
    .end local p1    # "netId":I
    .end local p2    # "error":I
    .end local p3    # "latencyMs":I
    .end local p4    # "ipAddr":Ljava/lang/String;
    .end local p5    # "port":I
    .end local p6    # "uid":I
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 29
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    .line 282
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v14, v2

    .line 284
    .local v14, "timestamp":J
    invoke-direct {v1, v14, v15, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v2

    move-object v3, v2

    .line 285
    .local v3, "metrics":Landroid/net/metrics/NetworkMetrics;
    move/from16 v2, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual {v3, v2, v12, v13}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 288
    new-instance v16, Landroid/net/metrics/MiuiDnsRecordParams;

    move-object/from16 v4, v16

    move/from16 v5, p4

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p7

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move/from16 v11, p8

    move-wide v12, v14

    invoke-direct/range {v4 .. v13}, Landroid/net/metrics/MiuiDnsRecordParams;-><init>(IIII[Ljava/lang/String;Ljava/lang/String;IJ)V

    move-object/from16 v12, v16

    .line 291
    .local v12, "miuiDnsParam":Landroid/net/metrics/MiuiDnsRecordParams;
    invoke-virtual {v3, v0, v12}, Landroid/net/metrics/NetworkMetrics;->addMiuiDNSResult(ILandroid/net/metrics/MiuiDnsRecordParams;)V

    .line 294
    iget-object v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v11, v13

    const/4 v4, 0x0

    move v9, v4

    :goto_38
    if-ge v9, v11, :cond_6a

    aget-object v4, v13, v9

    move-object/from16 v16, v4

    .line 295
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_5b

    .line 296
    move-object/from16 v2, v16

    move-object/from16 v17, v3

    .end local v3    # "metrics":Landroid/net/metrics/NetworkMetrics;
    .local v17, "metrics":Landroid/net/metrics/NetworkMetrics;
    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v18, v9

    move-wide v9, v14

    move/from16 v19, v11

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Landroid/net/INetdEventCallback;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_6c

    goto :goto_61

    .line 295
    .end local v17    # "metrics":Landroid/net/metrics/NetworkMetrics;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    .restart local v3    # "metrics":Landroid/net/metrics/NetworkMetrics;
    :cond_5b
    move-object/from16 v17, v3

    move/from16 v18, v9

    move/from16 v19, v11

    .line 294
    .end local v3    # "metrics":Landroid/net/metrics/NetworkMetrics;
    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    .restart local v17    # "metrics":Landroid/net/metrics/NetworkMetrics;
    :goto_61
    add-int/lit8 v9, v18, 0x1

    move/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v11, v19

    goto :goto_38

    .line 300
    .end local v17    # "metrics":Landroid/net/metrics/NetworkMetrics;
    .restart local v3    # "metrics":Landroid/net/metrics/NetworkMetrics;
    :cond_6a
    monitor-exit p0

    return-void

    .line 281
    .end local v3    # "metrics":Landroid/net/metrics/NetworkMetrics;
    .end local v12    # "miuiDnsParam":Landroid/net/metrics/MiuiDnsRecordParams;
    .end local v14    # "timestamp":J
    .end local p1    # "netId":I
    .end local p2    # "eventType":I
    .end local p3    # "returnCode":I
    .end local p4    # "latencyMs":I
    .end local p5    # "hostname":Ljava/lang/String;
    .end local p6    # "ipAddresses":[Ljava/lang/String;
    .end local p7    # "ipAddressesCount":I
    .end local p8    # "uid":I
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 309
    .local v3, "callback":Landroid/net/INetdEventCallback;
    if-eqz v3, :cond_e

    .line 310
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 308
    .end local v3    # "callback":Landroid/net/INetdEventCallback;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 313
    :cond_11
    monitor-exit p0

    return-void

    .line 307
    .end local p1    # "netId":I
    .end local p2    # "added":Z
    .end local p3    # "prefixString":Ljava/lang/String;
    .end local p4    # "prefixLength":I
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 322
    .local v3, "callback":Landroid/net/INetdEventCallback;
    if-eqz v3, :cond_e

    .line 323
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 321
    .end local v3    # "callback":Landroid/net/INetdEventCallback;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 326
    :cond_11
    monitor-exit p0

    return-void

    .line 320
    .end local p1    # "netId":I
    .end local p2    # "ipAddress":Ljava/lang/String;
    .end local p3    # "hostname":Ljava/lang/String;
    .end local p4    # "validated":Z
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 15
    .param p1, "networkIds"    # [I
    .param p2, "sentPackets"    # [I
    .param p3, "lostPackets"    # [I
    .param p4, "rttsUs"    # [I
    .param p5, "sentAckDiffsMs"    # [I

    monitor-enter p0

    .line 383
    :try_start_1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_12

    goto :goto_30

    .line 391
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 392
    .local v0, "timestamp":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_2e

    .line 393
    aget v3, p1, v2

    .line 394
    .local v3, "netId":I
    aget v4, p2, v2

    .line 395
    .local v4, "sent":I
    aget v5, p3, v2

    .line 396
    .local v5, "lost":I
    aget v6, p4, v2

    .line 397
    .local v6, "rttUs":I
    aget v7, p5, v2

    .line 398
    .local v7, "sentAckDiffMs":I
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v8

    .line 399
    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_39

    .line 392
    .end local v3    # "netId":I
    .end local v4    # "sent":I
    .end local v5    # "lost":I
    .end local v6    # "rttUs":I
    .end local v7    # "sentAckDiffMs":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 401
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_2e
    monitor-exit p0

    return-void

    .line 387
    .end local v0    # "timestamp":J
    :cond_30
    :goto_30
    :try_start_30
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    .line 388
    monitor-exit p0

    return-void

    .line 382
    .end local p1    # "networkIds":[I
    .end local p2    # "sentPackets":[I
    .end local p3    # "lostPackets":[I
    .end local p4    # "rttsUs":[I
    .end local p5    # "sentAckDiffsMs":[I
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 28
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ethertype"    # I
    .param p4, "ipNextHeader"    # I
    .param p5, "dstHw"    # [B
    .param p6, "srcIp"    # Ljava/lang/String;
    .param p7, "dstIp"    # Ljava/lang/String;
    .param p8, "srcPort"    # I
    .param p9, "dstPort"    # I
    .param p10, "timestampNs"    # J

    move-object/from16 v1, p0

    monitor-enter p0

    .line 354
    :try_start_3
    const-string/jumbo v0, "iface:"

    const-string v2, ""

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "iface":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v2, p10, v4

    if-lez v2, :cond_1b

    .line 357
    const-wide/32 v4, 0xf4240

    div-long v4, p10, v4

    move-wide v14, v4

    .local v4, "timestampMs":J
    goto :goto_20

    .line 359
    .end local v4    # "timestampMs":J
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v14, v4

    .line 362
    .local v14, "timestampMs":J
    :goto_20
    new-instance v2, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v2}, Landroid/net/metrics/WakeupEvent;-><init>()V

    .line 363
    .local v2, "event":Landroid/net/metrics/WakeupEvent;
    iput-object v0, v2, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 364
    iput-wide v14, v2, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 365
    move/from16 v13, p2

    iput v13, v2, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 366
    move/from16 v12, p3

    iput v12, v2, Landroid/net/metrics/WakeupEvent;->ethertype:I

    .line 367
    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 368
    move-object/from16 v11, p6

    iput-object v11, v2, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    .line 369
    move-object/from16 v10, p7

    iput-object v10, v2, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    .line 370
    move/from16 v9, p4

    iput v9, v2, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    .line 371
    move/from16 v7, p8

    iput v7, v2, Landroid/net/metrics/WakeupEvent;->srcPort:I

    .line 372
    move/from16 v6, p9

    iput v6, v2, Landroid/net/metrics/WakeupEvent;->dstPort:I

    .line 373
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 375
    iget-object v4, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v4}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, "dstMac":Ljava/lang/String;
    const/16 v4, 0x2c

    move/from16 v5, p2

    move-object v6, v0

    move/from16 v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p4

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6a

    .line 378
    monitor-exit p0

    return-void

    .line 353
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "event":Landroid/net/metrics/WakeupEvent;
    .end local v8    # "dstMac":Ljava/lang/String;
    .end local v14    # "timestampMs":J
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "ethertype":I
    .end local p4    # "ipNextHeader":I
    .end local p5    # "dstHw":[B
    .end local p6    # "srcIp":Ljava/lang/String;
    .end local p7    # "dstIp":Ljava/lang/String;
    .end local p8    # "srcPort":I
    .end local p9    # "dstPort":I
    .end local p10    # "timestampNs":J
    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetdEventCallback(I)Z
    .registers 5
    .param p1, "callerType"    # I

    monitor-enter p0

    .line 151
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 152
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2a

    .line 153
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 155
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2a

    .line 156
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 150
    .end local p1    # "callerType":I
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
