.class public Lcom/android/server/display/config/HdrBrightnessConfig;
.super Ljava/lang/Object;
.source "HdrBrightnessConfig.java"


# instance fields
.field public allowInLowPowerMode:Ljava/lang/Boolean;

.field public brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

.field public brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

.field public brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

.field public minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

.field public minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

.field public screenBrightnessRampDecrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampIncrease:Ljava/math/BigDecimal;

.field public sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HdrBrightnessConfig;
    .registers 5

    .line 153
    new-instance v0, Lcom/android/server/display/config/HdrBrightnessConfig;

    invoke-direct {v0}, Lcom/android/server/display/config/HdrBrightnessConfig;-><init>()V

    .line 155
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 157
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_de

    if-eq v1, v3, :cond_de

    .line 159
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 160
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "brightnessMap"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 162
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HdrBrightnessConfig;->setBrightnessMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    goto :goto_8

    .line 164
    :cond_2e
    const-string v2, "brightnessIncreaseDebounceMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 165
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->setBrightnessIncreaseDebounceMillis(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 168
    :cond_43
    const-string v2, "brightnessDecreaseDebounceMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 169
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->setBrightnessDecreaseDebounceMillis(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 172
    :cond_58
    const-string/jumbo v2, "screenBrightnessRampIncrease"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 173
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->setScreenBrightnessRampIncrease(Ljava/math/BigDecimal;)V

    goto :goto_8

    .line 176
    :cond_6e
    const-string/jumbo v2, "screenBrightnessRampDecrease"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 177
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->setScreenBrightnessRampDecrease(Ljava/math/BigDecimal;)V

    goto :goto_8

    .line 180
    :cond_84
    const-string/jumbo v2, "minimumHdrPercentOfScreenForNbm"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 181
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->setMinimumHdrPercentOfScreenForNbm(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 184
    :cond_9b
    const-string/jumbo v2, "minimumHdrPercentOfScreenForHbm"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 185
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->setMinimumHdrPercentOfScreenForHbm(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 188
    :cond_b2
    const-string v2, "allowInLowPowerMode"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 189
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HdrBrightnessConfig;->setAllowInLowPowerMode(Z)V

    goto/16 :goto_8

    .line 192
    :cond_c7
    const-string/jumbo v2, "sdrHdrRatioMap"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 193
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HdrBrightnessConfig;->setSdrHdrRatioMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    goto/16 :goto_8

    .line 196
    :cond_d9
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_de
    if-ne v1, v3, :cond_e1

    return-object v0

    .line 200
    :cond_e1
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "HdrBrightnessConfig is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAllowInLowPowerMode()Z
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->allowInLowPowerMode:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 123
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getBrightnessDecreaseDebounceMillis()Ljava/math/BigInteger;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getBrightnessIncreaseDebounceMillis()Ljava/math/BigInteger;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getBrightnessMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object p0
.end method

.method public final getMinimumHdrPercentOfScreenForHbm()Ljava/math/BigDecimal;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getMinimumHdrPercentOfScreenForNbm()Ljava/math/BigDecimal;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampDecrease()Ljava/math/BigDecimal;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampIncrease()Ljava/math/BigDecimal;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getSdrHdrRatioMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object p0
.end method

.method public final setAllowInLowPowerMode(Z)V
    .registers 2

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->allowInLowPowerMode:Ljava/lang/Boolean;

    return-void
.end method

.method public final setBrightnessDecreaseDebounceMillis(Ljava/math/BigInteger;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setBrightnessIncreaseDebounceMillis(Ljava/math/BigInteger;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setBrightnessMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-void
.end method

.method public final setMinimumHdrPercentOfScreenForHbm(Ljava/math/BigDecimal;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setMinimumHdrPercentOfScreenForNbm(Ljava/math/BigDecimal;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampDecrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampIncrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setSdrHdrRatioMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-void
.end method
