.class public final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/os/IBinder$FrozenStateChangeCallback;


# instance fields
.field public mAlive:Z

.field public mCached:Z

.field public final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field public mFrozen:Z

.field public mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mPackageName:Ljava/lang/String;

.field public mPendingDisplayEvents:Ljava/util/ArrayList;

.field public mPendingTopology:Landroid/hardware/display/DisplayTopology;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->dump()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    .registers 7

    .line 4486
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4487
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 4488
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 4489
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 4490
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    .line 4491
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    .line 4492
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    const/4 p5, 0x1

    .line 4493
    iput-boolean p5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    .line 4496
    :try_start_1a
    invoke-interface {p4}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-interface {p4, p0}, Landroid/os/IBinder;->addFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)V
    :try_end_21
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1a .. :try_end_21} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22

    goto :goto_41

    :catch_22
    move-exception p0

    .line 4505
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 4502
    :catch_29
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "FrozenStateChangeCallback not supported for pid "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "DisplayManagerService"

    invoke-static {p5, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    :goto_41
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_51

    const/4 p1, 0x0

    goto :goto_53

    .line 4509
    :cond_51
    aget-object p1, p1, p2

    :goto_53
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addDisplayEvent(II)V
    .registers 5

    .line 4710
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 4711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    .line 4713
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    .line 4716
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    .line 4717
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v1

    if-ne v1, p1, :cond_64

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v0

    if-ne v0, p2, :cond_64

    .line 4718
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 4719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore redundant display event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-void

    .line 4725
    :cond_64
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;-><init>(IILcom/android/server/display/DisplayManagerService-IA;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public binderDied()V
    .registers 5

    .line 4575
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4576
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    .line 4577
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_59

    .line 4578
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4579
    :cond_17
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display listener for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const-wide/32 v0, 0x20000

    .line 4581
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 4582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayManagerBinderDied#mPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4585
    :cond_53
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$monCallbackDied(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void

    :catchall_59
    move-exception p0

    .line 4577
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public dispatchPending()Z
    .registers 10

    .line 4783
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4784
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    const/4 v2, 0x1

    if-nez v1, :cond_d

    .line 4785
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto/16 :goto_103

    .line 4787
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_16

    .line 4788
    monitor-exit v0

    return v3

    .line 4791
    :cond_16
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 4792
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    .line 4793
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;

    .line 4794
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_38

    :cond_37
    move-object v1, v4

    .line 4797
    :goto_38
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4798
    iput-object v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4799
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_a

    if-eqz v1, :cond_a9

    move v0, v3

    .line 4802
    :goto_40
    :try_start_40
    array-length v4, v1

    if-ge v0, v4, :cond_a9

    .line 4803
    aget-object v4, v1, v0

    .line 4804
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 4805
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send pending display event #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :catch_8e
    move-exception v0

    goto :goto_e1

    .line 4810
    :cond_90
    :goto_90
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldReceiveRefreshRateWithChangeUpdate(I)Z

    move-result v6

    if-nez v6, :cond_9b

    goto :goto_a6

    .line 4814
    :cond_9b
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v6

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;->-$$Nest$fgetevent(Lcom/android/server/display/DisplayManagerService$CallbackRecord$Event;)I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitDisplayEvent(II)V

    :goto_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_a9
    if-eqz v5, :cond_102

    .line 4819
    invoke-static {}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 4820
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send pending topology: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    :cond_db
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, v5}, Landroid/hardware/display/IDisplayManagerCallback;->onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_e0} :catch_8e

    goto :goto_102

    .line 4828
    :goto_e1
    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notify process "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", assuming it died."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4829
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    return v3

    :cond_102
    :goto_102
    return v2

    .line 4799
    :goto_103
    :try_start_103
    monitor-exit v0
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_a

    throw p0
.end method

.method public final dump()Ljava/lang/String;
    .registers 11

    .line 4840
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v1

    .line 4841
    :try_start_3
    const-string/jumbo v0, "mPid=%d mUid=%d mWifiDisplayScanRequested=%s cached=%s frozen=%s pendingDisplayEvents=%d pendingTopology=%b"

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 4842
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 4843
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v8, 0x0

    if-nez v2, :cond_2b

    move v2, v8

    goto :goto_2f

    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    if-eqz p0, :cond_38

    const/4 v8, 0x1

    .line 4844
    :cond_38
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v8, v2

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 4841
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_47
    move-exception v0

    move-object p0, v0

    .line 4845
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_47

    throw p0
.end method

.method public final hasPendingAndIsReadyLocked()Z
    .registers 6

    .line 4542
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 4543
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 4544
    :goto_f
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    move v3, v1

    .line 4545
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v4

    if-eqz v4, :cond_25

    if-nez v0, :cond_20

    if-eqz v3, :cond_25

    :cond_20
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mAlive:Z

    if-eqz p0, :cond_25

    return v2

    :cond_25
    return v1
.end method

.method public final isReadyLocked()Z
    .registers 2

    .line 4534
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDisplayEventAsync(II)Z
    .registers 7

    .line 4602
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldSendDisplayEvent(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_64

    .line 4603
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 4604
    const-string p1, "DisplayManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not sending displayEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to mask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-wide/32 v2, 0x20000

    .line 4608
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 4609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyDisplayEventAsync#notSendingEvent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mInternalEventFlagsMask="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",uid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_63
    return v1

    .line 4618
    :cond_64
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4624
    :try_start_67
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_7b

    .line 4625
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7b

    goto :goto_a9

    :catchall_79
    move-exception p0

    goto :goto_ae

    .line 4631
    :cond_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_79

    .line 4633
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldReceiveRefreshRateWithChangeUpdate(I)Z

    move-result v0

    if-nez v0, :cond_83

    return v1

    .line 4639
    :cond_83
    :try_start_83
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitDisplayEvent(II)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_86} :catch_87

    return v3

    :catch_87
    move-exception p1

    .line 4642
    const-string p2, "DisplayManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that displays changed, assuming it died."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4644
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    return v1

    .line 4628
    :cond_a9
    :goto_a9
    :try_start_a9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->addDisplayEvent(II)V

    .line 4629
    monitor-exit v0

    return v3

    .line 4631
    :goto_ae
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_a9 .. :try_end_af} :catchall_79

    throw p0
