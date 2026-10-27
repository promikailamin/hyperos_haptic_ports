.class final Lcom/android/server/am/PendingStartActivityUids;
.super Ljava/lang/Object;
.source "PendingStartActivityUids.java"


# static fields
.field public static final INVALID_TIME:J = 0x0L

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPendingUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    .line 46
    iput-object p1, p0, Lcom/android/server/am/PendingStartActivityUids;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method declared-synchronized add(II)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    .line 52
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_25

    .line 53
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 55
    .end local p0    # "this":Lcom/android/server/am/PendingStartActivityUids;
    :cond_22
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 50
    .end local p1    # "uid":I
    .end local p2    # "pid":I
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized delete(IJ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "nowElapsed"    # J

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 60
    .local v0, "pendingPid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_5c

    .line 61
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-gez v1, :cond_21

    .line 62
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "updateOomAdj start time is before than pendingPid added, don\'t delete it"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_5e

    .line 65
    monitor-exit p0

    return-void

    .line 67
    .end local p0    # "this":Lcom/android/server/am/PendingStartActivityUids;
    :cond_21
    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 68
    .local v1, "delay":J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-ltz v3, :cond_57

    .line 69
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PendingStartActivityUids startActivity to updateOomAdj delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms, uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_57
    iget-object v3, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_5c
    .catchall {:try_start_21 .. :try_end_5c} :catchall_5e

    .line 75
    .end local v1    # "delay":J
    :cond_5c
    monitor-exit p0

    return-void

    .line 58
    .end local v0    # "pendingPid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local p1    # "uid":I
    .end local p2    # "nowElapsed":J
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getPendingTopPidTime(II)J
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    monitor-enter p0

    .line 85
    const-wide/16 v0, 0x0

    .line 86
    .local v0, "ret":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 87
    .local v2, "pendingPid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_20

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_20

    .line 88
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_22

    move-wide v0, v3

    .line 90
    .end local p0    # "this":Lcom/android/server/am/PendingStartActivityUids;
    :cond_20
    monitor-exit p0

    return-wide v0

    .line 84
    .end local v0    # "ret":J
    .end local v2    # "pendingPid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local p1    # "uid":I
    .end local p2    # "pid":I
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isPendingTopUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 94
    .end local p0    # "this":Lcom/android/server/am/PendingStartActivityUids;
    .end local p1    # "uid":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
