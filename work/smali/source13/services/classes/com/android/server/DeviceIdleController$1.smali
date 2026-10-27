.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 647
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 649
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_7a

    :cond_d
    goto :goto_2c

    :sswitch_e
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_2d

    :sswitch_22
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_2d

    :goto_2c
    const/4 v0, -0x1

    :goto_2d
    packed-switch v0, :pswitch_data_88

    goto :goto_78

    .line 661
    :pswitch_31
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_78

    .line 662
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 664
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_78

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "ssp":Ljava/lang/String;
    if-eqz v1, :cond_78

    .line 665
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    goto :goto_78

    .line 654
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "ssp":Ljava/lang/String;
    :pswitch_4c
    const-string/jumbo v0, "present"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 655
    .local v0, "present":Z
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5e

    move v1, v2

    goto :goto_5f

    :cond_5e
    move v1, v3

    .line 656
    .local v1, "plugged":Z
    :goto_5f
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v4

    .line 657
    :try_start_62
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz v0, :cond_69

    if-eqz v1, :cond_69

    goto :goto_6a

    :cond_69
    move v2, v3

    :goto_6a
    invoke-virtual {v5, v2}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    .line 658
    monitor-exit v4

    .line 659
    .end local v0    # "present":Z
    .end local v1    # "plugged":Z
    goto :goto_78

    .line 658
    .restart local v0    # "present":Z
    .restart local v1    # "plugged":Z
    :catchall_6f
    move-exception v2

    monitor-exit v4
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_6f

    throw v2

    .line 651
    .end local v0    # "present":Z
    .end local v1    # "plugged":Z
    :pswitch_72
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 652
    nop

    .line 670
    :cond_78
    :goto_78
    return-void

    nop

    :sswitch_data_7a
    .sparse-switch
        -0x5bb23923 -> :sswitch_22
        -0x45e5283a -> :sswitch_18
        0x1f50b9c2 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_72
        :pswitch_4c
        :pswitch_31
    .end packed-switch
.end method
