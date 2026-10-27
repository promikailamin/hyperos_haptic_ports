.class public interface abstract Lcom/android/modules/utils/TypedXmlPullParser;
.super Ljava/lang/Object;
.source "TypedXmlPullParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# virtual methods
.method public abstract blacklist getAttributeBoolean(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 191
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result p1

    return p1
.end method

.method public blacklist getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 320
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 321
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return p3

    .line 323
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 324
    :catch_d
    move-exception p1

    .line 325
    return p3
.end method

.method public abstract blacklist getAttributeBytesBase64(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 128
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 4

    .line 215
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 216
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-object p3

    .line 218
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(I)[B

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    .line 219
    :catch_d
    move-exception p1

    .line 220
    return-object p3
.end method

.method public abstract blacklist getAttributeBytesHex(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 119
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesHex(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 4

    .line 200
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 201
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-object p3

    .line 203
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesHex(I)[B

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    .line 204
    :catch_d
    move-exception p1

    .line 205
    return-object p3
.end method

.method public abstract blacklist getAttributeDouble(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 182
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist getAttributeDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .registers 5

    .line 305
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 306
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    .line 308
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide p1

    .line 309
    :catch_d
    move-exception p1

    .line 310
    return-wide p3
.end method

.method public abstract blacklist getAttributeFloat(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 173
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(I)F

    move-result p1

    return p1
.end method

.method public blacklist getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 4

    .line 290
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 291
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return p3

    .line 293
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(I)F

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 294
    :catch_d
    move-exception p1

    .line 295
    return p3
.end method

.method public blacklist getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 34
    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 35
    :goto_6
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v2

    .line 36
    nop

    :goto_b
    if-ge v0, v2, :cond_27

    .line 37
    if-nez v1, :cond_19

    invoke-interface {p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 38
    :cond_19
    invoke-interface {p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 39
    return v0

    .line 36
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 42
    :cond_27
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 51
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 52
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 55
    return p1

    .line 53
    :cond_8
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract blacklist getAttributeInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 137
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result p1

    return p1
.end method

.method public blacklist getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 230
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 231
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return p3

    .line 233
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 234
    :catch_d
    move-exception p1

    .line 235
    return p3
.end method

.method public abstract blacklist getAttributeIntHex(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 146
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(I)I

    move-result p1

    return p1
.end method

.method public blacklist getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 245
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 246
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return p3

    .line 248
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(I)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 249
    :catch_d
    move-exception p1

    .line 250
    return p3
.end method

.method public abstract blacklist getAttributeLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 155
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 5

    .line 260
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 261
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    .line 263
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide p1

    .line 264
    :catch_d
    move-exception p1

    .line 265
    return-wide p3
.end method

.method public abstract blacklist getAttributeLongHex(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 164
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 5

    .line 275
    invoke-interface {p0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 276
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    .line 278
    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(I)J

    move-result-wide p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide p1

    .line 279
    :catch_d
    move-exception p1

    .line 280
    return-wide p3
.end method
