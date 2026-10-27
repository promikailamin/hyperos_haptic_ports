.class public Landroid/net/wifi/MiuiWifiRssiFiltering;
.super Ljava/lang/Object;
.source "MiuiWifiRssiFiltering.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWifiRssiFilteringStub;


# static fields
.field private static final blacklist CLOUD_ENABLE_WIFI_RSSI_SMOOTH:Ljava/lang/String; = "cloud_enable_wifi_rssi_smooth"

.field private static final blacklist DEFAULT_ERROR_P:D = 1.0

.field private static final blacklist DEFAULT_MEASUREMENT_NOISE_R:D = 2.93

.field private static final blacklist DEFAULT_PREDICTED_RSSI:I = -0x32

.field private static final blacklist DEFAULT_PROCESS_NOISE_Q:D = 3.0

.field private static final blacklist WIFI_RSSI_Q_ENABLE:Ljava/lang/String; = "vendor.wifi.qcov.enabled"

.field private static final blacklist WIFI_RSSI_R_ENABLE:Ljava/lang/String; = "vendor.wifi.rcov.enabled"

.field private static blacklist mErrorPostCov:D

.field private static blacklist mErrorPredict:D

.field private static blacklist mGain:D

.field private static blacklist mMeasureNoiseCov:D

.field private static blacklist mPostRssi:D

.field private static blacklist mPreRssi:D

.field private static blacklist mProcessNoiseCov:D


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    const-wide/high16 v0, -0x3fb7000000000000L    # -50.0

    sput-wide v0, Landroid/net/wifi/MiuiWifiRssiFiltering;->mPreRssi:D

    .line 33
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Landroid/net/wifi/MiuiWifiRssiFiltering;->mErrorPostCov:D

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "MiuiWifiRssiFiltering"

    iput-object v0, p0, Landroid/net/wifi/MiuiWifiRssiFiltering;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getPredictRssi(I)I
    .registers 14
    .param p1, "rssi"    # I

    .line 51
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiRssiFiltering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vendor.wifi.qcov.enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 53
    .local v0, "qParams":I
    iget-object v1, p0, Landroid/net/wifi/MiuiWifiRssiFiltering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vendor.wifi.rcov.enabled"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 56
    .local v1, "rParams":I
    const/16 v2, 0xa

    if-lez v0, :cond_24

    if-gt v0, v2, :cond_24

    .line 57
    int-to-double v3, v0

    sput-wide v3, Landroid/net/wifi/MiuiWifiRssiFiltering;->mProcessNoiseCov:D

    goto :goto_28

    .line 59
    :cond_24
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    sput-wide v3, Landroid/net/wifi/MiuiWifiRssiFiltering;->mProcessNoiseCov:D

    .line 62
    :goto_28
    if-lez v1, :cond_30

    if-gt v1, v2, :cond_30

    .line 63
    int-to-double v2, v1

    sput-wide v2, Landroid/net/wifi/MiuiWifiRssiFiltering;->mMeasureNoiseCov:D

    goto :goto_37

    .line 65
    :cond_30
    const-wide v2, 0x400770a3d70a3d71L    # 2.93

    sput-wide v2, Landroid/net/wifi/MiuiWifiRssiFiltering;->mMeasureNoiseCov:D

    .line 68
    :goto_37
    sget-wide v2, Landroid/net/wifi/MiuiWifiRssiFiltering;->mPreRssi:D

    sput-wide v2, Landroid/net/wifi/MiuiWifiRssiFiltering;->mPostRssi:D

    .line 69
    sget-wide v4, Landroid/net/wifi/MiuiWifiRssiFiltering;->mErrorPostCov:D

    sget-wide v6, Landroid/net/wifi/MiuiWifiRssiFiltering;->mProcessNoiseCov:D

    add-double/2addr v4, v6

    sput-wide v4, Landroid/net/wifi/MiuiWifiRssiFiltering;->mErrorPredict:D

    .line 70
    sget-wide v6, Landroid/net/wifi/MiuiWifiRssiFiltering;->mMeasureNoiseCov:D

    add-double/2addr v6, v4

    div-double v6, v4, v6

    sput-wide v6, Landroid/net/wifi/MiuiWifiRssiFiltering;->mGain:D

    .line 71
    int-to-double v8, p1

    sub-double/2addr v8, v2

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    sput-wide v2, Landroid/net/wifi/MiuiWifiRssiFiltering;->mPostRssi:D

    .line 72
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    mul-double/2addr v6, v4

    sput-wide v6, Landroid/net/wifi/MiuiWifiRssiFiltering;->mErrorPostCov:D

    .line 73
    sput-wide v2, Landroid/net/wifi/MiuiWifiRssiFiltering;->mPreRssi:D

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get mErrorPostCov: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Landroid/net/wifi/MiuiWifiRssiFiltering;->mErrorPostCov:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mProcessNoiseCov: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Landroid/net/wifi/MiuiWifiRssiFiltering;->mProcessNoiseCov:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMeasureNoiseCov: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Landroid/net/wifi/MiuiWifiRssiFiltering;->mMeasureNoiseCov:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiWifiRssiFiltering"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-wide v2, Landroid/net/wifi/MiuiWifiRssiFiltering;->mPostRssi:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double v6, v2, v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    rem-double/2addr v6, v10

    rem-double/2addr v6, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    add-double/2addr v6, v4

    const-wide/16 v4, 0x0

    cmpl-double v4, v6, v4

    if-lez v4, :cond_9f

    .line 78
    double-to-int v2, v2

    return v2

    .line 80
    :cond_9f
    sub-double/2addr v2, v8

    double-to-int v2, v2

    return v2
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    iput-object p1, p0, Landroid/net/wifi/MiuiWifiRssiFiltering;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public blacklist isWifiRssiSmoothEnabled()Z
    .registers 4

    .line 44
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiRssiFiltering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_enable_wifi_rssi_smooth"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "enableRssiSmooth":Ljava/lang/String;
    if-eqz v0, :cond_19

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method
