.class public Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;
.super Ljava/lang/Object;
.source "SurroundFormats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/SurroundFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# instance fields
.field private blacklist name:Ljava/lang/String;

.field private blacklist subformats:Ljava/util/List;
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

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 42
    new-instance v0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;-><init>()V

    .line 43
    nop

    .line 44
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_14

    .line 46
    nop

    .line 47
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->setName(Ljava/lang/String;)V

    .line 49
    :cond_14
    const-string/jumbo v1, "subformats"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_37

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v3, :cond_34

    aget-object v5, v1, v4

    .line 53
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 55
    :cond_34
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->setSubformats(Ljava/util/List;)V

    .line 57
    :cond_37
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubformats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    .line 27
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasName()Z
    .registers 2

    .line 13
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 14
    const/4 v0, 0x0

    return v0

    .line 16
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSubformats()Z
    .registers 2

    .line 31
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    if-nez v0, :cond_6

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public blacklist setSubformats(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/SurroundFormats$Format;->subformats:Ljava/util/List;

    .line 39
    return-void
.end method