.end method

.method public notifyTopologyUpdateAsync(Landroid/hardware/display/DisplayTopology;)Z
    .registers 7

    .line 4734
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_63

    .line 4736
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4737
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not sending topology update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const-wide/32 v2, 0x20000

    .line 4740
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 4741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyTopologyUpdateAsync#notSendingUpdate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mInternalEventFlagsMask="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_62
    return v1

    .line 4749
    :cond_63
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4751
    :try_start_66
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v2

    if-nez v2, :cond_72

    .line 4753
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingTopology:Landroid/hardware/display/DisplayTopology;

    .line 4754
    monitor-exit v0

    return v1

    :catchall_70
    move-exception p0

    goto :goto_78

    .line 4756
    :cond_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_70

    .line 4758
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->transmitTopologyUpdate(Landroid/hardware/display/DisplayTopology;)Z

    move-result p0

    return p0

    .line 4756
    :goto_78
    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_70

    throw p0
.end method

.method public onFrozenStateChanged(Landroid/os/IBinder;I)V
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 4590
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->setFrozen(Z)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 4591
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4592
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_20
    return-void
.end method

.method public setCached(Z)Z
    .registers 3

    .line 4564
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4565
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCached:Z

    .line 4566
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 4567
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final setFrozen(Z)Z
    .registers 3

    .line 4553
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v0

    .line 4554
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mFrozen:Z

    .line 4555
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->hasPendingAndIsReadyLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 4556
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public shouldReceiveRefreshRateWithChangeUpdate(I)Z
    .registers 4

    .line 4513
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefreshRateEventForForegroundAppsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3a

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 4516
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p1

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {p1, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p1

    .line 4518
    invoke-static {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result p1

    .line 4519
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmMaxImportanceForRRCallbacks(Lcom/android/server/display/DisplayManagerService;)I

    move-result v0

    if-le p1, v0, :cond_3a

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    const/16 p1, 0x3e8

    if-gt p0, p1, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p0, 0x0

    return p0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public final shouldSendDisplayEvent(I)Z
    .registers 9

    .line 4665
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/4 p0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_76

    .line 4701
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown display event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_24
    const-wide/16 v5, 0x200

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2c

    return v4

    :cond_2c
    return p0

    :pswitch_2d
    const-wide/16 v5, 0x80

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_35

    return v4

    :cond_35
    return p0

    :pswitch_36
    const-wide/16 v5, 0x40

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3e

    return v4

    :cond_3e
    return p0

    :pswitch_3f
    const-wide/16 v5, 0x20

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_47

    return v4

    :cond_47
    return p0

    :pswitch_48
    const-wide/16 v5, 0x10

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_50

    return v4

    :cond_50
    return p0

    :pswitch_51
    const-wide/16 v5, 0x8

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_59

    return v4

    :cond_59
    return p0

    :pswitch_5a
    const-wide/16 v5, 0x4

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_62

    return v4

    :cond_62
    return p0

    :pswitch_63
    const-wide/16 v5, 0x2

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6b

    return v4

    :cond_6b
    return p0

    :pswitch_6c
    const-wide/16 v5, 0x1

    and-long/2addr v0, v5

    cmp-long p1, v0, v2

    if-eqz p1, :cond_74

    return v4

    :cond_74
    return p0

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_63
        :pswitch_5a
        :pswitch_51
        :pswitch_48
        :pswitch_3f
        :pswitch_3f
        :pswitch_36
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method public final transmitDisplayEvent(II)V
    .registers 3

    .line 4658
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V

    return-void
.end method

.method public final transmitTopologyUpdate(Landroid/hardware/display/DisplayTopology;)Z
    .registers 4

    .line 4768
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    move-exception p1

    .line 4771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that display topology changed, assuming it died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4773
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    const/4 p0, 0x0

    return p0
.end method

.method public updateEventFlagsMask(J)V
    .registers 3

    .line 4526
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
