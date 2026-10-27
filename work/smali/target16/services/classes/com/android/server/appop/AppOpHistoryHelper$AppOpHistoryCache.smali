.class public Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;
.super Ljava/lang/Object;
.source "AppOpHistoryHelper.java"


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mCapacity:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpHistoryHelper;


# direct methods
.method public static synthetic $r8$lambda$5PR6GZe6YrwKFzHXTDsofYv-K6M(Landroid/util/IntArray;Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Z
    .registers 2

    .line 771
    invoke-static {p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmOpCode(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PmtAlYfcoYIlWlNVTH7Edw4Y1e8(JLcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Z
    .registers 5

    .line 742
    invoke-static {p2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcapacity(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->capacity()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->clear(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mevict(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->evict()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevict(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;Landroid/util/IntArray;)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->evict(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevictAll(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->evictAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minsertOrUpdate(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;IIJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->insertOrUpdate(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msize(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->size()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msnapshot(Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->snapshot()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpHistoryHelper;I)V
    .registers 3

    .line 695
    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput p2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCapacity:I

    .line 701
    new-instance p1, Landroid/util/ArrayMap;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final capacity()I
    .registers 1

    .line 733
    iget p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCapacity:I

    return p0
.end method

.method public final clear()V
    .registers 2

    .line 801
    monitor-enter p0

    .line 802
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 803
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final clear(ILjava/lang/String;)V
    .registers 7

    .line 819
    monitor-enter p0

    .line 820
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 823
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-static {v3}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 824
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-static {v3}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmUid(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I

    move-result v3

    if-ne p1, v3, :cond_10

    .line 825
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :catchall_42
    move-exception p1

    goto :goto_5b

    .line 828
    :cond_44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_49
    if-ge p2, p1, :cond_59

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    check-cast v1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    .line 829
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 831
    :cond_59
    monitor-exit p0

    return-void

    :goto_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_42

    throw p1
.end method

.method public final evict()Ljava/util/List;
    .registers 6

    .line 740
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {v3}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmQuantizationMillis(Lcom/android/server/appop/AppOpHistoryHelper;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 740
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpHistoryHelper;->discretizeTimestamp(J)J

    move-result-wide v0

    .line 742
    new-instance v2, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->evict(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final evict(Landroid/util/IntArray;)Ljava/util/List;
    .registers 3

    .line 771
    new-instance v0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda1;-><init>(Landroid/util/IntArray;)V

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->evict(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final evict(Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 7

    .line 746
    monitor-enter p0

    .line 747
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 748
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    goto :goto_6f

    .line 751
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 755
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 756
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->getAggregatedAppOpEvent(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 760
    :cond_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_5d
    if-ge v2, p1, :cond_6d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    .line 761
    iget-object v4, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 763
    :cond_6d
    monitor-exit p0

    return-object v0

    .line 764
    :goto_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_d

    throw p1
.end method

.method public final evictAll()Ljava/util/List;
    .registers 3

    .line 780
    monitor-enter p0

    .line 781
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->snapshot()Ljava/util/List;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 783
    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    .line 784
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final getAggregatedAppOpEvent(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)Lcom/android/server/appop/AggregatedAppOpAccessEvent;
    .registers 22

    .line 789
    new-instance v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmUid(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmOpCode(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmDeviceId(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmAttributionTag(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmOpFlags(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmAttributionChainId(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;->-$$Nest$fgetmDuration(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)J

    move-result-wide v13

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->-$$Nest$fgetmTotalDuration(Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)J

    move-result-wide v15

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->-$$Nest$fgetmTotalAccessCount(Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)I

    move-result v17

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->-$$Nest$fgetmTotalRejectCount(Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)I

    move-result v18

    invoke-direct/range {v0 .. v18}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJJJJII)V

    return-object v0
.end method

.method public final insertOrUpdate(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;IIJ)V
    .registers 8

    .line 714
    monitor-enter p0

    .line 715
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;

    if-eqz v0, :cond_12

    .line 717
    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;->-$$Nest$madd(Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;IIJ)V

    .line 718
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    goto :goto_32

    .line 720
    :cond_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;-><init>(IIJ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    iget p2, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCapacity:I

    if-lt p1, p2, :cond_30

    .line 723
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->this$0:Lcom/android/server/appop/AppOpHistoryHelper;

    invoke-static {p1}, Lcom/android/server/appop/AppOpHistoryHelper;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/AppOpHistoryHelper;)Lcom/android/server/appop/AppOpHistoryHelper$SqliteWriteHandler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 725
    :cond_30
    monitor-exit p0

    return-void

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_10

    throw p1
.end method

.method public final size()I
    .registers 1

    .line 729
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public final snapshot()Ljava/util/List;
    .registers 5

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    monitor-enter p0

    .line 810
    :try_start_6
    iget-object v1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 811
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->getAggregatedAppOpEvent(Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;Lcom/android/server/appop/AppOpHistoryHelper$AggregatedAppOpValues;)Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :catchall_30
    move-exception v0

    goto :goto_34

    .line 813
    :cond_32
    monitor-exit p0

    return-object v0

    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_30

    throw v0
.end method
