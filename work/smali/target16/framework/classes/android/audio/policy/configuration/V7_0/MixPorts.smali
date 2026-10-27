.class public Landroid/audio/policy/configuration/V7_0/MixPorts;
.super Ljava/lang/Object;
.source "MixPorts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;
    }
.end annotation


# instance fields
.field private blacklist mixPort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/MixPorts;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 210
    new-instance v0, Landroid/audio/policy/configuration/V7_0/MixPorts;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/MixPorts;-><init>()V

    .line 211
    nop

    .line 212
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 214
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_38

    if-eq v1, v3, :cond_38

    .line 216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    goto :goto_9

    .line 217
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string/jumbo v2, "mixPort"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 219
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;

    move-result-object v1

    .line 220
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/MixPorts;->getMixPort()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    goto :goto_37

    .line 222
    :cond_34
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 224
    :goto_37
    goto :goto_9

    .line 225
    :cond_38
    if-ne v1, v3, :cond_3b

    .line 228
    return-object v0

    .line 226
    :cond_3b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "MixPorts is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getMixPort()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts;->mixPort:Ljava/util/List;

    if-nez v0, :cond_b

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts;->mixPort:Ljava/util/List;

    .line 206
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts;->mixPort:Ljava/util/List;

    return-object v0
.end method
