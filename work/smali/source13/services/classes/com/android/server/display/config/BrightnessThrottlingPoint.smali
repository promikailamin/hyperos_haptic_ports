.class public Lcom/android/server/display/config/BrightnessThrottlingPoint;
.super Ljava/lang/Object;
.source "BrightnessThrottlingPoint.java"


# instance fields
.field private brightness:Ljava/math/BigDecimal;

.field private thermalStatus:Lcom/android/server/display/config/ThermalStatus;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThrottlingPoint;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    invoke-direct {v0}, Lcom/android/server/display/config/BrightnessThrottlingPoint;-><init>()V

    .line 39
    .local v0, "instance":Lcom/android/server/display/config/BrightnessThrottlingPoint;
    const/4 v1, 0x0

    .line 40
    .local v1, "raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 42
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_4f

    if-eq v4, v6, :cond_4f

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 45
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "thermalStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 47
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v5

    .line 49
    .local v5, "value":Lcom/android/server/display/config/ThermalStatus;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->setThermalStatus(Lcom/android/server/display/config/ThermalStatus;)V

    .line 50
    .end local v5    # "value":Lcom/android/server/display/config/ThermalStatus;
    goto :goto_4e

    :cond_36
    const-string v5, "brightness"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 51
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->setBrightness(Ljava/math/BigDecimal;)V

    .line 54
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_4e

    .line 55
    :cond_4b
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 57
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_4e
    goto :goto_a

    .line 58
    :cond_4f
    if-ne v4, v6, :cond_52

    .line 61
    return-object v0

    .line 59
    :cond_52
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "BrightnessThrottlingPoint is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getBrightness()Ljava/math/BigDecimal;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/server/display/config/BrightnessThrottlingPoint;->brightness:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getThermalStatus()Lcom/android/server/display/config/ThermalStatus;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/android/server/display/config/BrightnessThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    return-object v0
.end method

.method hasBrightness()Z
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/server/display/config/BrightnessThrottlingPoint;->brightness:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 28
    const/4 v0, 0x0

    return v0

    .line 30
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasThermalStatus()Z
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/android/server/display/config/BrightnessThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    if-nez v0, :cond_6

    .line 13
    const/4 v0, 0x0

    return v0

    .line 15
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final setBrightness(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "brightness"    # Ljava/math/BigDecimal;

    .line 34
    iput-object p1, p0, Lcom/android/server/display/config/BrightnessThrottlingPoint;->brightness:Ljava/math/BigDecimal;

    .line 35
    return-void
.end method

.method public final setThermalStatus(Lcom/android/server/display/config/ThermalStatus;)V
    .registers 2
    .param p1, "thermalStatus"    # Lcom/android/server/display/config/ThermalStatus;

    .line 19
    iput-object p1, p0, Lcom/android/server/display/config/BrightnessThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 20
    return-void
.end method
