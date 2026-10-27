.class Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;
.super Landroid/os/Handler;
.source "HardwareCodecReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReprocessHandler"
.end annotation


# static fields
.field private static final blacklist MSG_DESTROY_ENCODER:I = 0x2

.field private static final blacklist MSG_REPROCESS_IMAGE:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 427
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    .line 428
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 429
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 433
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_72

    .line 452
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_70

    .line 441
    :pswitch_9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recv MSG_DESTROY_ENCODER"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmCodecLock(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 443
    :try_start_19
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/media/imagecodec/ImageCodec;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 444
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release current codec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/media/imagecodec/ImageCodec;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fgetmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/media/imagecodec/ImageCodec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->release()V

    .line 446
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$fputmHardwareImageEncoder(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Lcom/xiaomi/media/imagecodec/ImageCodec;)V

    .line 448
    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_19 .. :try_end_51} :catchall_57

    .line 449
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$mreleaseWakeLock(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V

    .line 450
    goto :goto_70

    .line 448
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1

    .line 435
    :pswitch_5a
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recv MSG_REPROCESS_IMAGE"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$mcheckConditionIsReady(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 437
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->-$$Nest$mreprocessImage(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V

    .line 454
    :cond_70
    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_9
    .end packed-switch
.end method
