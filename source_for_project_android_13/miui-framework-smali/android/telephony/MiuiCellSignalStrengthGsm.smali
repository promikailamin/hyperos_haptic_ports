.class public final Landroid/telephony/MiuiCellSignalStrengthGsm;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthGsm.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static blacklist GSM_RSSI_EXCELLENT:I = 0x0

.field private static final blacklist GSM_RSSI_GOOD:I = -0x65

.field private static blacklist GSM_RSSI_GREAT:I = 0x0

.field private static final blacklist GSM_RSSI_MAX:I = -0x33

.field private static final blacklist GSM_RSSI_MIN:I = -0x71

.field private static final blacklist GSM_RSSI_MODERATE:I = -0x6b

.field private static final blacklist GSM_RSSI_POOR:I = -0x71

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthGsm"

.field private static final blacklist sRssiThresholds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 58
    const/16 v0, -0x59

    sput v0, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_EXCELLENT:I

    .line 59
    const/16 v1, -0x5f

    sput v1, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_GREAT:I

    .line 65
    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, -0x71

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, -0x6b

    aput v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, -0x65

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    sput-object v2, Landroid/telephony/MiuiCellSignalStrengthGsm;->sRssiThresholds:[I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 91
    const-string v0, "MiuiCellSignalStrengthGsm"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I
    .registers 6
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rssi"    # I

    .line 70
    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->shouldOptimizeSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 71
    const/16 v0, -0x5d

    sput v0, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_EXCELLENT:I

    .line 72
    const/16 v0, -0x61

    sput v0, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_GREAT:I

    .line 74
    :cond_e
    const/4 v0, 0x0

    .line 75
    .local v0, "miuiLevel":I
    const/16 v1, -0x71

    if-le p2, v1, :cond_6a

    const/16 v1, -0x33

    if-le p2, v1, :cond_18

    goto :goto_6a

    .line 76
    :cond_18
    sget v1, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_EXCELLENT:I

    if-lt p2, v1, :cond_56

    .line 77
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v1

    if-eqz v1, :cond_40

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG03"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG04"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    :cond_40
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v1

    if-nez v1, :cond_53

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "jp_rk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_53

    .line 78
    :cond_51
    const/4 v1, 0x5

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v1, 0x4

    :goto_54
    move v0, v1

    goto :goto_6b

    .line 79
    :cond_56
    sget v1, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_GREAT:I

    if-lt p2, v1, :cond_5c

    const/4 v0, 0x4

    goto :goto_6b

    .line 80
    :cond_5c
    const/16 v1, -0x65

    if-lt p2, v1, :cond_62

    const/4 v0, 0x3

    goto :goto_6b

    .line 81
    :cond_62
    const/16 v1, -0x6b

    if-lt p2, v1, :cond_68

    const/4 v0, 0x2

    goto :goto_6b

    .line 82
    :cond_68
    const/4 v0, 0x1

    goto :goto_6b

    .line 75
    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    .line 84
    :goto_6b
    return v0
.end method
