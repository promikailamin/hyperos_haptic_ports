.class Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;
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
    name = "YuvImageListener"
.end annotation


# instance fields
.field public blacklist mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;


# direct methods
.method private constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .registers 2

    .line 645
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 19
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .line 649
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    .line 652
    .local v2, "yuvImage":Landroid/media/Image;
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmDataLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 653
    :try_start_d
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_114

    .line 654
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v6

    .line 655
    .local v6, "timestamp":J
    invoke-virtual {v2, v6, v7}, Landroid/media/Image;->setTimestamp(J)V

    .line 662
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_134

    .line 666
    invoke-static {v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v8

    .line 667
    .local v8, "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 668
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v8, v6, v7}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;J)Landroid/media/Image;

    move-result-object v9

    .line 669
    .local v9, "pooledImage":Landroid/media/Image;
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive yuv image: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " | "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 672
    const/4 v3, 0x0

    .line 673
    .local v3, "sendNextRequest":Z
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmDataLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 674
    :try_start_71
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    if-eqz v0, :cond_fd

    .line 675
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    iget-object v11, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v11}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v11

    .line 676
    invoke-virtual {v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v11

    .line 675
    invoke-interface {v0, v9, v11, v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onYuvAvailable(Landroid/media/Image;Ljava/lang/String;Z)V

    .line 677
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "yuv return for %s. cost=%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v13}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v13

    .line 678
    invoke-virtual {v13}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmReprocessStartTime(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v5

    .line 677
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmRaw2YuvStatusMap(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;

    .line 681
    .local v0, "status":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;
    iput-boolean v5, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;->isYuvBufferReady:Z

    .line 682
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;->isDone()Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 683
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->mIO:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    iput-boolean v5, v4, Lcom/xiaomi/camera/isp/IspInterfaceIO;->isIdle:Z

    .line 684
    const/4 v3, 0x1

    .line 685
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$mreleaseReprocessData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 686
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmRaw2YuvStatusMap(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v5}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v4, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fputmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 689
    .end local v0    # "status":Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;
    :cond_fc
    goto :goto_108

    .line 690
    :cond_fd
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "receive yuv image: null processing data error"

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_108
    monitor-exit v10
    :try_end_109
    .catchall {:try_start_71 .. :try_end_109} :catchall_111

    .line 694
    if-eqz v3, :cond_110

    .line 695
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$msendReprocessRequest(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    .line 697
    :cond_110
    return-void

    .line 692
    :catchall_111
    move-exception v0

    :try_start_112
    monitor-exit v10
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v0

    .line 657
    .end local v3    # "sendNextRequest":Z
    .end local v6    # "timestamp":J
    .end local v8    # "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .end local v9    # "pooledImage":Landroid/media/Image;
    :cond_114
    :try_start_114
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    .line 658
    .restart local v6    # "timestamp":J
    iget-object v0, v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$YuvImageListener;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "receive yuv image: %d, null processing data"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v4

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 660
    monitor-exit v3

    return-void

    .line 662
    .end local v6    # "timestamp":J
    :catchall_134
    move-exception v0

    monitor-exit v3
    :try_end_136
    .catchall {:try_start_114 .. :try_end_136} :catchall_134

    throw v0
.end method
