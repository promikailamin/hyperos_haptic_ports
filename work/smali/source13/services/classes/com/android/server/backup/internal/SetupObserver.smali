.class public Lcom/android/server/backup/internal/SetupObserver;
.super Landroid/database/ContentObserver;
.source "SetupObserver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p1, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 42
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 44
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    .line 46
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9
    .param p1, "selfChange"    # Z

    .line 56
    iget-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v0

    .line 57
    .local v0, "previousSetupComplete":Z
    iget-object v1, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->getSetupCompleteSettingForUser(Landroid/content/Context;I)Z

    move-result v1

    .line 59
    .local v1, "newSetupComplete":Z
    if-nez v0, :cond_15

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v2, 0x1

    .line 60
    .local v2, "resolvedSetupComplete":Z
    :goto_16
    iget-object v3, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->setSetupComplete(Z)V

    .line 61
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_4b

    .line 62
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setup complete change: was="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolved="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_4b
    iget-object v3, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 74
    if-eqz v2, :cond_81

    if-nez v0, :cond_81

    :try_start_56
    iget-object v4, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 76
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 77
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_69

    .line 78
    const-string v4, "BackupManagerService"

    const-string v5, "Setup complete so starting backups"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_69
    iget-object v4, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 81
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v6

    .line 80
    invoke-static {v4, v5, v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 82
    iget-object v4, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 84
    :cond_81
    monitor-exit v3

    .line 85
    return-void

    .line 84
    :catchall_83
    move-exception v4

    monitor-exit v3
    :try_end_85
    .catchall {:try_start_56 .. :try_end_85} :catchall_83

    throw v4
.end method
