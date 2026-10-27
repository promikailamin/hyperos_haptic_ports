.class Lmiui/app/ToggleManager$1;
.super Landroid/os/Handler;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor blacklist <init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/app/ToggleManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 308
    iput-object p1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 311
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_1c

    .line 317
    :pswitch_9
    iget-object v0, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-static {v0, v2}, Lmiui/app/ToggleManager;->-$$Nest$mupdateSyncToggle(Lmiui/app/ToggleManager;Z)V

    .line 318
    goto :goto_1c

    .line 314
    :pswitch_16
    iget-object v0, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$mverifyBluetoothState(Lmiui/app/ToggleManager;)V

    .line 315
    nop

    .line 322
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_9
    .end packed-switch
.end method
