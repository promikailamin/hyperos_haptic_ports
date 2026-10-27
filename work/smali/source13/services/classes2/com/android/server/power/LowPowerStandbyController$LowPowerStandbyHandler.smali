.class Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;
.super Landroid/os/Handler;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LowPowerStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowPowerStandbyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 532
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 533
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 534
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 538
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 547
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    .line 548
    .local v0, "allowlistUids":[I
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mnotifyAllowlistChanged(Lcom/android/server/power/LowPowerStandbyController;[I)V

    goto :goto_24

    .line 543
    .end local v0    # "allowlistUids":[I
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 544
    .local v0, "active":Z
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mnotifyActiveChanged(Lcom/android/server/power/LowPowerStandbyController;Z)V

    .line 545
    goto :goto_24

    .line 540
    .end local v0    # "active":Z
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monStandbyTimeoutExpired(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 541
    nop

    .line 551
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
