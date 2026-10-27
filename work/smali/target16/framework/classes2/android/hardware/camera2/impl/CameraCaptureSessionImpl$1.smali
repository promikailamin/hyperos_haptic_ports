.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;
.super Landroid/hardware/camera2/impl/CaptureCallback;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$-rSGqLYVnY7Pev5aN4GTX_s2kdA(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureBufferLost$8(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4YFjiiZ3jewL058zjm976_NzLcw(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureSequenceCompleted$6(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AUNuR3_M1WaWvHmZwd_miTBgiks(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureStarted$0(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CKqOMRKAL_8ik1sfAB6FpcXEWwQ(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCapturePartial$2(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GUm4K2I0ssp97MCVLpod9r_1qio(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureSequenceAborted$7(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KRJ4fbynuW7-k4oTMo2JmYMEw6w(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureProgressed$3(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kcFIfLOxdjFd2lwODqwuX1oXXxk(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onReadoutStarted$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nSI43m0hRmskZUsAoDo3H_ITffg(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureFailed$5(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oAh73-fY7KfurUWjiXDM7qKCt-8(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureCompleted$4(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 668
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CaptureCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureBufferLost$8(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 7

    .line 791
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object p0, p1

    move-object p1, v0

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureCompleted$4(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 5

    .line 733
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureFailed$5(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 5

    .line 747
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCapturePartial$2(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 5

    .line 705
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCapturePartial(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureProgressed$3(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 5

    .line 719
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceAborted$7(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .registers 4

    .line 776
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceCompleted$6(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V
    .registers 6

    .line 761
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureStarted$0(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 8

    .line 675
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object p0, p1

    move-object p1, v0

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onReadoutStarted$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 8

    .line 690
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object p0, p1

    move-object p1, v0

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onReadoutStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method


# virtual methods
.method public blacklist onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 16

    .line 788
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_26

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_26

    .line 789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 791
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 794
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 795
    goto :goto_26

    .line 794
    :catchall_20
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 795
    throw p1

    .line 797
    :cond_26
    :goto_26
    return-void
.end method

.method public blacklist onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 8

    .line 730
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_21

    .line 731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 733
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    goto :goto_21

    .line 736
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    throw p1

    .line 739
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 8

    .line 744
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_21

    .line 745
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 747
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 750
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    goto :goto_21

    .line 750
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    throw p1

    .line 753
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 8

    .line 702
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_21

    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 705
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    goto :goto_21

    .line 708
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    throw p1

    .line 711
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 8

    .line 716
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_21

    .line 717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 719
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 722
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    goto :goto_21

    .line 722
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    throw p1

    .line 725
    :cond_21
    :goto_21
    return-void
.end method

.method public blacklist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 7

    .line 773
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_21

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 776
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v2, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 779
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    goto :goto_21

    .line 779
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    throw p1

    .line 782
    :cond_21
    :goto_21
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$mfinishPendingSequence(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    .line 783
    return-void
.end method

.method public blacklist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
    .registers 14

    .line 758
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_25

    .line 759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 761
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda4;

    move-object v4, p0

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1f

    .line 764
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    goto :goto_27

    .line 764
    :catchall_1f
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    throw p1

    .line 758
    :cond_25
    move-object v4, p0

    move v6, p2

    .line 767
    :goto_27
    iget-object p1, v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {p1, v6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$mfinishPendingSequence(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    .line 768
    return-void
.end method

.method public blacklist onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 18

    .line 672
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_27

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_27

    .line 673
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 675
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda8;

    move-object v4, p0

    move-object v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 679
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    goto :goto_27

    .line 679
    :catchall_21
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    throw p1

    .line 682
    :cond_27
    :goto_27
    return-void
.end method

.method public blacklist onReadoutStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 18

    .line 687
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz p1, :cond_27

    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_27

    .line 688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 690
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda1;

    move-object v4, p0

    move-object v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 694
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    goto :goto_27

    .line 694
    :catchall_21
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    throw p1

    .line 697
    :cond_27
    :goto_27
    return-void
.end method
