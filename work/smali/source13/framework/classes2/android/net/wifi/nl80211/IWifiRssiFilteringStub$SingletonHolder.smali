.class public final Landroid/net/wifi/nl80211/IWifiRssiFilteringStub$SingletonHolder;
.super Ljava/lang/Object;
.source "IWifiRssiFilteringStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;
    .registers 1

    sget-object v0, Landroid/net/wifi/nl80211/IWifiRssiFilteringStub$SingletonHolder;->INSTANCE:Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const-class v0, Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;

    .line 10
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;

    sput-object v0, Landroid/net/wifi/nl80211/IWifiRssiFilteringStub$SingletonHolder;->INSTANCE:Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;

    .line 9
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
