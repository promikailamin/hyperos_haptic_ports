.class public final Landroid/telephony/MiuiCellSignalStrengthTdscdma;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthTdscdma.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthTdscdma"

.field private static final blacklist TDSCDMA_RSCP_EXCELLENT:I = -0x58

.field private static final blacklist TDSCDMA_RSCP_GOOD:I = -0x66

.field private static final blacklist TDSCDMA_RSCP_GREAT:I = -0x5f

.field private static final blacklist TDSCDMA_RSCP_MAX:I = -0x18

.field private static final blacklist TDSCDMA_RSCP_MODERATE:I = -0x6d

.field private static final blacklist TDSCDMA_RSCP_POOR:I = -0x78


# instance fields
.field private blacklist mBitErrorRate:I

.field private blacklist mRscp:I

.field private blacklist mRssi:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 88
    const-string v0, "MiuiCellSignalStrengthTdscdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public static blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I
    .registers 7
    .param p0, "cc"    # Landroid/os/PersistableBundle;
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rssi"    # I
    .param p3, "rscp"    # I

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "miuiLevel":I
    const/16 v1, -0x18

    if-gt p3, v1, :cond_63

    const v1, 0x7fffffff

    if-ne p3, v1, :cond_b

    goto :goto_63

    .line 72
    :cond_b
    const/16 v1, -0x58

    if-lt p3, v1, :cond_49

    .line 73
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG03"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "XIG04"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    :cond_33
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpSb()Z

    move-result v1

    if-nez v1, :cond_46

    sget-object v1, Lmiui/telephony/TelephonyManager;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v2, "jp_rk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_46

    .line 74
    :cond_44
    const/4 v1, 0x5

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v1, 0x4

    :goto_47
    move v0, v1

    goto :goto_64

    .line 75
    :cond_49
    const/16 v1, -0x5f

    if-lt p3, v1, :cond_4f

    const/4 v0, 0x4

    goto :goto_64

    .line 76
    :cond_4f
    const/16 v1, -0x66

    if-lt p3, v1, :cond_55

    const/4 v0, 0x3

    goto :goto_64

    .line 77
    :cond_55
    const/16 v1, -0x6d

    if-lt p3, v1, :cond_5b

    const/4 v0, 0x2

    goto :goto_64

    .line 78
    :cond_5b
    const/16 v1, -0x78

    if-lt p3, v1, :cond_61

    const/4 v0, 0x1

    goto :goto_64

    .line 79
    :cond_61
    const/4 v0, 0x0

    goto :goto_64

    .line 71
    :cond_63
    :goto_63
    const/4 v0, 0x0

    .line 81
    :goto_64
    return v0
.end method
