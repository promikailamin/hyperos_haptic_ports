.class public Lcom/android/server/DynamicSystemService;
.super Landroid/os/image/IDynamicSystemService$Stub;
.source "DynamicSystemService.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDsuSlot:Ljava/lang/String;

.field public volatile mGsiService:Landroid/gsi/IGsiService;

.field public mInstallPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abort()Z
    .registers 1

    .line 176
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->abort_enforcePermission()V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result p0

    return p0
.end method

.method public closePartition()Z
    .registers 2

    .line 142
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->closePartition_enforcePermission()V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    .line 145
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closePartition()I

    move-result p0

    if-eqz p0, :cond_16

    .line 146
    const-string p0, "DynamicSystemService"

    const-string v0, "Partition installation completes with error"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public createPartition(Ljava/lang/String;JZ)I
    .registers 5

    .line 129
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->createPartition_enforcePermission()V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    .line 132
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    move-result p0

    if-eqz p0, :cond_23

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create partition: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicSystemService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return p0
.end method

.method public finishInstallation()Z
    .registers 2

    .line 155
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->finishInstallation_enforcePermission()V

    .line 157
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    .line 158
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closeInstall()I

    move-result p0

    if-eqz p0, :cond_16

    .line 159
    const-string p0, "DynamicSystemService"

    const-string v0, "Failed to finish installation"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public getActiveDsuSlot()Ljava/lang/String;
    .registers 2

    .line 292
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getActiveDsuSlot_enforcePermission()V

    .line 294
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 295
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 297
    :cond_11
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z
    .registers 2

    .line 272
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getAvbPublicKey_enforcePermission()V

    .line 275
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_11

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0

    :catch_11
    move-exception p0

    .line 277
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getGsiService()Landroid/gsi/IGsiService;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-eqz v0, :cond_7

    .line 58
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    return-object p0

    .line 60
    :cond_7
    const-string p0, "gsiservice"

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/gsi/IGsiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;

    move-result-object p0

    return-object p0
.end method

.method public getInstallationProgress()Landroid/gsi/GsiProgress;
    .registers 1

    .line 168
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->getInstallationProgress_enforcePermission()V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 198
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->isEnabled_enforcePermission()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result p0

    return p0
.end method

.method public isInUse()Z
    .registers 2

    .line 184
    const-string/jumbo p0, "ro.gsid.image_running"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isInstalled()Z
    .registers 3

    .line 190
    const-string p0, "gsid.image_installed"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInstalled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicSystemService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public remove()Z
    .registers 5

    .line 206
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->remove_enforcePermission()V

    const/4 v0, 0x0

    .line 209
    :try_start_4
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v1, p0}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>(Lcom/android/server/DynamicSystemService;)V

    .line 210
    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_a} :catch_23

    .line 211
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    const-wide/16 v2, 0x2000

    .line 212
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 213
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_20

    .line 214
    :try_start_17
    invoke-virtual {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->getResult()I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1b} :catch_23

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0

    :catchall_20
    move-exception p0

    .line 213
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw p0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_23} :catch_23

    .line 216
    :catch_23
    const-string p0, "DynamicSystemService"

    const-string/jumbo v1, "remove() was interrupted"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setAshmem(Landroid/os/ParcelFileDescriptor;J)Z
    .registers 4

    .line 248
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->setAshmem_enforcePermission()V

    .line 251
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception p0

    .line 253
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnable(ZZ)Z
    .registers 7

    .line 224
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->setEnable_enforcePermission()V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    if-eqz p1, :cond_33

    const/4 p1, 0x0

    .line 229
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getActiveDsuSlot()Ljava/lang/String;

    .line 230
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v1, p0}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>(Lcom/android/server/DynamicSystemService;)V

    .line 231
    monitor-enter v1
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_13} :catch_2a

    .line 232
    :try_start_13
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    invoke-interface {v0, p2, p0, v1}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    const-wide/16 v2, 0x2000

    .line 233
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 234
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_27

    .line 235
    :try_start_1e
    invoke-virtual {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->getResult()I

    move-result p0
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_22} :catch_2a

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return p1

    :catchall_27
    move-exception p0

    .line 234
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 237
    :catch_2a
    const-string p0, "DynamicSystemService"

    const-string/jumbo p2, "setEnable() was interrupted"

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 241
    :cond_33
    invoke-interface {v0}, Landroid/gsi/IGsiService;->disableGsi()Z

    move-result p0

    return p0
.end method

.method public startInstallation(Ljava/lang/String;)Z
    .registers 12

    .line 80
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->startInstallation_enforcePermission()V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 85
    const-string/jumbo v1, "os.aot.path"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "DynamicSystemService"

    if-eqz v2, :cond_d8

    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 88
    iget-object v4, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 89
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 90
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_2e

    .line 93
    :cond_41
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v6

    if-nez v6, :cond_48

    goto :goto_2e

    .line 97
    :cond_48
    const-string/jumbo v6, "vfat"

    iget-object v7, v5, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_2e

    .line 100
    :cond_54
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    .line 101
    iget-wide v6, v6, Landroid/os/storage/DiskInfo;->size:J

    const/16 v8, 0x14

    shr-long/2addr v6, v8

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x7800

    cmp-long v6, v6, v8

    if-gez v6, :cond_9c

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": insufficient storage"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 107
    :cond_9c
    invoke-virtual {v5, v2}, Landroid/os/storage/VolumeInfo;->getInternalPathForUser(I)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 109
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 112
    :cond_ac
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/gsi/dsu/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_c3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInstallation -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_d8
    iput-object v1, p0, Lcom/android/server/DynamicSystemService;->mInstallPath:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 119
    invoke-interface {v0, v1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_f8

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to open "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_f8
    const/4 p0, 0x1

    return p0
.end method

.method public submitFromAshmem(J)Z
    .registers 3

    .line 260
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->submitFromAshmem_enforcePermission()V

    .line 263
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception p0

    .line 265
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public suggestScratchSize()J
    .registers 3

    .line 284
    invoke-super {p0}, Landroid/os/image/IDynamicSystemService$Stub;->suggestScratchSize_enforcePermission()V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    move-result-wide v0

    return-wide v0
.end method
