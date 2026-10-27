.class public Lcom/android/server/am/DropboxRateLimiter;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DropboxRateLimiter$DefaultClock;,
        Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;,
        Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;,
        Lcom/android/server/am/DropboxRateLimiter$Clock;
    }
.end annotation


# static fields
.field private static final RATE_LIMIT_ALLOWED_ENTRIES:I = 0x6

.field private static final RATE_LIMIT_BUFFER_DURATION:J = 0x927c0L

.field private static final RATE_LIMIT_BUFFER_EXPIRY:J = 0x1b7740L


# instance fields
.field private final mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

.field private final mErrorClusterRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMapCleanUp:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;-><init>(Lcom/android/server/am/DropboxRateLimiter$DefaultClock-IA;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V
    .registers 4
    .param p1, "clock"    # Lcom/android/server/am/DropboxRateLimiter$Clock;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 47
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    .line 48
    return-void
.end method

.method private maybeRemoveExpiredRecords(J)V
    .registers 9
    .param p1, "now"    # J

    .line 97
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    return-void

    .line 99
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_30

    .line 100
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-virtual {v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getStartTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_2d

    .line 101
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 99
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 105
    .end local v0    # "i":I
    :cond_30
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 106
    return-void
.end method

.method private recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I
    .registers 4
    .param p1, "errRecord"    # Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    .line 91
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    goto :goto_10

    .line 92
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    return v0

    .line 91
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
    .registers 13
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    invoke-interface {v0}, Lcom/android/server/am/DropboxRateLimiter$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 60
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 62
    :try_start_9
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter;->maybeRemoveExpiredRecords(J)V

    .line 64
    iget-object v3, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    .line 65
    .local v3, "errRecord":Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_32

    .line 66
    new-instance v6, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-direct {v6, p0, v0, v1, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;-><init>(Lcom/android/server/am/DropboxRateLimiter;JI)V

    move-object v3, v6

    .line 67
    iget-object v4, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v4, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {v4, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object v4

    .line 71
    :cond_32
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getStartTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-lez v6, :cond_50

    .line 72
    invoke-direct {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result v6

    .line 73
    .local v6, "errCount":I
    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setStartTime(J)V

    .line 74
    invoke-virtual {v3, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setCount(I)V

    .line 75
    new-instance v4, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object v4

    .line 78
    .end local v6    # "errCount":I
    :cond_50
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->incrementCount()V

    .line 79
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_65

    .line 80
    new-instance v5, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result v6

    invoke-direct {v5, p0, v4, v6}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object v5

    .line 82
    .end local v3    # "errRecord":Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;
    :cond_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_9 .. :try_end_66} :catchall_6c

    .line 83
    new-instance v2, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {v2, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    return-object v2

    .line 82
    :catchall_6c
    move-exception v3

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v3
.end method
