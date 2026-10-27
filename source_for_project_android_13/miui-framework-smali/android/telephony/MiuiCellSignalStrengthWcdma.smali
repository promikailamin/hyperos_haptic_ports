.class public final Landroid/telephony/MiuiCellSignalStrengthWcdma;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthWcdma.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthWcdma"

.field private static final blacklist RSCP_THRESH_H3G:[I

.field private static blacklist WCDMA_RSSI_EXCELLENT:I = 0x0

.field private static final blacklist WCDMA_RSSI_GOOD:I = -0x65

.field private static blacklist WCDMA_RSSI_GREAT:I = 0x0

.field private static final blacklist WCDMA_RSSI_MAX:I = -0x33

.field private static final blacklist WCDMA_RSSI_MIN:I = -0x71

.field private static final blacklist WCDMA_RSSI_MODERATE:I = -0x6b

.field private static final blacklist WCDMA_RSSI_POOR:I = -0x71


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const/16 v0, -0x59

    sput v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_EXCELLENT:I

    .line 52
    const/16 v0, -0x5f

    sput v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_GREAT:I

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->RSCP_THRESH_H3G:[I

    return-void

    nop

    :array_12
    .array-data 4
        -0x73
        -0x6b
        -0x63
        -0x5b
        -0x55
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 100
    const-string v0, "MiuiCellSignalStrengthWcdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I
    .registers 7
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rssi"    # I
    .param p3, "rscp"    # I

    .line 63
    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->isCustForH3GUKSim()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    invoke-static {p0, p1, p3}, Landroid/telephony/MiuiCellSignalStrengthWcdma;->updateLevelForH3GCust(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I

    move-result v0

    return v0

    .line 66
    :cond_b
    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->shouldOptimizeSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 67
    const/16 v0, -0x5d

    sput v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_EXCELLENT:I

    .line 68
    const/16 v0, -0x61

    sput v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_GREAT:I

    .line 70
    :cond_19
    const/4 v0, 0x0

    .line 71
    .local v0, "miuiLevel":I
    const/16 v1, -0x71

    if-le p2, v1, :cond_79

    const/16 v2, -0x33

    if-le p2, v2, :cond_23

    goto :goto_79

    .line 72
    :cond_23
    sget v2, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_EXCELLENT:I

    if-lt p2, v2, :cond_61

    .line 73
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG03"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG04"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    :cond_4b
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v1

    if-nez v1, :cond_5e

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "jp_rk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_5e

    .line 74
    :cond_5c
    const/4 v1, 0x5

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v1, 0x4

    :goto_5f
    move v0, v1

    goto :goto_7a

    .line 75
    :cond_61
    sget v2, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_GREAT:I

    if-lt p2, v2, :cond_67

    const/4 v0, 0x4

    goto :goto_7a

    .line 76
    :cond_67
    const/16 v2, -0x65

    if-lt p2, v2, :cond_6d

    const/4 v0, 0x3

    goto :goto_7a

    .line 77
    :cond_6d
    const/16 v2, -0x6b

    if-lt p2, v2, :cond_73

    const/4 v0, 0x2

    goto :goto_7a

    .line 78
    :cond_73
    if-le p2, v1, :cond_77

    const/4 v0, 0x1

    goto :goto_7a

    .line 79
    :cond_77
    const/4 v0, 0x0

    goto :goto_7a

    .line 71
    :cond_79
    :goto_79
    const/4 v0, 0x0

    .line 81
    :goto_7a
    return v0
.end method

.method private static blacklist updateLevelForH3GCust(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I
    .registers 6
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rscp"    # I

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "miuiRscpLevel":I
    sget-object v1, Landroid/telephony/MiuiCellSignalStrengthWcdma;->RSCP_THRESH_H3G:[I

    const/4 v2, 0x4

    aget v2, v1, v2

    if-lt p2, v2, :cond_a

    const/4 v0, 0x5

    goto :goto_27

    .line 87
    :cond_a
    const/4 v2, 0x3

    aget v2, v1, v2

    if-lt p2, v2, :cond_11

    const/4 v0, 0x4

    goto :goto_27

    .line 88
    :cond_11
    const/4 v2, 0x2

    aget v2, v1, v2

    if-lt p2, v2, :cond_18

    const/4 v0, 0x3

    goto :goto_27

    .line 89
    :cond_18
    const/4 v2, 0x1

    aget v2, v1, v2

    if-lt p2, v2, :cond_1f

    const/4 v0, 0x2

    goto :goto_27

    .line 90
    :cond_1f
    const/4 v2, 0x0

    aget v1, v1, v2

    if-le p2, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    .line 91
    :cond_26
    const/4 v0, 0x0

    .line 93
    :goto_27
    return v0
.end method
