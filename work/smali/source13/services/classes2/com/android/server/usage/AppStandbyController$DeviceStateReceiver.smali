.class Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .registers 2

    .line 2778
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1
    .param p0, "rec$"    # Lcom/android/server/usage/AppStandbyController;

    .line 2790
    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mupdatePowerWhitelistCache(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2781
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_58

    :cond_d
    goto :goto_2c

    :sswitch_e
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_2d

    :sswitch_18
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_2d

    :sswitch_22
    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_2d

    :goto_2c
    const/4 v0, -0x1

    :goto_2d
    packed-switch v0, :pswitch_data_66

    goto :goto_56

    .line 2789
    :pswitch_31
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmSystemServicesReady(Lcom/android/server/usage/AppStandbyController;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2790
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    new-instance v2, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_56

    .line 2786
    :pswitch_4a
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v2}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 2787
    goto :goto_56

    .line 2783
    :pswitch_50
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 2784
    nop

    .line 2794
    :cond_56
    :goto_56
    return-void

    nop

    :sswitch_data_58
    .sparse-switch
        -0x3e97d1f -> :sswitch_22
        -0x3465cce -> :sswitch_18
        0x388694fe -> :sswitch_e
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4a
        :pswitch_31
    .end packed-switch
.end method
