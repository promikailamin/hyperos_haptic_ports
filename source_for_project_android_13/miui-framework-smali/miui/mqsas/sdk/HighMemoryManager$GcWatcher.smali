.class final Lmiui/mqsas/sdk/HighMemoryManager$GcWatcher;
.super Ljava/lang/Object;
.source "HighMemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/sdk/HighMemoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GcWatcher"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    sget-object v0, Lmiui/mqsas/sdk/HighMemoryManager;->sGcWatchers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 120
    :try_start_3
    sget-object v1, Lmiui/mqsas/sdk/HighMemoryManager;->sGcWatchers:Ljava/util/ArrayList;

    sget-object v2, Lmiui/mqsas/sdk/HighMemoryManager;->sTmpWatchers:[Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    sput-object v1, Lmiui/mqsas/sdk/HighMemoryManager;->sTmpWatchers:[Ljava/lang/Runnable;

    .line 121
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_33

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    sget-object v1, Lmiui/mqsas/sdk/HighMemoryManager;->sTmpWatchers:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 123
    sget-object v1, Lmiui/mqsas/sdk/HighMemoryManager;->sTmpWatchers:[Ljava/lang/Runnable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_23

    .line 124
    sget-object v1, Lmiui/mqsas/sdk/HighMemoryManager;->sTmpWatchers:[Ljava/lang/Runnable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 127
    .end local v0    # "i":I
    :cond_26
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lmiui/mqsas/sdk/HighMemoryManager$GcWatcher;

    invoke-direct {v1}, Lmiui/mqsas/sdk/HighMemoryManager$GcWatcher;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmiui/mqsas/sdk/HighMemoryManager;->sGcWatcher:Ljava/lang/ref/WeakReference;

    .line 128
    return-void

    .line 121
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method
