.class Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectingState"
.end annotation


# instance fields
.field private mSkipRetryTimeout:Z

.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 3

    .line 1491
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState-IA;)V

    .line 1499
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->mSkipRetryTimeout:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method protected enterState()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1508
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1509
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "IKE session was already closed when entering Disconnecting state."

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x4

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;II)V

    .line 1511
    return-void

    .line 1515
    :cond_1a
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1517
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 1518
    return-void

    .line 1521
    :cond_2c
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->close()V

    .line 1524
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msetTeardownTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 1525
    return-void
.end method

.method protected exitState()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->mSkipRetryTimeout:Z

    .line 1585
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mcancelTeardownTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 1586
    return-void
.end method

.method protected processStateMsg(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1529
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_8a

    .line 1576
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->logUnhandledMessage(Landroid/os/Message;)V

    goto/16 :goto_89

    .line 1573
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->handleSafeModeTimeoutExceeded()V

    .line 1574
    goto/16 :goto_89

    .line 1545
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 1546
    .local v0, "info":Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;
    iget-boolean v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    if-eqz v1, :cond_20

    .line 1547
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIsQuitting(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/util/OneWayBoolean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vcn/util/OneWayBoolean;->setTrue()V

    .line 1550
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->teardownNetwork()V

    .line 1552
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->reason:Ljava/lang/String;

    const-string v2, "Underlying Network lost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1556
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 1557
    goto :goto_89

    .line 1563
    .end local v0    # "info":Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;
    :sswitch_37
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V

    .line 1565
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIsQuitting(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/util/OneWayBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 1566
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-boolean v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->mSkipRetryTimeout:Z

    if-eqz v1, :cond_5a

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    goto :goto_5c

    :cond_5a
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    :goto_5c
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_89

    .line 1568
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->teardownNetwork()V

    .line 1569
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1571
    goto :goto_89

    .line 1531
    :sswitch_6b
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 1534
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 1535
    goto :goto_89

    .line 1541
    :cond_7f
    :sswitch_7f
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 1543
    nop

    .line 1579
    :cond_89
    :goto_89
    return-void

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_6b
        0x4 -> :sswitch_37
        0x7 -> :sswitch_f
        0x8 -> :sswitch_7f
        0xa -> :sswitch_a
    .end sparse-switch
.end method

.method public setSkipRetryTimeout(Z)V
    .registers 2
    .param p1, "shouldSkip"    # Z

    .line 1503
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->mSkipRetryTimeout:Z

    .line 1504
    return-void
.end method
