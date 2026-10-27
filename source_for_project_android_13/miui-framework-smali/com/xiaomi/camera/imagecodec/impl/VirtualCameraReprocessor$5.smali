.class Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VirtualCameraReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->createReprocessSession(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    .line 667
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 703
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigureFailed"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCameraLock(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 705
    :try_start_10
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmCreatingReprocessSession(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)V

    .line 706
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmVTCaptureSession(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 707
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmReprocessImageWriter(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/media/ImageWriter;)V

    .line 708
    monitor-exit v0

    .line 709
    return-void

    .line 708
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 11
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 671
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigured>>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCameraLock(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 674
    :try_start_10
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmVTCameraDevice(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 675
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onConfigured: null camera device"

    invoke-static {v1, v3}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmCreatingReprocessSession(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)V

    .line 677
    monitor-exit v0

    return-void

    .line 680
    :cond_29
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmVTCaptureSession(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 681
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCurrentSessionId(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmCurrentSessionId(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;I)V

    .line 682
    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$smgetSessionId(Landroid/hardware/camera2/CameraCaptureSession;)I

    move-result v1

    .line 683
    .local v1, "sessionId":I
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sessionId: %d %d"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v8}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCurrentSessionId(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v3, -0x1

    if-eq v1, v3, :cond_90

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCurrentSessionId(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I

    move-result v3

    if-eq v3, v1, :cond_90

    .line 685
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sessionId: %d->%d"

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v8}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCurrentSessionId(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmCurrentSessionId(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;I)V

    .line 689
    :cond_90
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmReprocessImageWriter(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/media/ImageWriter;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 690
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmReprocessImageWriter(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/media/ImageWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageWriter;->close()V

    .line 692
    :cond_a1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v3

    .line 693
    .local v3, "inputSurface":Landroid/view/Surface;
    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3, v6, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmReprocessImageWriter(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/media/ImageWriter;)V

    .line 695
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v4, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmCreatingReprocessSession(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)V

    .line 696
    .end local v1    # "sessionId":I
    .end local v3    # "inputSurface":Landroid/view/Surface;
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_10 .. :try_end_b4} :catchall_c3

    .line 697
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$msendReprocessRequest(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    .line 698
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigured<<"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void

    .line 696
    :catchall_c3
    move-exception v1

    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v1
.end method
