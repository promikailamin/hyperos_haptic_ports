.class public final Lcom/android/internal/util/BinaryXmlSerializer;
.super Ljava/lang/Object;
.source "BinaryXmlSerializer.java"

# interfaces
.implements Landroid/util/TypedXmlSerializer;


# static fields
.field static final blacklist ATTRIBUTE:I = 0xf

.field private static final blacklist BUFFER_SIZE:I = 0x8000

.field private static final blacklist MAX_UNSIGNED_SHORT:I = 0xffff

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
.field private blacklist mOut:Lcom/android/internal/util/FastDataOutput;

.field private blacklist mTagCount:I

.field private blacklist mTagNames:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/util/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

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

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    return-void
.end method

.method private static blacklist illegalNamespace()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeToken(ILjava/lang/String;)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    if-eqz p2, :cond_f

    .line 116
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    or-int/lit8 v1, p1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_16

    .line 119
    :cond_f
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    or-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 121
    :goto_16
    return-void
.end method


# virtual methods
.method public whitelist test-api attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 209
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 212
    return-object p0
.end method

.method public blacklist attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 319
    :cond_e
    :goto_e
    if-eqz p3, :cond_1d

    .line 320
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    goto :goto_29

    .line 323
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 326
    :goto_29
    return-object p0
.end method

.method public blacklist attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 244
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 246
    array-length v0, p3

    const v1, 0xffff

    if-gt v0, v1, :cond_2c

    .line 250
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    .line 252
    return-object p0

    .line 247
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attributeBytesBase64: input size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeds maximum allowed size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 229
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 231
    array-length v0, p3

    const v1, 0xffff

    if-gt v0, v1, :cond_2c

    .line 235
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    .line 237
    return-object p0

    .line 232
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attributeBytesHex: input size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeds maximum allowed size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 309
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeDouble(D)V

    .line 312
    return-object p0
.end method

.method public blacklist attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 299
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeFloat(F)V

    .line 302
    return-object p0
.end method

.method public blacklist attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 259
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInt(I)V

    .line 262
    return-object p0
.end method

.method public blacklist attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 269
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInt(I)V

    .line 272
    return-object p0
.end method

.method public blacklist attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 219
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 222
    return-object p0
.end method

.method public blacklist attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 279
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeLong(J)V

    .line 282
    return-object p0
.end method

.method public blacklist attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 289
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeLong(J)V

    .line 292
    return-object p0
.end method

.method public whitelist test-api cdsect(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 344
    return-void
.end method

.method public whitelist test-api comment(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 359
    return-void
.end method

.method public whitelist test-api docdecl(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 364
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlSerializer;->flush()V

    .line 165
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0}, Lcom/android/internal/util/FastDataOutput;->release()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    .line 167
    return-void
.end method

.method public whitelist test-api endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 200
    :cond_e
    :goto_e
    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    .line 201
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 203
    return-object p0
.end method

.method public whitelist test-api entityRef(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 349
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    if-eqz v0, :cond_7

    .line 144
    invoke-virtual {v0}, Lcom/android/internal/util/FastDataOutput;->flush()V

    .line 146
    :cond_7
    return-void
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 2

    .line 177
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z

    .line 408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api ignorableWhitespace(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 369
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 354
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 374
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 375
    return-void

    .line 378
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    if-eqz p2, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    .line 126
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 129
    :cond_15
    :goto_15
    invoke-static {p1}, Lcom/android/internal/util/FastDataOutput;->obtain(Ljava/io/OutputStream;)Lcom/android/internal/util/FastDataOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    .line 130
    sget-object v1, Lcom/android/internal/util/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    .line 133
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    .line 134
    return-void
.end method

.method public whitelist test-api setOutput(Ljava/io/Writer;)V
    .registers 3
    .param p1, "writer"    # Ljava/io/Writer;

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    if-eqz p1, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    .line 152
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 154
    :cond_15
    :goto_15
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_24

    .line 155
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 157
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 158
    return-void
.end method

.method public whitelist test-api startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 188
    :cond_e
    :goto_e
    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_20

    .line 189
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    .line 191
    :cond_20
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    aput-object p2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 194
    return-object p0
.end method

.method public whitelist test-api text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 338
    return-object p0
.end method

.method public whitelist test-api text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 332
    return-object p0
.end method
