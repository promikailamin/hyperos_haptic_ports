.class abstract Lcom/android/server/ResettableTimeout;
.super Ljava/lang/Object;
.source "ResettableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ResettableTimeout$T;
    }
.end annotation


# instance fields
.field private greylist mLock:Landroid/os/ConditionVariable;

.field private volatile greylist mOffAt:J

.field private volatile blacklist mOffCalled:Z

.field private blacklist mThread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffAt(Lcom/android/server/ResettableTimeout;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffCalled(Lcom/android/server/ResettableTimeout;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThread(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 85
    monitor-enter p0

    .line 86
    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    .line 87
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    .line 88
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    .line 91
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    if-nez v0, :cond_1b

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/server/ResettableTimeout;->off()V

    .line 95
    :cond_1b
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public blacklist go(J)V
    .registers 5

    .line 54
    monitor-enter p0

    .line 55
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    .line 64
    iget-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    if-nez p1, :cond_28

    .line 65
    nop

    .line 66
    iget-object p1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 67
    new-instance p1, Lcom/android/server/ResettableTimeout$T;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout-IA;)V

    iput-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    .line 68
    iget-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 69
    iget-object p1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 70
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    goto :goto_2f

    .line 72
    :cond_28
    nop

    .line 74
    iget-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x1

    .line 76
    :goto_2f
    invoke-virtual {p0, p1}, Lcom/android/server/ResettableTimeout;->on(Z)V

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 77
    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public abstract blacklist off()V
.end method

.method public abstract blacklist on(Z)V
.end method
