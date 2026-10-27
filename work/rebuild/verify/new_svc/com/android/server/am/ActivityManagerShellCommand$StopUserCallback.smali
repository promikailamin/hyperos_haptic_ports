.class public final Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
.super Landroid/app/IStopUserCallback$Stub;
.source "ActivityManagerShellCommand.java"


# instance fields
.field public mFinished:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 3023
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 3021
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 3024
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/server/am/ActivityManagerShellCommand-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressWaiter[userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized userStopAborted(I)V
    .registers 4

    monitor-enter p0

    .line 3045
    :try_start_1
    const-string v0, "ActivityManager"

    const-string v1, "StopUserCallback: userStopAborted(%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 3046
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 3047
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 3048
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized userStopped(I)V
    .registers 4

    monitor-enter p0

    .line 3038
    :try_start_1
    const-string v0, "ActivityManager"

    const-string v1, "StopUserCallback: userStopped(%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 3039
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 3040
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 3041
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized waitForFinish()V
    .registers 4

    monitor-enter p0

    .line 3029
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_b
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    :catchall_9
    move-exception v0

    goto :goto_27

    :catch_b
    move-exception v0

    goto :goto_21

    .line 3033
    :cond_d
    :try_start_d
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "user %d finished stopping"

    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_9

    .line 3034
    monitor-exit p0

    return-void

    .line 3031
    :goto_21
    :try_start_21
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_9

    throw v0
.end method
