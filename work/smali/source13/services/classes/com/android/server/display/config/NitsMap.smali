.class public Lcom/android/server/display/config/NitsMap;
.super Ljava/lang/Object;
.source "NitsMap.java"


# instance fields
.field private interpolation:Ljava/lang/String;

.field private point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/config/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/server/display/config/NitsMap;

    invoke-direct {v0}, Lcom/android/server/display/config/NitsMap;-><init>()V

    .line 31
    .local v0, "instance":Lcom/android/server/display/config/NitsMap;
    const/4 v1, 0x0

    .line 32
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "interpolation"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_14

    .line 34
    move-object v2, v1

    .line 35
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/NitsMap;->setInterpolation(Ljava/lang/String;)V

    .line 37
    .end local v2    # "value":Ljava/lang/String;
    :cond_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 39
    .local v2, "outerDepth":I
    :goto_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_48

    if-eq v4, v6, :cond_48

    .line 41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2b

    goto :goto_18

    .line 42
    :cond_2b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "point"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 44
    invoke-static {p0}, Lcom/android/server/display/config/Point;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Point;

    move-result-object v5

    .line 45
    .local v5, "value":Lcom/android/server/display/config/Point;
    invoke-virtual {v0}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v5    # "value":Lcom/android/server/display/config/Point;
    goto :goto_47

    .line 47
    :cond_44
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 49
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_47
    goto :goto_18

    .line 50
    :cond_48
    if-ne v4, v6, :cond_4b

    .line 53
    return-object v0

    .line 51
    :cond_4b
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "NitsMap is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getInterpolation()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/android/server/display/config/NitsMap;->interpolation:Ljava/lang/String;

    return-object v0
.end method

.method public final getPoint()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/Point;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    if-nez v0, :cond_b

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 11
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    return-object v0
.end method

.method hasInterpolation()Z
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/android/server/display/config/NitsMap;->interpolation:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setInterpolation(Ljava/lang/String;)V
    .registers 2
    .param p1, "interpolation"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/android/server/display/config/NitsMap;->interpolation:Ljava/lang/String;

    .line 27
    return-void
.end method
