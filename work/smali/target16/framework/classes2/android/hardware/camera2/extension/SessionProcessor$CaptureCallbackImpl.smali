.class final Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;
.super Ljava/lang/Object;
.source "SessionProcessor.java"

# interfaces
.implements Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

.field private blacklist mVendorId:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V
    .registers 6

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mVendorId:J

    .line 636
    iput-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    .line 637
    iput-wide p2, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mVendorId:J

    .line 638
    return-void
.end method


# virtual methods
.method public whitelist onCaptureCompleted(JILjava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 688
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 689
    iget-wide v1, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mVendorId:J

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 690
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_12
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 691
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 692
    goto :goto_12

    .line 694
    :cond_2c
    :try_start_2c
    iget-object p4, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {p4, p1, p2, p3, v0}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureCompleted(JILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    .line 697
    goto :goto_3a

    .line 695
    :catch_32
    move-exception p1

    .line 696
    const-string p1, "SessionProcessor"

    const-string p2, "Failed to notify capture complete due to remote exception!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_3a
    return-void
.end method

.method public whitelist onCaptureFailed(II)V
    .registers 4

    .line 661
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureProcessFailed(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 664
    goto :goto_e

    .line 662
    :catch_6
    move-exception p1

    .line 663
    const-string p1, "SessionProcessor"

    const-string p2, "Failed to notify capture failure start due to remote exception!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_e
    return-void
.end method

.method public blacklist onCaptureProcessProgressUpdated(I)V
    .registers 3

    .line 704
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureProcessProgressed(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 708
    goto :goto_e

    .line 705
    :catch_6
    move-exception p1

    .line 706
    const-string p1, "SessionProcessor"

    const-string v0, "Failed to notify capture progress due to remote exception!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_e
    return-void
.end method

.method public whitelist onCaptureProcessStarted(I)V
    .registers 3

    .line 652
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureProcessStarted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 655
    goto :goto_e

    .line 653
    :catch_6
    move-exception p1

    .line 654
    const-string p1, "SessionProcessor"

    const-string v0, "Failed to notify process start due to remote exception!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_e
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(I)V
    .registers 3

    .line 679
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureSequenceAborted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 682
    goto :goto_e

    .line 680
    :catch_6
    move-exception p1

    .line 681
    const-string p1, "SessionProcessor"

    const-string v0, "Failed to notify capture sequence abort due to remote exception!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_e
    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(I)V
    .registers 3

    .line 670
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureSequenceCompleted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 673
    goto :goto_e

    .line 671
    :catch_6
    move-exception p1

    .line 672
    const-string p1, "SessionProcessor"

    const-string v0, "Failed to notify capture sequence done due to remote exception!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_e
    return-void
.end method

.method public whitelist onCaptureStarted(IJ)V
    .registers 5

    .line 643
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;->mCaptureCallback:Landroid/hardware/camera2/extension/ICaptureCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/camera2/extension/ICaptureCallback;->onCaptureStarted(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 646
    goto :goto_e

    .line 644
    :catch_6
    move-exception p1

    .line 645
    const-string p1, "SessionProcessor"

    const-string p2, "Failed to notify capture start due to remote exception!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_e
    return-void
.end method
