.class Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;
.super Ljava/lang/Object;
.source "IspInterfaceReprocessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->reprocessImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

.field final synthetic blacklist val$firstInputImage:Landroid/media/Image;

.field final synthetic blacklist val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

.field final synthetic blacklist val$outputFormat:I

.field final synthetic blacklist val$rawInput:Z


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/media/Image;ZILcom/xiaomi/camera/isp/IspRequest;)V
    .registers 6
    .param p1, "this$0"    # Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    .line 471
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$firstInputImage:Landroid/media/Image;

    iput-boolean p3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$rawInput:Z

    iput p4, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$outputFormat:I

    iput-object p5, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 474
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reprocessImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$firstInputImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$firstInputImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmCodecLock(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 476
    :try_start_35
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    if-nez v1, :cond_61

    .line 477
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocessImage: skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$firstInputImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    monitor-exit v0

    return-void

    .line 480
    :cond_61
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$rawInput:Z

    const/16 v2, 0x100

    if-nez v1, :cond_82

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$outputFormat:I

    if-ne v3, v2, :cond_82

    .line 481
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yuv2jpeg"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/isp/IspInterface;->yuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    goto :goto_f2

    .line 483
    :cond_82
    if-eqz v1, :cond_9f

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$outputFormat:I

    if-ne v3, v2, :cond_9f

    .line 484
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw2jpeg"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/isp/IspInterface;->rawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    goto :goto_f2

    .line 486
    :cond_9f
    if-eqz v1, :cond_bc

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$outputFormat:I

    if-eq v3, v2, :cond_bc

    .line 487
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw2yuv"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/isp/IspInterface;->rawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    goto :goto_f2

    .line 489
    :cond_bc
    if-nez v1, :cond_dc

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$outputFormat:I

    const v2, 0x48454946

    if-ne v1, v2, :cond_dc

    .line 490
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yuv2Heif"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/isp/IspInterface;->yuvToHeif(Lcom/xiaomi/camera/isp/IspRequest;)V

    goto :goto_f2

    .line 493
    :cond_dc
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yuv2jpeg default"

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->-$$Nest$fgetmActiveIspInterface(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;->val$ispRequest:Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/isp/IspInterface;->yuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    .line 496
    :goto_f2
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_f4
    move-exception v1

    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_35 .. :try_end_f6} :catchall_f4

    throw v1
.end method
