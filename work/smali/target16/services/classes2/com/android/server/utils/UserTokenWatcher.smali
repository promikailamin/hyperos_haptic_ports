.class public final Lcom/android/server/utils/UserTokenWatcher;
.super Ljava/lang/Object;
.source "UserTokenWatcher.java"


# instance fields
.field public final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field public final mHandler:Landroid/os/Handler;

.field public final mTag:Ljava/lang/String;

.field public final mWatchers:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/utils/UserTokenWatcher;)Lcom/android/server/utils/UserTokenWatcher$Callback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchers(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 45
    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 46
    iput-object p2, p0, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p3, p0, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acquire(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12

    .line 66
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 67
    :try_start_3
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TokenWatcher;

    if-nez v0, :cond_23

    .line 69
    new-instance v2, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;

    iget-object v5, p0, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;Lcom/android/server/utils/UserTokenWatcher-IA;)V

    .line 70
    iget-object p0, v3, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    goto :goto_23

    :catchall_20
    move-exception v0

    move-object p0, v0

    goto :goto_28

    .line 72
    :cond_23
    :goto_23
    invoke-virtual {v0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 73
    monitor-exit v1

    return-void

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_20

    throw p0
.end method

.method public isAcquired(I)Z
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/TokenWatcher;

    if-eqz p0, :cond_17

    .line 101
    invoke-virtual {p0}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    .line 102
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public release(Landroid/os/IBinder;I)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/TokenWatcher;

    if-eqz p0, :cond_13

    .line 88
    invoke-virtual {p0, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 90
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method
