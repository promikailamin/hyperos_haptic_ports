.class public Landroid/net/wifi/MiuiScanResult;
.super Ljava/lang/Object;
.source "MiuiScanResult.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWifiScanResultStub;


# static fields
.field private static final blacklist BAND0_2GHZ:I = 0x0

.field private static final blacklist BAND1_5GHZ:I = 0x1

.field private static final blacklist BAND2_5GHZ:I = 0x2

.field private static final blacklist BAND3_5GHZ:I = 0x3

.field private static final blacklist BAND4_5GHZ:I = 0x4

.field private static final blacklist BAND5_6GHZ:I = 0x5

.field private static final blacklist BAND6_6GHZ:I = 0x6

.field private static final blacklist BAND7_6GHZ:I = 0x7

.field private static final blacklist BAND8_6GHZ:I = 0x8

.field private static final blacklist BAND_60GHZ:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist selectFrequencyToBand(I)I
    .registers 3
    .param p0, "freq"    # I

    .line 27
    const/16 v0, 0x96c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x9b4

    if-gt p0, v0, :cond_a

    .line 28
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_a
    const/16 v0, 0x143c

    if-lt p0, v0, :cond_14

    const/16 v0, 0x1478

    if-gt p0, v0, :cond_14

    .line 30
    const/4 v0, 0x1

    return v0

    .line 31
    :cond_14
    const/16 v0, 0x148c

    if-lt p0, v0, :cond_1e

    const/16 v0, 0x14c8

    if-gt p0, v0, :cond_1e

    .line 32
    const/4 v0, 0x2

    return v0

    .line 33
    :cond_1e
    const/16 v0, 0x157c

    if-lt p0, v0, :cond_28

    const/16 v0, 0x1658

    if-gt p0, v0, :cond_28

    .line 34
    const/4 v0, 0x3

    return v0

    .line 35
    :cond_28
    const/16 v0, 0x1671

    if-lt p0, v0, :cond_32

    const/16 v0, 0x16c1

    if-gt p0, v0, :cond_32

    .line 36
    const/4 v0, 0x4

    return v0

    .line 37
    :cond_32
    const/16 v0, 0x1725

    const/16 v1, 0x1919

    if-lt p0, v0, :cond_3c

    if-gt p0, v1, :cond_3c

    .line 38
    const/4 v0, 0x5

    return v0

    .line 39
    :cond_3c
    const/16 v0, 0x197d

    if-le p0, v1, :cond_44

    if-gt p0, v0, :cond_44

    .line 40
    const/4 v0, 0x6

    return v0

    .line 41
    :cond_44
    const/16 v1, 0x1adb

    if-le p0, v0, :cond_4c

    if-gt p0, v1, :cond_4c

    .line 42
    const/4 v0, 0x7

    return v0

    .line 43
    :cond_4c
    if-le p0, v1, :cond_55

    const/16 v0, 0x1bd5

    if-gt p0, v0, :cond_55

    .line 44
    const/16 v0, 0x8

    return v0

    .line 45
    :cond_55
    const v0, 0xe3d0

    if-lt p0, v0, :cond_62

    const v0, 0x11238

    if-gt p0, v0, :cond_62

    .line 46
    const/16 v0, 0x9

    return v0

    .line 48
    :cond_62
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public blacklist compensateSignalLevel(II)I
    .registers 7
    .param p1, "previousLevel"    # I
    .param p2, "freq"    # I

    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11050023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 58
    .local v0, "mEnableCompensateSignalLevel":Z
    if-nez v0, :cond_e

    .line 59
    return p1

    .line 61
    :cond_e
    invoke-static {p2}, Landroid/net/wifi/MiuiScanResult;->selectFrequencyToBand(I)I

    move-result v1

    .line 62
    .local v1, "band":I
    if-gez v1, :cond_15

    .line 63
    return p1

    .line 66
    :cond_15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11030024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 68
    .local v2, "mCompensateSignalLevelValue":[I
    aget v3, v2, v1

    add-int/2addr v3, p1

    return v3
.end method
