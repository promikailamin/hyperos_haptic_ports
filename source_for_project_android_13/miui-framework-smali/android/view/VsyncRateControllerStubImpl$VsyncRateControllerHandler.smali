.class final Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;
.super Landroid/os/Handler;
.source "VsyncRateControllerStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VsyncRateControllerStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VsyncRateControllerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/VsyncRateControllerStubImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/VsyncRateControllerStubImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/VsyncRateControllerStubImpl;

    .line 194
    iput-object p1, p0, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->this$0:Landroid/view/VsyncRateControllerStubImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 221
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :pswitch_a
    const-string v0, "MSG_SET_VSYNC_RATE_IDLE"

    return-object v0

    .line 217
    :pswitch_d
    const-string v0, "MSG_RESET_VSYNC_RATE"

    return-object v0

    .line 215
    :pswitch_10
    const-string v0, "MSG_SET_VSYNC_RATE_DEFAULT"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x7d0
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 206
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_15

    .line 203
    :pswitch_9
    iget-object v0, p0, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->this$0:Landroid/view/VsyncRateControllerStubImpl;

    invoke-virtual {v0}, Landroid/view/VsyncRateControllerStubImpl;->resetVsyncRate()V

    .line 204
    goto :goto_15

    .line 200
    :pswitch_f
    iget-object v0, p0, Landroid/view/VsyncRateControllerStubImpl$VsyncRateControllerHandler;->this$0:Landroid/view/VsyncRateControllerStubImpl;

    invoke-virtual {v0}, Landroid/view/VsyncRateControllerStubImpl;->setVsyncRateDefault()V

    .line 201
    nop

    .line 208
    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x7d0
        :pswitch_f
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method
