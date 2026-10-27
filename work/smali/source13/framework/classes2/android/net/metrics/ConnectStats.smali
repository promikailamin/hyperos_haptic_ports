.class public Landroid/net/metrics/ConnectStats;
.super Ljava/lang/Object;
.source "ConnectStats.java"


# static fields
.field private static final blacklist CONVERSION_DIVISOR:I = 0x100000

.field private static final greylist-max-o EALREADY:I

.field private static final greylist-max-o EINPROGRESS:I


# instance fields
.field private final blacklist CONNECT_INFO_COUNT_MAX:I

.field private final blacklist DNS_INFO_COUNT_MAX:I

.field private final blacklist REASONABLE_INITIAL_CAPACITY:I

.field public greylist-max-o connectBlockingCount:I

.field public greylist-max-o connectCount:I

.field private blacklist dnsRecordCount:I

.field private blacklist dnsRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/MiuiDnsRecordParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist dnsRecordsHead:I

.field private blacklist dnsRecordsTail:I

.field public final greylist-max-o errnos:Landroid/util/SparseIntArray;

.field public greylist-max-o eventCount:I

.field public greylist-max-o ipv6ConnectCount:I

.field private blacklist isResetRecords:Z

.field public final greylist-max-o latencies:Landroid/util/IntArray;

.field public blacklist latencyCount:J

.field public blacklist latencySum:J

.field public final greylist-max-o mLatencyTb:Lcom/android/internal/util/TokenBucket;

.field public final greylist-max-o mMaxLatencyRecords:I

.field public final greylist-max-o netId:I

.field private blacklist statsMemoryUsage:D

.field private blacklist tcpConnectRecordCount:I

.field private blacklist tcpConnectRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/MiuiTcpRecordParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist tcpConnectRecordsHead:I

.field private blacklist tcpConnectRecordsTail:I

.field public blacklist tcpCount:J

.field public blacklist tcpLossSum:J

.field public blacklist tcpRttSum:J

.field public blacklist tcpSendSum:J

.field public final greylist-max-o transports:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    sget v0, Landroid/system/OsConstants;->EALREADY:I

    sput v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    .line 46
    sget v0, Landroid/system/OsConstants;->EINPROGRESS:I

    sput v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    return-void
.end method

