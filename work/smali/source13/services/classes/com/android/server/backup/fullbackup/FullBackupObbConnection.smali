.class public Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
.super Ljava/lang/Object;
.source "FullBackupObbConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field volatile mService:Lcom/android/internal/backup/IObbBackupService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 4
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 56
    nop

    .line 57
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 56
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 59
    return-void
.end method

.method private waitForConnection()V
    .registers 3

    .line 146
    monitor-enter p0

    .line 147
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    if-nez v0, :cond_16

    .line 148
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_10

    .line 149
    const-string v0, "BackupManagerService"

    const-string v1, "...waiting for OBB service binding..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_23

    .line 152
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14
    .catchall {:try_start_10 .. :try_end_13} :catchall_23

    .line 153
    :goto_13
    goto :goto_1

    :catch_14
    move-exception v0

    goto :goto_13

    .line 155
    :cond_16
    :try_start_16
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_21

    .line 156
    const-string v0, "BackupManagerService"

    const-string v1, "Connected to OBB service; continuing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_21
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v0
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .registers 16
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 97
    const-string v0, "I/O error closing down OBB backup"

    const-string v1, "BackupManagerService"

    const/4 v2, 0x0

    .line 98
    .local v2, "success":Z
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    .line 100
    const/4 v3, 0x0

    .line 102
    .local v3, "pipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_b
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v3, v6

    .line 103
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v6

    .line 104
    .local v6, "token":I
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 105
    invoke-virtual {v7}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v9

    .line 106
    .local v9, "fullBackupAgentTimeoutMillis":J
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v8, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 108
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aget-object v11, v3, v4

    iget-object v12, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 109
    invoke-virtual {v12}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v12

    .line 108
    invoke-interface {v7, v8, v11, v6, v12}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 110
    aget-object v7, v3, v5

    invoke-static {v7, p2}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 111
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v7
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3e} :catch_5e
    .catchall {:try_start_b .. :try_end_3e} :catchall_5c

    move v2, v7

    .line 116
    .end local v6    # "token":I
    .end local v9    # "fullBackupAgentTimeoutMillis":J
    :try_start_3f
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 117
    if-eqz v3, :cond_56

    .line 118
    aget-object v6, v3, v5

    if-eqz v6, :cond_4d

    .line 119
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 121
    :cond_4d
    aget-object v5, v3, v4

    if-eqz v5, :cond_56

    .line 122
    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_56} :catch_57

    .line 127
    :cond_56
    :goto_56
    goto :goto_8d

    .line 125
    :catch_57
    move-exception v4

    .line 126
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_8d

    .line 115
    :catchall_5c
    move-exception v6

    goto :goto_8e

    .line 112
    :catch_5e
    move-exception v6

    .line 113
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to back up OBBs for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_5c

    .line 116
    .end local v6    # "e":Ljava/lang/Exception;
    :try_start_75
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 117
    if-eqz v3, :cond_56

    .line 118
    aget-object v6, v3, v5

    if-eqz v6, :cond_83

    .line 119
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 121
    :cond_83
    aget-object v5, v3, v4

    if-eqz v5, :cond_56

    .line 122
    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_8c} :catch_57

    goto :goto_56

    .line 129
    :goto_8d
    return v2

    .line 116
    :goto_8e
    :try_start_8e
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 117
    if-eqz v3, :cond_a5

    .line 118
    aget-object v7, v3, v5

    if-eqz v7, :cond_9c

    .line 119
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 121
    :cond_9c
    aget-object v5, v3, v4

    if-eqz v5, :cond_a5

    .line 122
    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_a5} :catch_a6

    .line 127
    :cond_a5
    goto :goto_aa

    .line 125
    :catch_a6
    move-exception v4

    .line 126
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v4    # "e":Ljava/io/IOException;
    :goto_aa
    throw v6
.end method

.method public establish()V
    .registers 8

    .line 62
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_1c

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiating bind of OBB service on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1c
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 67
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getAppUserId()I

    move-result v2

    .line 68
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/backup/BackupManagerServiceStub;->isXSpaceUser(I)Z

    move-result v3

    const-string v4, "com.android.sharedstoragebackup"

    if-eqz v3, :cond_6e

    .line 69
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/backup/BackupManagerServiceStub;->isXSpaceUserRunning()Z

    move-result v3

    .line 70
    .local v3, "xSpaceUserRunning":Z
    if-eqz v3, :cond_4a

    .line 71
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Lcom/android/server/backup/BackupManagerServiceStub;->installExistingPackageAsUser(Ljava/lang/String;I)Z

    move-result v5

    .line 73
    .local v5, "isSuccessfullyInstalled":Z
    if-eqz v5, :cond_4a

    .line 74
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v6

    .line 77
    .end local v5    # "isSuccessfullyInstalled":Z
    :cond_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "establish, xSpaceUserRunning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v3    # "xSpaceUserRunning":Z
    :cond_6e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, "obbIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p0, v4, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 90
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 163
    monitor-enter p0

    .line 164
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 165
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_2f

    .line 166
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBB service connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 169
    monitor-exit p0

    .line 170
    return-void

    .line 169
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 174
    monitor-enter p0

    .line 175
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 176
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_20

    .line 177
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBB service connection disconnected on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_20
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit p0

    .line 181
    return-void

    .line 180
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 28
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .line 135
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    .line 138
    move-object v1, p0

    :try_start_4
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1e

    .line 142
    move-object/from16 v3, p1

    goto :goto_39

    .line 140
    :catch_1e
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore OBBs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BackupManagerService"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    return-void
.end method

.method public tearDown()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    return-void
.end method
