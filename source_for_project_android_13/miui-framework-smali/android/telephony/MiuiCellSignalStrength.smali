.class public abstract Landroid/telephony/MiuiCellSignalStrength;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrength.java"


# static fields
.field public static final blacklist MIUI_NUM_SIGNAL_STRENGTH_BINS:I

.field protected static final blacklist MIUI_NUM_SIGNAL_STRENGTH_THRESHOLDS:I

.field public static final blacklist MIUI_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field private static final blacklist RSRP_THRESH_CU_TEST:[I

.field private static final blacklist RSRP_THRESH_H3G_LTE:[I

.field private static final blacklist RSRP_THRESH_HIKING_MODE:[I

.field private static final blacklist RSRP_THRESH_INDIA:[I

.field private static final blacklist RSRP_THRESH_JP_KDDI:[I

.field private static final blacklist RSRP_THRESH_JP_RK:[I

.field private static final blacklist RSRP_THRESH_JP_SB:[I

.field private static final blacklist RSRP_THRESH_LENIENT:[I

.field private static final blacklist RSRP_THRESH_LGU:[I

.field private static final blacklist RSRP_THRESH_STRICT:[I

.field public static final blacklist SIGNAL_STRENGTH_EXCELLENT:I = 0x5

.field public static final blacklist SINR_THRESH_JP_KDDI:[I

.field private static final blacklist SINR_THRESH_JP_RK:[I

.field private static final blacklist SINR_THRESH_JP_SB:[I

.field private static final blacklist SINR_THRESH_JP_SB_V2:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 38
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isFiveSignalBarsSupported()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    sput v0, Landroid/telephony/MiuiCellSignalStrength;->MIUI_NUM_SIGNAL_STRENGTH_BINS:I

    .line 40
    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/telephony/MiuiCellSignalStrength;->MIUI_NUM_SIGNAL_STRENGTH_THRESHOLDS:I

    .line 44
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isFiveSignalBarsSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 45
    const-string v2, "none"

    const-string v3, "poor"

    const-string v4, "moderate"

    const-string v5, "good"

    const-string v6, "great"

    const-string v7, "excellent"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 46
    :cond_27
    const-string v0, "none"

    const-string v2, "poor"

    const-string v3, "moderate"

    const-string v4, "good"

    const-string v5, "great"

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    :goto_35
    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->MIUI_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_9c

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_STRICT:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_aa

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_b8

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_CU_TEST:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_c6

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_INDIA:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_d4

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_LGU:[I

    .line 64
    const/4 v0, 0x4

    new-array v2, v0, [I

    fill-array-data v2, :array_e2

    sput-object v2, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_JP_KDDI:[I

    .line 65
    new-array v2, v0, [I

    fill-array-data v2, :array_ee

    sput-object v2, Landroid/telephony/MiuiCellSignalStrength;->SINR_THRESH_JP_KDDI:[I

    .line 68
    new-array v2, v1, [I

    fill-array-data v2, :array_fa

    sput-object v2, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_H3G_LTE:[I

    .line 76
    new-array v2, v0, [I

    fill-array-data v2, :array_108

    sput-object v2, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_JP_SB:[I

    .line 77
    new-array v2, v0, [I

    fill-array-data v2, :array_114

    sput-object v2, Landroid/telephony/MiuiCellSignalStrength;->SINR_THRESH_JP_SB:[I

    .line 78
    new-array v2, v0, [I

    fill-array-data v2, :array_120

    sput-object v2, Landroid/telephony/MiuiCellSignalStrength;->SINR_THRESH_JP_SB_V2:[I

    .line 86
    new-array v2, v0, [I

    fill-array-data v2, :array_12c

    sput-object v2, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_JP_RK:[I

    .line 87
    new-array v0, v0, [I

    fill-array-data v0, :array_138

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->SINR_THRESH_JP_RK:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_144

    sput-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_HIKING_MODE:[I

    return-void

    nop

    :array_9c
    .array-data 4
        -0x78
        -0x73
        -0x6e
        -0x69
        -0x61
    .end array-data

    :array_aa
    .array-data 4
        -0x8c
        -0x7d
        -0x73
        -0x6e
        -0x66
    .end array-data

    :array_b8
    .array-data 4
        -0x78
        -0x76
        -0x72
        -0x6e
        -0x69
    .end array-data

    :array_c6
    .array-data 4
        -0x80
        -0x73
        -0x6e
        -0x69
        -0x61
    .end array-data

    :array_d4
    .array-data 4
        -0x7d
        -0x7a
        -0x76
        -0x72
        -0x6e
    .end array-data

    :array_e2
    .array-data 4
        -0x7d
        -0x78
        -0x73
        -0x69
    .end array-data

    :array_ee
    .array-data 4
        -0x5
        -0x3
        0x0
        0x3
    .end array-data

    :array_fa
    .array-data 4
        -0x7e
        -0x70
        -0x6a
        -0x64
        -0x5f
    .end array-data

    :array_108
    .array-data 4
        -0x7f
        -0x7b
        -0x79
        -0x75
    .end array-data

    :array_114
    .array-data 4
        -0x13
        -0x3
        0x1
        0x1
    .end array-data

    :array_120
    .array-data 4
        -0x13
        -0x3
        -0x1
        0x1
    .end array-data

    :array_12c
    .array-data 4
        -0x80
        -0x76
        -0x6c
        -0x62
    .end array-data

    :array_138
    .array-data 4
        -0x3
        0x1
        0x5
        0xd
    .end array-data

    :array_144
    .array-data 4
        -0x91
        -0x82
        -0x73
        -0x6e
        -0x66
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final blacklist getCustomedRsrpThresholds()[I
    .registers 3

    .line 104
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 105
    .local v0, "thresholds":[I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG04"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 106
    const-string v2, "XIG03"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 107
    :cond_26
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_JP_KDDI:[I

    goto :goto_7a

    .line 108
    :cond_29
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 109
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_JP_SB:[I

    goto :goto_7a

    .line 110
    :cond_32
    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "jp_rk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 111
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_JP_RK:[I

    goto :goto_7a

    .line 112
    :cond_3f
    sget-boolean v1, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_46

    .line 113
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_CU_TEST:[I

    goto :goto_7a

    .line 114
    :cond_46
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_4d

    .line 115
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_STRICT:[I

    goto :goto_7a

    .line 116
    :cond_4d
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_6f

    .line 117
    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->shouldOptimizeSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 118
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_INDIA:[I

    goto :goto_7a

    .line 119
    :cond_5a
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrLgu()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 120
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_LGU:[I

    goto :goto_7a

    .line 121
    :cond_63
    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->isCustForH3GUKSim()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 122
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_H3G_LTE:[I

    goto :goto_7a

    .line 124
    :cond_6c
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_STRICT:[I

    goto :goto_7a

    .line 126
    :cond_6f
    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->isHikingMode()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 127
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_HIKING_MODE:[I

    goto :goto_7a

    .line 129
    :cond_78
    sget-object v0, Landroid/telephony/MiuiCellSignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 131
    :goto_7a
    return-object v0
.end method

.method protected static blacklist updateLevelForJpOperator(II)I
    .registers 7
    .param p0, "rsrp"    # I
    .param p1, "sinr"    # I

    .line 136
    invoke-static {}, Landroid/telephony/MiuiCellSignalStrength;->getCustomedRsrpThresholds()[I

    move-result-object v0

    .line 137
    .local v0, "thresholds":[I
    array-length v1, v0

    .line 138
    .local v1, "miuiLevel":I
    sget-object v2, Landroid/telephony/MiuiCellSignalStrength;->SINR_THRESH_JP_KDDI:[I

    .line 140
    .local v2, "sinrs":[I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 141
    sget-object v2, Landroid/telephony/MiuiCellSignalStrength;->SINR_THRESH_JP_SB:[I

    .line 142
    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "corot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 143
    sget-object v2, Landroid/telephony/MiuiCellSignalStrength;->SINR_THRESH_JP_SB_V2:[I

    goto :goto_28

    .line 146
    :cond_1c
    sget-object v3, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v4, "jp_rk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 147
    sget-object v2, Landroid/telephony/MiuiCellSignalStrength;->SINR_THRESH_JP_RK:[I

    .line 149
    :cond_28
    :goto_28
    if-lez v1, :cond_39

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    if-lt p0, v3, :cond_36

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    if-ge p1, v3, :cond_39

    .line 152
    :cond_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 154
    :cond_39
    return v1
.end method


# virtual methods
.method public abstract blacklist getMiuiLevel()I
.end method
