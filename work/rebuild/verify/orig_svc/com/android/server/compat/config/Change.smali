.class public Lcom/android/server/compat/config/Change;
.super Ljava/lang/Object;
.source "Change.java"


# instance fields
.field public description:Ljava/lang/String;

.field public disabled:Ljava/lang/Boolean;

.field public enableAfterTargetSdk:Ljava/lang/Integer;

.field public enableSinceTargetSdk:Ljava/lang/Integer;

.field public id:Ljava/lang/Long;

.field public loggingOnly:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

.field public noLogging:Ljava/lang/Boolean;

.field public overridable:Ljava/lang/Boolean;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/config/Change;
    .registers 6

    .line 187
    new-instance v0, Lcom/android/server/compat/config/Change;

    invoke-direct {v0}, Lcom/android/server/compat/config/Change;-><init>()V

    .line 189
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 191
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 192
    invoke-virtual {v0, v3, v4}, Lcom/android/server/compat/config/Change;->setId(J)V

    .line 194
    :cond_15
    const-string/jumbo v1, "name"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setName(Ljava/lang/String;)V

    .line 199
    :cond_21
    const-string v1, "disabled"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 201
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setDisabled(Z)V

    .line 204
    :cond_30
    const-string/jumbo v1, "loggingOnly"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setLoggingOnly(Z)V

    .line 209
    :cond_40
    const-string/jumbo v1, "noLogging"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 211
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setNoLogging(Z)V

    .line 214
    :cond_50
    const-string v1, "enableAfterTargetSdk"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setEnableAfterTargetSdk(I)V

    .line 219
    :cond_5f
    const-string v1, "enableSinceTargetSdk"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setEnableSinceTargetSdk(I)V

    .line 224
    :cond_6e
    const-string v1, "description"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setDescription(Ljava/lang/String;)V

    .line 229
    :cond_79
    const-string/jumbo v1, "overridable"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setOverridable(Z)V

    .line 234
    :cond_89
    invoke-static {p0}, Lcom/android/server/compat/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_92

    .line 237
    invoke-virtual {v0, p0}, Lcom/android/server/compat/config/Change;->setValue(Ljava/lang/String;)V

    :cond_92
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDisabled()Z
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnableAfterTargetSdk()I
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEnableSinceTargetSdk()I
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getId()J
    .registers 3

    .line 16
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    if-nez p0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 19
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoggingOnly()Z
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNoLogging()Z
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->noLogging:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 88
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getOverridable()Z
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 157
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-void
.end method

.method public setDisabled(Z)V
    .registers 2

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnableAfterTargetSdk(I)V
    .registers 2

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    return-void
.end method

.method public setEnableSinceTargetSdk(I)V
    .registers 2

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLoggingOnly(Z)V
    .registers 2

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoLogging(Z)V
    .registers 2

    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->noLogging:Ljava/lang/Boolean;

    return-void
.end method

.method public setOverridable(Z)V
    .registers 2

    .line 168
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    return-void
.end method
