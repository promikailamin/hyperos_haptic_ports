.class public Lcom/android/server/display/config/RefreshRateConfigs;
.super Ljava/lang/Object;
.source "RefreshRateConfigs.java"


# instance fields
.field public defaultPeakRefreshRate:Ljava/math/BigInteger;

.field public defaultRefreshRate:Ljava/math/BigInteger;

.field public defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

.field public defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

.field public higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

.field public lowPowerSupportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

.field public lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

.field public refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateConfigs;
    .registers 5

    .line 134
    new-instance v0, Lcom/android/server/display/config/RefreshRateConfigs;

    invoke-direct {v0}, Lcom/android/server/display/config/RefreshRateConfigs;-><init>()V

    .line 136
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 138
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_bd

    if-eq v1, v3, :cond_bd

    .line 140
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 141
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "defaultRefreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 143
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRate(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 146
    :cond_33
    const-string v2, "defaultPeakRefreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 147
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultPeakRefreshRate(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 150
    :cond_48
    const-string/jumbo v2, "refreshRateZoneProfiles"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 151
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateZoneProfiles;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateZoneProfiles;)V

    goto :goto_8

    .line 153
    :cond_59
    const-string v2, "defaultRefreshRateInHbmHdr"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 154
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRateInHbmHdr(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 157
    :cond_6e
    const-string v2, "defaultRefreshRateInHbmSunlight"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 158
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 159
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRateInHbmSunlight(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 161
    :cond_83
    const-string/jumbo v2, "lowerBlockingZoneConfigs"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 162
    invoke-static {p0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setLowerBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V

    goto/16 :goto_8

    .line 164
    :cond_95
    const-string v2, "higherBlockingZoneConfigs"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 165
    invoke-static {p0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setHigherBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V

    goto/16 :goto_8

    .line 167
    :cond_a6
    const-string/jumbo v2, "lowPowerSupportedModes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 168
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setLowPowerSupportedModes(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    goto/16 :goto_8

    .line 171
    :cond_b8
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_bd
    if-ne v1, v3, :cond_c0

    return-object v0

    .line 175
    :cond_c0
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "RefreshRateConfigs is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getDefaultPeakRefreshRate()Ljava/math/BigInteger;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRate()Ljava/math/BigInteger;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getHigherBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-object p0
.end method

.method public final getLowPowerSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowPowerSupportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object p0
.end method

.method public final getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-object p0
.end method

.method public final getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    return-object p0
.end method

.method public final setDefaultPeakRefreshRate(Ljava/math/BigInteger;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRate(Ljava/math/BigInteger;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRateInHbmHdr(Ljava/math/BigInteger;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRateInHbmSunlight(Ljava/math/BigInteger;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    return-void
.end method

.method public final setHigherBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-void
.end method

.method public final setLowPowerSupportedModes(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowPowerSupportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-void
.end method

.method public final setLowerBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-void
.end method

.method public final setRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateZoneProfiles;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    return-void
.end method
