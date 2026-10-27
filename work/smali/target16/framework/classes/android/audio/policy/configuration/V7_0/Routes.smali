.class public Landroid/audio/policy/configuration/V7_0/Routes;
.super Ljava/lang/Object;
.source "Routes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/audio/policy/configuration/V7_0/Routes$Route;
    }
.end annotation


# instance fields
.field private blacklist route:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Routes$Route;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 87
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Routes;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Routes;-><init>()V

    .line 88
    nop

    .line 89
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 91
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_38

    if-eq v1, v3, :cond_38

    .line 93
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    goto :goto_9

    .line 94
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string/jumbo v2, "route"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 96
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes$Route;

    move-result-object v1

    .line 97
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Routes;->getRoute()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    goto :goto_37

    .line 99
    :cond_34
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    :goto_37
    goto :goto_9

    .line 102
    :cond_38
    if-ne v1, v3, :cond_3b

    .line 105
    return-object v0

    .line 103
    :cond_3b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Routes is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getRoute()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Routes$Route;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes;->route:Ljava/util/List;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes;->route:Ljava/util/List;

    .line 83
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes;->route:Ljava/util/List;

    return-object v0
.end method
