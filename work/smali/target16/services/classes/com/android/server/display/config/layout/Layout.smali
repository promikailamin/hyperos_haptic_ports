.class public Lcom/android/server/display/config/layout/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# instance fields
.field public display:Ljava/util/List;

.field public name:Ljava/lang/String;

.field public state:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/layout/Layout;
    .registers 5

    .line 46
    new-instance v0, Lcom/android/server/display/config/layout/Layout;

    invoke-direct {v0}, Lcom/android/server/display/config/layout/Layout;-><init>()V

    .line 48
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 50
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_5d

    if-eq v1, v3, :cond_5d

    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 53
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 55
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/layout/Layout;->setState(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 58
    :cond_34
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 59
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Layout;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 62
    :cond_45
    const-string v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 63
    invoke-static {p0}, Lcom/android/server/display/config/layout/Display;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/layout/Display;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/android/server/display/config/layout/Layout;->getDisplay()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 66
    :cond_59
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_5d
    if-ne v1, v3, :cond_60

    return-object v0

    .line 70
    :cond_60
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Layout is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDisplay()Ljava/util/List;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    .line 42
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/android/server/display/config/layout/Layout;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/math/BigInteger;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/android/server/display/config/layout/Layout;->state:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/android/server/display/config/layout/Layout;->name:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/math/BigInteger;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/android/server/display/config/layout/Layout;->state:Ljava/math/BigInteger;

    return-void
.end method
