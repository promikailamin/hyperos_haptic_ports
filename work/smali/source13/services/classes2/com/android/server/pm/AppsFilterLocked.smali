.class abstract Lcom/android/server/pm/AppsFilterLocked;
.super Lcom/android/server/pm/AppsFilterBase;
.source "AppsFilterLocked.java"


# instance fields
.field protected final mCacheLock:Ljava/lang/Object;

.field protected final mForceQueryableLock:Ljava/lang/Object;

.field protected final mImplicitlyQueryableLock:Ljava/lang/Object;

.field protected final mProtectedBroadcastsLock:Ljava/lang/Object;

.field protected final mQueriesViaComponentLock:Ljava/lang/Object;

.field protected final mQueriesViaPackageLock:Ljava/lang/Object;

.field protected final mQueryableViaUsesLibraryLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .param p3, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "[I",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p4, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected isForceQueryable(I)Z
    .registers 4
    .param p1, "appId"    # I

    .line 48
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    invoke-super {p0, p1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 50
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected isImplicitlyQueryable(II)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "targetUid"    # I

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 71
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected isQueryableViaComponent(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 62
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 64
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected isQueryableViaPackage(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 55
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 57
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected isQueryableViaUsesLibrary(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 85
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected isRetainedImplicitlyQueryable(II)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "targetUid"    # I

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 78
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected shouldFilterApplicationUsingCache(III)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 92
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
