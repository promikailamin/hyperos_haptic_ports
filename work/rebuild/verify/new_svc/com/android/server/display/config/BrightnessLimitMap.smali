.class public Lcom/android/server/display/config/BrightnessLimitMap;
.super Ljava/lang/Object;
.source "BrightnessLimitMap.java"


# instance fields
.field public map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

.field public type:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessLimitMap;
    .registers 5

    .line 38
    new-instance v0, Lcom/android/server/display/config/BrightnessLimitMap;

    invoke-direct {v0}, Lcom/android/server/display/config/BrightnessLimitMap;-><init>()V

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
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 47
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/android/server/display/config/PredefinedBrightnessLimitNames;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BrightnessLimitMap;->setType(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)V

    goto :goto_8

    .line 50
    :cond_33
    const-string/jumbo v2, "map"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 51
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BrightnessLimitMap;->setMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

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

    const-string v0, "BrightnessLimitMap is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/android/server/display/config/BrightnessLimitMap;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object p0
.end method

.method public final getType()Lcom/android/server/display/config/PredefinedBrightnessLimitNames;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/android/server/display/config/BrightnessLimitMap;->type:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    return-object p0
.end method

.method public final setMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/server/display/config/BrightnessLimitMap;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-void
.end method

.method public final setType(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/server/display/config/BrightnessLimitMap;->type:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    return-void
.end method
