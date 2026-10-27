.class public Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;
.super Landroid/net/NetworkAgent;
.source "Vpn.java"


# instance fields
.field public final mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V
    .registers 10

    .line 4629
    invoke-direct/range {p0 .. p8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 4630
    iput-object p9, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    return-void
.end method


# virtual methods
.method public doSendLinkProperties(Landroid/net/LinkProperties;)V
    .registers 2

    .line 4635
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public doSendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 2

    .line 4640
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public doSetUnderlyingNetworks(Ljava/util/List;)V
    .registers 2

    .line 4645
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    return-void
.end method

.method public onNetworkUnwanted()V
    .registers 1

    .line 0
    return-void
.end method

.method public onValidationStatus(ILandroid/net/Uri;)V
    .registers 3

    .line 4655
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    if-eqz p0, :cond_7

    .line 4656
    invoke-interface {p0, p1}, Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;->onValidationStatus(I)V

    :cond_7
    return-void
.end method
