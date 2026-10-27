.class public Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;
.super Ljava/lang/Object;
.source "IdleScreenRefreshRateTimeout.java"


# instance fields
.field public luxThresholds:Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;
    .registers 5

    .line 22
    new-instance v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    invoke-direct {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;-><init>()V

    .line 24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 26
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_33

    if-eq v1, v3, :cond_33

    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 29
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string/jumbo v2, "luxThresholds"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 31
    invoke-static {p0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->setLuxThresholds(Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;)V

    goto :goto_8

    .line 34
    :cond_2f
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_33
    if-ne v1, v3, :cond_36

    return-object v0

    .line 38
    :cond_36
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "IdleScreenRefreshRateTimeout is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getLuxThresholds()Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->luxThresholds:Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    return-object p0
.end method

.method public final setLuxThresholds(Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->luxThresholds:Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    return-void
.end method
