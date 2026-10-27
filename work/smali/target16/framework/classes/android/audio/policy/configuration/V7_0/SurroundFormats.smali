.class public Landroid/audio/policy/configuration/V7_0/SurroundFormats;
.super Ljava/lang/Object;
.source "SurroundFormats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;
    }
.end annotation


# instance fields
.field private blacklist format:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundFormats;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 72
    new-instance v0, Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/SurroundFormats;-><init>()V

    .line 73
    nop

    .line 74
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 76
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_37

    if-eq v1, v3, :cond_37

    .line 78
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    goto :goto_9

    .line 79
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "format"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 81
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/SurroundFormats;->getFormat()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_36

    .line 84
    :cond_33
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 86
    :goto_36
    goto :goto_9

    .line 87
    :cond_37
    if-ne v1, v3, :cond_3a

    .line 90
    return-object v0

    .line 88
    :cond_3a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "SurroundFormats is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getFormat()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats;->format:Ljava/util/List;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats;->format:Ljava/util/List;

    .line 68
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats;->format:Ljava/util/List;

    return-object v0
.end method
