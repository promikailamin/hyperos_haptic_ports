.class public Lmiui/push/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final blacklist AMP_ENCODE:[C

.field private static final blacklist APOS_ENCODE:[C

.field private static final blacklist GT_ENCODE:[C

.field private static final blacklist LT_ENCODE:[C

.field private static final blacklist QUOTE_ENCODE:[C

.field private static blacklist numbersAndLetters:[C

.field private static blacklist randGen:Ljava/util/Random;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->QUOTE_ENCODE:[C

    .line 40
    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->APOS_ENCODE:[C

    .line 42
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->AMP_ENCODE:[C

    .line 44
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->LT_ENCODE:[C

    .line 46
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->GT_ENCODE:[C

    .line 219
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lmiui/push/StringUtils;->randGen:Ljava/util/Random;

    .line 227
    nop

    .line 228
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->numbersAndLetters:[C

    .line 227
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    return-void
.end method

.method public static blacklist encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "bytes":[B
    :try_start_1
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 178
    goto :goto_d

    .line 176
    :catch_9
    move-exception v1

    .line 177
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 179
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    :goto_d
    invoke-static {v0}, Lmiui/push/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist encodeBase64([B)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [B

    .line 189
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/push/StringUtils;->encodeBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist encodeBase64([BIIZ)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "lineBreaks"    # Z

    .line 210
    if-eqz p3, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    .line 211
    :cond_4
    const/4 v0, 0x2

    .line 210
    :goto_5
    invoke-static {p0, p1, p2, v0}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist encodeBase64([BZ)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "lineBreaks"    # Z

    .line 200
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lmiui/push/StringUtils;->encodeBase64([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "string"    # Ljava/lang/String;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const/4 v0, 0x0

    .line 61
    .local v0, "i":I
    const/4 v1, 0x0

    .line 62
    .local v1, "last":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 63
    .local v2, "input":[C
    array-length v3, v2

    .line 64
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    int-to-double v5, v3

    const-wide v7, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v4, "out":Ljava/lang/StringBuilder;
    :goto_18
    if-ge v0, v3, :cond_b5

    .line 66
    aget-char v5, v2, v0

    .line 67
    .local v5, "ch":C
    const/16 v6, 0x3e

    if-le v5, v6, :cond_22

    goto/16 :goto_b1

    .line 68
    :cond_22
    const/16 v7, 0x3c

    if-ne v5, v7, :cond_36

    .line 69
    if-le v0, v1, :cond_2d

    .line 70
    sub-int v6, v0, v1

    invoke-virtual {v4, v2, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 72
    :cond_2d
    add-int/lit8 v1, v0, 0x1

    .line 73
    sget-object v6, Lmiui/push/StringUtils;->LT_ENCODE:[C

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_b1

    .line 74
    :cond_36
    if-ne v5, v6, :cond_47

    .line 75
    if-le v0, v1, :cond_3f

    .line 76
    sub-int v6, v0, v1

    invoke-virtual {v4, v2, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 78
    :cond_3f
    add-int/lit8 v1, v0, 0x1

    .line 79
    sget-object v6, Lmiui/push/StringUtils;->GT_ENCODE:[C

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 82
    :cond_47
    const/16 v6, 0x26

    if-ne v5, v6, :cond_8c

    .line 83
    if-le v0, v1, :cond_52

    .line 84
    sub-int v6, v0, v1

    invoke-virtual {v4, v2, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 88
    :cond_52
    add-int/lit8 v6, v0, 0x5

    if-le v3, v6, :cond_84

    add-int/lit8 v6, v0, 0x1

    aget-char v6, v2, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_84

    add-int/lit8 v6, v0, 0x2

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_84

    add-int/lit8 v6, v0, 0x3

    aget-char v6, v2, v6

    .line 89
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_84

    add-int/lit8 v6, v0, 0x4

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_84

    add-int/lit8 v6, v0, 0x5

    aget-char v6, v2, v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_b1

    .line 90
    :cond_84
    add-int/lit8 v1, v0, 0x1

    .line 91
    sget-object v6, Lmiui/push/StringUtils;->AMP_ENCODE:[C

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 93
    :cond_8c
    const/16 v6, 0x22

    if-ne v5, v6, :cond_9f

    .line 94
    if-le v0, v1, :cond_97

    .line 95
    sub-int v6, v0, v1

    invoke-virtual {v4, v2, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 97
    :cond_97
    add-int/lit8 v1, v0, 0x1

    .line 98
    sget-object v6, Lmiui/push/StringUtils;->QUOTE_ENCODE:[C

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 99
    :cond_9f
    const/16 v6, 0x27

    if-ne v5, v6, :cond_b1

    .line 100
    if-le v0, v1, :cond_aa

    .line 101
    sub-int v6, v0, v1

    invoke-virtual {v4, v2, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 103
    :cond_aa
    add-int/lit8 v1, v0, 0x1

    .line 104
    sget-object v6, Lmiui/push/StringUtils;->APOS_ENCODE:[C

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 65
    :cond_b1
    :goto_b1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    .line 107
    .end local v5    # "ch":C
    :cond_b5
    if-nez v1, :cond_b8

    .line 108
    return-object p0

    .line 110
    :cond_b8
    if-le v0, v1, :cond_bf

    .line 111
    sub-int v5, v0, v1

    invoke-virtual {v4, v2, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 113
    :cond_bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist getBytes(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 301
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 302
    :catch_7
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .line 285
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 286
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-static {p0}, Lmiui/push/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 287
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 288
    .local v1, "hashInt":Ljava/math/BigInteger;
    const-string v2, "%1$032X"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_22} :catch_23

    return-object v2

    .line 289
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hashInt":Ljava/math/BigInteger;
    :catch_23
    move-exception v0

    .line 290
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist isValidXmlChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 271
    const/16 v0, 0x20

    if-lt p0, v0, :cond_9

    const v0, 0xd7ff

    if-le p0, v0, :cond_2b

    :cond_9
    const v0, 0xe000

    if-lt p0, v0, :cond_13

    const v0, 0xfffd

    if-le p0, v0, :cond_2b

    :cond_13
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_1c

    const v0, 0x10ffff

    if-le p0, v0, :cond_2b

    :cond_1c
    const/16 v0, 0x9

    if-eq p0, v0, :cond_2b

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2b

    const/16 v0, 0xd

    if-ne p0, v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    return v0
.end method

.method public static blacklist randomString(I)Ljava/lang/String;
    .registers 6
    .param p0, "length"    # I

    .line 244
    const/4 v0, 0x1

    if-ge p0, v0, :cond_5

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_5
    new-array v0, p0, [C

    .line 249
    .local v0, "randBuffer":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 250
    sget-object v2, Lmiui/push/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lmiui/push/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 252
    .end local v1    # "i":I
    :cond_1c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static final blacklist replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;

    .line 140
    if-nez p0, :cond_4

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_4
    const/4 v0, 0x0

    .line 145
    .local v0, "i":I
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_45

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 148
    .local v1, "string2":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 149
    .local v2, "newString2":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 150
    .local v3, "oLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 152
    add-int/2addr v0, v3

    .line 153
    move v5, v0

    .line 155
    .local v5, "j":I
    :goto_28
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    move v0, v6

    if-lez v6, :cond_3b

    .line 156
    sub-int v6, v0, v5

    invoke-virtual {v4, v1, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 157
    add-int/2addr v0, v3

    .line 158
    move v5, v0

    goto :goto_28

    .line 160
    :cond_3b
    array-length v6, v1

    sub-int/2addr v6, v5

    invoke-virtual {v4, v1, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 163
    .end local v1    # "string2":[C
    .end local v2    # "newString2":[C
    .end local v3    # "oLength":I
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "j":I
    :cond_45
    return-object p0
.end method

.method public static blacklist stripInvalidXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "in"    # Ljava/lang/String;

    .line 256
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    return-object p0

    .line 260
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 262
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 263
    .local v2, "c":C
    invoke-static {v2}, Lmiui/push/StringUtils;->isValidXmlChar(C)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .end local v2    # "c":C
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 267
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final blacklist unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .line 124
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 126
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-static {p0, v0, v1}, Lmiui/push/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
