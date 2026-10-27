.class Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;
.super Ljava/lang/Object;
.source "VirtualCameraReprocessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->initPicImageReader(III)V
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

    .line 766
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 12
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .line 769
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 770
    .local v0, "jpegImage":Landroid/media/Image;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageAvailable: received reprocessed image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmDataLock(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 773
    :try_start_25
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 775
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v3

    .line 776
    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v3

    .line 775
    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onJpegImageAvailable(Landroid/media/Image;Ljava/lang/String;Z)V

    .line 777
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s return for %s. cost=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 778
    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v6

    const/16 v7, 0x100

    if-ne v6, v7, :cond_59

    const-string v6, "jpeg"

    goto :goto_5b

    :cond_59
    const-string v6, "heic"

    :goto_5b
    aput-object v6, v5, v4

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v6}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v6

    .line 779
    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v8}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fgetmReprocessStartTime(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 777
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$fputmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    goto :goto_93

    .line 783
    :cond_8a
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onImageAvailable: null task!"

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_93
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 786
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_25 .. :try_end_97} :catchall_9d

    .line 787
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;->this$0:Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->-$$Nest$msendReprocessRequest(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    .line 788
    return-void

    .line 786
    :catchall_9d
    move-exception v2

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v2
.end method
