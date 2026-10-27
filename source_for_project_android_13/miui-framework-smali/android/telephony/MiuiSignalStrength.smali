.class public Landroid/telephony/MiuiSignalStrength;
.super Ljava/lang/Object;
.source "MiuiSignalStrength.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiSignalStrength"

.field public static final blacklist MIUI_NUM_SIGNAL_STRENGTH_BINS:I

.field public static final blacklist MIUI_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final blacklist SIGNAL_STRENGTH_EXCELLENT:I = 0x5

.field public static final blacklist STATE_HIKING_IN:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 43
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isFiveSignalBarsSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_9

    :cond_8
    const/4 v0, 0x5

    :goto_9
    sput v0, Landroid/telephony/MiuiSignalStrength;->MIUI_NUM_SIGNAL_STRENGTH_BINS:I

    .line 52
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isFiveSignalBarsSupported()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 53
    const-string v1, "none"

    const-string v2, "poor"

    const-string v3, "moderate"

    const-string v4, "good"

    const-string v5, "great"

    const-string v6, "excellent"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 54
    :cond_22
    const-string v0, "none"

    const-string v1, "poor"

    const-string v2, "moderate"

    const-string v3, "good"

    const-string v4, "great"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    :goto_30
    sput-object v0, Landroid/telephony/MiuiSignalStrength;->MIUI_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isCustForH3GUKSim()Z
    .registers 4

    .line 76
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 77
    .local v0, "mSimMaxCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_20

    .line 78
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "numeric":Ljava/lang/String;
    const-string v3, "23420"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 80
    const/4 v3, 0x1

    return v3

    .line 77
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 83
    .end local v1    # "i":I
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isHikingMode()Z
    .registers 7

    .line 89
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->isHikingOptimizationSupported()Z

    move-result v0

    .line 90
    .local v0, "isHikingOptimizationSupported":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHikingOptimizationSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiSignalStrength"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    if-nez v0, :cond_24

    return v1

    .line 92
    :cond_24
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 93
    .local v3, "context":Landroid/content/Context;
    if-nez v3, :cond_2b

    return v1

    .line 94
    :cond_2b
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network_mode_state"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 95
    .local v4, "networkModeState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "networkModeState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    and-int/lit8 v2, v4, 0x4

    const/4 v5, 0x4

    if-ne v5, v2, :cond_51

    const/4 v1, 0x1

    :cond_51
    return v1
.end method

.method public static blacklist shouldOptimizeSignalStrength()Z
    .registers 4

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "shouldOptimizeSS":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 66
    const/4 v0, 0x1

    .line 67
    goto :goto_20

    .line 64
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    .end local v1    # "i":I
    :cond_20
    :goto_20
    return v0
.end method
