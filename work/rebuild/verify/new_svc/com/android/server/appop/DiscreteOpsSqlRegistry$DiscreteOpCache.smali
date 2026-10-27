.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;
.super Ljava/lang/Object;
.source "DiscreteOpsSqlRegistry.java"


# instance fields
.field public final mCache:Landroid/util/ArraySet;

.field public final mCapacity:I

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictOldAppOpEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;I)V
    .registers 3

    .line 441
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput p2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCapacity:I

    .line 443
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public capacity()I
    .registers 1

    .line 518
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCapacity:I

    return p0
.end method

.method public clear()V
    .registers 2

    .line 525
    monitor-enter p0

    .line 526
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 527
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final evictOldAppOpEvents()Ljava/util/List;
    .registers 8

    .line 464
    monitor-enter p0

    .line 465
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    sub-long/2addr v2, v4

    .line 468
    invoke-static {v2, v3}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v2

    .line 469
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 470
    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDiscretizedAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_1c

    .line 471
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_39
    move-exception v0

    goto :goto_3d

    .line 475
    :cond_3b
    monitor-exit p0

    return-object v0

    .line 476
    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_39

    throw v0
.end method

.method public size()I
    .registers 1

    .line 514
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method
