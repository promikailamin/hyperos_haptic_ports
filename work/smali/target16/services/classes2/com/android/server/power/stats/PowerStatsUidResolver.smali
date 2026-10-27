.class public Lcom/android/server/power/stats/PowerStatsUidResolver;
.super Ljava/lang/Object;
.source "PowerStatsUidResolver.java"


# instance fields
.field public final mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

.field public final mIsolatedUids:Landroid/util/SparseIntArray;

.field public volatile mListeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    .line 69
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V
    .registers 4

    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    .line 79
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    .line 230
    const-string v0, "Currently mapped isolated uids:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    monitor-enter p0

    .line 232
    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_4f

    .line 234
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 235
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 236
    iget-object v4, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (ref count = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catchall_4d
    move-exception p1

    goto :goto_51

    .line 239
    :cond_4f
    monitor-exit p0

    return-void

    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_4d

    throw p1
.end method

.method public mapUid(I)I
    .registers 3

    .line 221
    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    .line 223
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public noteIsolatedUidAdded(II)V
    .registers 5

    .line 98
    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_23

    .line 103
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    .line 104
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_14
    if-ltz v0, :cond_22

    .line 105
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;->onIsolatedUidAdded(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_22
    return-void

    :catchall_23
    move-exception p1

    .line 101
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public noteIsolatedUidRemoved(II)V
    .registers 7

    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, p2, :cond_34

    .line 118
    const-string v1, "PowerStatsUidResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to remove an isolated UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with the parent UID "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". The registered parent UID is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    goto :goto_4f

    .line 123
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_32

    .line 125
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3d
    if-ltz v1, :cond_4b

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;->onBeforeIsolatedUidRemoved(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    .line 130
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->releaseIsolatedUid(I)V

    return-void

    .line 123
    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_32

    throw p1
.end method

.method public releaseIsolatedUid(I)V
    .registers 5

    .line 158
    monitor-enter p0

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_15

    .line 162
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    goto :goto_62

    .line 166
    :cond_15
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_45

    .line 168
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 169
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 170
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 175
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_13

    .line 177
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    .line 178
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_44

    .line 179
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    invoke-interface {v2, p1, v1}, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;->onAfterIsolatedUidRemoved(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_44
    return-void

    .line 172
    :cond_45
    :try_start_45
    const-string v0, "PowerStatsUidResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to remove untracked child uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit p0

    return-void

    .line 175
    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_45 .. :try_end_63} :catchall_13

    throw p1
.end method

.method public releaseUidsInRange(II)V
    .registers 5

    .line 188
    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    .line 190
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-gez p1, :cond_10

    not-int p1, p1

    :cond_10
    if-gez p2, :cond_15

    not-int p2, p2

    add-int/lit8 p2, p2, -0x1

    :cond_15
    if-le p1, p2, :cond_1b

    .line 202
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    goto :goto_44

    .line 205
    :cond_1b
    new-instance v0, Landroid/util/IntArray;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    :goto_22
    if-gt p1, p2, :cond_30

    .line 207
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    .line 209
    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_19

    .line 211
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_37
    if-ltz p1, :cond_43

    .line 212
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->releaseIsolatedUid(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_37

    :cond_43
    return-void

    .line 209
    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_19

    throw p1
.end method

.method public retainIsolatedUid(I)V
    .registers 5

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gtz v0, :cond_29

    .line 142
    const-string v0, "PowerStatsUidResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to increment ref counted of untracked isolated uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    goto :goto_32

    .line 147
    :cond_29
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    monitor-exit p0

    return-void

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_27

    throw p1
.end method
