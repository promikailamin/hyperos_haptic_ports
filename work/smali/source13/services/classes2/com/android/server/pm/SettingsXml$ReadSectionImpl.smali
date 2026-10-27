.class public Lcom/android/server/pm/SettingsXml$ReadSectionImpl;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Lcom/android/server/pm/SettingsXml$ChildSection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SettingsXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadSectionImpl"
.end annotation


# instance fields
.field private final mDepthStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInput:Ljava/io/InputStream;

.field private final mParser:Landroid/util/TypedXmlPullParser;


# direct methods
.method public constructor <init>(Landroid/util/TypedXmlPullParser;)V
    .registers 3
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mInput:Ljava/io/InputStream;

    .line 179
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 180
    invoke-direct {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToFirstTag()V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 170
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mInput:Ljava/io/InputStream;

    .line 171
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 172
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToFirstTag()V

    .line 174
    return-void
.end method

.method private moveToFirstTag()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 185
    return-void

    .line 190
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v2, v0

    .local v2, "type":I
    if-eq v0, v1, :cond_17

    const/4 v0, 0x1

    if-eq v2, v0, :cond_17

    goto :goto_a

    .line 193
    :cond_17
    return-void
.end method

.method private moveToNextInternal(Ljava/lang/String;)Z
    .registers 7
    .param p1, "expectedChildTagName"    # Ljava/lang/String;

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 277
    .local v0, "depth":I
    const/4 v1, 0x0

    .line 279
    .local v1, "hasTag":Z
    :goto_d
    if-nez v1, :cond_39

    iget-object v2, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 280
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_39

    const/4 v2, 0x3

    if-ne v3, v2, :cond_24

    iget-object v2, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 281
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_39

    .line 282
    :cond_24
    const/4 v2, 0x2

    if-eq v3, v2, :cond_28

    .line 283
    goto :goto_d

    .line 286
    :cond_28
    if-eqz p1, :cond_37

    iget-object v2, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 287
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 288
    goto :goto_d

    .line 291
    :cond_37
    const/4 v1, 0x1

    goto :goto_d

    .line 294
    .end local v3    # "type":I
    :cond_39
    if-nez v1, :cond_40

    .line 295
    iget-object v2, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 298
    :cond_40
    return v1

    .line 299
    .end local v0    # "depth":I
    .end local v1    # "hasTag":Z
    :catch_41
    move-exception v0

    .line 300
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public children()Lcom/android/server/pm/SettingsXml$ChildSection;
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-object p0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 307
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "SettingsXml"

    const-string v2, "Children depth stack was not empty, data may have been lost"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mInput:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    .line 311
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 313
    :cond_1b
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1, "attrName"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 235
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "attrName"    # Ljava/lang/String;

    .line 240
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "attrName"    # Ljava/lang/String;

    .line 250
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;I)J
    .registers 7
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    int-to-long v1, p2

    const/4 v3, 0x0

    invoke-interface {v0, v3, p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "attrName"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 223
    return-object p2

    .line 225
    :cond_a
    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 4
    .param p1, "attrName"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public moveToNext()Z
    .registers 2

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public moveToNext(Ljava/lang/String;)Z
    .registers 3
    .param p1, "expectedChildTagName"    # Ljava/lang/String;

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
