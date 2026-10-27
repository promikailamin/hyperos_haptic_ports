.class public Lcom/google/android/mms/pdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final blacklist BASELENGTH:I = 0xff

.field static final blacklist FOURBYTE:I = 0x4

.field static final blacklist PAD:B = 0x3dt

.field private static blacklist base64Alphabet:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 39
    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .line 43
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 44
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 46
    :cond_11
    const/16 v0, 0x5a

    :goto_13
    const/16 v1, 0x41

    if-lt v0, v1, :cond_21

    .line 47
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 49
    :cond_21
    const/16 v0, 0x7a

    :goto_23
    const/16 v1, 0x61

    if-lt v0, v1, :cond_33

    .line 50
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 52
    :cond_33
    const/16 v0, 0x39

    :goto_35
    const/16 v1, 0x30

    if-lt v0, v1, :cond_45

    .line 53
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 56
    :cond_45
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 57
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 58
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist decodeBase64([B)[B
    .registers 11

    .line 69
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 73
    new-array p0, v1, [B

    return-object p0

    .line 76
    :cond_b
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    .line 77
    nop

    .line 78
    nop

    .line 82
    nop

    .line 83
    nop

    .line 86
    array-length v2, p0

    .line 88
    :cond_13
    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_22

    .line 89
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_13

    .line 90
    new-array p0, v1, [B

    return-object p0

    .line 93
    :cond_22
    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 96
    move v3, v1

    :goto_26
    if-ge v1, v0, :cond_97

    .line 97
    mul-int/lit8 v5, v1, 0x4

    .line 98
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    .line 99
    add-int/lit8 v7, v5, 0x3

    aget-byte v7, p0, v7

    .line 101
    sget-object v8, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v9, p0, v5

    aget-byte v8, v8, v9

    .line 102
    sget-object v9, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v9, v5

    .line 104
    if-eq v6, v4, :cond_6b

    if-eq v7, v4, :cond_6b

    .line 106
    sget-object v9, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v6, v9, v6

    .line 107
    sget-object v9, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v7, v9, v7

    .line 109
    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    .line 110
    add-int/lit8 v8, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 112
    add-int/lit8 v5, v3, 0x2

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    goto :goto_92

    .line 113
    :cond_6b
    if-ne v6, v4, :cond_76

    .line 115
    shl-int/lit8 v6, v8, 0x2

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    goto :goto_92

    .line 116
    :cond_76
    if-ne v7, v4, :cond_92

    .line 118
    sget-object v7, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v6, v7, v6

    .line 120
    shl-int/lit8 v7, v8, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 121
    add-int/lit8 v7, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v7

    .line 124
    :cond_92
    :goto_92
    add-int/lit8 v3, v3, 0x3

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 126
    :cond_97
    return-object v2
.end method

.method static blacklist discardNonBase64([B)[B
    .registers 7

    .line 155
    array-length v0, p0

    new-array v0, v0, [B

    .line 156
    nop

    .line 158
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    array-length v4, p0

    if-ge v2, v4, :cond_1c

    .line 159
    aget-byte v4, p0, v2

    invoke-static {v4}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 160
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v2

    aput-byte v5, v0, v3

    move v3, v4

    .line 158
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 164
    :cond_1c
    new-array p0, v3, [B

    .line 166
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    return-object p0
.end method

.method private static blacklist isBase64(B)Z
    .registers 3

    .line 136
    const/16 v0, 0x3d

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    .line 137
    return v1

    .line 138
    :cond_6
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_f

    .line 139
    const/4 p0, 0x0

    return p0

    .line 141
    :cond_f
    return v1
.end method
