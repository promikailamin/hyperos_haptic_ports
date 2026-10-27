.class public Lcom/android/modules/utils/BinaryXmlPullParser;
.super Ljava/lang/Object;
.source "BinaryXmlPullParser.java"

# interfaces
.implements Lcom/android/modules/utils/TypedXmlPullParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;
    }
.end annotation


# static fields
.field private static final blacklist HEX_DIGITS:[C


# instance fields
.field private blacklist mAttributeCount:I

.field private blacklist mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

.field private blacklist mCurrentDepth:I

.field private blacklist mCurrentName:Ljava/lang/String;

.field private blacklist mCurrentText:Ljava/lang/String;

.field private blacklist mCurrentToken:I

.field private blacklist mIn:Lcom/android/modules/utils/FastDataInput;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 908
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    .line 77
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    .line 86
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    return-void
.end method

.method static blacklist bytesToHexString([B)Ljava/lang/String;
    .registers 9

    .line 919
    array-length v0, p0

    .line 920
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 921
    nop

    .line 922
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_25

    .line 923
    aget-byte v4, p0, v2

    .line 924
    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 925
    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v1, v5

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 927
    :cond_25
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private blacklist consumeAdditionalText()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 321
    :goto_2
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v1

    .line 322
    packed-switch v1, :pswitch_data_2e

    .line 337
    :pswitch_9
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    .line 338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 339
    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 340
    return-void

    .line 326
    :pswitch_12
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    .line 327
    goto :goto_2d

    .line 332
    :pswitch_16
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    nop

    .line 342
    :goto_2d
    goto :goto_2

    :pswitch_data_2e
    .packed-switch 0x4
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_9
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private blacklist consumeToken()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readByte()B

    move-result v0

    .line 221
    and-int/lit8 v1, v0, 0xf

    .line 222
    and-int/lit16 v0, v0, 0xf0

    .line 223
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_10e

    .line 308
    :pswitch_e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :pswitch_31
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->obtainAttribute()Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v2}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    .line 227
    iput v0, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    .line 228
    sparse-switch v0, :sswitch_data_132

    .line 262
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected data type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :sswitch_5b
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueDouble:D

    .line 260
    goto/16 :goto_10d

    .line 256
    :sswitch_65
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readFloat()F

    move-result v0

    iput v0, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueFloat:F

    .line 257
    goto/16 :goto_10d

    .line 253
    :sswitch_6f
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueLong:J

    .line 254
    goto/16 :goto_10d

    .line 249
    :sswitch_79
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readInt()I

    move-result v0

    iput v0, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueInt:I

    .line 250
    goto/16 :goto_10d

    .line 242
    :sswitch_83
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readUnsignedShort()I

    move-result v0

    .line 243
    new-array v0, v0, [B

    .line 244
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v2, v0}, Lcom/android/modules/utils/FastDataInput;->readFully([B)V

    .line 245
    iput-object v0, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueBytes:[B

    .line 246
    goto/16 :goto_10d

    .line 238
    :sswitch_94
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    .line 239
    goto/16 :goto_10d

    .line 235
    :sswitch_9e
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    .line 236
    goto :goto_10d

    .line 233
    :sswitch_a7
    goto :goto_10d

    .line 302
    :pswitch_a8
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resolveEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 304
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v0, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 296
    :pswitch_c0
    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 298
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v0, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 285
    :pswitch_d2
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 286
    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 287
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v0, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 279
    :pswitch_e4
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 280
    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 281
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v0, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 273
    :pswitch_f6
    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 274
    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 275
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v0, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 267
    :pswitch_102
    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 268
    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 269
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v0, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    .line 311
    :cond_10d
    :goto_10d
    return-void

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_102
        :pswitch_f6
        :pswitch_e4
        :pswitch_d2
        :pswitch_c0
        :pswitch_c0
        :pswitch_a8
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_31
    .end packed-switch

    :sswitch_data_132
    .sparse-switch
        0x10 -> :sswitch_a7
        0x20 -> :sswitch_9e
        0x30 -> :sswitch_94
        0x40 -> :sswitch_83
        0x50 -> :sswitch_83
        0x60 -> :sswitch_79
        0x70 -> :sswitch_79
        0x80 -> :sswitch_6f
        0x90 -> :sswitch_6f
        0xa0 -> :sswitch_65
        0xb0 -> :sswitch_5b
        0xc0 -> :sswitch_a7
        0xd0 -> :sswitch_a7
    .end sparse-switch
.end method

.method static blacklist hexStringToBytes(Ljava/lang/String;)[B
    .registers 7

    .line 931
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 932
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2d

    .line 935
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 936
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_2c

    .line 937
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 938
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/modules/utils/BinaryXmlPullParser;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 936
    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    .line 940
    :cond_2c
    return-object v1

    .line 933
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist illegalNamespace()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist obtainAttribute()Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;
    .registers 6

    .line 408
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length v1, v1

    if-ne v0, v1, :cond_27

    .line 409
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length v0, v0

    .line 410
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    .line 411
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    .line 412
    nop

    :goto_18
    if-ge v0, v1, :cond_27

    .line 413
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    new-instance v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;-><init>(Lcom/android/modules/utils/BinaryXmlPullParser-IA;)V

    aput-object v3, v2, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 416
    :cond_27
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist peekNextExternalToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 198
    nop

    :goto_1
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextToken()I

    move-result v0

    .line 199
    packed-switch v0, :pswitch_data_e

    .line 204
    return v0

    .line 201
    :pswitch_9
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    .line 202
    goto :goto_1

    nop

    :pswitch_data_e
    .packed-switch 0xf
        :pswitch_9
    .end packed-switch
.end method

.method private blacklist peekNextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->peekByte()B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private blacklist resetAttributes()V
    .registers 4

    .line 424
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-ge v1, v2, :cond_10

    .line 425
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->reset()V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    :cond_10
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    .line 428
    return-void
.end method

.method static blacklist resolveEntity(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_8a

    :cond_9
    goto :goto_3d

    :sswitch_a
    const-string/jumbo v0, "quot"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_3e

    :sswitch_15
    const-string v0, "apos"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_3e

    :sswitch_1f
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_3e

    :sswitch_29
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_3e

    :sswitch_33
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_3e

    :goto_3d
    const/4 v0, -0x1

    :goto_3e
    packed-switch v0, :pswitch_data_a0

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_71

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_71

    .line 355
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-char p0, p0

    .line 356
    new-instance v0, Ljava/lang/String;

    new-array v2, v2, [C

    aput-char p0, v2, v1

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 352
    :pswitch_62
    const-string p0, "\""

    return-object p0

    .line 351
    :pswitch_65
    const-string p0, "\'"

    return-object p0

    .line 350
    :pswitch_68
    const-string p0, "&"

    return-object p0

    .line 349
    :pswitch_6b
    const-string p0, ">"

    return-object p0

    .line 348
    :pswitch_6e
    const-string p0, "<"

    return-object p0

    .line 358
    :cond_71
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_8a
    .sparse-switch
        0xced -> :sswitch_33
        0xd88 -> :sswitch_29
        0x179c4 -> :sswitch_1f
        0x2dca53 -> :sswitch_15
        0x352309 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private static blacklist toByte(C)I
    .registers 4

    .line 912
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    .line 913
    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v1, 0x46

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 914
    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_22

    const/16 v1, 0x66

    if-gt p0, v1, :cond_22

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 915
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 657
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getAttributeBoolean(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBoolean()Z

    move-result p1

    return p1
.end method

.method public blacklist getAttributeBytesBase64(I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBytesBase64()[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist getAttributeBytesHex(I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBytesHex()[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getAttributeCount()I
    .registers 2

    .line 592
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    return v0
.end method

.method public blacklist getAttributeDouble(I)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeFloat(I)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueFloat()F

    move-result p1

    return p1
.end method

.method public blacklist getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 432
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlPullParser;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 433
    :cond_e
    :goto_e
    const/4 p1, 0x0

    :goto_f
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-ge p1, v0, :cond_23

    .line 434
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 435
    return p1

    .line 433
    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    .line 438
    :cond_23
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getAttributeInt(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueInt()I

    move-result p1

    return p1
.end method

.method public blacklist getAttributeIntHex(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueIntHex()I

    move-result p1

    return p1
.end method

.method public blacklist getAttributeLong(I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeLongHex(I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueLongHex()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    return-object p1
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .registers 2

    .line 598
    const-string p1, ""

    return-object p1
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .registers 2

    .line 609
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .registers 2

    .line 615
    const-string p1, "CDATA"

    return-object p1
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 444
    const/4 p2, -0x1

    if-eq p1, p2, :cond_10

    .line 445
    iget-object p2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 447
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 537
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 521
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    return v0
.end method

.method public whitelist test-api getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 626
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 2

    .line 669
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 516
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 532
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 2

    .line 555
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    packed-switch v0, :pswitch_data_a

    .line 561
    const/4 v0, 0x0

    return-object v0

    .line 559
    :pswitch_7
    const-string v0, ""

    return-object v0

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 650
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 632
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 638
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 644
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .registers 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at depth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 681
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .registers 5

    .line 508
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 509
    const/4 v1, 0x0

    aput v1, p1, v1

    .line 510
    const/4 v1, 0x1

    array-length v2, v0

    aput v2, p1, v1

    .line 511
    return-object v0
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .registers 2

    .line 621
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 578
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    packed-switch v0, :pswitch_data_24

    .line 586
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not at START_TAG"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :pswitch_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0

    .line 582
    :catch_18
    move-exception v0

    .line 583
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist test-api isWhitespace()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 542
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2a

    .line 549
    :pswitch_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not applicable for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :pswitch_21
    return v1

    .line 547
    :pswitch_22
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_22
        :pswitch_22
        :pswitch_6
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist test-api next()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    nop

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->nextToken()I

    move-result v0

    .line 144
    packed-switch v0, :pswitch_data_1c

    .line 158
    goto :goto_1

    .line 150
    :pswitch_9
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeAdditionalText()V

    .line 152
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 153
    goto :goto_1

    .line 155
    :cond_19
    const/4 v0, 0x4

    return v0

    .line 148
    :pswitch_1b
    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist test-api nextTag()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    .line 393
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 394
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    .line 396
    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    goto :goto_22

    .line 397
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_22
    :goto_22
    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 375
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    .line 376
    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne v0, v1, :cond_24

    .line 377
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v1

    .line 379
    if-ne v1, v2, :cond_1a

    .line 382
    return-object v0

    .line 380
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_24
    if-ne v0, v2, :cond_29

    .line 384
    const-string v0, ""

    return-object v0

    .line 386
    :cond_29
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_33
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextToken()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_b

    .line 164
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    .line 169
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v0

    .line 170
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_12} :catch_13

    .line 173
    goto :goto_15

    .line 171
    :catch_13
    move-exception v0

    .line 172
    move v0, v2

    .line 174
    :goto_15
    packed-switch v0, :pswitch_data_24

    goto :goto_21

    .line 178
    :pswitch_19
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    .line 179
    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    .line 182
    :goto_21
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    .line 183
    return v0

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_19
    .end packed-switch
.end method

.method protected blacklist obtainFastDataInput(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;
    .registers 2

    .line 132
    invoke-static {p1}, Lcom/android/modules/utils/FastDataInput;->obtain(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlPullParser;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 365
    :cond_e
    :goto_e
    iget p2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    if-ne p2, p1, :cond_1b

    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 368
    return-void

    .line 366
    :cond_1b
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 663
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 91
    if-eqz p2, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_15

    .line 92
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 95
    :cond_15
    :goto_15
    iget-object p2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    const/4 v0, 0x0

    if-eqz p2, :cond_21

    .line 96
    iget-object p2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {p2}, Lcom/android/modules/utils/FastDataInput;->release()V

    .line 97
    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    .line 100
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->obtainFastDataInput(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;

    move-result-object p1

    iput-object p1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    .line 102
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    .line 103
    iput p1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    .line 104
    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 107
    iput p1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    .line 108
    const/16 p2, 0x8

    new-array p2, p2, [Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iput-object p2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    .line 109
    nop

    :goto_39
    iget-object p2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length p2, p2

    if-ge p1, p2, :cond_4a

    .line 110
    iget-object p2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    new-instance v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    invoke-direct {v1, v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;-><init>(Lcom/android/modules/utils/BinaryXmlPullParser-IA;)V

    aput-object v1, p2, p1

    .line 109
    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    .line 114
    :cond_4a
    const/4 p1, 0x4

    :try_start_4b
    new-array p1, p1, [B

    .line 115
    iget-object p2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {p2, p1}, Lcom/android/modules/utils/FastDataInput;->readFully([B)V

    .line 116
    sget-object p2, Lcom/android/modules/utils/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 122
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result p1

    if-nez p1, :cond_63

    .line 123
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    .line 127
    :cond_63
    nop

    .line 128
    return-void

    .line 117
    :cond_65
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected magic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_82} :catch_82

    .line 125
    :catch_82
    move-exception p1

    .line 126
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 137
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 675
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
