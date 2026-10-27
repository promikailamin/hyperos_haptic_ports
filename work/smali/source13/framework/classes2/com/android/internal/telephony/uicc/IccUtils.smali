.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final blacklist FPLMN_BYTE_SIZE:I = 0x3

.field private static final blacklist HEX_CHARS:[C

.field static final blacklist LOG_TAG:Ljava/lang/String; = "IccUtils"

.field public static final blacklist TEST_ICCID:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adnStringFieldToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 344
    if-nez p2, :cond_5

    .line 345
    const-string v0, ""

    return-object v0

    .line 347
    :cond_5
    const/4 v0, 0x1

    if-lt p2, v0, :cond_44

    .line 348
    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_44

    .line 349
    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 350
    .local v0, "ucslen":I
    const/4 v1, 0x0

    .line 353
    .local v1, "ret":Ljava/lang/String;
    :try_start_13
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v4, v0, 0x2

    const-string v5, "utf-16be"

    invoke-direct {v2, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1e} :catch_20

    move-object v1, v2

    .line 357
    goto :goto_28

    .line 354
    :catch_20
    move-exception v2

    .line 355
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "IccUtils"

    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_28
    if-eqz v1, :cond_44

    .line 362
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 363
    :goto_2e
    if-lez v0, :cond_3e

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_3e

    .line 364
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 366
    :cond_3e
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 371
    .end local v0    # "ucslen":I
    .end local v1    # "ret":Ljava/lang/String;
    :cond_44
    const/4 v0, 0x0

    .line 372
    .local v0, "isucs2":Z
    const/4 v1, 0x0

    .line 373
    .local v1, "base":C
    const/4 v2, 0x0

    .line 375
    .local v2, "len":I
    const/4 v3, 0x3

    if-lt p2, v3, :cond_69

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_69

    .line 376
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 377
    add-int/lit8 v3, p2, -0x3

    if-le v2, v3, :cond_5c

    .line 378
    add-int/lit8 v2, p2, -0x3

    .line 380
    :cond_5c
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    int-to-char v1, v3

    .line 381
    add-int/lit8 p1, p1, 0x3

    .line 382
    const/4 v0, 0x1

    goto :goto_91

    .line 383
    :cond_69
    const/4 v3, 0x4

    if-lt p2, v3, :cond_91

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_91

    .line 384
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 385
    add-int/lit8 v3, p2, -0x4

    if-le v2, v3, :cond_7e

    .line 386
    add-int/lit8 v2, p2, -0x4

    .line 388
    :cond_7e
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v1, v3

    .line 390
    add-int/lit8 p1, p1, 0x4

    .line 391
    const/4 v0, 0x1

    .line 394
    :cond_91
    :goto_91
    if-eqz v0, :cond_c6

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v3, "ret":Ljava/lang/StringBuilder;
    :goto_98
    if-lez v2, :cond_c1

    .line 400
    aget-byte v4, p0, p1

    if-gez v4, :cond_ab

    .line 401
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x7f

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    add-int/lit8 p1, p1, 0x1

    .line 403
    add-int/lit8 v2, v2, -0x1

    .line 408
    :cond_ab
    const/4 v4, 0x0

    .line 409
    .local v4, "count":I
    :goto_ac
    if-ge v4, v2, :cond_b7

    add-int v5, p1, v4

    aget-byte v5, p0, v5

    if-ltz v5, :cond_b7

    .line 410
    add-int/lit8 v4, v4, 0x1

    goto :goto_ac

    .line 412
    :cond_b7
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    add-int/2addr p1, v4

    .line 416
    sub-int/2addr v2, v4

    .line 417
    .end local v4    # "count":I
    goto :goto_98

    .line 419
    :cond_c1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 422
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    :cond_c6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 423
    .local v3, "resource":Landroid/content/res/Resources;
    const-string v4, ""

    .line 425
    .local v4, "defaultCharset":Ljava/lang/String;
    const v5, 0x1040464

    .line 426
    :try_start_cf
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_d3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_cf .. :try_end_d3} :catch_d5

    move-object v4, v5

    .line 429
    goto :goto_d6

    .line 427
    :catch_d5
    move-exception v5

    .line 430
    :goto_d6
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist bcdPlmnToString([BI)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 142
    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-le v0, v1, :cond_7

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_7
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 146
    .local v0, "trans":[B
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 147
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 148
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 149
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 153
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_53
    return-object v1
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[B)V
    .registers 3
    .param p0, "bcd"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[BI)V

    .line 116
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[BI)V
    .registers 8
    .param p0, "bcd"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    :cond_1b
    array-length v0, p1

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    :goto_29
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_4a

    .line 132
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 131
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 134
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4a
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "bcd"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 103
    .local v0, "output":[B
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    .line 104
    return-object v0
.end method

.method public static blacklist bcdToString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 93
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist bcdToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_8
    add-int v2, p1, p2

    if-ge v1, v2, :cond_31

    .line 75
    aget-byte v2, p0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 76
    .local v2, "v":I
    const/16 v4, 0x9

    if-le v2, v4, :cond_16

    goto :goto_31

    .line 77
    :cond_16
    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 81
    if-ne v2, v3, :cond_25

    goto :goto_2e

    .line 82
    :cond_25
    if-le v2, v4, :cond_28

    goto :goto_31

    .line 83
    :cond_28
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .end local v2    # "v":I
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 86
    .end local v1    # "i":I
    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bchToString([BII)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 179
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_8
    add-int v2, p1, p2

    if-ge v1, v2, :cond_25

    .line 182
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 183
    .local v2, "v":I
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v2, v4, 0xf

    .line 186
    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 189
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist bitToRGB(I)I
    .registers 2
    .param p0, "bit"    # I

    .line 590
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 591
    const/4 v0, -0x1

    return v0

    .line 593
    :cond_5
    const/high16 v0, -0x1000000

    return v0
.end method

.method private static blacklist byteNumForInt(IZ)I
    .registers 6
    .param p0, "value"    # I
    .param p1, "signed"    # Z

    .line 876
    if-ltz p0, :cond_2a

    .line 879
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_17

    .line 880
    const/16 v3, 0x7f

    if-gt p0, v3, :cond_c

    .line 881
    return v2

    .line 883
    :cond_c
    const/16 v2, 0x7fff

    if-gt p0, v2, :cond_11

    .line 884
    return v1

    .line 886
    :cond_11
    const v1, 0x7fffff

    if-gt p0, v1, :cond_28

    .line 887
    return v0

    .line 890
    :cond_17
    const/16 v3, 0xff

    if-gt p0, v3, :cond_1c

    .line 891
    return v2

    .line 893
    :cond_1c
    const v2, 0xffff

    if-gt p0, v2, :cond_22

    .line 894
    return v1

    .line 896
    :cond_22
    const v1, 0xffffff

    if-gt p0, v1, :cond_28

    .line 897
    return v0

    .line 900
    :cond_28
    const/4 v0, 0x4

    return v0

    .line 877
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist byteNumForSignedInt(I)I
    .registers 2
    .param p0, "value"    # I

    .line 860
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist byteNumForUnsignedInt(I)I
    .registers 2
    .param p0, "value"    # I

    .line 848
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .registers 6
    .param p0, "b"    # B

    .line 929
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [C

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit16 v3, p0, 0xff

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    const/4 v4, 0x0

    aput-char v3, v1, v4

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    const/4 v3, 0x1

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static greylist bytesToHexString([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .line 483
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 487
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_29

    .line 490
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 492
    .local v2, "b":I
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    .line 496
    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 499
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bytesToInt([BII)I
    .registers 7
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 726
    const/4 v0, 0x4

    if-gt p2, v0, :cond_67

    .line 730
    if-ltz p1, :cond_39

    if-ltz p2, :cond_39

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_39

    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p2, :cond_1d

    .line 741
    shl-int/lit8 v2, v0, 0x8

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 743
    .end local v1    # "i":I
    :cond_1d
    if-ltz v0, :cond_20

    .line 747
    return v0

    .line 744
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src cannot be parsed as a positive integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    .end local v0    # "result":I
    :cond_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be <= 4 (only 32-bit integer supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist bytesToRawLong([BII)J
    .registers 11
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 763
    const/16 v0, 0x8

    if-gt p2, v0, :cond_4f

    .line 767
    if-ltz p1, :cond_21

    if-ltz p2, :cond_21

    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_21

    .line 776
    const-wide/16 v1, 0x0

    .line 777
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, p2, :cond_20

    .line 778
    shl-long v4, v1, v0

    add-int v6, p1, v3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    .line 777
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 780
    .end local v3    # "i":I
    :cond_20
    return-wide v1

    .line 768
    .end local v1    # "result":J
    :cond_21
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be <= 8 (only 64-bit long supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist cdmaBcdByteToInt(B)I
    .registers 4
    .param p0, "b"    # B

    .line 257
    const/4 v0, 0x0

    .line 260
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_d

    .line 261
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 264
    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 265
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 268
    :cond_16
    return v0
.end method

.method public static greylist cdmaBcdToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 201
    .local v1, "count":I
    move v2, p1

    .local v2, "i":I
    :goto_7
    if-ge v1, p2, :cond_32

    .line 203
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 204
    .local v3, "v":I
    const/16 v4, 0x9

    if-le v3, v4, :cond_12

    const/4 v3, 0x0

    .line 205
    :cond_12
    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_1d

    goto :goto_32

    .line 209
    :cond_1d
    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v3, v5, 0xf

    .line 210
    if-le v3, v4, :cond_26

    const/4 v3, 0x0

    .line 211
    :cond_26
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    nop

    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 214
    .end local v2    # "i":I
    :cond_32
    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist charToByte(C)B
    .registers 2
    .param p0, "c"    # C

    .line 961
    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    .line 962
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    return v0

    .line 963
    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 964
    add-int/lit8 v0, p0, -0x37

    int-to-byte v0, v0

    return v0

    .line 965
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_24

    const/16 v0, 0x66

    if-gt p0, v0, :cond_24

    .line 966
    add-int/lit8 v0, p0, -0x57

    int-to-byte v0, v0

    return v0

    .line 968
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 953
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static blacklist countTrailingZeros(B)B
    .registers 4
    .param p0, "b"    # B

    .line 908
    if-nez p0, :cond_5

    .line 909
    const/16 v0, 0x8

    return v0

    .line 911
    :cond_5
    and-int/lit16 v0, p0, 0xff

    .line 912
    .local v0, "v":I
    const/4 v1, 0x7

    .line 913
    .local v1, "c":B
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_f

    .line 914
    add-int/lit8 v2, v1, -0x4

    int-to-byte v1, v2

    .line 916
    :cond_f
    and-int/lit8 v2, v0, 0x33

    if-eqz v2, :cond_16

    .line 917
    add-int/lit8 v2, v1, -0x2

    int-to-byte v1, v2

    .line 919
    :cond_16
    and-int/lit8 v2, v0, 0x55

    if-eqz v2, :cond_1d

    .line 920
    add-int/lit8 v2, v1, -0x1

    int-to-byte v1, v2

    .line 922
    :cond_1d
    return v1
.end method

.method public static blacklist encodeFplmns(Ljava/util/List;I)[B
    .registers 6
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .line 979
    .local p0, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v0, p1, [B

    .line 980
    .local v0, "serializedFplmns":[B
    const/4 v1, 0x0

    .line 981
    .local v1, "offset":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 982
    .local v3, "fplmn":Ljava/lang/String;
    if-lt v1, p1, :cond_16

    goto :goto_1d

    .line 983
    :cond_16
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBcdPlmn(Ljava/lang/String;[BI)V

    .line 984
    nop

    .end local v3    # "fplmn":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x3

    .line 985
    goto :goto_7

    .line 987
    :cond_1d
    :goto_1d
    if-ge v1, p1, :cond_26

    .line 989
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    move v1, v2

    goto :goto_1d

    .line 991
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_26
    return-object v0
.end method

.method private static blacklist getCLUT([BII)[I
    .registers 11
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    .line 686
    if-nez p0, :cond_4

    .line 687
    const/4 v0, 0x0

    return-object v0

    .line 690
    :cond_4
    new-array v0, p2, [I

    .line 691
    .local v0, "result":[I
    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    .line 692
    .local v1, "endIndex":I
    move v2, p1

    .line 693
    .local v2, "valueIndex":I
    const/4 v3, 0x0

    .line 694
    .local v3, "colorIndex":I
    const/high16 v4, -0x1000000

    .line 696
    .local v4, "alpha":I
    :goto_d
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "colorIndex":I
    .local v5, "colorIndex":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v6, "valueIndex":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v3

    .line 700
    if-lt v6, v1, :cond_2d

    .line 701
    return-object v0

    .line 700
    :cond_2d
    move v3, v5

    move v2, v6

    goto :goto_d
.end method

.method public static blacklist getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "iccId"    # Ljava/lang/String;

    .line 706
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 707
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_15

    .line 706
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_15
    :goto_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist gsmBcdByteToInt(B)I
    .registers 4
    .param p0, "b"    # B

    .line 234
    const/4 v0, 0x0

    .line 237
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_b

    .line 238
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 241
    :cond_b
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 242
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 245
    :cond_16
    return v0
.end method

.method public static greylist-max-r hexCharToInt(C)I
    .registers 4
    .param p0, "c"    # C

    .line 436
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 437
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 438
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 440
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist hexStringToBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 458
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 460
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 462
    .local v0, "sz":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 464
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_2c

    .line 465
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 466
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 464
    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    .line 469
    .end local v2    # "i":I
    :cond_2c
    return-object v1
.end method

.method private static blacklist intToBytes(I[BIZ)I
    .registers 9
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "signed"    # Z

    .line 864
    invoke-static {p0, p3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    .line 865
    .local v0, "l":I
    if-ltz p2, :cond_1d

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1d

    .line 868
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    move v2, p0

    .local v2, "v":I
    :goto_e
    if-ltz v1, :cond_1c

    .line 869
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    .line 870
    .local v3, "b":B
    add-int v4, p2, v1

    aput-byte v3, p1, v4

    .line 868
    .end local v3    # "b":B
    add-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_e

    .line 872
    .end local v1    # "i":I
    .end local v2    # "v":I
    :cond_1c
    return v0

    .line 866
    :cond_1d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space to write. Required bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist mapTo2OrderBitColor([BII[II)[I
    .registers 14
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 636
    const/16 v0, 0x8

    rem-int v1, v0, p4

    if-eqz v1, :cond_12

    .line 637
    const-string v0, "IccUtils"

    const-string v1, "not event number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 642
    :cond_12
    const/4 v1, 0x1

    .line 643
    .local v1, "mask":I
    sparse-switch p4, :sswitch_data_44

    goto :goto_21

    .line 654
    :sswitch_17
    const/16 v1, 0xff

    goto :goto_21

    .line 651
    :sswitch_1a
    const/16 v1, 0xf

    .line 652
    goto :goto_21

    .line 648
    :sswitch_1d
    const/4 v1, 0x3

    .line 649
    goto :goto_21

    .line 645
    :sswitch_1f
    const/4 v1, 0x1

    .line 646
    nop

    .line 658
    :goto_21
    new-array v2, p2, [I

    .line 659
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    .line 660
    .local v3, "resultIndex":I
    div-int/2addr v0, p4

    .line 661
    .local v0, "run":I
    :goto_25
    if-ge v3, p2, :cond_43

    .line 662
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "valueIndex":I
    .local v4, "valueIndex":I
    aget-byte p1, p0, p1

    .line 663
    .local p1, "tempByte":B
    const/4 v5, 0x0

    .local v5, "runIndex":I
    :goto_2c
    if-ge v5, v0, :cond_41

    .line 664
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 665
    .local v6, "offset":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "resultIndex":I
    .local v7, "resultIndex":I
    mul-int v8, v6, p4

    shr-int v8, p1, v8

    and-int/2addr v8, v1

    aget v8, p3, v8

    aput v8, v2, v3

    .line 663
    .end local v6    # "offset":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_2c

    .line 668
    .end local v5    # "runIndex":I
    .end local v7    # "resultIndex":I
    .end local p1    # "tempByte":B
    .restart local v3    # "resultIndex":I
    :cond_41
    move p1, v4

    goto :goto_25

    .line 669
    .end local v4    # "valueIndex":I
    .local p1, "valueIndex":I
    :cond_43
    return-object v2

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_1d
        0x4 -> :sswitch_1a
        0x8 -> :sswitch_17
    .end sparse-switch
.end method

.method private static blacklist mapToNon2OrderBitColor([BII[II)[I
    .registers 7
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 674
    const/16 v0, 0x8

    rem-int/2addr v0, p4

    if-nez v0, :cond_11

    .line 675
    const-string v0, "IccUtils"

    const-string v1, "not odd number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 680
    :cond_11
    new-array v0, p2, [I

    .line 682
    .local v0, "resultArray":[I
    return-object v0
.end method

.method public static greylist networkNameToString([BII)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 515
    const/4 v0, 0x1

    if-lt p2, v0, :cond_44

    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    goto :goto_44

    .line 520
    :cond_b
    aget-byte v0, p0, p1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_48

    .line 541
    const-string v0, ""

    .local v0, "ret":Ljava/lang/String;
    goto :goto_41

    .line 531
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_17
    :try_start_17
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    const-string v3, "utf-16"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_22} :catch_23

    .line 536
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_41

    .line 533
    .end local v0    # "ret":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 535
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    move-object v0, v1

    goto :goto_41

    .line 524
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_2f
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7

    .line 525
    .local v0, "unusedBits":I
    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    .line 526
    .local v1, "countSeptets":I
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "ret":Ljava/lang/String;
    move-object v0, v2

    .line 549
    .end local v1    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_41
    aget-byte v1, p0, p1

    .line 553
    return-object v0

    .line 517
    .end local v0    # "ret":Ljava/lang/String;
    :cond_44
    :goto_44
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_17
    .end packed-switch
.end method

.method public static greylist parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "valueIndex":I
    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 566
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 567
    .local v1, "height":I
    mul-int v3, v0, v1

    .line 569
    .local v3, "numOfPixels":I
    new-array v4, v3, [I

    .line 571
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .line 572
    .local v5, "pixelIndex":I
    const/4 v6, 0x7

    .line 573
    .local v6, "bitIndex":I
    const/4 v7, 0x0

    .line 574
    .local v7, "currentByte":B
    :goto_14
    if-ge v5, v3, :cond_32

    .line 576
    rem-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_21

    .line 577
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v8, "valueIndex":I
    aget-byte v2, p0, v2

    .line 578
    .end local v7    # "currentByte":B
    .local v2, "currentByte":B
    const/4 v6, 0x7

    move v7, v2

    move v2, v8

    .line 580
    .end local v8    # "valueIndex":I
    .local v2, "valueIndex":I
    .restart local v7    # "currentByte":B
    :cond_21
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pixelIndex":I
    .local v8, "pixelIndex":I
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "bitIndex":I
    .local v9, "bitIndex":I
    shr-int v6, v7, v6

    and-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v6

    aput v6, v4, v5

    move v5, v8

    move v6, v9

    goto :goto_14

    .line 583
    .end local v8    # "pixelIndex":I
    .end local v9    # "bitIndex":I
    .restart local v5    # "pixelIndex":I
    .restart local v6    # "bitIndex":I
    :cond_32
    if-eq v5, v3, :cond_3b

    .line 584
    const-string v8, "IccUtils"

    const-string v9, "parse end and size error"

    invoke-static {v8, v9}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_3b
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static greylist parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "valueIndex":I
    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 610
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 611
    .local v1, "height":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v3, "valueIndex":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 612
    .local v2, "bits":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 613
    .local v3, "colorNumber":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 616
    .local v4, "clutOffset":I
    invoke-static {p0, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v5

    .line 617
    .local v5, "colorIndexArray":[I
    const/4 v8, 0x1

    if-ne v8, p2, :cond_35

    .line 618
    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    .line 621
    :cond_35
    const/4 v8, 0x0

    .line 622
    .local v8, "resultArray":[I
    rem-int/2addr v6, v2

    if-nez v6, :cond_40

    .line 623
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v6

    .end local v8    # "resultArray":[I
    .local v6, "resultArray":[I
    goto :goto_46

    .line 626
    .end local v6    # "resultArray":[I
    .restart local v8    # "resultArray":[I
    :cond_40
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v6

    .line 630
    .end local v8    # "resultArray":[I
    .restart local v6    # "resultArray":[I
    :goto_46
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static blacklist signedIntToBytes(I[BI)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 838
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist signedIntToBytes(I)[B
    .registers 4
    .param p0, "value"    # I

    .line 806
    if-ltz p0, :cond_d

    .line 809
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForSignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 810
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I[BI)I

    .line 811
    return-object v0

    .line 807
    .end local v0    # "bytes":[B
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist stringToAdnStringField(Ljava/lang/String;)[B
    .registers 7
    .param p0, "alphaTag"    # Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 286
    .local v1, "septets":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 287
    new-array v2, v1, [B

    .line 288
    .local v2, "ret":[B
    array-length v3, v2

    invoke-static {p0, v2, v0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 289
    return-object v2

    .line 297
    .end local v2    # "ret":[B
    :cond_f
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 298
    .local v2, "alphaTagBytes":[B
    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 300
    .local v3, "ret":[B
    const/16 v5, -0x80

    aput-byte v5, v3, v0

    .line 301
    array-length v5, v2

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    return-object v3
.end method

.method public static blacklist stringToBcdPlmn(Ljava/lang/String;[BI)V
    .registers 8
    .param p0, "plmn"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_e

    :cond_c
    const/16 v0, 0x46

    .line 167
    .local v0, "digit6":C
    :goto_e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v1

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 168
    add-int/lit8 v1, p2, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/2addr v3, v2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 169
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v2, v3, 0x4

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 170
    return-void
.end method

.method public static blacklist stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 936
    const-string v0, "FFFFFFFFFFFFFFFFFFFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 937
    return-object p0

    .line 944
    :cond_9
    if-nez p0, :cond_d

    const/4 v0, 0x0

    goto :goto_15

    :cond_d
    const-string v0, "(?i)f*$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "stripStr":Ljava/lang/String;
    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object v1, p0

    goto :goto_1e

    :cond_1d
    move-object v1, v0

    :goto_1e
    return-object v1
.end method

.method public static blacklist unsignedIntToBytes(I[BI)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 825
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist unsignedIntToBytes(I)[B
    .registers 4
    .param p0, "value"    # I

    .line 789
    if-ltz p0, :cond_d

    .line 792
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 793
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    .line 794
    return-object v0

    .line 790
    .end local v0    # "bytes":[B
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
