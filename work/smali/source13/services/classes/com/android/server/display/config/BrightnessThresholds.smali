.class public Lcom/android/server/display/config/BrightnessThresholds;
.super Ljava/lang/Object;
.source "BrightnessThresholds.java"


# instance fields
.field private minimum:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/android/server/display/config/BrightnessThresholds;

    invoke-direct {v0}, Lcom/android/server/display/config/BrightnessThresholds;-><init>()V

    .line 23
    .local v0, "instance":Lcom/android/server/display/config/BrightnessThresholds;
    const/4 v1, 0x0

    .line 24
    .local v1, "raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 26
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_3b

    if-eq v4, v6, :cond_3b

    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 29
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "minimum"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 31
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 33
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/BrightnessThresholds;->setMinimum(Ljava/math/BigDecimal;)V

    .line 34
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_3a

    .line 35
    :cond_37
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 37
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_3a
    goto :goto_a

    .line 38
    :cond_3b
    if-ne v4, v6, :cond_3e

    .line 41
    return-object v0

    .line 39
    :cond_3e
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "BrightnessThresholds is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getMinimum()Ljava/math/BigDecimal;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    return-object v0
.end method

.method hasMinimum()Z
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 12
    const/4 v0, 0x0

    return v0

    .line 14
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final setMinimum(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "minimum"    # Ljava/math/BigDecimal;

    .line 18
    iput-object p1, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    .line 19
    return-void
.end method
