.class final Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubIdPhoneStateListener"
.end annotation


# instance fields
.field private mSubId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Integer;)V
    .registers 3
    .param p2, "subId"    # Ljava/lang/Integer;

    .line 226
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->mSubId:Ljava/lang/Integer;

    .line 228
    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 4
    .param p1, "state"    # Landroid/telephony/PreciseCallState;

    .line 231
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_e

    const/4 v0, 0x3

    .line 233
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 234
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fputmActiveSubId(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 235
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fgetmActiveSubId(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssNetworkConnectivityHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_3e
    return-void
.end method
