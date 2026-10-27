.class Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;
.super Landroid/os/Handler;
.source "SoftwareCodecReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation


# static fields
.field private static final blacklist MSG_DESTROY_ENCODER:I = 0x2

.field private static final blacklist MSG_DO_NEXT_JOB:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 301
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    .line 302
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 303
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 307
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 319
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_2e

    .line 315
    :pswitch_9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recv MSG_DESTROY_ENCODER"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->-$$Nest$mreleaseWakeLock(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)V

    .line 317
    goto :goto_2e

    .line 309
    :pswitch_18
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recv MSG_DO_NEXT_JOB"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->-$$Nest$mcheckAndPrepare(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 311
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->-$$Nest$mdoCompress(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)V

    .line 321
    :cond_2e
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method
