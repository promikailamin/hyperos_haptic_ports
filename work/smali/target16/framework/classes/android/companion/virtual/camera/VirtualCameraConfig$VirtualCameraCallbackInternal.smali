.class Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;
.super Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;
.source "VirtualCameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/camera/VirtualCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualCameraCallbackInternal"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPerFrameCameraMetadataEnabled:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$3iNbx8vbYOTfH14JSxHZ3vhtdTc(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJLandroid/hardware/camera2/CaptureRequest;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onProcessCaptureRequest$5(IJLandroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5Ioa-W1LjvoNgCkj-xswl9kTvxM(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onOpenCamera$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6kLWwhV1Y6O6DPA8tatf1cBUmXk(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJLandroid/hardware/camera2/CaptureRequest;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onProcessCaptureRequest$6(IJLandroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BijD2bBXKa6ZZg1EmKJ7lHXXmJg(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onConfigureSession$1(Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Mmsciq6QqZEHjwM4ui2axCzedCk(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onConfigureSession$2(Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Q3CqZA4rpiHmLNgEpSltuLfw-WI(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onStreamClosed$10(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$al_y_afwHkyam5VA6HpKIl5oeWQ(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onProcessCaptureRequest$8(IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fwTn-gTdq8-c0DImXe7SsBjSBQE(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onStreamClosed$9(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j3GV0bFY6K7pBuSdAobvZUXKww0(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;ILandroid/view/Surface;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onStreamConfigured$4(ILandroid/view/Surface;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jRuic187kui-nqtCZ5rlGYCZPdY(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onProcessCaptureRequest$7(IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r1M2x8G8OIfVHOiUVANGyUMhOZI(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;ILandroid/view/Surface;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onStreamConfigured$3(ILandroid/view/Surface;III)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;Z)V
    .registers 4

    .line 511
    invoke-direct {p0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;-><init>()V

    .line 512
    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    .line 513
    iput-object p2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    .line 514
    iput-boolean p3, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mPerFrameCameraMetadataEnabled:Z

    .line 515
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;ZLandroid/companion/virtual/camera/VirtualCameraConfig-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;-><init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method private blacklist convertToFrameworkCaptureResultConsumer(Landroid/companion/virtual/camera/ICaptureResultConsumer;)Ljava/util/function/ObjLongConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/virtual/camera/ICaptureResultConsumer;",
            ")",
            "Ljava/util/function/ObjLongConsumer<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 569
    iget-boolean v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mPerFrameCameraMetadataEnabled:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_7

    goto :goto_d

    .line 573
    :cond_7
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda10;-><init>(Landroid/companion/virtual/camera/ICaptureResultConsumer;)V

    return-object v0

    .line 570
    :cond_d
    :goto_d
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic blacklist lambda$convertToFrameworkCaptureResultConsumer$11(Landroid/companion/virtual/camera/ICaptureResultConsumer;Landroid/hardware/camera2/CaptureResult;J)V
    .registers 4

    .line 575
    nop

    .line 576
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 575
    invoke-interface {p0, p2, p3, p1}, Landroid/companion/virtual/camera/ICaptureResultConsumer;->acceptCaptureResult(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    .line 579
    nop

    .line 580
    return-void

    .line 577
    :catch_a
    move-exception p0

    .line 578
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private synthetic blacklist lambda$onConfigureSession$1(Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V
    .registers 4

    .line 532
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    .line 534
    invoke-direct {p0, p2}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->convertToFrameworkCaptureResultConsumer(Landroid/companion/virtual/camera/ICaptureResultConsumer;)Ljava/util/function/ObjLongConsumer;

    move-result-object p2

    .line 532
    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onConfigureSession(Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Ljava/util/function/ObjLongConsumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onConfigureSession$2(Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda9;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onOpenCamera$0()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/camera/VirtualCameraCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessCaptureRequest$5(IJLandroid/hardware/camera2/CaptureRequest;)V
    .registers 6

    .line 551
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onProcessCaptureRequest(IJLandroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessCaptureRequest$6(IJLandroid/hardware/camera2/CaptureRequest;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda12;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJLandroid/hardware/camera2/CaptureRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessCaptureRequest$7(IJ)V
    .registers 5

    .line 555
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onProcessCaptureRequest(IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessCaptureRequest$8(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda11;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStreamClosed$10(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda5;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStreamClosed$9(I)V
    .registers 3

    .line 563
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onStreamClosed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStreamConfigured$3(ILandroid/view/Surface;III)V
    .registers 7

    .line 542
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    return-void
.end method

.method private synthetic blacklist lambda$onStreamConfigured$4(ILandroid/view/Surface;III)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda2;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;ILandroid/view/Surface;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onConfigureSession(Landroid/hardware/camera2/CaptureRequest;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V
    .registers 4

    .line 527
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualCameraMetadata()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 528
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;

    invoke-direct {v0, p1}, Landroid/companion/virtual/camera/VirtualCameraSessionConfig;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    .line 531
    new-instance p1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v0, p2}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 536
    :cond_13
    return-void
.end method

.method public blacklist onOpenCamera()V
    .registers 2

    .line 519
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualCameraOnOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 520
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 522
    :cond_e
    return-void
.end method

.method public blacklist onProcessCaptureRequest(IJLandroid/hardware/camera2/CaptureRequest;)V
    .registers 12

    .line 549
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualCameraMetadata()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mPerFrameCameraMetadataEnabled:Z

    if-eqz v0, :cond_17

    .line 550
    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda3;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJLandroid/hardware/camera2/CaptureRequest;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_22

    .line 549
    :cond_17
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    .line 554
    new-instance p1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v3, v4, v5}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 558
    :goto_22
    return-void
.end method

.method public blacklist onStreamClosed(I)V
    .registers 3

    .line 562
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda8;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 564
    return-void
.end method

.method public blacklist onStreamConfigured(ILandroid/view/Surface;III)V
    .registers 13

    .line 541
    new-instance v0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda6;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda6;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;ILandroid/view/Surface;III)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 544
    return-void
.end method
