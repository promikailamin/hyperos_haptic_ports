.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 403
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 406
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleSuplConnectionAvailable(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 409
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;

    .line 413
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection lost."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleReleaseSuplConnection(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fgetmLastNetTime(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fgetNET_ERROR_SEND_INTERVAL(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_41

    .line 416
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v0

    const v2, 0x36c729b1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "NetError"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "Network error"

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v0

    .line 418
    .local v0, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 420
    .end local v0    # "event":Lcom/miui/misight/MiEventStub;
    :cond_41
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fputmLastNetTime(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;J)V

    .line 421
    return-void
.end method

.method public onUnavailable()V
    .registers 6

    .line 425
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection request timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$mhandleReleaseSuplConnection(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fgetmLastAidTime(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fgetAID_ERROR_SEND_INTERVAL(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_42

    .line 429
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v0

    const v1, 0x36c729b2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AidDataError"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Aiding data error"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v0

    .line 431
    .local v0, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 433
    .end local v0    # "event":Lcom/miui/misight/MiEventStub;
    :cond_42
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->-$$Nest$fputmLastAidTime(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;J)V

    .line 434
    return-void
.end method
