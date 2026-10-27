.class Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnUnderlyingNetworkControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method public onSelectedUnderlyingNetworkChanged(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .registers 7
    .param p1, "underlying"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 837
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 839
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected underlying network changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 841
    const/4 v2, 0x0

    if-nez p1, :cond_1b

    move-object v3, v2

    goto :goto_1d

    :cond_1b
    iget-object v3, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    :goto_1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 839
    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 848
    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    if-nez p1, :cond_58

    .line 849
    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmDeps(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->isAirplaneModeOn(Lcom/android/server/vcn/VcnContext;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 850
    iget-object v3, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v4, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    invoke-direct {v4, v2}, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    invoke-static {v3, v1, v0, v4}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 854
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x0

    const-string v2, "Underlying Network lost"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    .line 856
    return-void

    .line 859
    :cond_52
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msetDisconnectRequestAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V

    goto :goto_5d

    .line 863
    :cond_58
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mcancelDisconnectRequestAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 866
    :goto_5d
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    invoke-direct {v3, p1}, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 870
    return-void
.end method
