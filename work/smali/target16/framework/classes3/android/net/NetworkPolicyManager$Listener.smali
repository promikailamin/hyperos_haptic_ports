.class public Landroid/net/NetworkPolicyManager$Listener;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1123
    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBlockedReasonChanged(III)V
    .registers 4

    .line 1132
    return-void
.end method

.method public greylist-max-o onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 2

    .line 1125
    return-void
.end method

.method public greylist-max-o onRestrictBackgroundChanged(Z)V
    .registers 2

    .line 1126
    return-void
.end method

.method public blacklist onSubscriptionOverride(III[I)V
    .registers 5

    .line 1129
    return-void
.end method

.method public blacklist onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 3

    .line 1130
    return-void
.end method

.method public greylist-max-o onUidPoliciesChanged(II)V
    .registers 3

    .line 1127
    return-void
.end method

.method public greylist-max-o onUidRulesChanged(II)V
    .registers 3

    .line 1124
    return-void
.end method
