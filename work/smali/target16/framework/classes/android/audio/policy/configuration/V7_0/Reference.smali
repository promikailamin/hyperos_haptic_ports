.class public Landroid/audio/policy/configuration/V7_0/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# instance fields
.field private blacklist name:Ljava/lang/String;

.field private blacklist point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Reference;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 30
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Reference;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Reference;-><init>()V

    .line 31
    nop

    .line 32
    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_14

    .line 34
    nop

    .line 35
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Reference;->setName(Ljava/lang/String;)V

    .line 37
    :cond_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 39
    :goto_17
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_47

    if-eq v1, v3, :cond_47

    .line 41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_29

    goto :goto_17

    .line 42
    :cond_29
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 44
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 45
    nop

    .line 46
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Reference;->getPoint()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_46

    .line 48
    :cond_43
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 50
    :goto_46
    goto :goto_17

    .line 51
    :cond_47
    if-ne v1, v3, :cond_4a

    .line 54
    return-object v0

    .line 52
    :cond_4a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Reference is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPoint()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->point:Ljava/util/List;

    if-nez v0, :cond_b

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->point:Ljava/util/List;

    .line 11
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->point:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasName()Z
    .registers 2

    .line 19
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Reference;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Reference;->name:Ljava/lang/String;

    .line 27
    return-void
.end method
