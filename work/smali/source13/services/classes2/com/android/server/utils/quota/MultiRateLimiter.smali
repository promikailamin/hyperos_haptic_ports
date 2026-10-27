.class public Lcom/android/server/utils/quota/MultiRateLimiter;
.super Ljava/lang/Object;
.source "MultiRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;,
        Lcom/android/server/utils/quota/MultiRateLimiter$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;

.field private static final TAG:Ljava/lang/String; = "MultiRateLimiter"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/utils/quota/CountQuotaTracker;

    sput-object v0, Lcom/android/server/utils/quota/MultiRateLimiter;->EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/utils/quota/CountQuotaTracker;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "quotaTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/utils/quota/CountQuotaTracker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/server/utils/quota/MultiRateLimiter;->EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/utils/quota/CountQuotaTracker;

    iput-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/server/utils/quota/MultiRateLimiter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/MultiRateLimiter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private clearLocked(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 108
    .local v3, "quotaTracker":Lcom/android/server/utils/quota/CountQuotaTracker;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/utils/quota/CountQuotaTracker;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 104
    .end local v3    # "quotaTracker":Lcom/android/server/utils/quota/CountQuotaTracker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 110
    :cond_e
    return-void
.end method

.method private isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 95
    .local v4, "quotaTracker":Lcom/android/server/utils/quota/CountQuotaTracker;
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 96
    return v2

    .line 94
    .end local v4    # "quotaTracker":Lcom/android/server/utils/quota/CountQuotaTracker;
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 99
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private noteEventLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 87
    .local v3, "quotaTracker":Lcom/android/server/utils/quota/CountQuotaTracker;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 86
    .end local v3    # "quotaTracker":Lcom/android/server/utils/quota/CountQuotaTracker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 89
    :cond_e
    return-void
.end method


# virtual methods
.method public clear(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/quota/MultiRateLimiter;->clearLocked(ILjava/lang/String;)V

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 74
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public noteEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEventLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
