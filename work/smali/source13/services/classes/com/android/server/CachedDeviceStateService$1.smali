.class Lcom/android/server/CachedDeviceStateService$1;
.super Landroid/content/BroadcastReceiver;
.source "CachedDeviceStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CachedDeviceStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CachedDeviceStateService;


# direct methods
.method constructor <init>(Lcom/android/server/CachedDeviceStateService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/CachedDeviceStateService;

    .line 40
    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_5c

    :cond_d
    goto :goto_2c

    :sswitch_e
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_2d

    :sswitch_18
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_2d

    :sswitch_22
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_2d

    :goto_2c
    const/4 v0, -0x1

    :goto_2d
    packed-switch v0, :pswitch_data_6a

    goto :goto_5a

    .line 54
    :pswitch_31
    iget-object v0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {v0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    goto :goto_5a

    .line 51
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {v0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    .line 52
    goto :goto_5a

    .line 45
    :pswitch_45
    iget-object v0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {v0}, Lcom/android/server/CachedDeviceStateService;->-$$Nest$fgetmDeviceState(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    .line 45
    :goto_56
    invoke-virtual {v0, v2}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    .line 49
    nop

    .line 57
    :goto_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_22
        -0x5bb23923 -> :sswitch_18
        -0x56ac2893 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3b
        :pswitch_31
    .end packed-switch
.end method
