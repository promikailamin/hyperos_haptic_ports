.class Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetryTimeoutState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2019
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState-IA;)V

    return-void
.end method

.method private getNextRetryIntervalsMs()J
    .registers 5

    .line 2075
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2076
    .local v0, "retryDelayIndex":I
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getRetryIntervalsMillis()[J

    move-result-object v1

    .line 2079
    .local v1, "retryIntervalsMs":[J
    array-length v2, v1

    if-lt v0, v2, :cond_1b

    .line 2080
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    return-wide v2

    .line 2083
    :cond_1b
    aget-wide v2, v1, v0

    return-wide v2
.end method


# virtual methods
.method protected enterState()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2023
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    .line 2025
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    if-nez v0, :cond_25

    .line 2026
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "Underlying network was null in retry state"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->teardownNetwork()V

    .line 2028
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2e

    .line 2031
    :cond_25
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->getNextRetryIntervalsMs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msetRetryTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;J)V

    .line 2033
    :goto_2e
    return-void
.end method

.method public exitState()V
    .registers 2

    .line 2071
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mcancelRetryTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 2072
    return-void
.end method

.method protected processStateMsg(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2037
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_56

    .line 2064
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->logUnhandledMessage(Landroid/os/Message;)V

    goto :goto_54

    .line 2061
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->handleSafeModeTimeoutExceeded()V

    .line 2062
    goto :goto_54

    .line 2058
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 2059
    goto :goto_54

    .line 2039
    :sswitch_15
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    .line 2040
    .local v0, "oldUnderlying":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 2043
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    if-nez v1, :cond_39

    .line 2044
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->teardownNetwork()V

    .line 2045
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 2046
    return-void

    .line 2047
    :cond_39
    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v2, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 2048
    invoke-virtual {v1, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2050
    return-void

    .line 2055
    .end local v0    # "oldUnderlying":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    :cond_4c
    :sswitch_4c
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 2056
    nop

    .line 2067
    :goto_54
    return-void

    nop

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_4c
        0x7 -> :sswitch_d
        0xa -> :sswitch_9
    .end sparse-switch
.end method
