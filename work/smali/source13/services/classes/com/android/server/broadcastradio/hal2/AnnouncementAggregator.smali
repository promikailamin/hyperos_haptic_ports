.class public Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "AnnouncementAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;,
        Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.AnnAggr"


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIsClosed:Z

.field private final mListener:Landroid/hardware/radio/IAnnouncementListener;

.field private final mLock:Ljava/lang/Object;

.field private final mModuleWatchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$monListUpdated(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->onListUpdated()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/radio/IAnnouncementListener;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 40
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient-IA;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/IAnnouncementListener;

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 52
    :try_start_23
    invoke-interface {p1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_2b

    .line 55
    goto :goto_2f

    .line 53
    :catch_2b
    move-exception v0

    .line 54
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 56
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private onListUpdated()V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_10

    .line 87
    const-string v1, "BcRadio2Srv.AnnAggr"

    const-string v2, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v0

    return-void

    .line 90
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "combined":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/Announcement;>;"
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 92
    .local v3, "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    iget-object v4, v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3f

    .line 93
    nop

    .end local v3    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    goto :goto_1b

    .line 95
    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v2, v1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_34
    .catchall {:try_start_2e .. :try_end_33} :catchall_3f

    .line 98
    goto :goto_3d

    .line 96
    :catch_34
    move-exception v2

    .line 97
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "BcRadio2Srv.AnnAggr"

    const-string/jumbo v4, "mListener.onListUpdated() failed: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v1    # "combined":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/Announcement;>;"
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_3d
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_3f

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 123
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 125
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 127
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 128
    .local v2, "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    invoke-virtual {v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->close()V

    .line 129
    .end local v2    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    goto :goto_1e

    .line 130
    :cond_2e
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    .registers 8
    .param p1, "module"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p2, "enabledTypes"    # [I

    .line 103
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-nez v1, :cond_27

    .line 106
    new-instance v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher-IA;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2d

    .line 109
    .local v1, "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    :try_start_d
    invoke-virtual {p1, p2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_1d
    .catchall {:try_start_d .. :try_end_11} :catchall_2d

    .line 113
    .local v2, "closeHandle":Landroid/hardware/radio/ICloseHandle;
    nop

    .line 114
    :try_start_12
    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V

    .line 115
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    nop

    .end local v1    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    .end local v2    # "closeHandle":Landroid/hardware/radio/ICloseHandle;
    monitor-exit v0

    .line 117
    return-void

    .line 110
    .restart local v1    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    :catch_1d
    move-exception v2

    .line 111
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "BcRadio2Srv.AnnAggr"

    const-string v4, "Failed to add announcement listener"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    monitor-exit v0

    return-void

    .line 104
    .end local v1    # "watcher":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
    .end local p1    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .end local p2    # "enabledTypes":[I
    throw v1

    .line 116
    .restart local p0    # "this":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
    .restart local p1    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .restart local p2    # "enabledTypes":[I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2d

    throw v1
.end method
