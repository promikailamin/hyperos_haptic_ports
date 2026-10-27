.class public final Landroid/telephony/MiuiCellSignalStrengthNr;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthNr.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I
    .registers 4
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rsrp"    # I

    .line 43
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/MiuiCellSignalStrengthNr;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I

    move-result v0

    return v0
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I
    .registers 7
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rsrp"    # I
    .param p3, "sinr"    # I

    .line 49
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG03"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG04"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 50
    :cond_24
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "jp_rk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_66

    .line 54
    :cond_35
    const/4 v0, 0x0

    .line 55
    .local v0, "miuiLevel":I
    invoke-static {}, Landroid/telephony/MiuiCellSignalStrength;->getCustomedRsrpThresholds()[I

    move-result-object v1

    .line 56
    .local v1, "thresholds":[I
    const v2, 0x7fffffff

    if-ne p2, v2, :cond_41

    .line 57
    const/4 v0, 0x0

    goto :goto_65

    .line 58
    :cond_41
    const/4 v2, 0x4

    aget v2, v1, v2

    if-lt p2, v2, :cond_48

    .line 59
    const/4 v0, 0x5

    goto :goto_65

    .line 60
    :cond_48
    const/4 v2, 0x3

    aget v2, v1, v2

    if-lt p2, v2, :cond_4f

    .line 61
    const/4 v0, 0x4

    goto :goto_65

    .line 62
    :cond_4f
    const/4 v2, 0x2

    aget v2, v1, v2

    if-lt p2, v2, :cond_56

    .line 63
    const/4 v0, 0x3

    goto :goto_65

    .line 64
    :cond_56
    const/4 v2, 0x1

    aget v2, v1, v2

    if-lt p2, v2, :cond_5d

    .line 65
    const/4 v0, 0x2

    goto :goto_65

    .line 66
    :cond_5d
    const/4 v2, 0x0

    aget v2, v1, v2

    if-lt p2, v2, :cond_64

    .line 67
    const/4 v0, 0x1

    goto :goto_65

    .line 69
    :cond_64
    const/4 v0, 0x0

    .line 71
    :goto_65
    return v0

    .line 51
    .end local v0    # "miuiLevel":I
    .end local v1    # "thresholds":[I
    :cond_66
    :goto_66
    invoke-static {p2, p3}, Landroid/telephony/MiuiCellSignalStrength;->updateLevelForJpOperator(II)I

    move-result v0

    return v0
.end method
