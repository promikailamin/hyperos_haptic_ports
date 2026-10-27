.class public final Landroid/uwb/RangingSession;
.super Ljava/lang/Object;
.source "RangingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/RangingSession$Callback;,
        Landroid/uwb/RangingSession$State;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Uwb.RangingSession"


# instance fields
.field private final blacklist mAdapter:Landroid/uwb/IUwbAdapter;

.field private final blacklist mCallback:Landroid/uwb/RangingSession$Callback;

.field private final blacklist mChipId:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mSessionHandle:Landroid/uwb/SessionHandle;

.field private blacklist mState:Landroid/uwb/RangingSession$State;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Landroid/uwb/IUwbAdapter;Landroid/uwb/SessionHandle;)V
    .registers 11
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/RangingSession$Callback;
    .param p3, "adapter"    # Landroid/uwb/IUwbAdapter;
    .param p4, "sessionHandle"    # Landroid/uwb/SessionHandle;

    .line 427
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/uwb/RangingSession;-><init>(Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Landroid/uwb/IUwbAdapter;Landroid/uwb/SessionHandle;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Landroid/uwb/IUwbAdapter;Landroid/uwb/SessionHandle;Ljava/lang/String;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/RangingSession$Callback;
    .param p3, "adapter"    # Landroid/uwb/IUwbAdapter;
    .param p4, "sessionHandle"    # Landroid/uwb/SessionHandle;
    .param p5, "chipId"    # Ljava/lang/String;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Landroid/uwb/RangingSession$State;->INIT:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 435
    sget-object v0, Landroid/uwb/RangingSession$State;->INIT:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 436
    iput-object p1, p0, Landroid/uwb/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 437
    iput-object p2, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    .line 438
    iput-object p3, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    .line 439
    iput-object p4, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    .line 440
    iput-object p5, p0, Landroid/uwb/RangingSession;->mChipId:Ljava/lang/String;

    .line 441
    return-void
.end method

.method private blacklist executeCallback(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1029
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/uwb/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1032
    nop

    .line 1033
    return-void

    .line 1031
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1032
    throw v2
.end method


# virtual methods
.method public whitelist addControlee(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 593
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 594
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 598
    :cond_13
    :goto_13
    :try_start_13
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->addControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1c

    .line 601
    nop

    .line 602
    return-void

    .line 599
    :catch_1c
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 566
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_11

    .line 567
    iget-object v0, p0, Landroid/uwb/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/uwb/RangingSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda7;-><init>(Landroid/uwb/RangingSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 569
    return-void

    .line 573
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1}, Landroid/uwb/IUwbAdapter;->closeRanging(Landroid/uwb/SessionHandle;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_1a

    .line 576
    nop

    .line 577
    return-void

    .line 574
    :catch_1a
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isOpen()Z
    .registers 3

    .line 447
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method synthetic blacklist lambda$close$0$android-uwb-RangingSession()V
    .registers 4

    .line 567
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Landroid/uwb/RangingSession$Callback;->onClosed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onControleeAddFailed$12$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 869
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onControleeAddFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onControleeAdded$11$android-uwb-RangingSession(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 856
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onControleeAdded(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onControleeRemoveFailed$14$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 894
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onControleeRemoveFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onControleeRemoved$13$android-uwb-RangingSession(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 881
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onControleeRemoved(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataReceiveFailed$22$android-uwb-RangingSession(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 996
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/RangingSession$Callback;->onDataReceiveFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataReceived$21$android-uwb-RangingSession(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 5
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "data"    # [B

    .line 983
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/RangingSession$Callback;->onDataReceived(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    return-void
.end method

.method synthetic blacklist lambda$onDataSendFailed$20$android-uwb-RangingSession(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 970
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/RangingSession$Callback;->onDataSendFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onDataSent$19$android-uwb-RangingSession(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 957
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onDataSent(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingClosed$9$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 832
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onClosed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingOpenFailed$2$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 745
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onOpenFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingOpened$1$android-uwb-RangingSession()V
    .registers 2

    .line 731
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p0}, Landroid/uwb/RangingSession$Callback;->onOpened(Landroid/uwb/RangingSession;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingPauseFailed$16$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 919
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onPauseFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingPaused$15$android-uwb-RangingSession(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 906
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onPaused(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingReconfigureFailed$6$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 796
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onReconfigureFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingReconfigured$5$android-uwb-RangingSession(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 783
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onReconfigured(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingResult$10$android-uwb-RangingSession(Landroid/uwb/RangingReport;)V
    .registers 3
    .param p1, "report"    # Landroid/uwb/RangingReport;

    .line 844
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onReportReceived(Landroid/uwb/RangingReport;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingResumeFailed$18$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 944
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onResumeFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingResumed$17$android-uwb-RangingSession(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 931
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onResumed(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingStartFailed$4$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 771
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onStartFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingStarted$3$android-uwb-RangingSession(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 758
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onStarted(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingStopFailed$8$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 823
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onStopFailed(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onRangingStopped$7$android-uwb-RangingSession(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 810
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/uwb/RangingSession$Callback;->onStopped(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onServiceConnected$24$android-uwb-RangingSession(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1020
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onServiceConnected(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onServiceDiscovered$23$android-uwb-RangingSession(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1008
    iget-object v0, p0, Landroid/uwb/RangingSession;->mCallback:Landroid/uwb/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/uwb/RangingSession$Callback;->onServiceDiscovered(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public blacklist onControleeAddFailed(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 864
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 865
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onControleeAddFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void

    .line 869
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda2;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method

.method public blacklist onControleeAdded(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 851
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 852
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onControleeAdded invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void

    .line 856
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda5;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method public blacklist onControleeRemoveFailed(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 889
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 890
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onControleeRemoveFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-void

    .line 894
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda11;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 895
    return-void
.end method

.method public blacklist onControleeRemoved(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 876
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 877
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onControleeRemoved invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return-void

    .line 881
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda3;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method public blacklist onDataReceiveFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 991
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 992
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onDataReceiveFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 996
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda16;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 997
    return-void
.end method

.method public blacklist onDataReceived(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 6
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "data"    # [B

    .line 978
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 979
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onDataReceived invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-void

    .line 983
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda24;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 984
    return-void
.end method

.method public blacklist onDataSendFailed(Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I
    .param p3, "params"    # Landroid/os/PersistableBundle;

    .line 965
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 966
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onDataSendFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void

    .line 970
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda6;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 971
    return-void
.end method

.method public blacklist onDataSent(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 952
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 953
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onDataSent invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-void

    .line 957
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda9;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 958
    return-void
.end method

.method public blacklist onRangingClosed(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 831
    sget-object v0, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 832
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda20;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method

.method public blacklist onRangingOpenFailed(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 739
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_f

    .line 740
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingOpenFailed invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 744
    :cond_f
    sget-object v0, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 745
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda8;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 746
    return-void
.end method

.method public blacklist onRangingOpened()V
    .registers 3

    .line 725
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_f

    .line 726
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingOpened invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return-void

    .line 730
    :cond_f
    sget-object v0, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 731
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda17;-><init>(Landroid/uwb/RangingSession;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 732
    return-void
.end method

.method public blacklist onRangingPauseFailed(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 914
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 915
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingPauseFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void

    .line 919
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda19;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 920
    return-void
.end method

.method public blacklist onRangingPaused(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 901
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 902
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingPaused invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void

    .line 906
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda12;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method public blacklist onRangingReconfigureFailed(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 791
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_f

    .line 792
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingReconfigureFailed invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void

    .line 796
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda14;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 797
    return-void
.end method

.method public blacklist onRangingReconfigured(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 778
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_f

    .line 779
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingReconfigured invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void

    .line 783
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda21;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 784
    return-void
.end method

.method public blacklist onRangingResult(Landroid/uwb/RangingReport;)V
    .registers 4
    .param p1, "report"    # Landroid/uwb/RangingReport;

    .line 839
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 840
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingResult invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void

    .line 844
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda18;-><init>(Landroid/uwb/RangingSession;Landroid/uwb/RangingReport;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 845
    return-void
.end method

.method public blacklist onRangingResumeFailed(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 939
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 940
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingResumeFailed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-void

    .line 944
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda1;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 945
    return-void
.end method

.method public blacklist onRangingResumed(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 926
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 927
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingResumed invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void

    .line 931
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda22;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 932
    return-void
.end method

.method public blacklist onRangingStartFailed(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 766
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_f

    .line 767
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingStartFailed invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void

    .line 771
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda0;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 772
    return-void
.end method

.method public blacklist onRangingStarted(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 752
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_f

    .line 753
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingStarted invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void

    .line 757
    :cond_f
    sget-object v0, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 758
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda15;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 759
    return-void
.end method

.method public blacklist onRangingStopFailed(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 818
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_f

    .line 819
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingStopFailed invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void

    .line 823
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda23;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 824
    return-void
.end method

.method public blacklist onRangingStopped(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 804
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->CLOSED:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_f

    .line 805
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onRangingStopped invoked for a closed session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void

    .line 809
    :cond_f
    sget-object v0, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    iput-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    .line 810
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda10;-><init>(Landroid/uwb/RangingSession;ILandroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 811
    return-void
.end method

.method public blacklist onServiceConnected(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1015
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1016
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onServiceConnected invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-void

    .line 1020
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda4;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1021
    return-void
.end method

.method public blacklist onServiceDiscovered(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 1003
    invoke-virtual {p0}, Landroid/uwb/RangingSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1004
    const-string v0, "Uwb.RangingSession"

    const-string/jumbo v1, "onServiceDiscovered invoked for non-open session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void

    .line 1008
    :cond_f
    new-instance v0, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/uwb/RangingSession$$ExternalSyntheticLambda13;-><init>(Landroid/uwb/RangingSession;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Landroid/uwb/RangingSession;->executeCallback(Ljava/lang/Runnable;)V

    .line 1009
    return-void
.end method

.method public whitelist pause(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 651
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_15

    .line 656
    :try_start_6
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->pause(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 659
    nop

    .line 660
    return-void

    .line 657
    :catch_f
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 652
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist reconfigure(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 502
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 503
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 507
    :cond_13
    :goto_13
    :try_start_13
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->reconfigureRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1c

    .line 510
    nop

    .line 511
    return-void

    .line 508
    :catch_1c
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeControlee(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 618
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 619
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 623
    :cond_13
    :goto_13
    :try_start_13
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->removeControlee(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1c

    .line 626
    nop

    .line 627
    return-void

    .line 624
    :catch_1c
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resume(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 679
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_15

    .line 684
    :try_start_6
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->resume(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 687
    nop

    .line 688
    return-void

    .line 685
    :catch_f
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 680
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist sendData(Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    .registers 6
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "data"    # [B

    .line 710
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_15

    .line 715
    :try_start_6
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/uwb/IUwbAdapter;->sendData(Landroid/uwb/SessionHandle;Landroid/uwb/UwbAddress;Landroid/os/PersistableBundle;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 718
    nop

    .line 719
    return-void

    .line 716
    :catch_f
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 711
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist start(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 477
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->IDLE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_15

    .line 482
    :try_start_6
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/uwb/IUwbAdapter;->startRanging(Landroid/uwb/SessionHandle;Landroid/os/PersistableBundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 485
    nop

    .line 486
    return-void

    .line 483
    :catch_f
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 478
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist stop()V
    .registers 3

    .line 534
    iget-object v0, p0, Landroid/uwb/RangingSession;->mState:Landroid/uwb/RangingSession$State;

    sget-object v1, Landroid/uwb/RangingSession$State;->ACTIVE:Landroid/uwb/RangingSession$State;

    if-ne v0, v1, :cond_15

    .line 539
    :try_start_6
    iget-object v0, p0, Landroid/uwb/RangingSession;->mAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/RangingSession;->mSessionHandle:Landroid/uwb/SessionHandle;

    invoke-interface {v0, v1}, Landroid/uwb/IUwbAdapter;->stopRanging(Landroid/uwb/SessionHandle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 542
    nop

    .line 543
    return-void

    .line 540
    :catch_f
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 535
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
