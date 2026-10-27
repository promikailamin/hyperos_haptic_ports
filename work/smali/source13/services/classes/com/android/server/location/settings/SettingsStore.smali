.class abstract Lcom/android/server/location/settings/SettingsStore;
.super Ljava/lang/Object;
.source "SettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/location/settings/SettingsStore$VersionedSettings;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mFile:Landroid/util/AtomicFile;

.field private mInitialized:Z


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 60
    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 62
    return-void
.end method

.method private writeLazily(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    .local p1, "settings":Lcom/android/server/location/settings/SettingsStore$VersionedSettings;, "TT;"
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/settings/SettingsStore;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method


# virtual methods
.method declared-synchronized deleteFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    monitor-enter p0

    .line 140
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 141
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/settings/SettingsStore;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 146
    monitor-exit p0

    return-void

    .line 139
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local p0    # "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized flushFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    monitor-enter p0

    .line 133
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 134
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 136
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local p0    # "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get()Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    monitor-enter p0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/settings/SettingsStore;->initializeCache()V

    .line 111
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 109
    .end local p0    # "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized initializeCache()V
    .registers 8

    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    monitor-enter p0

    .line 84
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/settings/SettingsStore;->mInitialized:Z

    if-nez v0, :cond_8c

    .line 85
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_8e

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x1

    if-eqz v0, :cond_62

    .line 86
    :try_start_12
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_41
    .catchall {:try_start_12 .. :try_end_1d} :catchall_8e

    .line 87
    .local v0, "is":Ljava/io/DataInputStream;
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/location/settings/SettingsStore;->read(ILjava/io/DataInput;)Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 88
    invoke-interface {v4}, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;->getVersion()I

    move-result v4

    if-ge v4, v2, :cond_2f

    move v4, v3

    goto :goto_30

    :cond_2f
    move v4, v1

    :goto_30
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_37

    .line 89
    :try_start_33
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_41
    .catchall {:try_start_33 .. :try_end_36} :catchall_8e

    .line 92
    .end local v0    # "is":Ljava/io/DataInputStream;
    goto :goto_62

    .line 86
    .end local p0    # "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    .restart local v0    # "is":Ljava/io/DataInputStream;
    :catchall_37
    move-exception v4

    :try_start_38
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v5

    :try_start_3d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v4
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_8e

    .line 89
    .end local v0    # "is":Ljava/io/DataInputStream;
    :catch_41
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    :try_start_42
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error reading location settings ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), falling back to defaults"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_8e

    if-nez v0, :cond_8a

    .line 97
    :try_start_66
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    new-array v5, v1, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/location/settings/SettingsStore;->read(ILjava/io/DataInput;)Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 99
    invoke-interface {v0}, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;->getVersion()I

    move-result v0

    if-ge v0, v2, :cond_7f

    move v1, v3

    :cond_7f
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_82} :catch_83
    .catchall {:try_start_66 .. :try_end_82} :catchall_8e

    .line 102
    goto :goto_8a

    .line 100
    :catch_83
    move-exception v0

    .line 101
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_84
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8a
    :goto_8a
    iput-boolean v3, p0, Lcom/android/server/location/settings/SettingsStore;->mInitialized:Z
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_8e

    .line 107
    :cond_8c
    monitor-exit p0

    return-void

    .line 83
    :catchall_8e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$deleteFile$0$com-android-server-location-settings-SettingsStore(Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 142
    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 143
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 144
    return-void
.end method

.method synthetic lambda$writeLazily$1$com-android-server-location-settings-SettingsStore(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .registers 6
    .param p1, "settings"    # Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 150
    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    const/4 v0, 0x0

    .line 152
    .local v0, "os":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 153
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-interface {p1}, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 155
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/settings/SettingsStore;->write(Ljava/io/DataOutput;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V

    .line 156
    iget-object v2, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_24
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    .end local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_31

    .line 160
    :catchall_1d
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 162
    throw v1

    .line 157
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 159
    const-string v2, "LocationManagerService"

    const-string v3, "failure serializing location settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    :goto_31
    nop

    .line 164
    return-void
.end method

.method protected abstract onChange(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method protected abstract read(ILjava/io/DataInput;)Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/DataInput;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized update(Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TT;TT;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    .local p1, "updater":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TT;>;"
    monitor-enter p0

    .line 115
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/settings/SettingsStore;->initializeCache()V

    .line 117
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 118
    .local v0, "oldSettings":Lcom/android/server/location/settings/SettingsStore$VersionedSettings;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 119
    .local v1, "newSettings":Lcom/android/server/location/settings/SettingsStore$VersionedSettings;, "TT;"
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_33

    if-eqz v2, :cond_1a

    .line 120
    monitor-exit p0

    return-void

    .line 123
    :cond_1a
    :try_start_1a
    iput-object v1, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 124
    invoke-interface {v1}, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;->getVersion()I

    move-result v2

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 126
    invoke-direct {p0, v1}, Lcom/android/server/location/settings/SettingsStore;->writeLazily(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/settings/SettingsStore;->onChange(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_33

    .line 129
    monitor-exit p0

    return-void

    .line 114
    .end local v0    # "oldSettings":Lcom/android/server/location/settings/SettingsStore$VersionedSettings;, "TT;"
    .end local v1    # "newSettings":Lcom/android/server/location/settings/SettingsStore$VersionedSettings;, "TT;"
    .end local p0    # "this":Lcom/android/server/location/settings/SettingsStore;, "Lcom/android/server/location/settings/SettingsStore<TT;>;"
    .end local p1    # "updater":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TT;>;"
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract write(Ljava/io/DataOutput;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
