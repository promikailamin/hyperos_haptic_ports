.class public final Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "AnnouncementAggregator.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mIsClosed:Z

.field public final mListener:Landroid/hardware/radio/IAnnouncementListener;

.field public final mLock:Ljava/lang/Object;

.field public final mModuleWatchers:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$monListUpdated(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->onListUpdated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 47
    new-instance v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator-IA;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    .line 59
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/IAnnouncementListener;

    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 60
    const-string/jumbo v1, "lock cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 62
    :try_start_25
    invoke-interface {p1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .line 167
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 168
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    const-string v1, "Close watchModule"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_b
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_e
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_1d

    .line 172
    const-string p0, "BcRadioAidlSrv.AnnAggr"

    const-string v1, "Announcement aggregator has already been closed."

    invoke-static {p0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_56

    .line 176
    :cond_1d
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 178
    :goto_29
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4c

    .line 179
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_1b

    .line 181
    :try_start_39
    invoke-virtual {v1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_1b

    goto :goto_49

    :catch_3d
    move-exception v2

    .line 183
    :try_start_3e
    const-string v4, "BcRadioAidlSrv.AnnAggr"

    const-string v5, "Failed to close module watcher %s: %s"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 187
    :cond_4c
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    .line 189
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    .line 190
    monitor-exit v0

    return-void

    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_1b

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 195
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 196
    const-string p2, "AnnouncementAggregator\n"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 198
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 199
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 200
    :try_start_13
    const-string v0, "Is session closed? %s\n"

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_1e

    const-string v1, "Yes"

    goto :goto_20

    :catchall_1c
    move-exception p0

    goto :goto_5b

    :cond_1e
    const-string v1, "No"

    :goto_20
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 201
    const-string v0, "Module Watchers [%d]:\n"

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 203
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 204
    :goto_3d
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_53

    .line 205
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3d

    .line 207
    :cond_53
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 209
    monitor-exit p2
    :try_end_57
    .catchall {:try_start_13 .. :try_end_57} :catchall_1c

    .line 210
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 209
    :goto_5b
    :try_start_5b
    monitor-exit p2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_1c

    throw p0
.end method

.method public final onListUpdated()V
    .registers 6

    .line 118
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 119
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    const-string/jumbo v1, "onListUpdated()"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_c
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_f
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_1e

    .line 123
    const-string p0, "BcRadioAidlSrv.AnnAggr"

    const-string v1, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    invoke-static {p0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_56

    .line 126
    :cond_1e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 127
    :goto_2b
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 128
    iget-object v4, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    iget-object v4, v4, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_1c

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 131
    :cond_43
    :try_start_43
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {p0, v1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49
    .catchall {:try_start_43 .. :try_end_48} :catchall_1c

    goto :goto_54

    :catch_49
    move-exception p0

    .line 133
    :try_start_4a
    const-string v1, "BcRadioAidlSrv.AnnAggr"

    const-string/jumbo v3, "mListener.onListUpdated() failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :goto_54
    monitor-exit v0

    return-void

    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_1c

    throw p0
.end method

.method public watchModule(Lcom/android/server/broadcastradio/aidl/RadioModule;[I)V
    .registers 6

    .line 142
    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 143
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    const-string v1, "Watch module for %s with enabled types %s"

    .line 144
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 143
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_13
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_16
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    if-nez v1, :cond_3d

    .line 152
    new-instance v1, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator-IA;)V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_2e

    .line 155
    :try_start_20
    invoke-virtual {p1, v1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->addAnnouncementListener(Landroid/hardware/radio/IAnnouncementListener;[I)Landroid/hardware/radio/ICloseHandle;

    move-result-object p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_30
    .catchall {:try_start_20 .. :try_end_24} :catchall_2e

    .line 160
    :try_start_24
    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V

    .line 161
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_45

    :catch_30
    move-exception p0

    .line 157
    const-string p1, "BcRadioAidlSrv.AnnAggr"

    const-string p2, "Failed to add announcement listener"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, p2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    monitor-exit v0

    return-void

    .line 148
    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to watch modulesince announcement aggregator has already been closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_24 .. :try_end_46} :catchall_2e

    throw p0
.end method
