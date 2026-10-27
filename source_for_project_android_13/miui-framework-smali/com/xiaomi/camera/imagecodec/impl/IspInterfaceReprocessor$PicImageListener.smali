.class Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;
.super Ljava/lang/Object;
.source "IspInterfaceReprocessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicImageListener"
.end annotation


# instance fields
.field public blacklist mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;


# direct methods
.method private constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .registers 2

    .line 703
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 12
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .line 707
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 708
    .local v0, "image":Landroid/media/Image;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$smgetJpegData(Landroid/media/Image;)[B

    move-result-object v1

    .line 710
    .local v1, "imageData":[B
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 711
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmDataLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 712
    :try_start_2e
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v3

    if-eqz v3, :cond_92

    .line 713
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$mreleaseReprocessData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 715
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v4

    .line 716
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v4

    .line 715
    invoke-interface {v3, v1, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onJpegAvailable([BLjava/lang/String;)V

    .line 717
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpeg return for %s. cost=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v7}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v7

    .line 718
    invoke-virtual {v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmReprocessStartTime(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 717
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fputmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 721
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    iput-boolean v7, v3, Lcom/xiaomi/camera/isp/IspInterfaceIO;->isIdle:Z

    goto :goto_9d

    .line 723
    :cond_92
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onImageAvailable: null task!"

    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_9d
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_2e .. :try_end_9e} :catchall_a4

    .line 726
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$PicImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$msendReprocessRequest(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    .line 727
    return-void

    .line 725
    :catchall_a4
    move-exception v3

    :try_start_a5
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v3
.end method
