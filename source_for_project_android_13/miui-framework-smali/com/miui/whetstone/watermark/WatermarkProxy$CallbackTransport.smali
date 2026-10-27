.class Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
.super Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/watermark/WatermarkProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackTransport"
.end annotation


# static fields
.field private static final blacklist TYPE_ON_DECODE:I = 0x2

.field private static final blacklist TYPE_ON_ENCODE:I = 0x1


# instance fields
.field private final blacklist mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

.field private final blacklist mCallbackHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$m_handleMessage(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .registers 4
    .param p1, "callback"    # Lcom/miui/whetstone/watermark/WatermarkCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 42
    invoke-direct {p0}, Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    .line 45
    if-nez p2, :cond_f

    .line 46
    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;-><init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;)V

    iput-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_16

    .line 53
    :cond_f
    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;-><init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    .line 60
    :goto_16
    return-void
.end method

.method private blacklist _handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "WatermarkProxy"

    packed-switch v0, :pswitch_data_66

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow msg type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 88
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "watermark":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "watermark _handleMessage decode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    invoke-interface {v1, v0}, Lcom/miui/whetstone/watermark/WatermarkCallback;->onDecodeWatermarkDone(Ljava/lang/String;)V

    .line 91
    goto :goto_64

    .line 83
    .end local v0    # "watermark":Ljava/lang/String;
    :pswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 84
    .local v0, "encodeBmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "watermark _handleMessage encode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    invoke-interface {v1, v0}, Lcom/miui/whetstone/watermark/WatermarkCallback;->onEncodeWatermarkDone(Landroid/graphics/Bitmap;)V

    .line 86
    nop

    .line 95
    .end local v0    # "encodeBmp":Landroid/graphics/Bitmap;
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_42
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public blacklist onDecodeWatermark(Ljava/lang/String;)V
    .registers 4
    .param p1, "watermark"    # Ljava/lang/String;

    .line 73
    const-string v0, "WatermarkProxy"

    const-string v1, "watermark CallbackTransport onDecodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 75
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 76
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method

.method public blacklist onEncodeWatermark(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .line 64
    const-string v0, "WatermarkProxy"

    const-string v1, "watermark CallbackTransport onEncodeWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 67
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method
