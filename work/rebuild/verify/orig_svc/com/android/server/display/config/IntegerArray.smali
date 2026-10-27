.class public Lcom/android/server/display/config/IntegerArray;
.super Ljava/lang/Object;
.source "IntegerArray.java"


# instance fields
.field public item:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IntegerArray;
    .registers 5

    .line 14
    new-instance v0, Lcom/android/server/display/config/IntegerArray;

    invoke-direct {v0}, Lcom/android/server/display/config/IntegerArray;-><init>()V

    .line 16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_3c

    if-eq v1, v3, :cond_3c

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 21
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    const-string/jumbo v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 23
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/android/server/display/config/IntegerArray;->getItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 27
    :cond_38
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_3c
    if-ne v1, v3, :cond_3f

    return-object v0

    .line 31
    :cond_3f
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "IntegerArray is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getItem()Ljava/util/List;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    if-nez v0, :cond_b

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 10
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    return-object p0
.end method
