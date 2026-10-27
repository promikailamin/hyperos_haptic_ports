.class public Lcom/android/server/location/gnss/GnssLocationProvider$5;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 2

    .line 579
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$5;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 582
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_21

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receive broadcast intent, action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GnssLocationProvider"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    if-nez p1, :cond_24

    goto :goto_37

    .line 588
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    :goto_37
    return-void

    .line 591
    :cond_38
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$5;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$msubscriptionOrCarrierConfigChanged(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-void
.end method
