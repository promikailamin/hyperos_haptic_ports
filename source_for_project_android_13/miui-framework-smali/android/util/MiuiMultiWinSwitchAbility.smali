.class public Landroid/util/MiuiMultiWinSwitchAbility;
.super Ljava/lang/Object;
.source "MiuiMultiWinSwitchAbility.java"


# static fields
.field public static blacklist MIUI_MULTI_WINDOW_SWITCH_ENABLED:Z

.field private static blacklist sTotalRam:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 12
    const/4 v0, 0x0

    sput v0, Landroid/util/MiuiMultiWinSwitchAbility;->sTotalRam:I

    .line 16
    nop

    .line 17
    const-string v1, "ro.config.miui_multi_window_switch_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 18
    invoke-static {}, Landroid/util/MiuiMultiWinSwitchAbility;->getTotalRam()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    nop

    :goto_16
    sput-boolean v0, Landroid/util/MiuiMultiWinSwitchAbility;->MIUI_MULTI_WINDOW_SWITCH_ENABLED:Z

    .line 19
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist formatSizeWith1024(J)I
    .registers 10
    .param p0, "number"    # J

    .line 38
    const/16 v0, 0x400

    .line 39
    .local v0, "UNIT":I
    long-to-float v1, p0

    .line 41
    .local v1, "result":F
    const/4 v2, 0x3

    .line 42
    .local v2, "iterations":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_19

    .line 43
    float-to-double v4, v1

    const-wide v6, 0x408ccccccccccccdL    # 921.6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_17

    .line 44
    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v1, v4

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 46
    :cond_17
    const/4 v4, 0x0

    return v4

    .line 49
    .end local v3    # "i":I
    :cond_19
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    return v3
.end method

.method private static blacklist getTotalRam()I
    .registers 2

    .line 31
    sget v0, Landroid/util/MiuiMultiWinSwitchAbility;->sTotalRam:I

    if-nez v0, :cond_e

    .line 32
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/MiuiMultiWinSwitchAbility;->formatSizeWith1024(J)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWinSwitchAbility;->sTotalRam:I

    .line 34
    :cond_e
    sget v0, Landroid/util/MiuiMultiWinSwitchAbility;->sTotalRam:I

    return v0
.end method

.method public static blacklist isSupportMultiSwitchFeature()Z
    .registers 5

    .line 22
    nop

    .line 23
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "persist.sys.miui_optimization"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 24
    .local v0, "IS_CTS_MODE":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IS_CTS_MODE"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Landroid/util/MiuiMultiWinSwitchAbility;->MIUI_MULTI_WINDOW_SWITCH_ENABLED:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MULTI_WINDOW_ENABLED"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-boolean v2, Landroid/util/MiuiMultiWinSwitchAbility;->MIUI_MULTI_WINDOW_SWITCH_ENABLED:Z

    if-eqz v2, :cond_4d

    if-nez v0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    return v1
.end method
