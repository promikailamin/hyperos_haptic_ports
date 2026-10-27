.class public Lcom/android/server/am/BatteryStatsService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BatteryStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    const/16 p1, 0x15

    .line 338
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 339
    const-string p1, "CONNECTED"

    goto :goto_d

    :cond_b
    const-string p1, "SUSPENDED"

    .line 340
    :goto_d
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 341
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p2

    .line 340
    invoke-static {p2}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 346
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 p1, -0x1

    const-string v0, "DISCONNECTED"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    return-void
.end method
