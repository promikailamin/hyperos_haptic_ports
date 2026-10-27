.class public Lcom/android/server/display/config/layout/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field public address_optional:Ljava/math/BigInteger;

.field public brightnessThrottlingMapId:Ljava/lang/String;

.field public defaultDisplay:Ljava/lang/Boolean;

.field public displayGroup:Ljava/lang/String;

.field public enabled:Ljava/lang/Boolean;

.field public leadDisplayAddress:Ljava/math/BigInteger;

.field public port_optional:Ljava/math/BigInteger;

.field public position:Ljava/lang/String;

.field public powerThrottlingMapId:Ljava/lang/String;

.field public refreshRateThermalThrottlingMapId:Ljava/lang/String;

.field public refreshRateZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/layout/Display;
    .registers 5

    .line 188
    new-instance v0, Lcom/android/server/display/config/layout/Display;

    invoke-direct {v0}, Lcom/android/server/display/config/layout/Display;-><init>()V

    .line 190
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 192
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setEnabled(Z)V

    .line 195
    :cond_15
    const-string v1, "defaultDisplay"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 197
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setDefaultDisplay(Z)V

    .line 200
    :cond_24
    const-string/jumbo v1, "refreshRateZoneId"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setRefreshRateZoneId(Ljava/lang/String;)V

    .line 205
    :cond_30
    const-string v1, "displayGroup"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setDisplayGroup(Ljava/lang/String;)V

    .line 210
    :cond_3b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 212
    :goto_3e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_df

    if-eq v1, v3, :cond_df

    .line 214
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_50

    goto :goto_3e

    .line 215
    :cond_50
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v2, "address"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 217
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 218
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/layout/Display;->setAddress_optional(Ljava/math/BigInteger;)V

    goto :goto_3e

    .line 220
    :cond_69
    const-string/jumbo v2, "port"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 221
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 222
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/layout/Display;->setPort_optional(Ljava/math/BigInteger;)V

    goto :goto_3e

    .line 224
    :cond_7f
    const-string/jumbo v2, "position"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 225
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setPosition(Ljava/lang/String;)V

    goto :goto_3e

    .line 228
    :cond_90
    const-string v2, "brightnessThrottlingMapId"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 229
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setBrightnessThrottlingMapId(Ljava/lang/String;)V

    goto :goto_3e

    .line 232
    :cond_a0
    const-string/jumbo v2, "powerThrottlingMapId"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 233
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setPowerThrottlingMapId(Ljava/lang/String;)V

    goto :goto_3e

    .line 236
    :cond_b1
    const-string/jumbo v2, "refreshRateThermalThrottlingMapId"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 237
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setRefreshRateThermalThrottlingMapId(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 240
    :cond_c3
    const-string/jumbo v2, "leadDisplayAddress"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 241
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 242
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/layout/Display;->setLeadDisplayAddress(Ljava/math/BigInteger;)V

    goto/16 :goto_3e

    .line 245
    :cond_da
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3e

    :cond_df
    if-ne v1, v3, :cond_e2

    return-object v0

    .line 249
    :cond_e2
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Display is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAddress_optional()Ljava/math/BigInteger;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->address_optional:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getBrightnessThrottlingMapId()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->brightnessThrottlingMapId:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayGroup()Ljava/lang/String;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->displayGroup:Ljava/lang/String;

    return-object p0
.end method

.method public getLeadDisplayAddress()Ljava/math/BigInteger;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->leadDisplayAddress:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPort_optional()Ljava/math/BigInteger;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->port_optional:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPosition()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->position:Ljava/lang/String;

    return-object p0
.end method

.method public getPowerThrottlingMapId()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->powerThrottlingMapId:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRateThermalThrottlingMapId()Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->refreshRateThermalThrottlingMapId:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRateZoneId()Ljava/lang/String;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->refreshRateZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public isDefaultDisplay()Z
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 143
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setAddress_optional(Ljava/math/BigInteger;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->address_optional:Ljava/math/BigInteger;

    return-void
.end method

.method public setBrightnessThrottlingMapId(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->brightnessThrottlingMapId:Ljava/lang/String;

    return-void
.end method

.method public setDefaultDisplay(Z)V
    .registers 2

    .line 154
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    return-void
.end method

.method public setDisplayGroup(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->displayGroup:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setLeadDisplayAddress(Ljava/math/BigInteger;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->leadDisplayAddress:Ljava/math/BigInteger;

    return-void
.end method

.method public setPort_optional(Ljava/math/BigInteger;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->port_optional:Ljava/math/BigInteger;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->position:Ljava/lang/String;

    return-void
.end method

.method public setPowerThrottlingMapId(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->powerThrottlingMapId:Ljava/lang/String;

    return-void
.end method

.method public setRefreshRateThermalThrottlingMapId(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->refreshRateThermalThrottlingMapId:Ljava/lang/String;

    return-void
.end method

.method public setRefreshRateZoneId(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->refreshRateZoneId:Ljava/lang/String;

    return-void
.end method
