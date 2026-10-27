.class public Lcom/google/android/mms/pdu/EncodedStringValue;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "EncodedStringValue"


# instance fields
.field private blacklist mCharacterSet:I

.field private blacklist mData:[B


# direct methods
.method public constructor greylist <init>(I[B)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p2, :cond_14

    .line 61
    iput p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    .line 62
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 63
    iget-object p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-void

    .line 58
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "EncodedStringValue: Text-string is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    :try_start_3
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 81
    const/16 p1, 0x6a

    iput p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_10} :catch_11

    .line 84
    goto :goto_19

    .line 82
    :catch_11
    move-exception p1

    .line 83
    const-string v0, "EncodedStringValue"

    const-string v1, "Default encoding must be supported."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_19
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 3

    .line 74
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 75
    return-void
.end method

.method public static greylist concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .registers 5

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 266
    const/4 v2, 0x0

    :goto_9
    if-gt v2, v1, :cond_1e

    .line 267
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    if-ge v2, v1, :cond_1b

    .line 269
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 273
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 278
    if-nez p0, :cond_4

    .line 279
    const/4 p0, 0x0

    return-object p0

    .line 282
    :cond_4
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    iget-object p0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1, p0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    return-object v0
.end method

.method public static greylist encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 6

    .line 287
    array-length v0, p0

    .line 288
    if-lez v0, :cond_15

    .line 289
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 290
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_14

    .line 291
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 293
    :cond_14
    return-object v1

    .line 295
    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist-max-r extract(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 5

    .line 242
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_24

    .line 246
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 247
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 251
    :cond_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 252
    if-lez p0, :cond_33

    .line 253
    new-array p0, p0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    return-object p0

    .line 255
    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public greylist appendTextString([B)V
    .registers 5

    .line 174
    if-eqz p1, :cond_34

    .line 178
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    if-nez v0, :cond_13

    .line 179
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 180
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 182
    :cond_13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    :try_start_18
    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_28

    .line 190
    nop

    .line 192
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 194
    :goto_27
    return-void

    .line 186
    :catch_28
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "appendTextString: failed when write a new Text-string"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Text-string is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v0, v0

    .line 203
    new-array v1, v0, [B

    .line 204
    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    :try_start_b
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    invoke-direct {v0, v2, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    return-object v0

    .line 208
    :catch_13
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to clone an EncodedStringValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EncodedStringValue"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist getCharacterSet()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    return v0
.end method

.method public greylist getString()Ljava/lang/String;
    .registers 4

    .line 146
    iget v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    if-nez v0, :cond_c

    .line 147
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 150
    :cond_c
    :try_start_c
    iget v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v1

    .line 152
    :catch_1a
    move-exception v0

    .line 157
    :try_start_1b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    const-string v2, "iso-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_24} :catch_25

    return-object v0

    .line 158
    :catch_25
    move-exception v0

    .line 159
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public greylist getTextString()[B
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 117
    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-object v0
.end method

.method public greylist setCharacterSet(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    .line 106
    return-void
.end method

.method public greylist setTextString([B)V
    .registers 5

    .line 129
    if-eqz p1, :cond_f

    .line 133
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 134
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    return-void

    .line 130
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "EncodedStringValue: Text-string is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist split(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 8

    .line 223
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 224
    array-length v0, p1

    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 225
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_24

    .line 227
    :try_start_e
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget v4, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    aget-object v5, p1, v2

    .line 228
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    aput-object v3, v1, v2
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1d} :catch_21

    .line 232
    nop

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 229
    :catch_21
    move-exception p1

    .line 231
    const/4 p1, 0x0

    return-object p1

    .line 234
    :cond_24
    return-object v1
.end method
