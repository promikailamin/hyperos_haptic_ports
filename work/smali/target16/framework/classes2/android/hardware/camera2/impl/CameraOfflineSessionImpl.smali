.class public Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
.super Landroid/hardware/camera2/CameraOfflineSession;
.source "CameraOfflineSessionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    }
.end annotation


# static fields
.field private static final blacklist NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final blacklist REQUEST_ID_NONE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "CameraOfflineSessionImpl"


# instance fields
.field private final blacklist DEBUG:Z

.field private final blacklist mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

.field private final blacklist mCameraId:Ljava/lang/String;

.field private blacklist mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final blacklist mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

.field final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

.field private final blacklist mOfflineExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOfflineOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOfflineRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

.field private final blacklist mTotalPartialCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraId(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCharacteristics(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineCallback(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineExecutor(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineOutputs(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteSession(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/ICameraOfflineSession;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->isClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;JJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;Landroid/util/SparseArray;Ljava/util/AbstractMap$SimpleEntry;Landroid/util/SparseArray;Landroid/hardware/camera2/impl/FrameNumberTracker;Landroid/util/SparseArray;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/impl/FrameNumberTracker;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Landroid/hardware/camera2/CameraOfflineSession;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->DEBUG:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 67
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 106
    if-eqz p1, :cond_8d

    if-eqz p2, :cond_8d

    .line 110
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 113
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 114
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 115
    if-nez p1, :cond_63

    .line 117
    const/4 p1, 0x1

    iput p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    goto :goto_69

    .line 119
    :cond_63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    .line 122
    :goto_69
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {p1, p10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 124
    iput-object p9, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 125
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 126
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    .line 127
    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 128
    const-string p1, "offline executor must not be null"

    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    .line 129
    const-string p1, "offline callback must not be null"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    .line 131
    return-void

    .line 107
    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument given"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist checkAndFireSequenceComplete()V
    .registers 23

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v1

    .line 563
    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v3}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v3

    .line 564
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v5}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedZslStillFrameNumber()J

    move-result-wide v5

    .line 565
    iget-object v7, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 566
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 567
    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 568
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 569
    nop

    .line 570
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v9

    .line 574
    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v10

    .line 575
    :try_start_2e
    iget-object v11, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    .line 576
    const/4 v12, 0x0

    if-ltz v11, :cond_40

    .line 577
    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_41

    :cond_40
    move-object v13, v12

    .line 578
    :goto_41
    const/4 v14, 0x0

    if-eqz v13, :cond_7b

    .line 579
    nop

    .line 580
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v15

    .line 581
    nop

    .line 582
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v17

    .line 583
    nop

    .line 584
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v19

    .line 585
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v12

    invoke-virtual {v12}, Landroid/hardware/camera2/impl/CaptureCallback;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v12

    .line 586
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/impl/CaptureCallback;->getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v21

    .line 588
    cmp-long v15, v15, v1

    if-gtz v15, :cond_77

    cmp-long v15, v17, v3

    if-gtz v15, :cond_77

    cmp-long v15, v19, v5

    if-gtz v15, :cond_77

    .line 591
    nop

    .line 592
    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->removeAt(I)V

    const/4 v11, 0x1

    move v14, v11

    .line 594
    :cond_77
    move-object v11, v12

    move-object/from16 v12, v21

    goto :goto_7d

    .line 595
    :cond_7b
    nop

    .line 596
    move-object v11, v12

    .line 598
    :goto_7d
    monitor-exit v10
    :try_end_7e
    .catchall {:try_start_2e .. :try_end_7e} :catchall_b2

    .line 602
    if-eqz v13, :cond_82

    if-eqz v14, :cond_85

    .line 603
    :cond_82
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 607
    :cond_85
    if-eqz v14, :cond_b0

    if-eqz v12, :cond_b0

    if-eqz v11, :cond_b0

    .line 608
    new-instance v10, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;

    invoke-direct {v10, v0, v12, v9, v8}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILandroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V

    .line 618
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 620
    :try_start_94
    invoke-interface {v11, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_ab

    .line 622
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    nop

    .line 625
    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-nez v8, :cond_b0

    .line 626
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceIdle()V

    goto :goto_b0

    .line 622
    :catchall_ab
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    throw v0

    .line 630
    :cond_b0
    :goto_b0
    goto/16 :goto_1a

    .line 598
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v10
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 631
    :cond_b5
    return-void
.end method

.method private blacklist disconnect()V
    .registers 6

    .line 756
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 758
    monitor-exit v0

    return-void

    .line 761
    :cond_e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    if-eqz v1, :cond_47

    .line 762
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraOfflineSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_4f

    .line 765
    :try_start_1c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraOfflineSession;->disconnect()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_4f

    .line 768
    :goto_21
    goto :goto_2b

    .line 766
    :catch_22
    move-exception v1

    .line 767
    :try_start_23
    const-string v2, "CameraOfflineSessionImpl"

    const-string v3, "Exception while disconnecting from offline session: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 773
    :goto_2b
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    .line 775
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 782
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_4f

    .line 784
    :try_start_37
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_42

    .line 786
    :try_start_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 787
    nop

    .line 788
    monitor-exit v0

    .line 789
    return-void

    .line 786
    :catchall_42
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 787
    throw v1

    .line 770
    :cond_47
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Offline session is not yet ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 788
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3c .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private blacklist isClosed()Z
    .registers 2

    .line 752
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist removeCompletedCallbackHolderLocked(JJJ)V
    .registers 17

    .line 645
    nop

    .line 646
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 647
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 648
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 649
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 650
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v2

    .line 653
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 654
    if-ltz v3, :cond_28

    .line 655
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 656
    :goto_29
    if-eqz v4, :cond_6e

    .line 657
    nop

    .line 658
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v4

    .line 659
    nop

    .line 660
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v6

    .line 661
    nop

    .line 662
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v8

    .line 663
    cmp-long v4, v4, p1

    if-gtz v4, :cond_6e

    cmp-long v4, v6, p3

    if-gtz v4, :cond_6e

    cmp-long v4, v8, p5

    if-gtz v4, :cond_6e

    .line 666
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 667
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 678
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6e

    .line 680
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sequence not yet completed for request id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraOfflineSessionImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    goto :goto_7

    .line 685
    :cond_6e
    :goto_6e
    goto :goto_7

    .line 686
    :cond_6f
    return-void
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 893
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist binderDied()V
    .registers 3

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOfflineSession on device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " died unexpectedly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOfflineSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V

    .line 810
    return-void
.end method

.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 841
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 853
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 859
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 847
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 925
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V

    .line 926
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 794
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 797
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 798
    nop

    .line 799
    return-void

    .line 797
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 798
    throw v0
.end method

.method public whitelist finalizeOutputConfigurations(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 835
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported in offline mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 3

    .line 814
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInputSurface()Landroid/view/Surface;
    .registers 3

    .line 909
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isReprocessable()Z
    .registers 3

    .line 904
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyFailedSwitch()V
    .registers 6

    .line 689
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    .line 699
    :try_start_c
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    .line 701
    :try_start_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    nop

    .line 703
    monitor-exit v0

    .line 704
    return-void

    .line 701
    :catchall_17
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    throw v1

    .line 703
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist prepare(ILandroid/view/Surface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 824
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist prepare(Landroid/view/Surface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 819
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported in offline mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setRemoteSession(Landroid/hardware/camera2/ICameraOfflineSession;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    if-nez p1, :cond_a

    .line 713
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->notifyFailedSwitch()V

    .line 714
    monitor-exit v0

    return-void

    .line 717
    :cond_a
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    .line 719
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraOfflineSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_42

    .line 720
    const/4 v1, 0x2

    if-eqz p1, :cond_3a

    .line 726
    const/4 v2, 0x0

    :try_start_14
    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_31
    .catchall {:try_start_14 .. :try_end_17} :catchall_42

    .line 730
    nop

    .line 732
    :try_start_18
    new-instance p1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;

    invoke-direct {p1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_42

    .line 743
    :try_start_21
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2c

    .line 745
    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    nop

    .line 747
    monitor-exit v0

    .line 748
    return-void

    .line 745
    :catchall_2c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    throw p1

    .line 727
    :catch_31
    move-exception p1

    .line 728
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "The camera offline session has encountered a serious error"

    invoke-direct {p1, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 721
    :cond_3a
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "The camera offline session has encountered a serious error"

    invoke-direct {p1, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 747
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public whitelist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 877
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 883
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 865
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 871
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist stopRepeating()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 3

    .line 920
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported in offline mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            ")",
            "Landroid/hardware/camera2/CameraOfflineSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 915
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported in offline mode"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist tearDown(Landroid/view/Surface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 829
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported in offline mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 899
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported in offline mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
