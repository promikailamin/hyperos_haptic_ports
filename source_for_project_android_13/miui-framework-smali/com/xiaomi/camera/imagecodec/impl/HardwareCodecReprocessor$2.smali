.class Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;
.super Ljava/lang/Object;
.source "HardwareCodecReprocessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->reprocessImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

.field final synthetic blacklist val$flip:Z

.field final synthetic blacklist val$imageFormat:I

.field final synthetic blacklist val$jpegQuality:B

.field final synthetic blacklist val$yuvImage:Landroid/media/Image;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Landroid/media/Image;IZB)V
    .registers 6
    .param p1, "this$0"    # Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    .line 291
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$yuvImage:Landroid/media/Image;

    iput p3, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$imageFormat:I

    iput-boolean p4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$flip:Z

    iput-byte p5, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$jpegQuality:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 294
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reprocessImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$yuvImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$yuvImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$imageFormat:I

    const/16 v1, 0x100

    if-ne v1, v0, :cond_68

    .line 297
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmCodecLock(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 298
    :try_start_39
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/media/imagecodec/ImageCodec;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$flip:Z

    invoke-virtual {v1, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->setFlip(Z)V

    .line 299
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/media/imagecodec/ImageCodec;

    move-result-object v1

    iget-byte v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$jpegQuality:B

    invoke-virtual {v1, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->setQuality(I)V

    .line 300
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/media/imagecodec/ImageCodec;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$yuvImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->drainInputImage(Landroid/media/Image;)V

    .line 301
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$yuvImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 302
    monitor-exit v0

    goto :goto_99

    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_39 .. :try_end_67} :catchall_65

    throw v1

    .line 306
    :cond_68
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmDataLock(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 308
    :try_start_6f
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->val$yuvImage:Landroid/media/Image;

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v4

    .line 310
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v4

    .line 308
    invoke-interface {v1, v2, v3, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onYuvAvailable(Landroid/media/Image;Ljava/lang/String;Z)V

    .line 311
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fputmCurrentProcessingData(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 312
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_6f .. :try_end_99} :catchall_9f

    .line 315
    :goto_99
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$msendReprocessRequest(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V

    .line 316
    return-void

    .line 312
    :catchall_9f
    move-exception v1

    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v1
.end method
