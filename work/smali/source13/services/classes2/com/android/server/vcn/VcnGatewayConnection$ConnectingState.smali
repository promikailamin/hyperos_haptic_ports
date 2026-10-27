.class Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 3

    .line 1595
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method protected enterState()V
    .registers 3

    .line 1598
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1599
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "ConnectingState entered with active session"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 1603
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V

    .line 1606
    :cond_1e
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V

    .line 1607
    return-void
.end method

.method protected processStateMsg(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1611
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    .line 1662
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->logUnhandledMessage(Landroid/os/Message;)V

    goto/16 :goto_7e

    .line 1659
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->handleSafeModeTimeoutExceeded()V

    .line 1660
    goto/16 :goto_7e

    .line 1656
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 1657
    goto :goto_7e

    .line 1652
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->deferMessage(Landroid/os/Message;)V

    .line 1653
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1654
    goto :goto_7e

    .line 1644
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->deferMessage(Landroid/os/Message;)V

    .line 1646
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1647
    goto :goto_7e

    .line 1613
    :pswitch_31
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v0

    .line 1614
    .local v0, "oldUnderlying":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    iget-object v2, v2, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 1616
    if-nez v0, :cond_4b

    .line 1618
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v2, "Old underlying network was null in connected state. Bug?"

    invoke-static {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1622
    :cond_4b
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 1623
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v2, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1624
    goto :goto_7e

    .line 1627
    :cond_5b
    if-eqz v0, :cond_6e

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v2, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 1628
    invoke-virtual {v1, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1629
    goto :goto_7e

    .line 1635
    :cond_6e
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->setSkipRetryTimeout(Z)V

    .line 1639
    .end local v0    # "oldUnderlying":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    :pswitch_76
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1640
    nop

    .line 1665
    :goto_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_31
        :pswitch_5
        :pswitch_76
        :pswitch_24
        :pswitch_17
        :pswitch_17
        :pswitch_f
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_5
        :pswitch_17
    .end packed-switch
.end method
