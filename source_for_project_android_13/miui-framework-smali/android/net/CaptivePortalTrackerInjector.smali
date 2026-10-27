.class Landroid/net/CaptivePortalTrackerInjector;
.super Ljava/lang/Object;
.source "CaptivePortalTrackerInjector.java"


# static fields
.field private static final blacklist CN_CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "http://connect.rom.miui.com/generate_204"

.field private static final blacklist CN_OPERATOR:Ljava/lang/String; = "460"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final blacklist getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "server"    # Ljava/lang/String;

    .line 14
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 15
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "CN"

    invoke-static {v2}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 19
    :cond_1a
    invoke-static {v1}, Landroid/net/CaptivePortalTrackerInjector;->isCnFromOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 20
    :cond_20
    const-string p1, "http://connect.rom.miui.com/generate_204"

    .line 22
    :cond_22
    return-object p1
.end method

.method static blacklist isCnFromOperator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "operator"    # Ljava/lang/String;

    .line 26
    const-string v0, ""

    .line 27
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_14

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_14
    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
