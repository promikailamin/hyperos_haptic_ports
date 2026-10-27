.class public final Landroid/net/wifi/MiuiWifiRssiFiltering$Provider;
.super Ljava/lang/Object;
.source "MiuiWifiRssiFiltering$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/MiuiWifiRssiFiltering$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/net/wifi/MiuiWifiRssiFiltering;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideNewInstance()Landroid/net/wifi/MiuiWifiRssiFiltering;
    .registers 2

    .line 14
    new-instance v0, Landroid/net/wifi/MiuiWifiRssiFiltering;

    invoke-direct {v0}, Landroid/net/wifi/MiuiWifiRssiFiltering;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/net/wifi/MiuiWifiRssiFiltering$Provider;->provideNewInstance()Landroid/net/wifi/MiuiWifiRssiFiltering;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/net/wifi/MiuiWifiRssiFiltering;
    .registers 2

    .line 10
    sget-object v0, Landroid/net/wifi/MiuiWifiRssiFiltering$Provider$SINGLETON;->INSTANCE:Landroid/net/wifi/MiuiWifiRssiFiltering;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/net/wifi/MiuiWifiRssiFiltering$Provider;->provideSingleton()Landroid/net/wifi/MiuiWifiRssiFiltering;

    move-result-object v0

    return-object v0
.end method
