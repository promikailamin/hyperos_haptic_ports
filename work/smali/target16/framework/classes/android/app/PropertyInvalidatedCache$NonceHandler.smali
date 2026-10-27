.class abstract Landroid/app/PropertyInvalidatedCache$NonceHandler;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NonceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    }
.end annotation


# instance fields
.field private blacklist mCorkedInvalidates:I

.field private blacklist mCorks:I

.field final blacklist mId:Landroid/app/PropertyInvalidatedCache$CacheKey;

.field private blacklist mInvalidated:I

.field protected final blacklist mLock:Ljava/lang/Object;

.field protected blacklist mShadowNonce:J

.field private volatile blacklist mTestMode:Z

.field private blacklist mWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWritten:Z


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V
    .registers 4

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWritten:Z

    .line 644
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    .line 649
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 655
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 668
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 686
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mId:Landroid/app/PropertyInvalidatedCache$CacheKey;

    .line 687
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsGlobalLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 688
    :try_start_1e
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsTestMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    .line 689
    monitor-exit p1

    .line 690
    return-void

    .line 689
    :catchall_26
    move-exception v0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v0
.end method

.method private blacklist wakeAllWatchersLocked()V
    .registers 3

    .line 725
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 726
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 727
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 730
    :cond_1b
    return-void
.end method


# virtual methods
.method blacklist cork()V
    .registers 6

    .line 801
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 805
    return-void

    .line 808
    :cond_7
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_a
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 823
    if-nez v1, :cond_24

    .line 824
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    .line 825
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_23

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    .line 826
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 828
    :cond_23
    goto :goto_2a

    .line 829
    :cond_24
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 831
    :goto_2a
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 835
    monitor-exit v0

    .line 836
    return-void

    .line 835
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v1
.end method

.method blacklist disable()V
    .registers 4

    .line 871
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 872
    return-void

    .line 874
    :cond_7
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    const-wide/16 v1, 0x1

    :try_start_c
    invoke-virtual {p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 876
    monitor-exit v0

    .line 877
    return-void

    .line 876
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw v1
.end method

.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 883
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mId:Landroid/app/PropertyInvalidatedCache$CacheKey;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$CacheKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getNonce()J
    .registers 4

    .line 698
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-eqz v0, :cond_14

    .line 699
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_7
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-eqz v1, :cond_f

    .line 701
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    monitor-exit v0

    return-wide v1

    .line 703
    :cond_f
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1

    .line 705
    :cond_14
    :goto_14
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonceInternal()J

    move-result-wide v0

    return-wide v0
.end method

.method abstract blacklist getNonceInternal()J
.end method

.method blacklist getStats()Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    .registers 5

    .line 913
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_3
    new-instance v1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    invoke-direct {v1, v2, v3}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;-><init>(II)V

    monitor-exit v0

    return-object v1

    .line 915
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method blacklist invalidate()V
    .registers 6

    .line 760
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 764
    return-void

    .line 767
    :cond_7
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_a
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    if-lez v1, :cond_16

    .line 772
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 773
    monitor-exit v0

    return-void

    .line 776
    :cond_16
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    .line 777
    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_22

    .line 781
    monitor-exit v0

    return-void

    .line 786
    :cond_22
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->next()J

    move-result-wide v1

    .line 787
    invoke-static {v1, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smisReservedNonce(J)Z

    move-result v3

    if-nez v3, :cond_22

    .line 795
    invoke-virtual {p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 796
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_37

    throw v1
.end method

.method blacklist isActive()Z
    .registers 3

    .line 902
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 903
    :try_start_3
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWritten:Z

    monitor-exit v0

    return v1

    .line 904
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist registerWatcher(Ljava/util/concurrent/Semaphore;)V
    .registers 4

    .line 737
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 739
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    .line 741
    :cond_e
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    monitor-exit v0

    .line 743
    return-void

    .line 742
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method blacklist setNonce(J)V
    .registers 5

    .line 713
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWritten:Z

    .line 715
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 716
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-nez v1, :cond_f

    .line 717
    invoke-virtual {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonceInternal(J)V

    .line 719
    :cond_f
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->wakeAllWatchersLocked()V

    .line 720
    monitor-exit v0

    .line 721
    return-void

    .line 720
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw p1
.end method

.method abstract blacklist setNonceInternal(J)V
.end method

.method blacklist setTestMode(Z)V
    .registers 5

    .line 891
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_3
    iput-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    .line 893
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 894
    monitor-exit v0

    .line 895
    return-void

    .line 894
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method blacklist uncork()V
    .registers 5

    .line 839
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 843
    return-void

    .line 846
    :cond_7
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_a
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 853
    if-ltz v1, :cond_19

    .line 856
    if-nez v1, :cond_17

    .line 858
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 863
    :cond_17
    monitor-exit v0

    .line 864
    return-void

    .line 854
    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cork underflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 863
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_36

    throw v1
.end method

.method blacklist unregisterWatcher(Ljava/util/concurrent/Semaphore;)V
    .registers 4

    .line 749
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    .line 751
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 753
    :cond_c
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
