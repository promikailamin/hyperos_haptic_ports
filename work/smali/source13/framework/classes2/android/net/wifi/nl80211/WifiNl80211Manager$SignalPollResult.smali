.class public Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignalPollResult"
.end annotation


# instance fields
.field public final whitelist associationFrequencyMHz:I

.field public final whitelist currentRssiDbm:I

.field public final whitelist rxBitrateMbps:I

.field public final whitelist txBitrateMbps:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 7
    .param p1, "currentRssiDbm"    # I
    .param p2, "txBitrateMbps"    # I
    .param p3, "rxBitrateMbps"    # I
    .param p4, "associationFrequencyMHz"    # I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-static {}, Landroid/net/wifi/nl80211/IWifiScanResultStub;->getInstance()Landroid/net/wifi/nl80211/IWifiScanResultStub;

    move-result-object v0

    .line 264
    .local v0, "wifiScanResultStub":Landroid/net/wifi/nl80211/IWifiScanResultStub;
    if-eqz v0, :cond_11

    .line 265
    nop

    .line 266
    invoke-interface {v0, p1, p4}, Landroid/net/wifi/nl80211/IWifiScanResultStub;->compensateSignalLevel(II)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    goto :goto_13

    .line 268
    :cond_11
    iput p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    .line 271
    :goto_13
    iput p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->txBitrateMbps:I

    .line 272
    iput p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->rxBitrateMbps:I

    .line 273
    iput p4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->associationFrequencyMHz:I

    .line 274
    return-void
.end method
