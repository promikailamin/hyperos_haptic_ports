.class public Lmiui/securitycenter/net/MiuiNetworkPolicyManager;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManager.java"


# instance fields
.field private blacklist mPolicyService:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    .line 15
    return-void
.end method


# virtual methods
.method public whitelist getAppRestrictBackground(I)I
    .registers 4
    .param p1, "uid"    # I

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "policy":I
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    .line 32
    return v0
.end method

.method public whitelist getRestrictBackground()Z
    .registers 2

    .line 22
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public whitelist isAppRestrictBackground(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 36
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public whitelist setAppRestrictBackground(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "restrictBackground"    # Z

    .line 26
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 27
    return-void
.end method

.method public whitelist setRestrictBackground(Z)V
    .registers 3
    .param p1, "restrictBackground"    # Z

    .line 18
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 19
    return-void
.end method
