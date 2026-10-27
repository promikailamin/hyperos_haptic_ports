.class Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;
.super Landroid/os/Handler;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;-><init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;


# direct methods
.method constructor blacklist <init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    .line 46
    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;->this$0:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    iget-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;->this$0:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    invoke-static {v0, p1}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->-$$Nest$m_handleMessage(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Message;)V

    .line 50
    return-void
.end method
