.class public Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;
.super Lcom/android/internal/util/XmlPullParserWrapper;
.source "XmlUtils.java"

# interfaces
.implements Lcom/android/modules/utils/TypedXmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public getAttributeBoolean(I)Z
    .registers 6

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p0, 0x1

    return p0

    .line 232
    :cond_f
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 p0, 0x0

    return p0

    .line 235
    :cond_19
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeBytesBase64(I)[B
    .registers 4

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception v0

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;->invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object p0

    throw p0
.end method

.method public getAttributeBytesHex(I)[B
    .registers 3

    .line 150
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception v0

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;->invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object p0

    throw p0
.end method

.method public getAttributeDouble(I)D
    .registers 3

    .line 220
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p0

    :catch_9
    move-exception v0

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;->invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object p0

    throw p0
.end method

.method public getAttributeFloat(I)F
    .registers 3

    .line 210
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception v0

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;->invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object p0

    throw p0
.end method

.method public getAttributeInt(I)I
    .registers 3

    .line 170
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception v0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;->invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object p0

    throw p0
.end method

.method public getAttributeIntHex(I)I
    .registers 4

    .line 180
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception v0

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;->invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object p0

    throw p0
.end method

.method public getAttributeLong(I)J
    .registers 3

    .line 190
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p0

    :catch_9
    move-exception v0

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;->invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object p0

    throw p0
.end method

.method public getAttributeLongHex(I)J
    .registers 4

    .line 200
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide p0

    :catch_b
    move-exception v0

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;->invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object p0

    throw p0
.end method

.method public final invalidAttributeException(ILjava/lang/Exception;)Lorg/xmlpull/v1/XmlPullParserException;
    .registers 6

    .line 241
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/internal/util/XmlPullParserWrapper;->getAttributeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    return-object v0
.end method
