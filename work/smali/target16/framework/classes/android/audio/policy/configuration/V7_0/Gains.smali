.class public Landroid/audio/policy/configuration/V7_0/Gains;
.super Ljava/lang/Object;
.source "Gains.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/audio/policy/configuration/V7_0/Gains$Gain;
    }
.end annotation


# instance fields
.field private blacklist gain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Gains$Gain;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Gains;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Gains;-><init>()V

    .line 262
    nop

    .line 263
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 265
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_37

    if-eq v1, v3, :cond_37

    .line 267
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    goto :goto_9

    .line 268
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "gain"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 270
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains$Gain;

    move-result-object v1

    .line 271
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Gains;->getGain()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    goto :goto_36

    .line 273
    :cond_33
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 275
    :goto_36
    goto :goto_9

    .line 276
    :cond_37
    if-ne v1, v3, :cond_3a

    .line 279
    return-object v0

    .line 277
    :cond_3a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Gains is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getGain()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Gains$Gain;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains;->gain:Ljava/util/List;

    if-nez v0, :cond_b

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains;->gain:Ljava/util/List;

    .line 257
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains;->gain:Ljava/util/List;

    return-object v0
.end method
