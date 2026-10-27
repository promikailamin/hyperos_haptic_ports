.class public interface abstract Landroid/net/wifi/nl80211/IWifiScanResultStub;
.super Ljava/lang/Object;
.source "IWifiScanResultStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWifiScanResultStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static blacklist getInstance()Landroid/net/wifi/nl80211/IWifiScanResultStub;
    .registers 1

    .line 13
    invoke-static {}, Landroid/net/wifi/nl80211/IWifiScanResultStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/net/wifi/nl80211/IWifiScanResultStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist compensateSignalLevel(II)I
    .registers 3
    .param p1, "previousLevel"    # I
    .param p2, "freq"    # I

    .line 17
    return p1
.end method
