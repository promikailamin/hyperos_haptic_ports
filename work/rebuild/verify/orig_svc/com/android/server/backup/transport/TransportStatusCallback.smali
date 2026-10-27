.class public Lcom/android/server/backup/transport/TransportStatusCallback;
.super Lcom/android/internal/backup/ITransportStatusCallback$Stub;
.source "TransportStatusCallback.java"


# instance fields
.field public mHasCompletedOperation:Z

.field public mOperationStatus:I

.field public final mOperationTimeout:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 36
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 40
    invoke-static {}, Lcom/android/server/backup/BackupAndRestoreFeatureFlags;->getBackupTransportCallbackTimeoutMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 44
    invoke-direct {p0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 36
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    int-to-long v0, p1

    .line 45
    iput-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J

    return-void
.end method


# virtual methods
.method public declared-synchronized getOperationStatus()I
    .registers 7

    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-eqz v0, :cond_b

    .line 63
    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    goto :goto_42

    .line 66
    :cond_b
    :try_start_b
    iget-wide v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:J
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_9

    .line 68
    :goto_d
    :try_start_d
    iget-boolean v2, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-nez v2, :cond_2f

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2f

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 71
    iget-boolean v4, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-eqz v4, :cond_28

    .line 72
    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_24} :catch_26
    .catchall {:try_start_d .. :try_end_24} :catchall_9

    monitor-exit p0

    return v0

    :catch_26
    move-exception v0

    goto :goto_37

    .line 74
    :cond_28
    :try_start_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    goto :goto_d

    .line 77
    :cond_2f
    const-string v0, "TransportStatusCallback"

    const-string v1, "Couldn\'t get operation status from transport"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_36} :catch_26
    .catchall {:try_start_28 .. :try_end_36} :catchall_9

    goto :goto_3e

    .line 79
    :goto_37
    :try_start_37
    const-string v1, "TransportStatusCallback"

    const-string v2, "Couldn\'t get operation status from transport: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_9

    .line 82
    :goto_3e
    monitor-exit p0

    const/16 p0, -0x3e8

    return p0

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_9

    throw v0
.end method

.method public declared-synchronized onOperationComplete()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 58
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 59
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized onOperationCompleteWithStatus(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 50
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 51
    iput p1, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 54
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 86
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 87
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 88
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method
