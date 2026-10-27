.class public final Landroid/telephony/MiuiCellSignalStrengthCdma;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthCdma.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthCdma"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCdmaLevel(II)I
    .registers 4
    .param p0, "cdmaDbm"    # I
    .param p1, "cdmaEcio"    # I

    .line 71
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_4c

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    goto :goto_4c

    .line 72
    :cond_9
    const/16 v0, -0x5a

    if-lt p0, v0, :cond_32

    .line 73
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "iris"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_1d
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "jp_rk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_30

    .line 74
    :cond_2e
    const/4 v0, 0x5

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v0, 0x4

    .local v0, "levelDbm":I
    :goto_31
    goto :goto_4d

    .line 75
    .end local v0    # "levelDbm":I
    :cond_32
    const/16 v0, -0x5d

    if-lt p0, v0, :cond_38

    const/4 v0, 0x4

    .restart local v0    # "levelDbm":I
    goto :goto_4d

    .line 76
    .end local v0    # "levelDbm":I
    :cond_38
    const/16 v0, -0x61

    if-lt p0, v0, :cond_3e

    const/4 v0, 0x3

    .restart local v0    # "levelDbm":I
    goto :goto_4d

    .line 77
    .end local v0    # "levelDbm":I
    :cond_3e
    const/16 v0, -0x65

    if-lt p0, v0, :cond_44

    const/4 v0, 0x2

    .restart local v0    # "levelDbm":I
    goto :goto_4d

    .line 78
    .end local v0    # "levelDbm":I
    :cond_44
    const/16 v0, -0x6d

    if-lt p0, v0, :cond_4a

    const/4 v0, 0x1

    .restart local v0    # "levelDbm":I
    goto :goto_4d

    .line 79
    .end local v0    # "levelDbm":I
    :cond_4a
    const/4 v0, 0x0

    .restart local v0    # "levelDbm":I
    goto :goto_4d

    .line 71
    .end local v0    # "levelDbm":I
    :cond_4c
    :goto_4c
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "levelDbm":I
    :goto_4d
    return v0
.end method

.method public static blacklist getEvdoLevel(III)I
    .registers 5
    .param p0, "evdoDbm"    # I
    .param p1, "evdoEcio"    # I
    .param p2, "evdoSnr"    # I

    .line 91
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_60

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    goto :goto_60

    .line 92
    :cond_9
    const/16 v0, -0x5a

    if-lt p0, v0, :cond_46

    .line 93
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG03"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "XIG04"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    :cond_31
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v1, "jp_rk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_44

    .line 94
    :cond_42
    const/4 v0, 0x5

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v0, 0x4

    .local v0, "levelEvdoDbm":I
    :goto_45
    goto :goto_61

    .line 95
    .end local v0    # "levelEvdoDbm":I
    :cond_46
    const/16 v0, -0x5d

    if-lt p0, v0, :cond_4c

    const/4 v0, 0x4

    .restart local v0    # "levelEvdoDbm":I
    goto :goto_61

    .line 96
    .end local v0    # "levelEvdoDbm":I
    :cond_4c
    const/16 v0, -0x61

    if-lt p0, v0, :cond_52

    const/4 v0, 0x3

    .restart local v0    # "levelEvdoDbm":I
    goto :goto_61

    .line 97
    .end local v0    # "levelEvdoDbm":I
    :cond_52
    const/16 v0, -0x65

    if-lt p0, v0, :cond_58

    const/4 v0, 0x2

    .restart local v0    # "levelEvdoDbm":I
    goto :goto_61

    .line 98
    .end local v0    # "levelEvdoDbm":I
    :cond_58
    const/16 v0, -0x6d

    if-lt p0, v0, :cond_5e

    const/4 v0, 0x1

    .restart local v0    # "levelEvdoDbm":I
    goto :goto_61

    .line 99
    .end local v0    # "levelEvdoDbm":I
    :cond_5e
    const/4 v0, 0x0

    .restart local v0    # "levelEvdoDbm":I
    goto :goto_61

    .line 91
    .end local v0    # "levelEvdoDbm":I
    :cond_60
    :goto_60
    const/4 v0, 0x0

    .line 101
    .restart local v0    # "levelEvdoDbm":I
    :goto_61
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 108
    const-string v0, "MiuiCellSignalStrengthCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;IIIII)I
    .registers 11
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "cdmaDbm"    # I
    .param p3, "cdmaEcio"    # I
    .param p4, "evdoDbm"    # I
    .param p5, "evdoEcio"    # I
    .param p6, "evdoSnr"    # I

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "miuiLevel":I
    invoke-static {p2, p3}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getCdmaLevel(II)I

    move-result v1

    .line 51
    .local v1, "cdmaLevel":I
    invoke-static {p4, p5, p6}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getEvdoLevel(III)I

    move-result v2

    .line 53
    .local v2, "evdoLevel":I
    if-nez v2, :cond_10

    .line 55
    invoke-static {p2, p3}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getCdmaLevel(II)I

    move-result v0

    goto :goto_1d

    .line 56
    :cond_10
    if-nez v1, :cond_17

    .line 58
    invoke-static {p4, p5, p6}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getEvdoLevel(III)I

    move-result v0

    goto :goto_1d

    .line 61
    :cond_17
    if-ge v1, v2, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    move v0, v3

    .line 63
    :goto_1d
    return v0
.end method
