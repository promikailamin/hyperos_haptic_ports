.class public Lcom/android/server/DynamicSystemService;
.super Landroid/os/image/IDynamicSystemService$Stub;
.source "DynamicSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    }
.end annotation


# static fields
.field private static final GSID_ROUGH_TIMEOUT_MS:I = 0x2000

.field private static final MINIMUM_SD_MB:J = 0x7800L

.field private static final PATH_DEFAULT:Ljava/lang/String; = "/data/gsi/"

.field private static final TAG:Ljava/lang/String; = "DynamicSystemService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDsuSlot:Ljava/lang/String;

.field private volatile mGsiService:Landroid/gsi/IGsiService;

.field private mInstallPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private getGsiService()Landroid/gsi/IGsiService;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-eqz v0, :cond_7

    .line 58
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    return-object v0

    .line 60
    :cond_7
    const-string/jumbo v0, "gsiservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/gsi/IGsiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abort()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result v0

    return v0
.end method

.method public closePartition()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 135
    .local v0, "service":Landroid/gsi/IGsiService;
    invoke-interface {v0}, Landroid/gsi/IGsiService;->closePartition()I

    move-result v1

    if-eqz v1, :cond_13

    .line 136
    const-string v1, "DynamicSystemService"

    const-string v2, "Partition installation completes with error"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    return v1

    .line 139
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method public createPartition(Ljava/lang/String;JZ)I
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 124
    .local v0, "service":Landroid/gsi/IGsiService;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    move-result v1

    .line 125
    .local v1, "status":I
    if-eqz v1, :cond_22

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create partition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicSystemService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_22
    return v1
.end method

.method public finishInstallation()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 146
    .local v0, "service":Landroid/gsi/IGsiService;
    invoke-interface {v0}, Landroid/gsi/IGsiService;->closeInstall()I

    move-result v1

    if-eqz v1, :cond_13

    .line 147
    const-string v1, "DynamicSystemService"

    const-string v2, "Failed to finish installation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    return v1

    .line 150
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method public getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z
    .registers 5
    .param p1, "dst"    # Landroid/gsi/AvbPublicKey;

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_e

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 250
    :catch_e
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInstallationProgress()Landroid/gsi/GsiProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result v0

    return v0
.end method

.method public isInUse()Z
    .registers 3

    .line 168
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .registers 4

    .line 174
    const-string/jumbo v0, "gsid.image_installed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 175
    .local v0, "installed":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isInstalled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicSystemService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v0
.end method

.method public remove()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v1, p0}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>(Lcom/android/server/DynamicSystemService;)V

    .line 190
    .local v1, "callback":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_1f

    .line 191
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    .line 192
    const-wide/16 v2, 0x2000

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 193
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    .line 194
    :try_start_14
    invoke-virtual {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->getResult()I

    move-result v2
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_18} :catch_1f

    if-nez v2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    .line 193
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Lcom/android/server/DynamicSystemService;
    :try_start_1e
    throw v2
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 195
    .end local v1    # "callback":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    .restart local p0    # "this":Lcom/android/server/DynamicSystemService;
    :catch_1f
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "DynamicSystemService"

    const-string/jumbo v3, "remove() was interrupted"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v0
.end method

.method public setAshmem(Landroid/os/ParcelFileDescriptor;J)Z
    .registers 7
    .param p1, "ashmem"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 230
    :catch_9
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setEnable(ZZ)Z
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "oneShot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 205
    .local v0, "gsiService":Landroid/gsi/IGsiService;
    if-eqz p1, :cond_37

    .line 207
    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 208
    invoke-interface {v0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 210
    :cond_11
    new-instance v2, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v2, p0}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>(Lcom/android/server/DynamicSystemService;)V

    .line 211
    .local v2, "callback":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    monitor-enter v2
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_17} :catch_2d

    .line 212
    :try_start_17
    iget-object v3, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    invoke-interface {v0, p2, v3, v2}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    .line 213
    const-wide/16 v3, 0x2000

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 214
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_2a

    .line 215
    :try_start_22
    invoke-virtual {v2}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->getResult()I

    move-result v3
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_26} :catch_2d

    if-nez v3, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1

    .line 214
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .end local v0    # "gsiService":Landroid/gsi/IGsiService;
    .end local p0    # "this":Lcom/android/server/DynamicSystemService;
    .end local p1    # "enable":Z
    .end local p2    # "oneShot":Z
    :try_start_2c
    throw v3
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2d} :catch_2d

    .line 216
    .end local v2    # "callback":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    .restart local v0    # "gsiService":Landroid/gsi/IGsiService;
    .restart local p0    # "this":Lcom/android/server/DynamicSystemService;
    .restart local p1    # "enable":Z
    .restart local p2    # "oneShot":Z
    :catch_2d
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "DynamicSystemService"

    const-string/jumbo v4, "setEnable() was interrupted"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v1

    .line 221
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_37
    invoke-interface {v0}, Landroid/gsi/IGsiService;->disableGsi()Z

    move-result v1

    return v1
.end method

.method public startInstallation(Ljava/lang/String;)Z
    .registers 14
    .param p1, "dsuSlot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 81
    .local v0, "service":Landroid/gsi/IGsiService;
    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 83
    const-string/jumbo v1, "os.aot.path"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "DynamicSystemService"

    if-eqz v2, :cond_d3

    .line 85
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 86
    .local v2, "userId":I
    iget-object v4, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 87
    .local v4, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 88
    .local v6, "volume":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-eqz v7, :cond_3e

    .line 89
    goto :goto_2b

    .line 91
    :cond_3e
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v7

    if-nez v7, :cond_45

    .line 92
    goto :goto_2b

    .line 94
    :cond_45
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v7

    .line 95
    .local v7, "disk":Landroid/os/storage/DiskInfo;
    iget-wide v8, v7, Landroid/os/storage/DiskInfo;->size:J

    const/16 v10, 0x14

    shr-long/2addr v8, v10

    .line 96
    .local v8, "mega":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-wide/16 v10, 0x7800

    cmp-long v10, v8, v10

    if-gez v10, :cond_93

    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": insufficient storage"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_2b

    .line 101
    :cond_93
    invoke-virtual {v6, v2}, Landroid/os/storage/VolumeInfo;->getInternalPathForUser(I)Ljava/io/File;

    move-result-object v10

    .line 102
    .local v10, "sd_internal":Ljava/io/File;
    if-eqz v10, :cond_a2

    .line 103
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 105
    .end local v6    # "volume":Landroid/os/storage/VolumeInfo;
    .end local v7    # "disk":Landroid/os/storage/DiskInfo;
    .end local v8    # "mega":J
    .end local v10    # "sd_internal":Ljava/io/File;
    :cond_a2
    goto :goto_2b

    .line 106
    :cond_a3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/gsi/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_bc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startInstallation -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v2    # "userId":I
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    :cond_d3
    iput-object v1, p0, Lcom/android/server/DynamicSystemService;->mInstallPath:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 113
    invoke-interface {v0, v1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f5

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x0

    return v2

    .line 117
    :cond_f5
    const/4 v2, 0x1

    return v2
.end method

.method public submitFromAshmem(J)Z
    .registers 6
    .param p1, "size"    # J

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 240
    :catch_9
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public suggestScratchSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    move-result-wide v0

    return-wide v0
.end method
