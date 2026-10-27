.class public Lcom/android/server/display/config/SensorDetails;
.super Ljava/lang/Object;
.source "SensorDetails.java"


# instance fields
.field private name:Ljava/lang/String;

.field private refreshRate:Lcom/android/server/display/config/RefreshRateRange;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/android/server/display/config/SensorDetails;

    invoke-direct {v0}, Lcom/android/server/display/config/SensorDetails;-><init>()V

    .line 55
    .local v0, "instance":Lcom/android/server/display/config/SensorDetails;
    const/4 v1, 0x0

    .line 56
    .local v1, "raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 58
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_5a

    if-eq v4, v6, :cond_5a

    .line 60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 61
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 63
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 64
    move-object v5, v1

    .line 65
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/SensorDetails;->setType(Ljava/lang/String;)V

    .line 66
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_59

    :cond_33
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 67
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 68
    move-object v5, v1

    .line 69
    .restart local v5    # "value":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/SensorDetails;->setName(Ljava/lang/String;)V

    .line 70
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_59

    :cond_45
    const-string/jumbo v5, "refreshRate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 71
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v5

    .line 72
    .local v5, "value":Lcom/android/server/display/config/RefreshRateRange;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/SensorDetails;->setRefreshRate(Lcom/android/server/display/config/RefreshRateRange;)V

    .line 73
    .end local v5    # "value":Lcom/android/server/display/config/RefreshRateRange;
    goto :goto_59

    .line 74
    :cond_56
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 76
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_59
    goto :goto_a

    .line 77
    :cond_5a
    if-ne v4, v6, :cond_5d

    .line 80
    return-object v0

    .line 78
    :cond_5d
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "SensorDetails is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    return-object v0
.end method

.method hasName()Z
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 29
    const/4 v0, 0x0

    return v0

    .line 31
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasRefreshRate()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    if-nez v0, :cond_6

    .line 44
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasType()Z
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 14
    const/4 v0, 0x0

    return v0

    .line 16
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final setRefreshRate(Lcom/android/server/display/config/RefreshRateRange;)V
    .registers 2
    .param p1, "refreshRate"    # Lcom/android/server/display/config/RefreshRateRange;

    .line 50
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    .line 51
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    .line 21
    return-void
.end method
