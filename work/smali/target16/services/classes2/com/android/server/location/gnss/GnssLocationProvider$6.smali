.class public Lcom/android/server/location/gnss/GnssLocationProvider$6;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 2

    .line 597
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$6;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 600
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive broadcast intent, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    if-nez p1, :cond_24

    goto :goto_37

    .line 606
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    :goto_37
    return-void

    .line 609
    :cond_38
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$6;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->-$$Nest$minjectSuplInit(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Intent;)V

    return-void
.end method
