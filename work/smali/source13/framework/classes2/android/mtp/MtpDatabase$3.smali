.class Landroid/mtp/MtpDatabase$3;
.super Landroid/os/Handler;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpDatabase;->initHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpDatabase;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/mtp/MtpDatabase;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 336
    iput-object p1, p0, Landroid/mtp/MtpDatabase$3;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    goto :goto_23

    .line 341
    :pswitch_6
    iget-object v0, p0, Landroid/mtp/MtpDatabase$3;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MEDIA_MTP_TRANSFER_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Landroid/mtp/MtpDatabase$3;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v1}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmContext(Landroid/mtp/MtpDatabase;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_23
    :goto_23
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 351
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
