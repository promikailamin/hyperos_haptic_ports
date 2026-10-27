.class public final Landroid/telephony/ims/RcsConfig;
.super Ljava/lang/Object;
.source "RcsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsConfig$Characteristic;
    }
.end annotation


# static fields
.field private static final blacklist ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final blacklist DBG:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RcsConfig"

.field private static final blacklist PARM_SINGLE_REGISTRATION:Ljava/lang/String; = "rcsVolteSingleRegistration"

.field private static final blacklist TAG_CHARACTERISTIC:Ljava/lang/String; = "characteristic"

.field private static final blacklist TAG_PARM:Ljava/lang/String; = "parm"


# instance fields
.field private blacklist mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

.field private final blacklist mData:[B

.field private final blacklist mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Landroid/telephony/ims/RcsConfig;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/telephony/ims/RcsConfig;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 174
    const-string v0, "error to close input stream, skip."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    if-eqz p1, :cond_138

    array-length v1, p1

    if-eqz v1, :cond_138

    .line 178
    new-instance v1, Landroid/telephony/ims/RcsConfig$Characteristic;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/telephony/ims/RcsConfig$Characteristic;-><init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;Landroid/telephony/ims/RcsConfig-IA;)V

    iput-object v1, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 179
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    iput-object v1, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 180
    iput-object p1, p0, Landroid/telephony/ims/RcsConfig;->mData:[B

    .line 181
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 182
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 184
    :try_start_1f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    .line 185
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 186
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 187
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_32} :catch_128
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_32} :catch_128
    .catchall {:try_start_1f .. :try_end_32} :catchall_126

    .line 189
    nop

    .line 190
    :goto_33
    if-eq v5, v4, :cond_11c

    if-eqz v1, :cond_11c

    .line 191
    const/4 v6, 0x2

    const-string v7, "characteristic"

    if-ne v5, v6, :cond_fa

    .line 192
    :try_start_3c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_98

    .line 194
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 195
    nop

    .line 196
    if-lez v5, :cond_87

    .line 197
    nop

    :goto_59
    if-ge v7, v5, :cond_87

    .line 198
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 199
    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 200
    const-string v8, "type"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 201
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 203
    goto :goto_88

    .line 197
    :cond_84
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 207
    :cond_87
    move-object v5, v2

    :goto_88
    new-instance v6, Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-direct {v6, v5, v1, v2}, Landroid/telephony/ims/RcsConfig$Characteristic;-><init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;Landroid/telephony/ims/RcsConfig-IA;)V

    .line 208
    invoke-static {v1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetSubs(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    nop

    .line 210
    move-object v1, v6

    goto/16 :goto_116

    :cond_98
    const-string v6, "parm"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 211
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 212
    nop

    .line 213
    nop

    .line 214
    if-le v5, v4, :cond_ec

    .line 215
    move-object v6, v2

    move-object v8, v6

    :goto_aa
    if-ge v7, v5, :cond_ee

    .line 216
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 217
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 218
    const-string v10, "name"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d5

    .line 219
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    goto :goto_e9

    .line 221
    :cond_d5
    const-string v10, "value"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 222
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 223
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 215
    :cond_e9
    :goto_e9
    add-int/lit8 v7, v7, 0x1

    goto :goto_aa

    .line 214
    :cond_ec
    move-object v6, v2

    move-object v8, v6

    .line 227
    :cond_ee
    if-eqz v6, :cond_f9

    if-eqz v8, :cond_f9

    .line 228
    invoke-static {v1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParms(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_f9
    goto :goto_116

    .line 231
    :cond_fa
    const/4 v6, 0x3

    if-ne v5, v6, :cond_116

    .line 232
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_115

    .line 234
    invoke-static {v1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v1

    .line 236
    :cond_115
    nop

    .line 238
    :cond_116
    :goto_116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_11a} :catch_128
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_11a} :catch_128
    .catchall {:try_start_3c .. :try_end_11a} :catchall_126

    goto/16 :goto_33

    .line 244
    :cond_11c
    :try_start_11c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_120

    .line 247
    goto :goto_125

    .line 245
    :catch_120
    move-exception p1

    .line 246
    invoke-static {v0}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V

    .line 248
    nop

    .line 249
    :goto_125
    return-void

    .line 243
    :catchall_126
    move-exception p1

    goto :goto_12f

    .line 240
    :catch_128
    move-exception p1

    .line 241
    :try_start_129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_12f
    .catchall {:try_start_129 .. :try_end_12f} :catchall_126

    .line 244
    :goto_12f
    :try_start_12f
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_133

    .line 247
    goto :goto_137

    .line 245
    :catch_133
    move-exception v1

    .line 246
    invoke-static {v0}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V

    .line 248
    :goto_137
    throw p1

    .line 176
    :cond_138
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist compressGzip([B)[B
    .registers 4

    .line 401
    if-eqz p0, :cond_39

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_39

    .line 404
    :cond_6
    nop

    .line 406
    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 407
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 409
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 410
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 411
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 412
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_20} :catch_21

    .line 415
    goto :goto_38

    .line 413
    :catch_21
    move-exception p0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to compressGzip due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V

    .line 416
    :goto_38
    return-object v0

    .line 402
    :cond_39
    :goto_39
    return-object p0
.end method

.method public static blacklist decompressGzip([B)[B
    .registers 7

    .line 423
    if-eqz p0, :cond_50

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_50

    .line 426
    :cond_6
    nop

    .line 428
    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 429
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 430
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 432
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 433
    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    .line 434
    :goto_1f
    if-ltz v4, :cond_2a

    .line 435
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 436
    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    goto :goto_1f

    .line 438
    :cond_2a
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 439
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 440
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_38

    .line 444
    goto :goto_4f

    .line 442
    :catch_38
    move-exception p0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to decompressGzip due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V

    .line 445
    :goto_4f
    return-object v0

    .line 424
    :cond_50
    :goto_50
    return-object p0
.end method

.method public static blacklist loadRcsConfigForSub(Landroid/content/Context;IZ)[B
    .registers 9

    .line 467
    nop

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 472
    const/4 v1, 0x0

    if-eqz p0, :cond_65

    :try_start_24
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 473
    const-string v0, "rcs_config"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_38
    .catchall {:try_start_24 .. :try_end_34} :catchall_35

    goto :goto_65

    .line 478
    :catchall_35
    move-exception v0

    move-object p1, v0

    goto :goto_5f

    .line 475
    :catch_38
    move-exception v0

    .line 476
    :try_start_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to load rcs config for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " due to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/RcsConfig;->loge(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_35

    .line 478
    if-eqz p0, :cond_68

    .line 479
    :goto_5b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_68

    .line 478
    :goto_5f
    if-eqz p0, :cond_64

    .line 479
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_64
    throw p1

    .line 478
    :cond_65
    :goto_65
    if-eqz p0, :cond_68

    .line 479
    goto :goto_5b

    .line 482
    :cond_68
    :goto_68
    if-eqz p2, :cond_6b

    goto :goto_6f

    :cond_6b
    invoke-static {v1}, Landroid/telephony/ims/RcsConfig;->decompressGzip([B)[B

    move-result-object v1

    :goto_6f
    return-object v1
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 486
    const-string v0, "RcsConfig"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 490
    const-string v0, "RcsConfig"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method public static blacklist updateConfigForSub(Landroid/content/Context;I[BZ)V
    .registers 6

    .line 454
    if-eqz p3, :cond_3

    goto :goto_7

    :cond_3
    invoke-static {p2}, Landroid/telephony/ims/RcsConfig;->compressGzip([B)[B

    move-result-object p2

    .line 455
    :goto_7
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 456
    const-string v0, "rcs_config"

    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 459
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 383
    instance-of v0, p1, Landroid/telephony/ims/RcsConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 384
    return v1

    .line 387
    :cond_6
    check-cast p1, Landroid/telephony/ims/RcsConfig;

    .line 389
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    iget-object v2, p1, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/RcsConfig$Characteristic;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    iget-object p1, p1, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public blacklist getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/RcsConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    if-eqz p1, :cond_b

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_b
    return p2
.end method

.method public blacklist getCharacteristic(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 4

    .line 309
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetSubByType(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCurrentCharacteristic()Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-object v0
.end method

.method public blacklist getInteger(Ljava/lang/String;I)I
    .registers 6

    .line 274
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/RcsConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_a

    return p1

    .line 275
    :catch_a
    move-exception v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error to getInteger for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " due to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/RcsConfig;->logd(Ljava/lang/String;)V

    .line 278
    return p2
.end method

.method public blacklist getRoot()Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-object v0
.end method

.method public blacklist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 260
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParmValue(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    if-eqz p1, :cond_13

    move-object p2, p1

    :cond_13
    return-object p2
.end method

.method public blacklist hasCharacteristic(Ljava/lang/String;)Z
    .registers 4

    .line 316
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetSubByType(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public blacklist hasConfig(Ljava/lang/String;)Z
    .registers 4

    .line 302
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->hasParm(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 394
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isRcsVolteSingleRegistrationSupported(Z)Z
    .registers 5

    .line 364
    const-string v0, "rcsVolteSingleRegistration"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/RcsConfig;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 365
    const/4 v2, 0x0

    if-eqz p1, :cond_d

    if-ne v0, v1, :cond_10

    goto :goto_f

    :cond_d
    if-lez v0, :cond_10

    :goto_f
    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1
.end method

.method public blacklist moveToParent()Z
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-static {v0}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-nez v0, :cond_a

    .line 333
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-static {v0}, Landroid/telephony/ims/RcsConfig$Characteristic;->-$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist moveToRoot()V
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 344
    return-void
.end method

.method public blacklist setCurrentCharacteristic(Landroid/telephony/ims/RcsConfig$Characteristic;)V
    .registers 2

    .line 323
    if-eqz p1, :cond_4

    .line 324
    iput-object p1, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 326
    :cond_4
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    const-string v1, "[RCS Config]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    sget-boolean v1, Landroid/telephony/ims/RcsConfig;->DBG:Z

    if-eqz v1, :cond_22

    .line 373
    const-string v1, "=== Root ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mRoot:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "=== Current ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig;->mCurrent:Landroid/telephony/ims/RcsConfig$Characteristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
