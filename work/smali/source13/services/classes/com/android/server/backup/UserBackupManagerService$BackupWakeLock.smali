.class public Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupWakeLock"
.end annotation


# instance fields
.field private mHasQuit:Z

.field private final mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPowerManagerWakeLock(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/PowerManager$WakeLock;I)V
    .registers 4
    .param p1, "powerManagerWakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p2, "userId"    # I

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    .line 185
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    iput p2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    .line 187
    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 5

    monitor-enter p0

    .line 191
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    if-eqz v0, :cond_2b

    .line 192
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore wakelock acquire after quit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 197
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_56

    .line 198
    monitor-exit p0

    return-void

    .line 200
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 201
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired wakelock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 204
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_56

    .line 205
    monitor-exit p0

    return-void

    .line 190
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHeld()Z
    .registers 2

    monitor-enter p0

    .line 229
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 229
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized quit()V
    .registers 5

    monitor-enter p0

    .line 234
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 235
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing wakelock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 238
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 241
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 242
    monitor-exit p0

    return-void

    .line 233
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 5

    monitor-enter p0

    .line 209
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    if-eqz v0, :cond_2b

    .line 210
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore wakelock release after quit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 215
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_56

    .line 216
    monitor-exit p0

    return-void

    .line 218
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 219
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Released wakelock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 222
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_56

    .line 223
    monitor-exit p0

    return-void

    .line 208
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method
