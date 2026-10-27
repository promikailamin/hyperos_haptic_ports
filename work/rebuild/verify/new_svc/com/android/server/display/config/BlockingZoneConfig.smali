.class public Lcom/android/server/display/config/BlockingZoneConfig;
.super Ljava/lang/Object;
.source "BlockingZoneConfig.java"


# instance fields
.field public blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

.field public defaultRefreshRate:Ljava/math/BigInteger;

.field public refreshRateThermalThrottlingId:Ljava/lang/String;

.field public supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;
    .registers 5

    .line 70
    new-instance v0, Lcom/android/server/display/config/BlockingZoneConfig;

    invoke-direct {v0}, Lcom/android/server/display/config/BlockingZoneConfig;-><init>()V

    .line 72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 74
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_69

    if-eq v1, v3, :cond_69

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 77
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string/jumbo v2, "supportedModes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 79
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BlockingZoneConfig;->setSupportedModes(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    goto :goto_8

    .line 81
    :cond_2f
    const-string v2, "defaultRefreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 82
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/BlockingZoneConfig;->setDefaultRefreshRate(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 85
    :cond_44
    const-string/jumbo v2, "refreshRateThermalThrottlingId"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 86
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BlockingZoneConfig;->setRefreshRateThermalThrottlingId(Ljava/lang/String;)V

    goto :goto_8

    .line 89
    :cond_55
    const-string v2, "blockingZoneThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 90
    invoke-static {p0}, Lcom/android/server/display/config/BlockingZoneThreshold;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BlockingZoneConfig;->setBlockingZoneThreshold(Lcom/android/server/display/config/BlockingZoneThreshold;)V

    goto :goto_8

    .line 93
    :cond_65
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_69
    if-ne v1, v3, :cond_6c

    return-object v0

    .line 97
    :cond_6c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BlockingZoneConfig is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    return-object p0
.end method

.method public final getDefaultRefreshRate()Ljava/math/BigInteger;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getRefreshRateThermalThrottlingId()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object p0
.end method

.method public final setBlockingZoneThreshold(Lcom/android/server/display/config/BlockingZoneThreshold;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    return-void
.end method

.method public final setDefaultRefreshRate(Ljava/math/BigInteger;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    return-void
.end method

.method public final setRefreshRateThermalThrottlingId(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    return-void
.end method

.method public final setSupportedModes(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-void
.end method
