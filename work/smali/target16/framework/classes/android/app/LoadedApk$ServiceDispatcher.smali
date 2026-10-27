.class final Landroid/app/LoadedApk$ServiceDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;,
        Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;
    }
.end annotation


# instance fields
.field private final greylist-max-o mActiveConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mActivityExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mActivityThread:Landroid/os/Handler;

.field private final greylist-max-r mConnection:Landroid/content/ServiceConnection;

.field private final greylist-max-p mContext:Landroid/content/Context;

.field private final blacklist mFlags:J

.field private greylist-max-o mForgotten:Z

.field private final greylist-max-o mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

.field private final greylist-max-o mLocation:Landroid/app/ServiceConnectionLeaked;

.field private greylist-max-o mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor greylist-max-r <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)V
    .registers 7

    .line 2184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2179
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 2185
    new-instance v0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    .line 2186
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 2187
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 2188
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 2189
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    .line 2190
    new-instance p2, Landroid/app/ServiceConnectionLeaked;

    invoke-direct {p2, p1}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 2191
    iput-wide p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:J

    .line 2192
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;J)V
    .registers 7

    .line 2195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2179
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 2196
    new-instance v0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    .line 2197
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 2198
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 2199
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 2200
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    .line 2201
    new-instance p2, Landroid/app/ServiceConnectionLeaked;

    invoke-direct {p2, p1}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 2202
    iput-wide p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:J

    .line 2203
    return-void
.end method


# virtual methods
.method public blacklist connected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;Z)V
    .registers 14

    .line 2264
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_15

    .line 2265
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_32

    .line 2266
    :cond_15
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    iget-object p1, v2, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz p1, :cond_2f

    .line 2267
    iget-object p1, v2, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    move v8, v7

    const/4 v7, 0x0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;IZ)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_32

    .line 2269
    :cond_2f
    invoke-virtual {p0, v3, v4, v5, v7}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;Z)V

    .line 2271
    :goto_32
    return-void
.end method

.method public greylist-max-o death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 12

    .line 2274
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_15

    .line 2275
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_30

    .line 2276
    :cond_15
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    iget-object p1, v2, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz p1, :cond_2d

    .line 2277
    iget-object p1, v2, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, v4

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;IZ)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 2279
    :cond_2d
    invoke-virtual {p0, v3, v4}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2281
    :goto_30
    return-void
.end method

.method public blacklist doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;Z)V
    .registers 9

    .line 2288
    monitor-enter p0

    .line 2289
    :try_start_1
    iget-boolean v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    if-eqz v0, :cond_7

    .line 2292
    monitor-exit p0

    return-void

    .line 2294
    :cond_7
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 2295
    if-eqz v0, :cond_17

    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-ne v1, p2, :cond_17

    .line 2297
    monitor-exit p0

    return-void

    .line 2300
    :cond_17
    const/4 v1, 0x0

    if-eqz p2, :cond_3c

    .line 2302
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;-><init>(Landroid/app/LoadedApk-IA;)V

    .line 2303
    iput-object p2, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 2304
    new-instance v3, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iput-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_68

    .line 2306
    :try_start_29
    iget-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2307
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_34
    .catchall {:try_start_29 .. :try_end_33} :catchall_68

    .line 2313
    goto :goto_41

    .line 2308
    :catch_34
    move-exception p2

    .line 2311
    :try_start_35
    iget-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    monitor-exit p0

    return-void

    .line 2317
    :cond_3c
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    :goto_41
    if-eqz v0, :cond_4a

    .line 2321
    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2323
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_68

    .line 2326
    if-eqz v0, :cond_52

    .line 2327
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2329
    :cond_52
    if-eqz p4, :cond_5a

    .line 2330
    iget-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {p2, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    goto :goto_67

    .line 2333
    :cond_5a
    if-eqz p2, :cond_62

    .line 2334
    iget-object p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {p4, p1, p2, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;)V

    goto :goto_67

    .line 2337
    :cond_62
    iget-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {p2, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 2340
    :goto_67
    return-void

    .line 2323
    :catchall_68
    move-exception p1

    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method public greylist-max-o doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 2343
    monitor-enter p0

    .line 2344
    :try_start_1
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 2345
    if-eqz v0, :cond_24

    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-eq v1, p2, :cond_10

    goto :goto_24

    .line 2350
    :cond_10
    iget-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    iget-object p2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v0, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2352
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_26

    .line 2354
    iget-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {p2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2355
    return-void

    .line 2348
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit p0

    return-void

    .line 2352
    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw p1
.end method

.method greylist-max-o doForget()V
    .registers 5

    .line 2227
    monitor-enter p0

    .line 2228
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    :try_start_3
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 2229
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 2230
    iget-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v2, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2232
    :cond_1d
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    .line 2234
    monitor-exit p0

    .line 2235
    return-void

    .line 2234
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method blacklist getFlags()J
    .registers 3

    .line 2251
    iget-wide v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:J

    return-wide v0
.end method

.method greylist-max-r getIServiceConnection()Landroid/app/IServiceConnection;
    .registers 2

    .line 2247
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    return-object v0
.end method

.method greylist-max-o getLocation()Landroid/app/ServiceConnectionLeaked;
    .registers 2

    .line 2238
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    return-object v0
.end method

.method greylist-max-o getServiceConnection()Landroid/content/ServiceConnection;
    .registers 2

    .line 2242
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method greylist-max-o getUnbindLocation()Ljava/lang/RuntimeException;
    .registers 2

    .line 2259
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method greylist-max-o setUnbindLocation(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 2255
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    .line 2256
    return-void
.end method

.method blacklist validate(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .registers 8

    .line 2206
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    const-string v1, ")"

    const-string v2, " now "

    const-string v3, "ServiceConnection "

    if-ne v0, p1, :cond_75

    .line 2212
    iget-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-ne p1, p2, :cond_44

    .line 2218
    iget-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    if-ne p1, p3, :cond_13

    .line 2224
    return-void

    .line 2219
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " registered with differing executor (was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2213
    :cond_44
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " registered with differing handler (was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2207
    :cond_75
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " registered with differing Context (was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
