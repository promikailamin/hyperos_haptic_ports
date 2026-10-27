.class public Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraCaptureSession"


# instance fields
.field private final greylist-max-o mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private volatile greylist-max-o mAborting:Z

.field private greylist-max-o mClosed:Z

.field private final greylist-max-o mConfigureSuccess:Z

.field private final greylist-max-o mDeviceExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field private final greylist-max-o mId:I

.field private final greylist-max-o mIdString:Ljava/lang/String;

.field private final greylist-max-o mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private final greylist-max-o mInput:Landroid/view/Surface;

.field private final greylist-max-o mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TaskDrainer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSkipUnconfigure:Z

.field private final greylist-max-o mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final greylist-max-o mStateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAbortDrainer(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAborting(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceImpl(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdString(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleDrainer(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSkipUnconfigure(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateCallback(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAborting(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishPendingSequence(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->finishPendingSequence(I)V

    return-void
.end method

.method constructor greylist-max-o <init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V
    .registers 10

    .line 93
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 78
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    .line 94
    if-eqz p3, :cond_a6

    .line 98
    iput p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    .line 99
    iget p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Session %d: "

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    .line 102
    const-string p1, "stateExecutor must not be null"

    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateExecutor:Ljava/util/concurrent/Executor;

    .line 103
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createUserStateCallbackProxy(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 105
    const-string p1, "deviceStateExecutor must not be null"

    invoke-static {p6, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 107
    const-string p1, "deviceImpl must not be null"

    invoke-static {p5, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 115
    new-instance p1, Landroid/hardware/camera2/utils/TaskDrainer;

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl-IA;)V

    const-string p5, "seq"

    invoke-direct {p1, p2, p3, p5}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    .line 117
    new-instance p1, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;

    invoke-direct {p3, p0, p4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl-IA;)V

    const-string p5, "idle"

    invoke-direct {p1, p2, p3, p5}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 119
    new-instance p1, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;

    invoke-direct {p3, p0, p4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl-IA;)V

    const-string p4, "abort"

    invoke-direct {p1, p2, p3, p4}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 124
    const/4 p1, 0x1

    if-eqz p7, :cond_82

    .line 125
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 127
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    goto :goto_a5

    .line 129
    :cond_82
    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 130
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Failed to create capture session; configuration failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraCaptureSession"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    .line 134
    :goto_a5
    return-void

    .line 95
    :cond_a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o addPendingSequence(I)I
    .registers 4

    .line 941
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    .line 942
    return p1
.end method

.method private greylist-max-o checkCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 3

    .line 220
    if-eqz p1, :cond_37

    .line 222
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 223
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "this capture session cannot handle reprocess requests"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrivilegedApp()Z

    move-result v0

    if-nez v0, :cond_36

    .line 226
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    move-result p1

    iget v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    if-ne p1, v0, :cond_2e

    goto :goto_36

    .line 227
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capture request was created for another session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_36
    :goto_36
    return-void

    .line 221
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "request must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkCaptureRequests(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 279
    if-eqz p1, :cond_47

    .line 281
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 286
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 287
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 290
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    move-result v0

    iget v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    if-ne v0, v1, :cond_2d

    goto :goto_3d

    .line 291
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Capture request was created for another session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This capture session cannot handle reprocess requests"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_3d
    :goto_3d
    goto :goto_c

    .line 297
    :cond_3e
    return-void

    .line 282
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requests must have at least one element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requests must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkNotClosed()V
    .registers 3

    .line 926
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    if-nez v0, :cond_5

    .line 930
    return-void

    .line 927
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session has been closed; further changes are illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 3

    .line 369
    if-eqz p1, :cond_11

    .line 371
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result p1

    if-nez p1, :cond_9

    .line 374
    return-void

    .line 372
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "repeating reprocess requests are not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "request must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkRepeatingRequests(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 426
    if-eqz p1, :cond_30

    .line 428
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 432
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 433
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 437
    goto :goto_c

    .line 434
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "repeating reprocess burst requests are not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 438
    :cond_27
    return-void

    .line 429
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "requests must have at least one element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "requests must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;
    .registers 3

    .line 660
    if-eqz p2, :cond_7

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    goto :goto_8

    .line 661
    :cond_7
    const/4 p1, 0x0

    .line 663
    :goto_8
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p1

    return-object p1
.end method

.method private blacklist createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;
    .registers 9

    .line 668
    new-instance v0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    move-object v4, p2

    move-object v5, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private greylist-max-o createUserStateCallbackProxy(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .registers 4

    .line 648
    new-instance v0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    return-object v0
.end method

.method private greylist-max-o finishPendingSequence(I)V
    .registers 3

    .line 953
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_a

    .line 957
    goto :goto_14

    .line 954
    :catch_a
    move-exception p1

    .line 956
    const-string v0, "CameraCaptureSession"

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_14
    return-void
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 462
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    if-eqz v1, :cond_28

    .line 463
    const-string v1, "CameraCaptureSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "abortCaptures - Session is already aborting; doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    monitor-exit v0

    return-void

    .line 467
    :cond_28
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    .line 468
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 470
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 179
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 182
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    .line 189
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 190
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 189
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 191
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public whitelist captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
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

    .line 234
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkCaptureRequests(Ljava/util/List;)V

    .line 236
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 239
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    .line 247
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 248
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 247
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 249
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public whitelist captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
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

    .line 255
    if-eqz p2, :cond_30

    .line 257
    if-eqz p3, :cond_28

    .line 260
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkCaptureRequests(Ljava/util/List;)V

    .line 262
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_c
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 265
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 273
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 274
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 273
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 275
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1

    .line 258
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 197
    if-eqz p2, :cond_30

    .line 199
    if-eqz p3, :cond_28

    .line 202
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 204
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_c
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 207
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 214
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 215
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 214
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 216
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1

    .line 200
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 583
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_5
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    if-eqz v1, :cond_b

    .line 586
    monitor-exit v0

    return-void

    .line 591
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_47

    .line 604
    :try_start_e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_3f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e .. :try_end_13} :catch_14
    .catchall {:try_start_e .. :try_end_13} :catchall_47

    .line 620
    goto :goto_2f

    .line 615
    :catch_14
    move-exception v1

    .line 617
    :try_start_15
    const-string v2, "CameraCaptureSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Exception while stopping repeating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    :goto_2f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V

    .line 624
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_47

    .line 625
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    if-eqz v0, :cond_3e

    .line 626
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 628
    :cond_3e
    return-void

    .line 605
    :catch_3f
    move-exception v1

    .line 613
    :try_start_40
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 614
    monitor-exit v0

    return-void

    .line 624
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public blacklist closeWithoutDraining()V
    .registers 3

    .line 564
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_5
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    if-eqz v1, :cond_b

    .line 567
    monitor-exit v0

    return-void

    .line 572
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    .line 573
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 574
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1e

    .line 576
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    if-eqz v0, :cond_1d

    .line 577
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 579
    :cond_1d
    return-void

    .line 574
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 919
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 921
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 922
    nop

    .line 923
    return-void

    .line 921
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 922
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

    .line 168
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 170
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->finalizeOutputConfigs(Ljava/util/List;)V

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    return-object v0
.end method

.method public greylist-max-o getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .registers 3

    .line 814
    nop

    .line 815
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 818
    new-instance v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V

    return-object v1
.end method

.method public whitelist getInputSurface()Landroid/view/Surface;
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    return-object v0
.end method

.method public greylist-max-o isAborting()Z
    .registers 2

    .line 641
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return v0
.end method

.method public whitelist isReprocessable()Z
    .registers 2

    .line 509
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o prepare(ILandroid/view/Surface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 153
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(ILandroid/view/Surface;)V

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public whitelist prepare(Landroid/view/Surface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 145
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(Landroid/view/Surface;)V

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public greylist-max-o replaceSessionClose()V
    .registers 3

    .line 533
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    .line 558
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    .line 559
    monitor-exit v0

    .line 560
    return-void

    .line 559
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
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

    .line 379
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkRepeatingRequests(Ljava/util/List;)V

    .line 381
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 384
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    .line 393
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 394
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 393
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 395
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public whitelist setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
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

    .line 401
    if-eqz p2, :cond_30

    .line 403
    if-eqz p3, :cond_28

    .line 406
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkRepeatingRequests(Ljava/util/List;)V

    .line 408
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_c
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 411
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 420
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 421
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 420
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 422
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1

    .line 404
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 304
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 307
    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    .line 314
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 315
    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 314
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 316
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public whitelist setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 322
    if-eqz p2, :cond_30

    .line 324
    if-eqz p3, :cond_28

    .line 327
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 329
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_c
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 332
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 339
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 340
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 339
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 341
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1

    .line 325
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist startStreaming(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
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

    .line 353
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 356
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkExecutor(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 363
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 364
    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 363
    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->startStreaming(Ljava/util/List;Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/concurrent/Executor;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 365
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public whitelist stopRepeating()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 449
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 3

    .line 501
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 503
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_10

    .line 504
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->supportsOfflineProcessing(Landroid/view/Surface;)Z

    move-result p1

    return p1

    .line 503
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public whitelist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 5
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

    .line 492
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 494
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_10

    .line 495
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;

    move-result-object p1

    return-object p1

    .line 494
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public greylist-max-o tearDown(Landroid/view/Surface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 161
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->tearDown(Landroid/view/Surface;)V

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public whitelist updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_5
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    .line 485
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 486
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method
