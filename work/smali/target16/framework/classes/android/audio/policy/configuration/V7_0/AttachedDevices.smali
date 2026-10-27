.class public Landroid/audio/policy/configuration/V7_0/AttachedDevices;
.super Ljava/lang/Object;
.source "AttachedDevices.java"


# instance fields
.field private blacklist item:Ljava/util/List;
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/AttachedDevices;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 14
    new-instance v0, Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/AttachedDevices;-><init>()V

    .line 15
    nop

    .line 16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_39

    if-eq v1, v3, :cond_39

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    goto :goto_9

    .line 21
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    const-string/jumbo v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 23
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 24
    nop

    .line 25
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AttachedDevices;->getItem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_38

    .line 27
    :cond_35
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 29
    :goto_38
    goto :goto_9

    .line 30
    :cond_39
    if-ne v1, v3, :cond_3c

    .line 33
    return-object v0

    .line 31
    :cond_3c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "AttachedDevices is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getItem()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AttachedDevices;->item:Ljava/util/List;

    if-nez v0, :cond_b

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/AttachedDevices;->item:Ljava/util/List;

    .line 10
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AttachedDevices;->item:Ljava/util/List;

    return-object v0
.end method
