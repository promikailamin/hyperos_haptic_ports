.class Landroid/view/FramePredict$1;
.super Landroid/os/Handler;
.source "FramePredict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/FramePredict;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/FramePredict;


# direct methods
.method constructor blacklist <init>(Landroid/view/FramePredict;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/FramePredict;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 109
    iput-object p1, p0, Landroid/view/FramePredict$1;->this$0:Landroid/view/FramePredict;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 112
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_18

    .line 115
    :pswitch_9
    iget-object v0, p0, Landroid/view/FramePredict$1;->this$0:Landroid/view/FramePredict;

    invoke-static {v0}, Landroid/view/FramePredict;->-$$Nest$fgetmContext(Landroid/view/FramePredict;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/FramePredict;->-$$Nest$mregisterCloudObserver(Landroid/view/FramePredict;Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Landroid/view/FramePredict$1;->this$0:Landroid/view/FramePredict;

    invoke-static {v0}, Landroid/view/FramePredict;->-$$Nest$mupdateCloudControlParas(Landroid/view/FramePredict;)V

    .line 117
    nop

    .line 121
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
