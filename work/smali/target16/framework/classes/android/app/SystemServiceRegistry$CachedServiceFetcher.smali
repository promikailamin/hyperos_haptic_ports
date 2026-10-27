.class abstract Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CachedServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mCacheIndex:I


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 2476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2480
    invoke-static {}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfgetsServiceCacheSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfputsServiceCacheSize(I)V

    iput v0, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    .line 2481
    return-void
.end method


# virtual methods
.method public abstract blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final blacklist getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .line 2486
    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    .line 2487
    iget-object v1, p1, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    .line 2488
    nop

    .line 2490
    const/4 v2, 0x0

    move v3, v2

    .line 2493
    :goto_7
    nop

    .line 2494
    monitor-enter v0

    .line 2496
    :try_start_9
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget-object v4, v0, v4

    .line 2497
    if-eqz v4, :cond_12

    .line 2498
    nop

    .line 2499
    monitor-exit v0

    goto :goto_66

    .line 2508
    :cond_12
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v4, v1, v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_20

    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v4, v1, v4

    if-ne v4, v5, :cond_24

    .line 2510
    :cond_20
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v2, v1, v4

    .line 2517
    :cond_24
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v4, v1, v4

    const/4 v7, 0x1

    if-nez v4, :cond_32

    .line 2518
    nop

    .line 2519
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v7, v1, v4

    move v4, v7

    goto :goto_33

    .line 2517
    :cond_32
    move v4, v2

    .line 2521
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_a5

    .line 2523
    if-eqz v4, :cond_84

    .line 2526
    nop

    .line 2527
    nop

    .line 2531
    const/4 v2, 0x0

    :try_start_39
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3d
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_39 .. :try_end_3d} :catch_52
    .catchall {:try_start_39 .. :try_end_3d} :catchall_50

    .line 2532
    nop

    .line 2538
    monitor-enter v0

    .line 2539
    :try_start_3f
    iget v2, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object p1, v0, v2

    .line 2540
    iget v2, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v6, v1, v2

    .line 2541
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2542
    monitor-exit v0

    .line 2543
    move-object v4, p1

    goto :goto_64

    .line 2542
    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_4d

    throw p1

    .line 2538
    :catchall_50
    move-exception p1

    goto :goto_73

    .line 2534
    :catch_52
    move-exception p1

    .line 2535
    :try_start_53
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    .line 2538
    monitor-enter v0

    .line 2539
    :try_start_57
    iget p1, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v2, v0, p1

    .line 2540
    iget p1, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v5, v1, p1

    .line 2541
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2542
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_70

    .line 2543
    move-object v4, v2

    .line 2544
    :goto_64
    nop

    .line 2545
    nop

    .line 2567
    :goto_66
    if-eqz v3, :cond_6f

    .line 2568
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 2570
    :cond_6f
    return-object v4

    .line 2542
    :catchall_70
    move-exception p1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p1

    .line 2538
    :goto_73
    monitor-enter v0

    .line 2539
    :try_start_74
    iget v3, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v2, v0, v3

    .line 2540
    iget v2, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v5, v1, v2

    .line 2541
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2542
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_81

    .line 2543
    throw p1

    .line 2542
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1

    .line 2549
    :cond_84
    monitor-enter v0

    .line 2553
    :goto_85
    :try_start_85
    iget v4, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v4, v1, v4
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_a2

    if-ge v4, v6, :cond_9f

    .line 2556
    :try_start_8b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    or-int/2addr v3, v4

    .line 2557
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_93} :catch_94
    .catchall {:try_start_8b .. :try_end_93} :catchall_a2

    .line 2563
    goto :goto_85

    .line 2558
    :catch_94
    move-exception v3

    .line 2561
    :try_start_95
    const-string v3, "SystemServiceRegistry"

    const-string v4, "getService() interrupted"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    nop

    .line 2563
    move v3, v7

    goto :goto_85

    .line 2565
    :cond_9f
    monitor-exit v0

    .line 2566
    goto/16 :goto_7

    .line 2565
    :catchall_a2
    move-exception p1

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_a2

    throw p1

    .line 2521
    :catchall_a5
    move-exception p1

    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p1
.end method

.method public final blacklist supportsFetchWithoutContext()Z
    .registers 2

    .line 2577
    const/4 v0, 0x0

    return v0
.end method
