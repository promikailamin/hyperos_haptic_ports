.class public Lcom/android/server/backup/BackupWakeLock;
.super Ljava/lang/Object;
.source "BackupWakeLock.java"


# instance fields
.field public final mBackupManagerConstants:Lcom/android/server/backup/BackupManagerConstants;

.field public mHasQuit:Z

.field public final mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mUserIdMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;ILcom/android/server/backup/BackupManagerConstants;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/backup/BackupWakeLock;->mHasQuit:Z

    .line 40
    iput-object p1, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[UserID:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/BackupWakeLock;->mUserIdMessage:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/server/backup/BackupWakeLock;->mBackupManagerConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 4

    monitor-enter p0

    .line 47
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/BackupWakeLock;->mHasQuit:Z

    if-eqz v0, :cond_2a

    .line 48
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mUserIdMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ignore wakelock acquire after quit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 50
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    goto :goto_58

    .line 54
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/backup/BackupWakeLock;->mBackupManagerConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerConstants;->getWakelockTimeoutMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 55
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mUserIdMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Acquired wakelock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_2a .. :try_end_56} :catchall_28

    .line 56
    monitor-exit p0

    return-void

    :goto_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_28

    throw v0
.end method

.method public declared-synchronized quit()V
    .registers 4

    monitor-enter p0

    .line 84
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 85
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mUserIdMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Releasing wakelock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    :catchall_30
    move-exception v0

    goto :goto_37

    :cond_32
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/android/server/backup/BackupWakeLock;->mHasQuit:Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_30

    .line 89
    monitor-exit p0

    return-void

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_30

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 4

    monitor-enter p0

    .line 60
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/BackupWakeLock;->mHasQuit:Z

    if-eqz v0, :cond_2a

    .line 61
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mUserIdMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ignore wakelock release after quit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 63
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    goto :goto_7d

    .line 66
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_55

    .line 67
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mUserIdMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Wakelock not held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_28

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 72
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mUserIdMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Released wakelock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_55 .. :try_end_7b} :catchall_28

    .line 73
    monitor-exit p0

    return-void

    :goto_7d
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_28

    throw v0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/android/server/backup/BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method
