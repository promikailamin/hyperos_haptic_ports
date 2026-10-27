.class final Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;
.super Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;
.source "SessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionProcessorImpl"
.end annotation


# instance fields
.field blacklist mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field blacklist mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field blacklist mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field private blacklist mVendorId:J

.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/SessionProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/extension/SessionProcessor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 497
    iput-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;-><init>()V

    .line 498
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/SessionProcessor;Landroid/hardware/camera2/extension/SessionProcessor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;-><init>(Landroid/hardware/camera2/extension/SessionProcessor;)V

    return-void
.end method


# virtual methods
.method public blacklist deInitSession(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/SessionProcessor;->deInitSession(Landroid/os/IBinder;)V

    .line 547
    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_16

    .line 548
    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 550
    :cond_16
    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz p1, :cond_27

    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_27

    .line 551
    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 553
    :cond_27
    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz p1, :cond_38

    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_38

    .line 554
    iget-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object p1, p1, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 556
    :cond_38
    return-void
.end method

.method public blacklist getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->efvCaptureLatency()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 618
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->getRealtimeStillCaptureLatency()Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;

    move-result-object v0

    .line 619
    if-nez v0, :cond_10

    .line 620
    return-object v1

    .line 622
    :cond_10
    new-instance v1, Landroid/hardware/camera2/extension/LatencyPair;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/LatencyPair;-><init>()V

    .line 623
    iget-wide v2, v0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->captureLatency:J

    iput-wide v2, v1, Landroid/hardware/camera2/extension/LatencyPair;->first:J

    .line 624
    iget-wide v2, v0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureLatencyInfo;->processingLatency:J

    iput-wide v2, v1, Landroid/hardware/camera2/extension/LatencyPair;->second:J

    .line 625
    return-object v1

    .line 627
    :cond_1e
    return-object v1
.end method

.method public blacklist initSession(Landroid/os/IBinder;Ljava/lang/String;Ljava/util/Map;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            ")",
            "Landroid/hardware/camera2/extension/CameraSessionConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    iput-object p4, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    .line 509
    iput-object p6, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    .line 510
    iput-object p5, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    .line 514
    const-class v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 515
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 517
    nop

    .line 518
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    .line 524
    :cond_2b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->efvCaptureLatency()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 525
    new-instance v0, Landroid/hardware/camera2/extension/CameraConfiguration;

    new-instance v1, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v1, p4}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    new-instance p4, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {p4, p5}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    new-instance p5, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {p5, p6}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    invoke-direct {v0, v1, p4, p5}, Landroid/hardware/camera2/extension/CameraConfiguration;-><init>(Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;)V

    .line 529
    iget-object p4, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance p5, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {p5, p3}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p4, p1, p2, p5, v0}, Landroid/hardware/camera2/extension/SessionProcessor;->initSession(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;Landroid/hardware/camera2/extension/CameraConfiguration;)Landroid/hardware/camera2/extension/ExtensionConfiguration;

    move-result-object p1

    .line 531
    goto :goto_68

    .line 532
    :cond_51
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v3, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v3, p3}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v4, p4}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    new-instance v5, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v5, p5}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/extension/SessionProcessor;->initSession(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;)Landroid/hardware/camera2/extension/ExtensionConfiguration;

    move-result-object p1

    .line 537
    :goto_68
    if-eqz p1, :cond_6f

    .line 541
    invoke-virtual {p1}, Landroid/hardware/camera2/extension/ExtensionConfiguration;->getCameraSessionConfig()Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object p1

    return-object p1

    .line 538
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid extension configuration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist onCaptureSessionEnd()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 571
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->finishCameraOperation()V

    .line 573
    :cond_11
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->onCaptureSessionEnd()V

    .line 574
    return-void
.end method

.method public blacklist onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 562
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->startCameraOperation()V

    .line 564
    :cond_11
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor;

    iget-wide v2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/camera2/extension/RequestProcessor;-><init>(Landroid/hardware/camera2/extension/IRequestProcessorImpl;J)V

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/extension/SessionProcessor;->onCaptureSessionStart(Landroid/hardware/camera2/extension/RequestProcessor;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public blacklist setParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/SessionProcessor;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 605
    return-void
.end method

.method public blacklist startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->efvCaptureLatency()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 592
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    .line 593
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p1, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    .line 592
    invoke-virtual {v0, p2, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startMultiFrameCapture(ZLjava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result p1

    return p1

    .line 596
    :cond_22
    iget-object p2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    .line 597
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v1, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    .line 596
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/extension/SessionProcessor;->startMultiFrameCapture(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public blacklist startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    .line 579
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p1, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    .line 578
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startRepeating(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public blacklist startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    .line 611
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p2, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    .line 610
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public blacklist stopRepeating()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->stopRepeating()V

    .line 586
    return-void
.end method
