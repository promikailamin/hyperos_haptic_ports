.class public Lcom/android/modules/utils/BinaryXmlSerializer;
.super Ljava/lang/Object;
.source "BinaryXmlSerializer.java"

# interfaces
.implements Lcom/android/modules/utils/TypedXmlSerializer;


# static fields
.field static final blacklist ATTRIBUTE:I = 0xf

.field public static final blacklist PROTOCOL_MAGIC_VERSION_0:[B

.field static final blacklist TYPE_BOOLEAN_FALSE:I = 0xd0

.field static final blacklist TYPE_BOOLEAN_TRUE:I = 0xc0

.field static final blacklist TYPE_BYTES_BASE64:I = 0x50

.field static final blacklist TYPE_BYTES_HEX:I = 0x40

.field static final blacklist TYPE_DOUBLE:I = 0xb0

.field static final blacklist TYPE_FLOAT:I = 0xa0

.field static final blacklist TYPE_INT:I = 0x60

.field static final blacklist TYPE_INT_HEX:I = 0x70

.field static final blacklist TYPE_LONG:I = 0x80

.field static final blacklist TYPE_LONG_HEX:I = 0x90

.field static final blacklist TYPE_NULL:I = 0x10

.field static final blacklist TYPE_STRING:I = 0x20

.field static final blacklist TYPE_STRING_INTERNED:I = 0x30


# instance fields
.field private blacklist mOut:Lcom/android/modules/utils/FastDataOutput;

.field private blacklist mTagCount:I

.field private blacklist mTagNames:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/modules/utils/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x41t
        0x42t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    return-void
.end method

.method private static blacklist illegalNamespace()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeToken(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    if-eqz p2, :cond_f

    .line 109
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    or-int/lit8 p1, p1, 0x20

    invoke-virtual {v0, p1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 110
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_16

    .line 112
    :cond_f
    iget-object p2, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    or-int/lit8 p1, p1, 0x10

    invoke-virtual {p2, p1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 114
    :goto_16
    return-void
.end method


# virtual methods
.method public whitelist test-api attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 207
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 208
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 210
    return-object p0
.end method

.method public blacklist attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 317
    :cond_e
    :goto_e
    if-eqz p3, :cond_1d

    .line 318
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 p3, 0xcf

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 319
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    goto :goto_29

    .line 321
    :cond_1d
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 p3, 0xdf

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 322
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 324
    :goto_29
    return-object p0
.end method

.method public blacklist attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 242
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 243
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 244
    array-length p1, p3

    const p2, 0xffff

    if-gt p1, p2, :cond_2c

    .line 248
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    array-length p2, p3

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    .line 249
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->write([B)V

    .line 250
    return-object p0

    .line 245
    :cond_2c
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attributeBytesBase64: input size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ") exceeds maximum allowed size ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 227
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x4f

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 228
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 229
    array-length p1, p3

    const p2, 0xffff

    if-gt p1, p2, :cond_2c

    .line 233
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    array-length p2, p3

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeShort(I)V

    .line 234
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->write([B)V

    .line 235
    return-object p0

    .line 230
    :cond_2c
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attributeBytesHex: input size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ") exceeds maximum allowed size ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 307
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0xbf

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 308
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3, p4}, Lcom/android/modules/utils/FastDataOutput;->writeDouble(D)V

    .line 310
    return-object p0
.end method

.method public blacklist attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 297
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 298
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->writeFloat(F)V

    .line 300
    return-object p0
.end method

.method public blacklist attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 257
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x6f

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 258
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->writeInt(I)V

    .line 260
    return-object p0
.end method

.method public blacklist attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 267
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x7f

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 268
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->writeInt(I)V

    .line 270
    return-object p0
.end method

.method public blacklist attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 217
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 218
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 220
    return-object p0
.end method

.method public blacklist attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 277
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x8f

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 278
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3, p4}, Lcom/android/modules/utils/FastDataOutput;->writeLong(J)V

    .line 280
    return-object p0
.end method

.method public blacklist attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 287
    :cond_e
    :goto_e
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x9f

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 288
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p3, p4}, Lcom/android/modules/utils/FastDataOutput;->writeLong(J)V

    .line 290
    return-object p0
.end method

.method public whitelist test-api cdsect(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 342
    return-void
.end method

.method public whitelist test-api comment(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 357
    return-void
.end method

.method public whitelist test-api docdecl(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 362
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlSerializer;->flush()V

    .line 163
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataOutput;->release()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    .line 165
    return-void
.end method

.method public whitelist test-api endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 198
    :cond_e
    :goto_e
    iget p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    .line 199
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 200
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 201
    return-object p0
.end method

.method public whitelist test-api entityRef(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 347
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataOutput;->flush()V

    .line 144
    :cond_9
    return-void
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 2

    .line 382
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 2

    .line 175
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 406
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 394
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api ignorableWhitespace(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 367
    return-void
.end method

.method protected blacklist obtainFastDataOutput(Ljava/io/OutputStream;)Lcom/android/modules/utils/FastDataOutput;
    .registers 2

    .line 131
    invoke-static {p1}, Lcom/android/modules/utils/FastDataOutput;->obtain(Ljava/io/OutputStream;)Lcom/android/modules/utils/FastDataOutput;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 352
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 3

    .line 372
    const-string p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 373
    return-void

    .line 376
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    if-eqz p2, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_15

    .line 119
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 122
    :cond_15
    :goto_15
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->obtainFastDataOutput(Ljava/io/OutputStream;)Lcom/android/modules/utils/FastDataOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    .line 123
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    sget-object p2, Lcom/android/modules/utils/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->write([B)V

    .line 125
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    .line 126
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    .line 127
    return-void
.end method

.method public whitelist test-api setOutput(Ljava/io/Writer;)V
    .registers 2

    .line 136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 400
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 388
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    if-eqz p1, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_15

    .line 150
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 152
    :cond_15
    :goto_15
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_24

    .line 153
    :cond_1e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 155
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 156
    return-void
.end method

.method public whitelist test-api startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 186
    :cond_e
    :goto_e
    iget p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    array-length v0, v0

    if-ne p1, v0, :cond_26

    .line 187
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    .line 189
    :cond_26
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v0, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mTagCount:I

    aput-object p2, p1, v0

    .line 190
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/android/modules/utils/FastDataOutput;->writeByte(I)V

    .line 191
    iget-object p1, p0, Lcom/android/modules/utils/BinaryXmlSerializer;->mOut:Lcom/android/modules/utils/FastDataOutput;

    invoke-virtual {p1, p2}, Lcom/android/modules/utils/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 192
    return-object p0
.end method

.method public whitelist test-api text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 336
    return-object p0
.end method

.method public whitelist test-api text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 330
    return-object p0
.end method
