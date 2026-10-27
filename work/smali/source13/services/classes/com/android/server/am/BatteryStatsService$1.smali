.class Lcom/android/server/am/BatteryStatsService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;

    .line 178
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceClassDataActivityChanged(IZJI)V
    .registers 11
    .param p1, "transportType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I

    .line 182
    if-eqz p2, :cond_4

    .line 183
    const/4 v0, 0x3

    goto :goto_5

    .line 184
    :cond_4
    const/4 v0, 0x1

    :goto_5
    nop

    .line 186
    .local v0, "powerState":I
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_11

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .local v1, "timestampNanos":J
    goto :goto_12

    .line 189
    .end local v1    # "timestampNanos":J
    :cond_11
    move-wide v1, p3

    .line 192
    .restart local v1    # "timestampNanos":J
    :goto_12
    packed-switch p1, :pswitch_data_3c

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected transport in interfaceClassDataActivityChanged unexpected type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 197
    :pswitch_2e
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3, v0, v1, v2, p5}, Lcom/android/server/am/BatteryStatsService;->noteWifiRadioPowerState(IJI)V

    .line 198
    goto :goto_3a

    .line 194
    :pswitch_34
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3, v0, v1, v2, p5}, Lcom/android/server/am/BatteryStatsService;->noteMobileRadioPowerState(IJI)V

    .line 195
    nop

    .line 204
    :goto_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2e
    .end packed-switch
.end method
