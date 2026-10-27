.class public Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;
.super Ljava/lang/Object;
.source "Vpn.java"


# instance fields
.field public final mImpl:Landroid/net/ipsec/ike/IkeSession;


# direct methods
.method public constructor <init>(Landroid/net/ipsec/ike/IkeSession;)V
    .registers 2

    .line 4671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4672
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    return-void
.end method


# virtual methods
.method public kill()V
    .registers 1

    .line 4688
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    return-void
.end method

.method public setNetwork(Landroid/net/Network;III)V
    .registers 5

    .line 4678
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/ipsec/ike/IkeSession;->setNetwork(Landroid/net/Network;III)V

    return-void
.end method

.method public setUnderpinnedNetwork(Landroid/net/Network;)V
    .registers 2

    .line 4683
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/IkeSession;->setUnderpinnedNetwork(Landroid/net/Network;)V

    return-void
.end method
