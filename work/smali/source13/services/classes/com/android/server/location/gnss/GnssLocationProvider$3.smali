.class Lcom/android/server/location/gnss/GnssLocationProvider$3;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;->handleInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 572
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 575
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive broadcast intent, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_23
    if-nez v0, :cond_26

    .line 578
    return-void

    .line 581
    :cond_26
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4c

    :cond_2e
    goto :goto_42

    :sswitch_2f
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    goto :goto_42

    :sswitch_39
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x0

    :goto_42
    packed-switch v1, :pswitch_data_56

    goto :goto_4b

    .line 584
    :pswitch_46
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$msubscriptionOrCarrierConfigChanged(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 587
    :goto_4b
    return-void

    :sswitch_data_4c
    .sparse-switch
        -0x43dd7a3f -> :sswitch_39
        -0x18365bb -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method
