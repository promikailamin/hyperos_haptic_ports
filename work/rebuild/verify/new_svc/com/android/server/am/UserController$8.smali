.class public Lcom/android/server/am/UserController$8;
.super Landroid/os/IRemoteCallback$Stub;
.source "UserController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;

.field public final synthetic val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field public final synthetic val$dispatchStartedTime:J

.field public final synthetic val$dispatchStartedTimeForObserver:J

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$onComplete:Ljava/lang/Runnable;

.field public final synthetic val$trace:Ljava/lang/String;

.field public final synthetic val$userSwitchTimeoutMs:J

.field public final synthetic val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;Ljava/lang/String;Ljava/lang/String;JJJLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .registers 13

    .line 3152
    iput-object p1, p0, Lcom/android/server/am/UserController$8;->this$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$8;->val$trace:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/UserController$8;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/UserController$8;->val$dispatchStartedTimeForObserver:J

    iput-wide p6, p0, Lcom/android/server/am/UserController$8;->val$dispatchStartedTime:J

    iput-wide p8, p0, Lcom/android/server/am/UserController$8;->val$userSwitchTimeoutMs:J

    iput-object p10, p0, Lcom/android/server/am/UserController$8;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object p11, p0, Lcom/android/server/am/UserController$8;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p12, p0, Lcom/android/server/am/UserController$8;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 7

    .line 3155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/am/UserController$8;->val$trace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/UserController$8;->val$name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/am/UserController;->-$$Nest$smasyncTraceEnd(Ljava/lang/String;I)V

    .line 3156
    iget-object p1, p0, Lcom/android/server/am/UserController$8;->this$0:Lcom/android/server/am/UserController;

    invoke-static {p1}, Lcom/android/server/am/UserController;->-$$Nest$fgetmLock(Lcom/android/server/am/UserController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3157
    :try_start_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/UserController$8;->val$dispatchStartedTimeForObserver:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_5f

    .line 3160
    invoke-static {}, Lcom/android/server/am/UserController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User switch slowed down by observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/UserController$8;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": result took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms to process. "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/UserController$8;->val$trace:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catchall_5d
    move-exception p0

    goto :goto_b8

    .line 3164
    :cond_5f
    :goto_5f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/UserController$8;->val$dispatchStartedTime:J

    sub-long/2addr v0, v2

    .line 3165
    iget-wide v2, p0, Lcom/android/server/am/UserController$8;->val$userSwitchTimeoutMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_98

    .line 3166
    invoke-static {}, Lcom/android/server/am/UserController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User switch timeout: observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/UserController$8;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'s result was received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms after dispatchUserSwitch. "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/UserController$8;->val$trace:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    :cond_98
    iget-object v0, p0, Lcom/android/server/am/UserController$8;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/UserController$8;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3173
    iget-object v0, p0, Lcom/android/server/am/UserController$8;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/am/UserController$8;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/UserController$8;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v1}, Lcom/android/server/am/UserController;->-$$Nest$fgetmCurWaitingUserSwitchCallbacks(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;

    move-result-object v1

    if-ne v0, v1, :cond_b6

    .line 3176
    iget-object p0, p0, Lcom/android/server/am/UserController$8;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 3178
    :cond_b6
    monitor-exit p1

    return-void

    :goto_b8
    monitor-exit p1
    :try_end_b9
    .catchall {:try_start_23 .. :try_end_b9} :catchall_5d

    throw p0
.end method
