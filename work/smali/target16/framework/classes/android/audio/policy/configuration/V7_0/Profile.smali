.class public Landroid/audio/policy/configuration/V7_0/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field private blacklist channelMasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

.field private blacklist format:Ljava/lang/String;

.field private blacklist name:Ljava/lang/String;

.field private blacklist samplingRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 92
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Profile;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Profile;-><init>()V

    .line 93
    nop

    .line 94
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_14

    .line 96
    nop

    .line 97
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Profile;->setName(Ljava/lang/String;)V

    .line 99
    :cond_14
    const-string v1, "format"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_20

    .line 101
    nop

    .line 102
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Profile;->setFormat(Ljava/lang/String;)V

    .line 104
    :cond_20
    const-string/jumbo v1, "samplingRates"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    const/4 v3, 0x0

    const-string v4, "\\s+"

    if-eqz v1, :cond_49

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    move v7, v3

    :goto_37
    if-ge v7, v6, :cond_46

    aget-object v8, v1, v7

    .line 108
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 110
    :cond_46
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Profile;->setSamplingRates(Ljava/util/List;)V

    .line 112
    :cond_49
    const-string v1, "channelMasks"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_6c

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    :goto_5b
    if-ge v3, v4, :cond_69

    aget-object v6, v1, v3

    .line 116
    invoke-static {v6}, Landroid/audio/policy/configuration/V7_0/AudioChannelMask;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 118
    :cond_69
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Profile;->setChannelMasks(Ljava/util/List;)V

    .line 120
    :cond_6c
    const-string v1, "encapsulationType"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_7b

    .line 122
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Profile;->setEncapsulationType(Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;)V

    .line 125
    :cond_7b
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 126
    return-object v0
.end method


# virtual methods
.method public blacklist getChannelMasks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    .line 62
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getEncapsulationType()Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    return-object v0
.end method

.method public blacklist getFormat()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSamplingRates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    .line 44
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasChannelMasks()Z
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    if-nez v0, :cond_6

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasEncapsulationType()Z
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    if-nez v0, :cond_6

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasFormat()Z
    .registers 2

    .line 30
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 31
    const/4 v0, 0x0

    return v0

    .line 33
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasName()Z
    .registers 2

    .line 15
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 16
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSamplingRates()Z
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    if-nez v0, :cond_6

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setChannelMasks(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    .line 74
    return-void
.end method

.method public blacklist setEncapsulationType(Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;)V
    .registers 2

    .line 88
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    .line 89
    return-void
.end method

.method public blacklist setFormat(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public blacklist setSamplingRates(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    .line 56
    return-void
.end method
