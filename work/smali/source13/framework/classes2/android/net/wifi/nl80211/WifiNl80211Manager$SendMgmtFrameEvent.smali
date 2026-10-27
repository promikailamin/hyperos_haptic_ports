.class Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;
.super Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMgmtFrameEvent"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

.field private blacklist mWasCalled:Z

.field final synthetic blacklist this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .registers 12
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 553
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;-><init>()V

    .line 554
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mExecutor:Ljava/util/concurrent/Executor;

    .line 555
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 557
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;)V

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mWasCalled:Z

    .line 570
    invoke-static {p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmAlarmManager(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;

    move-result-object v1

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long v3, v2, v4

    iget-object v6, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-static {p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmEventHandler(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;

    move-result-object v7

    .line 570
    const/4 v2, 0x2

    const-string v5, "WifiNl80211Manager Send Management Frame Timeout"

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 573
    return-void
.end method

.method private blacklist runIfFirstCall(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 546
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mWasCalled:Z

    if-eqz v0, :cond_5

    return-void

    .line 547
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mWasCalled:Z

    .line 549
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmSendMgmtFrameInProgress(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 550
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 551
    return-void
.end method


# virtual methods
.method public blacklist OnAck(I)V
    .registers 4
    .param p1, "elapsedTimeMs"    # I

    .line 579
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmEventHandler(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method

.method public blacklist OnFailure(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 594
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmEventHandler(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method synthetic blacklist lambda$OnAck$3$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 3
    .param p1, "elapsedTimeMs"    # I

    .line 583
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onAck(I)V

    return-void
.end method

.method synthetic blacklist lambda$OnAck$4$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 6
    .param p1, "elapsedTimeMs"    # I

    .line 580
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmAlarmManager(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 583
    .local v0, "token":J
    :try_start_f
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1e

    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    nop

    .line 587
    return-void

    .line 585
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    throw v2
.end method

.method synthetic blacklist lambda$OnAck$5$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 3
    .param p1, "elapsedTimeMs"    # I

    .line 579
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda8;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-direct {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->runIfFirstCall(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$OnFailure$6$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 598
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method synthetic blacklist lambda$OnFailure$7$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 595
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmAlarmManager(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 598
    .local v0, "token":J
    :try_start_f
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda7;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1e

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    nop

    .line 602
    return-void

    .line 600
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw v2
.end method

.method synthetic blacklist lambda$OnFailure$8$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 594
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-direct {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->runIfFirstCall(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$new$0$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent()V
    .registers 3

    .line 563
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method synthetic blacklist lambda$new$1$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent()V
    .registers 5

    .line 558
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 559
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Timed out waiting for ACK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 563
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_22

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    throw v2
.end method

.method synthetic blacklist lambda$new$2$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent()V
    .registers 2

    .line 557
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;)V

    invoke-direct {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->runIfFirstCall(Ljava/lang/Runnable;)V

    return-void
.end method
