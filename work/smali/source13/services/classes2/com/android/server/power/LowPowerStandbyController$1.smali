.class Lcom/android/server/power/LowPowerStandbyController$1;
.super Landroid/content/BroadcastReceiver;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LowPowerStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/LowPowerStandbyController;

    .line 94
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_42

    :cond_b
    goto :goto_2a

    :sswitch_c
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_2b

    :sswitch_16
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2b

    :sswitch_20
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_2b

    :goto_2a
    const/4 v0, -0x1

    :goto_2b
    packed-switch v0, :pswitch_data_50

    goto :goto_41

    .line 105
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monDeviceIdleModeChanged(Lcom/android/server/power/LowPowerStandbyController;)V

    goto :goto_41

    .line 102
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monInteractive(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 103
    goto :goto_41

    .line 99
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monNonInteractive(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 100
    nop

    .line 108
    :goto_41
    return-void

    :sswitch_data_42
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_20
        -0x56ac2893 -> :sswitch_16
        0x33e5d967 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
    .end packed-switch
.end method
