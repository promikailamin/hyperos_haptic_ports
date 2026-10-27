.class public Landroid/os/AnrMonitor$TimerThread;
.super Ljava/lang/Thread;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerThread"
.end annotation


# instance fields
.field private blacklist completed:Z

.field private blacklist timeout:J


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "timeout"    # J

    .line 953
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 954
    iput-wide p1, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    .line 955
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist finishRun()V
    .registers 2

    monitor-enter p0

    .line 964
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    .line 965
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 966
    monitor-exit p0

    return-void

    .line 963
    .end local p0    # "this":Landroid/os/AnrMonitor$TimerThread;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 1

    .line 959
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 960
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->finishRun()V

    .line 961
    return-void
.end method

.method public declared-synchronized blacklist startAndWait()V
    .registers 3

    monitor-enter p0

    .line 970
    :try_start_1
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->start()V

    .line 971
    iget-wide v0, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 973
    iget-boolean v0, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    if-nez v0, :cond_10

    .line 974
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->interrupt()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_10} :catch_13
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    .line 978
    .end local p0    # "this":Landroid/os/AnrMonitor$TimerThread;
    :cond_10
    goto :goto_17

    .line 969
    :catchall_11
    move-exception v0

    goto :goto_19

    .line 976
    :catch_13
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_11

    .line 979
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_17
    monitor-exit p0

    return-void

    .line 969
    :goto_19
    monitor-exit p0

    throw v0
.end method
