.class public Lcom/android/server/firewall/SenderPackageFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderPackageFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 4

    .line 67
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 74
    new-instance p1, Lcom/android/server/firewall/SenderPackageFilter;

    invoke-direct {p1, p0}, Lcom/android/server/firewall/SenderPackageFilter;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 70
    :cond_10
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "A package name must be specified."

    invoke-direct {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0
.end method