.method public constructor greylist-max-o <init>(IJLcom/android/internal/util/TokenBucket;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "transports"    # J
    .param p4, "tb"    # Lcom/android/internal/util/TokenBucket;
    .param p5, "maxLatencyRecords"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/net/metrics/ConnectStats;->DNS_INFO_COUNT_MAX:I

    .line 49
    iput v0, p0, Landroid/net/metrics/ConnectStats;->CONNECT_INFO_COUNT_MAX:I

    .line 50
    const/16 v0, 0x80

    iput v0, p0, Landroid/net/metrics/ConnectStats;->REASONABLE_INITIAL_CAPACITY:I

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    .line 53
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsHead:I

    .line 54
    iput v2, p0, Landroid/net/metrics/ConnectStats;->dnsRecordCount:I

    .line 56
    iput v1, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    .line 57
    iput v2, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsHead:I

    .line 58
    iput v2, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordCount:I

    .line 61
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/metrics/ConnectStats;->statsMemoryUsage:D

    .line 62
    iput-boolean v2, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 75
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    .line 81
    iput v2, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    .line 83
    iput v2, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 85
    iput v2, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 87
    iput v2, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpLossSum:J

    .line 93
    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpSendSum:J

    .line 95
    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpRttSum:J

    .line 97
    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpCount:J

    .line 99
    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencyCount:J

    .line 101
    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencySum:J

    .line 105
    iput p1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    .line 106
    iput-wide p2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    .line 107
    iput-object p4, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    .line 108
    iput p5, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    .line 109
    return-void
.end method

.method private blacklist appendDNSRecord(Landroid/net/metrics/MiuiDnsRecordParams;)V
    .registers 5
    .param p1, "miuiDnsParam"    # Landroid/net/metrics/MiuiDnsRecordParams;

    .line 174
    iget v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    .line 176
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_17

    .line 177
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 179
    :cond_17
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    iget v2, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_1e
    iget v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordCount:I

    if-ne v0, v1, :cond_2a

    .line 182
    iget v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsHead:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsHead:I

    goto :goto_2e

    .line 184
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecordCount:I

    .line 185
    :goto_2e
    return-void
.end method

.method private blacklist appendTcpConnectRecord(Landroid/net/metrics/MiuiTcpRecordParams;)V
    .registers 5
    .param p1, "miuiTcpParam"    # Landroid/net/metrics/MiuiTcpRecordParams;

    .line 195
    iget v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    .line 197
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_17

    .line 198
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 200
    :cond_17
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    iget v2, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_1e
    iget v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordCount:I

    if-ne v0, v1, :cond_2a

    .line 203
    iget v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsHead:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsHead:I

    goto :goto_2e

    .line 205
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordCount:I

    .line 206
    :goto_2e
    return-void
.end method

.method private blacklist concealedHostname(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "hostName"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 136
    .local v0, "hostnameChars":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-char v2, v0, v2

    .line 137
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v0, v2

    .line 139
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    return-object p1
.end method

.method private blacklist concealedIPAddr(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "ip"    # Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "concealedIPBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->parseIp(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "ipSubArray":[Ljava/lang/String;
    if-eqz v1, :cond_6e

    array-length v2, v1

    if-lez v2, :cond_6e

    .line 149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_6e

    .line 150
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "*"

    const/4 v5, 0x1

    if-nez v3, :cond_21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 151
    :cond_21
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_40

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 154
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    const/4 v7, 0x0

    aget-object v8, v1, v2

    .line 155
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :goto_62
    array-length v3, v1

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_6b

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 161
    .end local v2    # "i":I
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o countConnect(ILjava/lang/String;)V
    .registers 4
    .param p1, "errno"    # I
    .param p2, "ipAddr"    # Ljava/lang/String;

    .line 239
    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 240
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 241
    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 243
    :cond_12
    invoke-static {p2}, Landroid/net/metrics/ConnectStats;->isIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 244
    iget v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 246
    :cond_1e
    return-void
.end method

.method private greylist-max-o countError(I)V
    .registers 4
    .param p1, "errno"    # I

    .line 269
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 270
    .local v0, "newcount":I
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    return-void
.end method

.method private greylist-max-o countLatency(II)V
    .registers 7
    .param p1, "errno"    # I
    .param p2, "ms"    # I

    .line 249
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    return-void

    .line 253
    :cond_7
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    invoke-virtual {v0}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 255
    return-void

    .line 257
    :cond_10
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    iget v1, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    if-lt v0, v1, :cond_1b

    .line 259
    return-void

    .line 262
    :cond_1b
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencyCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencyCount:J

    .line 263
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencySum:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->latencySum:J

    .line 265
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 266
    return-void
.end method

.method private blacklist dnsRecordToString(Landroid/net/metrics/MiuiDnsRecordParams;)Ljava/lang/String;
    .registers 9
    .param p1, "miuiDnsParam"    # Landroid/net/metrics/MiuiDnsRecordParams;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ipAddresses: {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "ipAddrRecords":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getIpAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "ipAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_25

    .line 301
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Landroid/net/metrics/ConnectStats;->concealedIPAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    array-length v3, v1

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_22

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 305
    .end local v2    # "i":I
    :cond_25
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getRequestTime()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroid/net/metrics/ConnectStats;->formatTimeStamp(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 312
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 313
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/metrics/ConnectStats;->concealedHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 314
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getLatencyMs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 315
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getEventType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 316
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getReturnCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 308
    const-string v3, "%-26s ,uid:%-5d  , hostname:%-5s, latencyMs:%-5d, eventType:%-5d, returnCode:%-5d, %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "dnsRecord":Ljava/lang/String;
    return-object v2
.end method

.method private blacklist formatTimeStamp(J)Ljava/lang/String;
    .registers 6
    .param p1, "timestamp"    # J

    .line 165
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 166
    .local v0, "instant":Ljava/time/Instant;
    nop

    .line 167
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "formatTime":Ljava/lang/String;
    return-object v1
.end method

.method private static greylist-max-o isIPv6(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ipAddr"    # Ljava/lang/String;

    .line 284
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static greylist-max-o isNonBlocking(I)Z
    .registers 2
    .param p0, "errno"    # I

    .line 280
    sget v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    if-eq p0, v0, :cond_b

    sget v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static greylist-max-o isSuccess(I)Z
    .registers 2
    .param p0, "errno"    # I

    .line 274
    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private blacklist parseIp(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "ip"    # Ljava/lang/String;

    .line 215
    const-string v0, "::ffff:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\\."

    const-string v2, ":"

    if-nez v0, :cond_3a

    .line 216
    const-string v0, "0:0:0:0:0:ffff:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 217
    const-string v0, "0000:0000:0000:0000:0000:ffff:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3a

    .line 219
    :cond_1d
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 220
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_2a
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_35
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    :cond_3a
    :goto_3a
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist tcpRecordToString(Landroid/net/metrics/MiuiTcpRecordParams;)Ljava/lang/String;
    .registers 5
    .param p1, "miuiTcpParam"    # Landroid/net/metrics/MiuiTcpRecordParams;

    .line 324
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 328
    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getRequestTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/net/metrics/ConnectStats;->formatTimeStamp(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 329
    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 330
    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getIpAddr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/metrics/ConnectStats;->concealedIPAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 331
    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getLatencyMs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 332
    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 333
    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 325
    const-string v1, "%-26s ,uid:%-5d  , ip:%-45s, latencyMs:%-5d, error:%-5d, port:%-5d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "connectRecord":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public blacklist CalculateMemoryUsage(Z)D
    .registers 13
    .param p1, "isRecalculate"    # Z

    .line 340
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->statsMemoryUsage:D

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-lez v0, :cond_f

    if-nez p1, :cond_f

    .line 342
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->statsMemoryUsage:D

    return-wide v0

    .line 344
    :cond_f
    const/4 v0, 0x0

    .line 345
    .local v0, "dnsStringMemoryUsage":I
    const/4 v1, 0x0

    .line 346
    .local v1, "tcpStringMemoryUsage":I
    const/4 v2, 0x0

    .line 348
    .local v2, "memoryUsage":I
    :try_start_12
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_55

    .line 349
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/metrics/MiuiDnsRecordParams;

    .line 350
    .local v5, "record":Landroid/net/metrics/MiuiDnsRecordParams;
    invoke-virtual {v5}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    .line 352
    invoke-virtual {v5}, Landroid/net/metrics/MiuiDnsRecordParams;->getIpAddresses()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_38
    if-ge v8, v7, :cond_49

    aget-object v9, v6, v8

    .line 353
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v0, v10

    .line 354
    nop

    .end local v9    # "str":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x28

    .line 352
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 357
    :cond_49
    invoke-virtual {v5}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    .line 358
    .end local v5    # "record":Landroid/net/metrics/MiuiDnsRecordParams;
    goto :goto_1b

    .line 361
    :cond_55
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-eqz v3, :cond_75

    .line 362
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/metrics/MiuiTcpRecordParams;

    .line 363
    .local v5, "record":Landroid/net/metrics/MiuiTcpRecordParams;
    invoke-virtual {v5}, Landroid/net/metrics/MiuiTcpRecordParams;->getIpAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    .line 364
    .end local v5    # "record":Landroid/net/metrics/MiuiTcpRecordParams;
    goto :goto_5d

    .line 373
    :cond_75
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-nez v3, :cond_7b

    move v3, v4

    goto :goto_7f

    :cond_7b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_7f
    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v0

    .line 375
    iget-object v5, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-nez v5, :cond_87

    :goto_86
    goto :goto_8c

    :cond_87
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_8b} :catch_92

    goto :goto_86

    :goto_8c
    mul-int/lit8 v4, v4, 0x50

    add-int/2addr v3, v4

    add-int v2, v3, v1

    .line 379
    goto :goto_ab

    .line 377
    :catch_92
    move-exception v3

    .line 378
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CalculateMemoryUsage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConnectStats"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_ab
    int-to-double v3, v2

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    iput-wide v3, p0, Landroid/net/metrics/ConnectStats;->statsMemoryUsage:D

    .line 383
    return-wide v3
.end method

.method blacklist addConnectEvent(Landroid/net/metrics/MiuiTcpRecordParams;)V
    .registers 3
    .param p1, "miuiTcpParam"    # Landroid/net/metrics/MiuiTcpRecordParams;

    .line 188
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 189
    :cond_5
    invoke-virtual {p1}, Landroid/net/metrics/MiuiTcpRecordParams;->getIpAddr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 191
    :cond_c
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->appendTcpConnectRecord(Landroid/net/metrics/MiuiTcpRecordParams;)V

    .line 192
    return-void
.end method

.method blacklist addDnsEvent(Landroid/net/metrics/MiuiDnsRecordParams;)V
    .registers 4
    .param p1, "miuiDnsParam"    # Landroid/net/metrics/MiuiDnsRecordParams;

    .line 125
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 126
    :cond_5
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getIpAddresses()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_22

    .line 128
    :cond_12
    invoke-virtual {p1}, Landroid/net/metrics/MiuiDnsRecordParams;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 129
    .local v0, "hostnameChars":[C
    array-length v1, v0

    if-nez v1, :cond_1e

    return-void

    .line 131
    :cond_1e
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->appendDNSRecord(Landroid/net/metrics/MiuiDnsRecordParams;)V

    .line 132
    return-void

    .line 126
    .end local v0    # "hostnameChars":[C
    :cond_22
    :goto_22
    return-void
.end method

.method greylist-max-o addEvent(IILjava/lang/String;)Z
    .registers 6
    .param p1, "errno"    # I
    .param p2, "latencyMs"    # I
    .param p3, "ipAddr"    # Ljava/lang/String;

    .line 112
    iget v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    .line 113
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 114
    invoke-direct {p0, p1, p3}, Landroid/net/metrics/ConnectStats;->countConnect(ILjava/lang/String;)V

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/net/metrics/ConnectStats;->countLatency(II)V

    .line 116
    return v1

    .line 118
    :cond_13
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->countError(I)V

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method blacklist addTcpEvent(III)V
    .registers 8
    .param p1, "sent"    # I
    .param p2, "lost"    # I
    .param p3, "rtt"    # I

    .line 231
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpCount:J

    .line 232
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpSendSum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpSendSum:J

    .line 233
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpLossSum:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpLossSum:J

    .line 234
    iget-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpRttSum:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/ConnectStats;->tcpRttSum:J

    .line 235
    return-void
.end method

.method public blacklist clearDnsRecords()V
    .registers 2

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    .line 290
    return-void
.end method

.method public blacklist clearTcpConnectRecords()V
    .registers 2

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    .line 294
    return-void
.end method

.method public blacklist isResetRecords()Z
    .registers 2

    .line 429
    iget-boolean v0, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    return v0
.end method

.method public blacklist resetRecords()V
    .registers 11

    .line 387
    iget-boolean v0, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    if-eqz v0, :cond_5

    .line 388
    return-void

    .line 390
    :cond_5
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-nez v0, :cond_a

    .line 391
    return-void

    .line 392
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 393
    .local v0, "dnsIterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 394
    .local v1, "dnsRecordParams":Landroid/net/metrics/MiuiDnsRecordParams;
    iget-object v2, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 395
    .local v2, "dnsRecordsSize":I
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/net/metrics/MiuiDnsRecordParams;

    .line 398
    invoke-virtual {v1}, Landroid/net/metrics/MiuiDnsRecordParams;->getReturnCode()I

    move-result v3

    if-nez v3, :cond_15

    .line 399
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 402
    :cond_2c
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_49

    .line 403
    iput v4, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsHead:I

    .line 404
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecordsTail:I

    .line 405
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Landroid/net/metrics/ConnectStats;->dnsRecordCount:I

    .line 408
    :cond_49
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-nez v3, :cond_4e

    .line 409
    return-void

    .line 410
    :cond_4e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 411
    .local v3, "tcpIterator":Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 412
    .local v6, "tcpRecordParams":Landroid/net/metrics/MiuiTcpRecordParams;
    iget-object v7, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 413
    .local v7, "tcpConnectRecordsSize":I
    :cond_59
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 414
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Landroid/net/metrics/MiuiTcpRecordParams;

    .line 416
    invoke-virtual {v6}, Landroid/net/metrics/MiuiTcpRecordParams;->getError()I

    move-result v8

    if-eqz v8, :cond_74

    invoke-virtual {v6}, Landroid/net/metrics/MiuiTcpRecordParams;->getError()I

    move-result v8

    const/16 v9, 0x73

    if-ne v8, v9, :cond_59

    .line 417
    :cond_74
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_59

    .line 419
    :cond_78
    iget-object v8, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_93

    .line 420
    iput v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsHead:I

    .line 421
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordsTail:I

    .line 422
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecordCount:I

    .line 425
    :cond_93
    iput-boolean v5, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    .line 426
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 14

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    const-string v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string v1, ", transports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [J

    iget-wide v3, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-static {v2}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d events, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d success, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d blocking, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d IPv6 dst"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7c
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_ab

    .line 444
    iget-object v3, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "errno":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 446
    .local v4, "count":I
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, ", %s: %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .end local v3    # "errno":Ljava/lang/String;
    .end local v4    # "count":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 450
    .end local v2    # "i":I
    :cond_ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 451
    .local v2, "startTime":J
    const-wide/16 v6, 0x0

    .line 452
    .local v6, "sortedTime":J
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-eqz v4, :cond_c5

    .line 453
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 454
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-eqz v4, :cond_bf

    .line 455
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 456
    :cond_bf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v2

    .line 459
    :cond_c5
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-nez v4, :cond_d3

    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-nez v4, :cond_d3

    .line 460
    const-string v4, ",\ntrackDnsInfos(empty): {\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e2

    .line 461
    :cond_d3
    iget-boolean v4, p0, Landroid/net/metrics/ConnectStats;->isResetRecords:Z

    if-eqz v4, :cond_dd

    .line 462
    const-string v4, ",\ntrackDnsInfos(only error): {\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e2

    .line 464
    :cond_dd
    const-string v4, ",\ntrackDnsInfos: {\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :goto_e2
    const/4 v4, 0x0

    .line 467
    .local v4, "tail":I
    iget-object v8, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    if-eqz v8, :cond_eb

    .line 468
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 469
    :cond_eb
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ec
    const-string v9, "%s;%n"

    if-ge v8, v4, :cond_10a

    .line 470
    new-array v10, v1, [Ljava/lang/Object;

    iget-object v11, p0, Landroid/net/metrics/ConnectStats;->dnsRecords:Ljava/util/List;

    .line 472
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/metrics/MiuiDnsRecordParams;

    .line 471
    invoke-direct {p0, v11}, Landroid/net/metrics/ConnectStats;->dnsRecordToString(Landroid/net/metrics/MiuiDnsRecordParams;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 470
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    add-int/lit8 v8, v8, 0x1

    goto :goto_ec

    .line 475
    .end local v8    # "i":I
    :cond_10a
    const-string/jumbo v8, "}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v10, ",\ntrackConnectInfos: {\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const/4 v4, 0x0

    .line 480
    iget-object v10, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    if-eqz v10, :cond_11e

    .line 481
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 482
    :cond_11e
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_11f
    if-ge v10, v4, :cond_13b

    .line 483
    new-array v11, v1, [Ljava/lang/Object;

    iget-object v12, p0, Landroid/net/metrics/ConnectStats;->tcpConnectRecords:Ljava/util/List;

    .line 485
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/metrics/MiuiTcpRecordParams;

    .line 484
    invoke-direct {p0, v12}, Landroid/net/metrics/ConnectStats;->tcpRecordToString(Landroid/net/metrics/MiuiTcpRecordParams;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 483
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    add-int/lit8 v10, v10, 0x1

    goto :goto_11f

    .line 488
    .end local v10    # "i":I
    :cond_13b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v8, ",\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/net/metrics/ConnectStats;->CalculateMemoryUsage(Z)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "recordsMemoryUsage: %.4f Mb"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v5

    const-string v5, "sortedTime: %s Ms"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
