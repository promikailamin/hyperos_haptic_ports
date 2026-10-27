.class public Lcom/android/server/compat/config/Change;
.super Ljava/lang/Object;
.source "Change.java"


# instance fields
.field private description:Ljava/lang/String;

.field private disabled:Ljava/lang/Boolean;

.field private enableAfterTargetSdk:Ljava/lang/Integer;

.field private enableSinceTargetSdk:Ljava/lang/Integer;

.field private id:Ljava/lang/Long;

.field private loggingOnly:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private overridable:Ljava/lang/Boolean;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/config/Change;
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/android/server/compat/config/Change;

    invoke-direct {v0}, Lcom/android/server/compat/config/Change;-><init>()V

    .line 169
    .local v0, "instance":Lcom/android/server/compat/config/Change;
    const/4 v1, 0x0

    .line 170
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "id"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_17

    .line 172
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 173
    .local v3, "value":J
    invoke-virtual {v0, v3, v4}, Lcom/android/server/compat/config/Change;->setId(J)V

    .line 175
    .end local v3    # "value":J
    :cond_17
    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_24

    .line 177
    move-object v3, v1

    .line 178
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setName(Ljava/lang/String;)V

    .line 180
    .end local v3    # "value":Ljava/lang/String;
    :cond_24
    const-string v3, "disabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_33

    .line 182
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 183
    .local v3, "value":Z
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setDisabled(Z)V

    .line 185
    .end local v3    # "value":Z
    :cond_33
    const-string/jumbo v3, "loggingOnly"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_43

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 188
    .restart local v3    # "value":Z
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setLoggingOnly(Z)V

    .line 190
    .end local v3    # "value":Z
    :cond_43
    const-string v3, "enableAfterTargetSdk"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_52

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 193
    .local v3, "value":I
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setEnableAfterTargetSdk(I)V

    .line 195
    .end local v3    # "value":I
    :cond_52
    const-string v3, "enableSinceTargetSdk"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_61

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 198
    .restart local v3    # "value":I
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setEnableSinceTargetSdk(I)V

    .line 200
    .end local v3    # "value":I
    :cond_61
    const-string v3, "description"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_6d

    .line 202
    move-object v3, v1

    .line 203
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setDescription(Ljava/lang/String;)V

    .line 205
    .end local v3    # "value":Ljava/lang/String;
    :cond_6d
    const-string/jumbo v3, "overridable"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_7d

    .line 207
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 208
    .local v2, "value":Z
    invoke-virtual {v0, v2}, Lcom/android/server/compat/config/Change;->setOverridable(Z)V

    .line 210
    .end local v2    # "value":Z
    :cond_7d
    invoke-static {p0}, Lcom/android/server/compat/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_87

    .line 212
    move-object v2, v1

    .line 213
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/compat/config/Change;->setValue(Ljava/lang/String;)V

    .line 215
    .end local v2    # "value":Ljava/lang/String;
    :cond_87
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableAfterTargetSdk()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 85
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnableSinceTargetSdk()I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 103
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getId()J
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    if-nez v0, :cond_7

    .line 16
    const-wide/16 v0, 0x0

    return-wide v0

    .line 18
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoggingOnly()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOverridable()Z
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    return-object v0
.end method

.method hasDescription()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasDisabled()Z
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasEnableAfterTargetSdk()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 92
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasEnableSinceTargetSdk()Z
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 110
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasId()Z
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 23
    const/4 v0, 0x0

    return v0

    .line 25
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasLoggingOnly()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 74
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 38
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasOverridable()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 143
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasValue()Z
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 158
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setDisabled(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    .line 63
    return-void
.end method

.method public setEnableAfterTargetSdk(I)V
    .registers 3
    .param p1, "enableAfterTargetSdk"    # I

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method public setEnableSinceTargetSdk(I)V
    .registers 3
    .param p1, "enableSinceTargetSdk"    # I

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    .line 117
    return-void
.end method

.method public setId(J)V
    .registers 4
    .param p1, "id"    # J

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    .line 30
    return-void
.end method

.method public setLoggingOnly(Z)V
    .registers 3
    .param p1, "loggingOnly"    # Z

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    .line 81
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setOverridable(Z)V
    .registers 3
    .param p1, "overridable"    # Z

    .line 149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    .line 150
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    .line 165
    return-void
.end method
