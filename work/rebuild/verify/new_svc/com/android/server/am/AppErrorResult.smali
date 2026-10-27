.class public final Lcom/android/server/am/AppErrorResult;
.super Ljava/lang/Object;
.source "AppErrorResult.java"


# instance fields
.field public mHasResult:Z

.field public mResult:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()I
    .registers 2

    .line 29
    monitor-enter p0

    .line 30
    :catch_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    if-nez v0, :cond_b

    .line 32
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_1
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_1

    :catchall_9
    move-exception v0

    goto :goto_f

    .line 36
    :cond_b
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_9

    .line 37
    iget p0, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    return p0

    .line 36
    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_9

    throw v0
.end method

.method public set(I)V
    .registers 3

    .line 21
    monitor-enter p0

    const/4 v0, 0x1

    .line 22
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    .line 23
    iput p1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 25
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw p1
.end method
