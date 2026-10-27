.class public interface abstract Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;
.super Ljava/lang/Object;
.source "IWifiRssiFilteringStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWifiRssiFilteringStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static blacklist getInstance()Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;
    .registers 1

    .line 18
    invoke-static {}, Landroid/net/wifi/nl80211/IWifiRssiFilteringStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getPredictRssi(I)I
    .registers 2
    .param p1, "currentRssiDbm"    # I

    .line 22
    return p1
.end method

.method public abstract blacklist init(Landroid/content/Context;)V
.end method

.method public abstract blacklist isWifiRssiSmoothEnabled()Z
.end method
