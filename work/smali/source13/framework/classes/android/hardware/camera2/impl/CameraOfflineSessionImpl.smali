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
    .registers 15
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "offlineExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "offlineCallback"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .param p8, "frameNumberTracker"    # Landroid/hardware/camera2/impl/FrameNumberTracker;
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

    .line 107
    .local p5, "offlineOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local p6, "offlineInput":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Integer;Landroid/hardware/camera2/params/InputConfiguration;>;"
    .local p7, "configuredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local p9, "callbackMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/impl/CaptureCallbackHolder;>;"
    .local p10, "frameNumberList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraOfflineSession;-><init>()V

    .line 62
    const-string v0, "debug.camera.enable_log_framework"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    .line 63
    const-string v0, "debug.camera.enable_log_offline_session"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    move v1, v2

    :cond_16
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->DEBUG:Z

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v1, -0x1

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 95
    new-instance v0, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 108
    if-eqz p1, :cond_9e

    if-eqz p2, :cond_9e

    .line 112
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 115
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 116
    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 117
    .local v0, "partialCount":Ljava/lang/Integer;
    if-nez v0, :cond_72

    .line 119
    iput v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    goto :goto_78

    .line 121
    :cond_72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    .line 124
    :goto_78
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v1, p10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 126
    iput-object p9, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 127
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 128
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    .line 129
    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 130
    const-string/jumbo v1, "offline executor must not be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    .line 131
    const-string/jumbo v1, "offline callback must not be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    .line 133
    return-void

    .line 109
    .end local v0    # "partialCount":Ljava/lang/Integer;
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkAndFireSequenceComplete()V
    .registers 25

    .line 558
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    .line 559
    .local v2, "completedFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    .line 560
    .local v4, "completedReprocessFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedZslStillFrameNumber()J

    move-result-wide v6

    .line 561
    .local v6, "completedZslStillFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 562
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 563
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 564
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 565
    .local v9, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    const/4 v10, 0x0

    .line 566
    .local v10, "sequenceCompleted":Z
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v11

    .line 570
    .local v11, "requestId":I
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 571
    :try_start_2f
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_c8

    .line 572
    .local v0, "index":I
    if-ltz v0, :cond_45

    .line 573
    :try_start_37
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_40

    goto :goto_46

    .line 594
    .end local v0    # "index":I
    :catchall_40
    move-exception v0

    move-wide/from16 v22, v2

    goto/16 :goto_cb

    .line 573
    .restart local v0    # "index":I
    :cond_45
    const/4 v13, 0x0

    .line 574
    .local v13, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_46
    if-eqz v13, :cond_83

    .line 575
    nop

    .line 576
    :try_start_49
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v14

    .line 577
    .local v14, "lastRegularFrameNumber":J
    nop

    .line 578
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v16

    .line 579
    .local v16, "lastReprocessFrameNumber":J
    nop

    .line 580
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v18

    .line 581
    .local v18, "lastZslStillFrameNumber":J
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/impl/CaptureCallback;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v20

    .line 582
    .local v20, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/impl/CaptureCallback;->getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v21
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_c8

    .line 584
    .local v21, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    cmp-long v22, v14, v2

    if-gtz v22, :cond_7c

    cmp-long v22, v16, v4

    if-gtz v22, :cond_7c

    cmp-long v22, v18, v6

    if-gtz v22, :cond_7c

    .line 587
    const/4 v10, 0x1

    .line 588
    move-wide/from16 v22, v2

    .end local v2    # "completedFrameNumber":J
    .local v22, "completedFrameNumber":J
    :try_start_76
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_7e

    .line 584
    .end local v22    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_7c
    move-wide/from16 v22, v2

    .line 590
    .end local v2    # "completedFrameNumber":J
    .end local v14    # "lastRegularFrameNumber":J
    .end local v16    # "lastReprocessFrameNumber":J
    .end local v18    # "lastZslStillFrameNumber":J
    .restart local v22    # "completedFrameNumber":J
    :goto_7e
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_8e

    .line 591
    .end local v20    # "executor":Ljava/util/concurrent/Executor;
    .end local v21    # "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v22    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_83
    move-wide/from16 v22, v2

    .end local v2    # "completedFrameNumber":J
    .restart local v22    # "completedFrameNumber":J
    const/16 v20, 0x0

    .line 592
    .restart local v20    # "executor":Ljava/util/concurrent/Executor;
    const/4 v2, 0x0

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    .line 594
    .end local v0    # "index":I
    .end local v20    # "executor":Ljava/util/concurrent/Executor;
    .local v2, "executor":Ljava/util/concurrent/Executor;
    .local v3, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :goto_8e
    monitor-exit v12
    :try_end_8f
    .catchall {:try_start_76 .. :try_end_8f} :catchall_cd

    .line 598
    if-eqz v13, :cond_93

    if-eqz v10, :cond_96

    .line 599
    :cond_93
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 603
    :cond_96
    if-eqz v10, :cond_c4

    if-eqz v3, :cond_c4

    if-eqz v2, :cond_c4

    .line 604
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;

    invoke-direct {v0, v1, v3, v11, v9}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILandroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V

    move-object v12, v0

    .line 614
    .local v12, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 616
    .local v14, "ident":J
    :try_start_a6
    invoke-interface {v2, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_bd

    .line 618
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    nop

    .line 621
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_c4

    .line 622
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceIdle()V

    goto :goto_c4

    .line 618
    :catchall_bd
    move-exception v0

    move-object/from16 v16, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    throw v16

    .line 626
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v10    # "sequenceCompleted":Z
    .end local v11    # "requestId":I
    .end local v12    # "resultDispatch":Ljava/lang/Runnable;
    .end local v13    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v14    # "ident":J
    :cond_c4
    :goto_c4
    move-wide/from16 v2, v22

    goto/16 :goto_1a

    .line 594
    .end local v22    # "completedFrameNumber":J
    .local v2, "completedFrameNumber":J
    .restart local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .restart local v10    # "sequenceCompleted":Z
    .restart local v11    # "requestId":I
    :catchall_c8
    move-exception v0

    move-wide/from16 v22, v2

    .end local v2    # "completedFrameNumber":J
    .restart local v22    # "completedFrameNumber":J
    :goto_cb
    :try_start_cb
    monitor-exit v12
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cd

    throw v0

    :catchall_cd
    move-exception v0

    goto :goto_cb

    .line 627
    .end local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v10    # "sequenceCompleted":Z
    .end local v11    # "requestId":I
    .end local v22    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_cf
    return-void
.end method

.method private blacklist disconnect()V
    .registers 6

    .line 752
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 754
    monitor-exit v0

    return-void

    .line 757
    :cond_e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    if-eqz v1, :cond_46

    .line 758
    invoke-interface {v1}, Landroid/hardware/camera2/ICameraOfflineSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_4e

    .line 761
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraOfflineSession;->disconnect()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_4e

    .line 764
    goto :goto_29

    .line 762
    :catch_20
    move-exception v1

    .line 763
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string v2, "CameraOfflineSessionImpl"

    const-string v3, "Exception while disconnecting from offline session: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    nop

    .line 769
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    .line 771
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 778
    .local v1, "closeDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_4e

    .line 780
    .local v2, "ident":J
    :try_start_35
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_40

    .line 782
    :try_start_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    nop

    .line 784
    .end local v1    # "closeDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    monitor-exit v0

    .line 785
    return-void

    .line 782
    .restart local v1    # "closeDispatch":Ljava/lang/Runnable;
    .restart local v2    # "ident":J
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    throw v4

    .line 766
    .end local v1    # "closeDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Offline session is not yet ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    throw v1

    .line 784
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private blacklist isClosed()Z
    .registers 2

    .line 748
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist removeCompletedCallbackHolderLocked(JJJ)V
    .registers 28
    .param p1, "lastCompletedRegularFrameNumber"    # J
    .param p3, "lastCompletedReprocessFrameNumber"    # J
    .param p5, "lastCompletedZslStillFrameNumber"    # J

    .line 631
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->DEBUG:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "CameraOfflineSessionImpl"

    if-eqz v1, :cond_2a

    .line 632
    new-array v1, v5, [Ljava/lang/Object;

    .line 636
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v4

    .line 637
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v3

    .line 638
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    .line 632
    const-string/jumbo v7, "remove completed callback holders for lastCompletedRegularFrameNumber %d, lastCompletedReprocessFrameNumber %d, lastCompletedZslStillFrameNumber %d"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2a
    const/4 v1, 0x0

    .line 642
    .local v1, "isReprocess":Z
    iget-object v7, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 643
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 644
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 645
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 646
    .local v8, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v9

    .line 649
    .local v9, "requestId":I
    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    .line 650
    .local v10, "index":I
    if-ltz v10, :cond_52

    .line 651
    iget-object v11, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_53

    :cond_52
    const/4 v11, 0x0

    .line 652
    .local v11, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_53
    if-eqz v11, :cond_e4

    .line 653
    nop

    .line 654
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v12

    .line 655
    .local v12, "lastRegularFrameNumber":J
    nop

    .line 656
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v14

    .line 657
    .local v14, "lastReprocessFrameNumber":J
    nop

    .line 658
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v16

    .line 659
    .local v16, "lastZslStillFrameNumber":J
    cmp-long v18, v12, p1

    if-gtz v18, :cond_e1

    cmp-long v18, v14, p3

    if-gtz v18, :cond_e1

    cmp-long v18, v16, p5

    if-gtz v18, :cond_e1

    .line 662
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v18

    if-eqz v18, :cond_c4

    .line 663
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->removeAt(I)V

    .line 664
    iget-boolean v5, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->DEBUG:Z

    if-eqz v5, :cond_be

    .line 665
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    .line 668
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v4

    .line 669
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v2

    .line 670
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v18, 0x3

    aput-object v19, v5, v18

    const/16 v19, 0x4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x5

    .line 671
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x6

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v5, v19

    .line 665
    const-string v2, "Remove holder for requestId %d, because lastRegularFrame %d is <= %d, lastReprocessFrame %d is <= %d, lastZslStillFrame %d is <= %d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 664
    :cond_be
    const/16 v18, 0x3

    .line 674
    :goto_c0
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_e6

    .line 676
    :cond_c4
    move/from16 v18, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sequence not yet completed for request id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move/from16 v5, v18

    const/4 v2, 0x2

    goto/16 :goto_31

    .line 659
    :cond_e1
    move/from16 v18, v5

    goto :goto_e6

    .line 652
    .end local v12    # "lastRegularFrameNumber":J
    .end local v14    # "lastReprocessFrameNumber":J
    .end local v16    # "lastZslStillFrameNumber":J
    :cond_e4
    move/from16 v18, v5

    .line 681
    .end local v8    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v9    # "requestId":I
    .end local v10    # "index":I
    .end local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_e6
    move/from16 v5, v18

    const/4 v2, 0x2

    goto/16 :goto_31

    .line 682
    :cond_eb
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

    .line 889
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist binderDied()V
    .registers 3

    .line 804
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

    .line 805
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V

    .line 806
    return-void
.end method

.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 837
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
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

    .line 849
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .line 855
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 921
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V

    .line 922
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 790
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 793
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 794
    nop

    .line 795
    return-void

    .line 793
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 794
    throw v0
.end method

.method public whitelist finalizeOutputConfigurations(Ljava/util/List;)V
    .registers 4
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

    .line 831
    .local p1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 3

    .line 810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInputSurface()Landroid/view/Surface;
    .registers 3

    .line 905
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isReprocessable()Z
    .registers 3

    .line 900
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyFailedSwitch()V
    .registers 6

    .line 685
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 693
    .local v1, "switchFailDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    .line 695
    .local v2, "ident":J
    :try_start_c
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    .line 697
    :try_start_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    nop

    .line 699
    .end local v1    # "switchFailDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    monitor-exit v0

    .line 700
    return-void

    .line 697
    .restart local v1    # "switchFailDispatch":Ljava/lang/Runnable;
    .restart local v2    # "ident":J
    :catchall_17
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    throw v4

    .line 699
    .end local v1    # "switchFailDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist prepare(ILandroid/view/Surface;)V
    .registers 5
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist prepare(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 815
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRemoteSession(Landroid/hardware/camera2/ICameraOfflineSession;)V
    .registers 8
    .param p1, "remoteSession"    # Landroid/hardware/camera2/ICameraOfflineSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    if-nez p1, :cond_a

    .line 709
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->notifyFailedSwitch()V

    .line 710
    monitor-exit v0

    return-void

    .line 713
    :cond_a
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    .line 715
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraOfflineSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_43

    .line 716
    .local v1, "remoteSessionBinder":Landroid/os/IBinder;
    const/4 v2, 0x2

    if-eqz v1, :cond_3b

    .line 722
    const/4 v3, 0x0

    :try_start_14
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_32
    .catchall {:try_start_14 .. :try_end_17} :catchall_43

    .line 726
    nop

    .line 728
    :try_start_18
    new-instance v2, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 737
    .local v2, "readyDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_43

    .line 739
    .local v3, "ident":J
    :try_start_21
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2c

    .line 741
    :try_start_26
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .line 743
    .end local v1    # "remoteSessionBinder":Landroid/os/IBinder;
    .end local v2    # "readyDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    monitor-exit v0

    .line 744
    return-void

    .line 741
    .restart local v1    # "remoteSessionBinder":Landroid/os/IBinder;
    .restart local v2    # "readyDispatch":Ljava/lang/Runnable;
    .restart local v3    # "ident":J
    :catchall_2c
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .end local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    throw v5

    .line 723
    .end local v2    # "readyDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .restart local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    :catch_32
    move-exception v3

    .line 724
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "The camera offline session has encountered a serious error"

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .end local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    throw v4

    .line 717
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .restart local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    :cond_3b
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "The camera offline session has encountered a serious error"

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .end local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    throw v3

    .line 743
    .end local v1    # "remoteSessionBinder":Landroid/os/IBinder;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .restart local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public whitelist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
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

    .line 873
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .line 879
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 861
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 867
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopRepeating()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 884
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 916
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
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

    .line 911
    .local p1, "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist tearDown(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 825
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
