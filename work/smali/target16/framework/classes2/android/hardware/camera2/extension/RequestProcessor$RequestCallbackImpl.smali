.class Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;
.super Landroid/hardware/camera2/extension/IRequestCallback$Stub;
.source "RequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$D6CUWulxuJuwufM1h9E-TSpjDtQ(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/TotalCaptureResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureCompleted$2(ILandroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V8DXZ_sDSRZw5Awg3xDu2E-zGi0(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureStarted$0(IJJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ezGATn_0lweB2BFu0DRZBG7mAjE(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureSequenceAborted$6(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k_f6CireYU2Rtfmy5lIDubG5DEE(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureProgressed$1(ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mbahspFMcisar8_I5Ve3I9avIbk(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureSequenceCompleted$5(IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ve6Sbm4B-Z8IeVXKj3y3OPTxCwg(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureFailure;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureFailed$3(ILandroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zr4P29ui7n7QVACbMNkS-w_xGBw(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureBufferLost$4(IJI)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;",
            "Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;-><init>()V

    .line 424
    iput-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    .line 425
    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    .line 426
    iput-object p3, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 427
    return-void
.end method

.method private synthetic blacklist lambda$onCaptureBufferLost$4(IJI)V
    .registers 7

    .line 526
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureBufferLost(Landroid/hardware/camera2/extension/RequestProcessor$Request;JI)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureCompleted$2(ILandroid/hardware/camera2/TotalCaptureResult;)V
    .registers 5

    .line 489
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureCompleted(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureFailed$3(ILandroid/hardware/camera2/CaptureFailure;)V
    .registers 5

    .line 510
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureFailed(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureProgressed$1(ILandroid/hardware/camera2/CaptureResult;)V
    .registers 5

    .line 453
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureProgressed(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceAborted$6(I)V
    .registers 3

    .line 551
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceCompleted$5(IJ)V
    .registers 5

    .line 540
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureStarted$0(IJJ)V
    .registers 8

    .line 434
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    .line 435
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    .line 434
    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureStarted(Landroid/hardware/camera2/extension/RequestProcessor$Request;JJ)V

    return-void
.end method


# virtual methods
.method public blacklist onCaptureBufferLost(IJI)V
    .registers 14

    .line 522
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 523
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 525
    :try_start_c
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda4;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJI)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1f

    .line 529
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    nop

    .line 531
    goto :goto_44

    .line 529
    :catchall_1f
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    throw p1

    .line 532
    :cond_25
    move v5, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestProcessor"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_44
    return-void
.end method

.method public blacklist onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V
    .registers 24

    .line 465
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_91

    .line 466
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 467
    iget-object v4, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    if-eqz v4, :cond_2f

    iget-object v4, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    .line 468
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 469
    iget-object v3, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 470
    new-array v3, v3, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    .line 471
    iget-object v4, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object v13, v3

    goto :goto_30

    .line 474
    :cond_2f
    move-object v13, v3

    :goto_30
    new-instance v11, Ljava/util/ArrayList;

    iget-object v3, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    .line 475
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    iget-object v3, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;

    .line 477
    new-instance v14, Landroid/hardware/camera2/CaptureResult;

    iget-object v15, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    iget-object v5, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v6, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v7, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    iget-wide v8, v4, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v19, v8

    invoke-direct/range {v14 .. v20}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    goto :goto_41

    .line 481
    :cond_68
    new-instance v4, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v5, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->logicalCameraId:Ljava/lang/String;

    iget-object v6, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v7, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v8, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    iget-wide v9, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    iget v12, v2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    invoke-direct/range {v4 .. v13}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 488
    :try_start_7d
    iget-object v5, v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0, v1, v4}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_8c

    .line 492
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    nop

    .line 494
    goto :goto_af

    .line 492
    :catchall_8c
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    throw v0

    .line 495
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_af
    return-void
.end method

.method public blacklist onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V
    .registers 12

    .line 502
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 503
    new-instance v1, Landroid/hardware/camera2/CaptureFailure;

    iget-object v2, p2, Landroid/hardware/camera2/extension/CaptureFailure;->request:Landroid/hardware/camera2/CaptureRequest;

    iget v3, p2, Landroid/hardware/camera2/extension/CaptureFailure;->reason:I

    iget-boolean v4, p2, Landroid/hardware/camera2/extension/CaptureFailure;->dropped:Z

    iget v5, p2, Landroid/hardware/camera2/extension/CaptureFailure;->sequenceId:I

    iget-wide v6, p2, Landroid/hardware/camera2/extension/CaptureFailure;->frameNumber:J

    iget-object v8, p2, Landroid/hardware/camera2/extension/CaptureFailure;->errorPhysicalCameraId:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 510
    :try_start_1d
    iget-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2c

    .line 513
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    nop

    .line 515
    goto :goto_50

    .line 513
    :catchall_2c
    move-exception v0

    move-object p1, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    throw p1

    .line 516
    :cond_32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestProcessor"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_50
    return-void
.end method

.method public blacklist onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V
    .registers 11

    .line 446
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 447
    new-instance v1, Landroid/hardware/camera2/CaptureResult;

    iget-object v2, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    iget-object v3, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v4, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v5, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    iget-wide v6, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 452
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureResult;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 456
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    nop

    .line 458
    goto :goto_4e

    .line 456
    :catchall_2a
    move-exception v0

    move-object p1, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    throw p1

    .line 459
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestProcessor"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_4e
    return-void
.end method

.method public blacklist onCaptureSequenceAborted(I)V
    .registers 6

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    throw p1
.end method

.method public blacklist onCaptureSequenceCompleted(IJ)V
    .registers 8

    .line 538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 540
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 543
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    throw p1
.end method

.method public blacklist onCaptureStarted(IJJ)V
    .registers 16

    .line 431
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 434
    :try_start_c
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda2;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJJ)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1f

    .line 437
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    nop

    .line 439
    goto :goto_44

    .line 437
    :catchall_1f
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    throw p1

    .line 440
    :cond_25
    move v5, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestProcessor"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_44
    return-void
.end method
