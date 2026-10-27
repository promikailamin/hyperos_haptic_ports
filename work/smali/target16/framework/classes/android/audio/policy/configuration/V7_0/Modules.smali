.class public Landroid/audio/policy/configuration/V7_0/Modules;
.super Ljava/lang/Object;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/audio/policy/configuration/V7_0/Modules$Module;
    }
.end annotation


# instance fields
.field private blacklist module:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules$Module;",
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

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 174
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Modules;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Modules;-><init>()V

    .line 175
    nop

    .line 176
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 178
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_38

    if-eq v1, v3, :cond_38

    .line 180
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    goto :goto_9

    .line 181
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string/jumbo v2, "module"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 183
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules$Module;

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Modules;->getModule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    goto :goto_37

    .line 186
    :cond_34
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 188
    :goto_37
    goto :goto_9

    .line 189
    :cond_38
    if-ne v1, v3, :cond_3b

    .line 192
    return-object v0

    .line 190
    :cond_3b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Modules is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getModule()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules$Module;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules;->module:Ljava/util/List;

    if-nez v0, :cond_b

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules;->module:Ljava/util/List;

    .line 170
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules;->module:Ljava/util/List;

    return-object v0
.end method
