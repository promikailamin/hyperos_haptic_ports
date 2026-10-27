.class public Lcom/android/server/firewall/ExtraKeyValueFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "ExtraKeyValueFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 7

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 59
    :goto_7
    invoke-static {p1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v2, :cond_2d

    .line 74
    invoke-static {v0, p1}, Lcom/android/server/firewall/StringFilter;->readFromXml(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/StringFilter;

    move-result-object v2

    goto :goto_7

    .line 71
    :cond_2d
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Multiple value elements found in an extra element"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_35
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown element in extra rule: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    if-nez v1, :cond_56

    .line 67
    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 64
    :cond_56
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Multiple key elements found in an extra element"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    if-eqz v1, :cond_68

    if-eqz v2, :cond_68

    .line 85
    new-instance p0, Lcom/android/server/firewall/ExtraKeyValueFilter;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/firewall/ExtraKeyValueFilter;-><init>(Ljava/lang/String;Lcom/android/server/firewall/StringFilter;Lcom/android/server/firewall/ExtraKeyValueFilter-IA;)V

    return-object p0

    .line 82
    :cond_68
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "<extra> must contain both <key> and <value>"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
