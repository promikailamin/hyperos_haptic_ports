.class public Lcom/android/server/display/config/ComprehensiveBrightnessMap;
.super Ljava/lang/Object;
.source "ComprehensiveBrightnessMap.java"


# instance fields
.field public brightnessPoint:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ComprehensiveBrightnessMap;
    .registers 5

    .line 14
    new-instance v0, Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    invoke-direct {v0}, Lcom/android/server/display/config/ComprehensiveBrightnessMap;-><init>()V

    .line 16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_36

    if-eq v1, v3, :cond_36

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 21
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    const-string v2, "brightnessPoint"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 23
    invoke-static {p0}, Lcom/android/server/display/config/BrightnessPoint;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessPoint;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->getBrightnessPoint()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 26
    :cond_32
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_36
    if-ne v1, v3, :cond_39

    return-object v0

    .line 30
    :cond_39
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "ComprehensiveBrightnessMap is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBrightnessPoint()Ljava/util/List;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    if-nez v0, :cond_b

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 10
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    return-object p0
.end method
