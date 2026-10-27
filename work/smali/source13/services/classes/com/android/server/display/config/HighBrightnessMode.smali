.class public Lcom/android/server/display/config/HighBrightnessMode;
.super Ljava/lang/Object;
.source "HighBrightnessMode.java"


# instance fields
.field private allowInLowPowerMode_all:Ljava/lang/Boolean;

.field private enabled:Ljava/lang/Boolean;

.field private minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

.field private minimumLux_all:Ljava/math/BigDecimal;

.field private refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

.field private sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

.field private thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

.field private timing_all:Lcom/android/server/display/config/HbmTiming;

.field private transitionPoint_all:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/android/server/display/config/HighBrightnessMode;

    invoke-direct {v0}, Lcom/android/server/display/config/HighBrightnessMode;-><init>()V

    .line 157
    .local v0, "instance":Lcom/android/server/display/config/HighBrightnessMode;
    const/4 v1, 0x0

    .line 158
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "enabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_16

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 161
    .local v2, "value":Z
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HighBrightnessMode;->setEnabled(Z)V

    .line 163
    .end local v2    # "value":Z
    :cond_16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 165
    .local v2, "outerDepth":I
    :goto_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_d6

    if-eq v4, v6, :cond_d6

    .line 167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2d

    goto :goto_1a

    .line 168
    :cond_2d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "transitionPoint"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 170
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 172
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setTransitionPoint_all(Ljava/math/BigDecimal;)V

    .line 173
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_d4

    :cond_48
    const-string/jumbo v5, "minimumLux"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 174
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setMinimumLux_all(Ljava/math/BigDecimal;)V

    .line 177
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_d4

    :cond_5f
    const-string/jumbo v5, "timing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 178
    invoke-static {p0}, Lcom/android/server/display/config/HbmTiming;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HbmTiming;

    move-result-object v5

    .line 179
    .local v5, "value":Lcom/android/server/display/config/HbmTiming;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setTiming_all(Lcom/android/server/display/config/HbmTiming;)V

    .line 180
    .end local v5    # "value":Lcom/android/server/display/config/HbmTiming;
    goto :goto_d4

    :cond_70
    const-string/jumbo v5, "refreshRate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 181
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v5

    .line 182
    .local v5, "value":Lcom/android/server/display/config/RefreshRateRange;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setRefreshRate_all(Lcom/android/server/display/config/RefreshRateRange;)V

    .line 183
    .end local v5    # "value":Lcom/android/server/display/config/RefreshRateRange;
    goto :goto_d4

    :cond_81
    const-string/jumbo v5, "thermalStatusLimit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 184
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v5

    .line 186
    .local v5, "value":Lcom/android/server/display/config/ThermalStatus;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setThermalStatusLimit_all(Lcom/android/server/display/config/ThermalStatus;)V

    .line 187
    .end local v5    # "value":Lcom/android/server/display/config/ThermalStatus;
    goto :goto_d4

    :cond_96
    const-string v5, "allowInLowPowerMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 188
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 190
    .local v5, "value":Z
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setAllowInLowPowerMode_all(Z)V

    .line 191
    .end local v5    # "value":Z
    goto :goto_d4

    :cond_aa
    const-string/jumbo v5, "minimumHdrPercentOfScreen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 192
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 194
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setMinimumHdrPercentOfScreen_all(Ljava/math/BigDecimal;)V

    .line 195
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_d4

    :cond_c0
    const-string/jumbo v5, "sdrHdrRatioMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 196
    invoke-static {p0}, Lcom/android/server/display/config/SdrHdrRatioMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object v5

    .line 197
    .local v5, "value":Lcom/android/server/display/config/SdrHdrRatioMap;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setSdrHdrRatioMap_all(Lcom/android/server/display/config/SdrHdrRatioMap;)V

    .line 198
    .end local v5    # "value":Lcom/android/server/display/config/SdrHdrRatioMap;
    goto :goto_d4

    .line 199
    :cond_d1
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 201
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_d4
    goto/16 :goto_1a

    .line 202
    :cond_d6
    if-ne v4, v6, :cond_d9

    .line 205
    return-object v0

    .line 203
    :cond_d9
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "HighBrightnessMode is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getAllowInLowPowerMode_all()Z
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 91
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnabled()Z
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getMinimumLux_all()Ljava/math/BigDecimal;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    return-object v0
.end method

.method public final getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    return-object v0
.end method

.method public final getThermalStatusLimit_all()Lcom/android/server/display/config/ThermalStatus;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    return-object v0
.end method

.method public getTiming_all()Lcom/android/server/display/config/HbmTiming;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    return-object v0
.end method

.method public final getTransitionPoint_all()Ljava/math/BigDecimal;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    return-object v0
.end method

.method hasAllowInLowPowerMode_all()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasEnabled()Z
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 146
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMinimumHdrPercentOfScreen_all()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 113
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMinimumLux_all()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasRefreshRate_all()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasSdrHdrRatioMap_all()Z
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    if-nez v0, :cond_6

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasThermalStatusLimit_all()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    if-nez v0, :cond_6

    .line 80
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasTiming_all()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    if-nez v0, :cond_6

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasTransitionPoint_all()Z
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final setAllowInLowPowerMode_all(Z)V
    .registers 3
    .param p1, "allowInLowPowerMode_all"    # Z

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    .line 105
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    .line 153
    return-void
.end method

.method public final setMinimumHdrPercentOfScreen_all(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "minimumHdrPercentOfScreen_all"    # Ljava/math/BigDecimal;

    .line 119
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    .line 120
    return-void
.end method

.method public final setMinimumLux_all(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "minimumLux_all"    # Ljava/math/BigDecimal;

    .line 41
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    .line 42
    return-void
.end method

.method public final setRefreshRate_all(Lcom/android/server/display/config/RefreshRateRange;)V
    .registers 2
    .param p1, "refreshRate_all"    # Lcom/android/server/display/config/RefreshRateRange;

    .line 71
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    .line 72
    return-void
.end method

.method public final setSdrHdrRatioMap_all(Lcom/android/server/display/config/SdrHdrRatioMap;)V
    .registers 2
    .param p1, "sdrHdrRatioMap_all"    # Lcom/android/server/display/config/SdrHdrRatioMap;

    .line 134
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    .line 135
    return-void
.end method

.method public final setThermalStatusLimit_all(Lcom/android/server/display/config/ThermalStatus;)V
    .registers 2
    .param p1, "thermalStatusLimit_all"    # Lcom/android/server/display/config/ThermalStatus;

    .line 86
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    .line 87
    return-void
.end method

.method public setTiming_all(Lcom/android/server/display/config/HbmTiming;)V
    .registers 2
    .param p1, "timing_all"    # Lcom/android/server/display/config/HbmTiming;

    .line 56
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    .line 57
    return-void
.end method

.method public final setTransitionPoint_all(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "transitionPoint_all"    # Ljava/math/BigDecimal;

    .line 26
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    .line 27
    return-void
.end method
