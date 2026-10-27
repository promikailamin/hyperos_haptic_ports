.class public final Landroid/telephony/MiuiCellSignalStrengthLte;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthLte.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthLte"

.field private static final blacklist MAX_LTE_RSRP:I = -0x2c

.field private static final blacklist MIN_LTE_RSRP:I = -0x8c


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 122
    const-string v0, "MiuiCellSignalStrengthLte"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I
    .registers 5
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rsrp"    # I
    .param p3, "rssi"    # I

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/telephony/MiuiCellSignalStrengthLte;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;III)I

    move-result v0

    return v0
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;III)I
    .registers 13
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rsrp"    # I
    .param p3, "rssi"    # I
    .param p4, "rssnr"    # I

    .line 56
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG03"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG04"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 57
    :cond_24
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v0

    if-nez v0, :cond_99

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "jp_rk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_99

    .line 61
    :cond_36
    const/4 v0, 0x0

    .line 62
    .local v0, "miuiLevel":I
    invoke-static {}, Landroid/telephony/MiuiCellSignalStrength;->getCustomedRsrpThresholds()[I

    move-result-object v1

    .line 65
    .local v1, "thresholds":[I
    if-nez p0, :cond_3f

    .line 66
    const/4 v2, 0x0

    .local v2, "rsrpOnly":Z
    goto :goto_46

    .line 68
    .end local v2    # "rsrpOnly":Z
    :cond_3f
    const/4 v2, 0x0

    const-string v3, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 74
    .restart local v2    # "rsrpOnly":Z
    :goto_46
    const/4 v3, 0x0

    .line 75
    .local v3, "rsrpBoost":I
    if-eqz p1, :cond_4d

    .line 76
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result v3

    .line 79
    :cond_4d
    const/4 v4, 0x0

    .line 80
    .local v4, "rssiIconLevel":I
    const/4 v5, 0x0

    .line 82
    .local v5, "rsrpIconLevel":I
    add-int v6, p2, v3

    .line 84
    .local v6, "rsrpVal":I
    const/16 v7, -0x8c

    if-lt v6, v7, :cond_66

    const/16 v7, -0x2c

    if-le v6, v7, :cond_5a

    goto :goto_66

    .line 87
    :cond_5a
    array-length v5, v1

    .line 88
    :goto_5b
    if-lez v5, :cond_67

    add-int/lit8 v7, v5, -0x1

    aget v7, v1, v7

    if-ge v6, v7, :cond_67

    add-int/lit8 v5, v5, -0x1

    goto :goto_5b

    .line 85
    :cond_66
    :goto_66
    const/4 v5, -0x1

    .line 91
    :cond_67
    const/4 v7, -0x1

    if-eqz v2, :cond_6e

    .line 93
    if-eq v5, v7, :cond_6e

    .line 94
    move v0, v5

    .line 95
    return v0

    .line 99
    :cond_6e
    if-eq v5, v7, :cond_72

    .line 100
    move v0, v5

    .line 101
    return v0

    .line 104
    :cond_72
    const/16 v7, -0x33

    if-le p3, v7, :cond_78

    const/4 v4, 0x0

    goto :goto_97

    .line 105
    :cond_78
    const/16 v7, -0x59

    if-lt p3, v7, :cond_7e

    const/4 v4, 0x5

    goto :goto_97

    .line 106
    :cond_7e
    const/16 v7, -0x5f

    if-lt p3, v7, :cond_84

    const/4 v4, 0x4

    goto :goto_97

    .line 107
    :cond_84
    const/16 v7, -0x65

    if-lt p3, v7, :cond_8a

    const/4 v4, 0x3

    goto :goto_97

    .line 108
    :cond_8a
    const/16 v7, -0x6b

    if-lt p3, v7, :cond_90

    const/4 v4, 0x2

    goto :goto_97

    .line 109
    :cond_90
    const/16 v7, -0x71

    if-lt p3, v7, :cond_96

    const/4 v4, 0x1

    goto :goto_97

    .line 110
    :cond_96
    const/4 v4, 0x0

    .line 114
    :goto_97
    move v0, v4

    .line 115
    return v0

    .line 58
    .end local v0    # "miuiLevel":I
    .end local v1    # "thresholds":[I
    .end local v2    # "rsrpOnly":Z
    .end local v3    # "rsrpBoost":I
    .end local v4    # "rssiIconLevel":I
    .end local v5    # "rsrpIconLevel":I
    .end local v6    # "rsrpVal":I
    :cond_99
    :goto_99
    invoke-static {p2, p4}, Landroid/telephony/MiuiCellSignalStrength;->updateLevelForJpOperator(II)I

    move-result v0

    return v0
.end method
