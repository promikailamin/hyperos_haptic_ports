.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcnChildSessionConfiguration"
.end annotation


# instance fields
.field private final mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;


# direct methods
.method public constructor <init>(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .registers 2
    .param p1, "childConfig"    # Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 2608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2609
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 2610
    return-void
.end method


# virtual methods
.method public getInternalAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 2614
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInternalDnsServers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 2619
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->mChildConfig:Landroid/net/ipsec/ike/ChildSessionConfiguration;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
