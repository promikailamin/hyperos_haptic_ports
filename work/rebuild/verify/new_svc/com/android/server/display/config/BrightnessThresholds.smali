.class public Lcom/android/server/display/config/BrightnessThresholds;
.super Ljava/lang/Object;
.source "BrightnessThresholds.java"


# instance fields
.field public brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

.field public minimum:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;
    .registers 5

    .line 38
    new-instance v0, Lcom/android/server/display/config/BrightnessThresholds;

    invoke-direct {v0}, Lcom/android/server/display/config/BrightnessThresholds;-><init>()V

    .line 40
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_48

    if-eq v1, v3, :cond_48

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 45
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "minimum"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 47
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/BrightnessThresholds;->setMinimum(Ljava/math/BigDecimal;)V

    goto :goto_8

    .line 50
    :cond_34
    const-string v2, "brightnessThresholdPoints"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 51
    invoke-static {p0}, Lcom/android/server/display/config/ThresholdPoints;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThresholdPoints;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BrightnessThresholds;->setBrightnessThresholdPoints(Lcom/android/server/display/config/ThresholdPoints;)V

    goto :goto_8

    .line 54
    :cond_44
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_48
    if-ne v1, v3, :cond_4b

    return-object v0

    .line 58
    :cond_4b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BrightnessThresholds is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBrightnessThresholdPoints()Lcom/android/server/display/config/ThresholdPoints;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/android/server/display/config/BrightnessThresholds;->brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

    return-object p0
.end method

.method public final getMinimum()Ljava/math/BigDecimal;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final setBrightnessThresholdPoints(Lcom/android/server/display/config/ThresholdPoints;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/server/display/config/BrightnessThresholds;->brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

    return-void
.end method

.method public final setMinimum(Ljava/math/BigDecimal;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    return-void
.end method
