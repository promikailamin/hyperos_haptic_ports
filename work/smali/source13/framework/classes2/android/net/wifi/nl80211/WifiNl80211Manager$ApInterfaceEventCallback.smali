.class Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;
.super Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApInterfaceEventCallback"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

.field final synthetic blacklist this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    .line 479
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;-><init>()V

    .line 480
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 481
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    .line 482
    return-void
.end method

.method private blacklist toFrameworkBandwidth(I)I
    .registers 3
    .param p1, "bandwidth"    # I

    .line 510
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_16

    .line 528
    return v0

    .line 526
    :pswitch_5
    const/16 v0, 0xb

    return v0

    .line 524
    :pswitch_8
    const/4 v0, 0x6

    return v0

    .line 522
    :pswitch_a
    const/4 v0, 0x5

    return v0

    .line 520
    :pswitch_c
    const/4 v0, 0x4

    return v0

    .line 518
    :pswitch_e
    const/4 v0, 0x3

    return v0

    .line 516
    :pswitch_10
    const/4 v0, 0x2

    return v0

    .line 514
    :pswitch_12
    const/4 v0, 0x1

    return v0

    .line 512
    :pswitch_14
    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method synthetic blacklist lambda$onConnectedClientsChanged$0$android-net-wifi-nl80211-WifiNl80211Manager$ApInterfaceEventCallback(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 4
    .param p1, "client"    # Landroid/net/wifi/nl80211/NativeWifiClient;
    .param p2, "isConnected"    # Z

    .line 491
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;->onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    return-void
.end method

.method synthetic blacklist lambda$onSoftApChannelSwitched$1$android-net-wifi-nl80211-WifiNl80211Manager$ApInterfaceEventCallback(II)V
    .registers 5
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I

    .line 502
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    .line 503
    invoke-direct {p0, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->toFrameworkBandwidth(I)I

    move-result v1

    .line 502
    invoke-interface {v0, p1, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;->onSoftApChannelSwitched(II)V

    return-void
.end method

.method public blacklist onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 7
    .param p1, "client"    # Landroid/net/wifi/nl80211/NativeWifiClient;
    .param p2, "isConnected"    # Z

    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 493
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    nop

    .line 496
    return-void

    .line 493
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    throw v2
.end method

.method public blacklist onSoftApChannelSwitched(II)V
    .registers 7
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 502
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 505
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    nop

    .line 507
    return-void

    .line 505
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    throw v2
.end method
