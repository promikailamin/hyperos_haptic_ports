.class public Lcom/android/net/module/util/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/net/module/util/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mSeparator:B = 0x3dt


# instance fields
.field private blacklist mData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Lcom/android/net/module/util/DnsSdTxtRecord;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Lcom/android/net/module/util/DnsSdTxtRecord$1;

    invoke-direct {v0}, Lcom/android/net/module/util/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Lcom/android/net/module/util/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/net/module/util/DnsSdTxtRecord;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    if-eqz v0, :cond_13

    .line 60
    iget-object p1, p1, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    .line 62
    :cond_13
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    .line 55
    return-void
.end method

.method private blacklist getKey(I)Ljava/lang/String;
    .registers 6

    .line 195
    nop

    .line 197
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    if-ge v1, p1, :cond_15

    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_15

    .line 198
    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 201
    :cond_15
    iget-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length p1, p1

    if-ge v2, p1, :cond_3c

    .line 202
    iget-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    aget-byte p1, p1, v2

    .line 203
    nop

    .line 205
    nop

    :goto_20
    if-ge v0, p1, :cond_32

    .line 206
    iget-object v1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v1, v1, v3

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_2f

    goto :goto_32

    .line 205
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 208
    :cond_32
    :goto_32
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    .line 210
    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getValue(I)[B
    .registers 8

    .line 219
    nop

    .line 220
    nop

    .line 222
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_5
    if-ge v1, p1, :cond_16

    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_16

    .line 223
    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 226
    :cond_16
    iget-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length p1, p1

    if-ge v2, p1, :cond_3f

    .line 227
    iget-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    aget-byte p1, p1, v2

    .line 228
    nop

    .line 230
    move v1, v0

    :goto_21
    if-ge v1, p1, :cond_3f

    .line 231
    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int v4, v2, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v5

    const/16 v5, 0x3d

    if-ne v3, v5, :cond_3c

    .line 232
    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    new-array v1, p1, [B

    .line 233
    iget-object v2, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    goto :goto_40

    .line 230
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 238
    :cond_3f
    const/4 v1, 0x0

    :goto_40
    return-object v1
.end method

.method private blacklist getValue(Ljava/lang/String;)[B
    .registers 4

    .line 247
    nop

    .line 250
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/net/module/util/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13

    .line 252
    invoke-direct {p0, v0}, Lcom/android/net/module/util/DnsSdTxtRecord;->getValue(I)[B

    move-result-object p1

    return-object p1

    .line 250
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 256
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getValueAsString(I)Ljava/lang/String;
    .registers 3

    .line 242
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSdTxtRecord;->getValue(I)[B

    move-result-object p1

    .line 243
    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method private blacklist insert([B[BI)V
    .registers 11

    .line 169
    iget-object v0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    .line 170
    const/4 v1, 0x0

    if-eqz p2, :cond_7

    array-length v2, p2

    goto :goto_8

    :cond_7
    move v2, v1

    .line 171
    :goto_8
    nop

    .line 174
    move v3, v1

    move v4, v3

    :goto_b
    const/4 v5, 0x1

    if-ge v3, p3, :cond_1e

    iget-object v6, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v6, v6

    if-ge v4, v6, :cond_1e

    .line 175
    iget-object v6, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    aget-byte v6, v6, v4

    add-int/2addr v6, v5

    and-int/lit16 v5, v6, 0xff

    add-int/2addr v4, v5

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 178
    :cond_1e
    array-length p3, p1

    add-int/2addr p3, v2

    if-eqz p2, :cond_24

    move v3, v5

    goto :goto_25

    :cond_24
    move v3, v1

    :goto_25
    add-int/2addr p3, v3

    .line 179
    array-length v3, v0

    add-int/2addr v3, p3

    add-int/2addr v3, v5

    .line 181
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    .line 182
    iget-object v5, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-static {v0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length v5, v0

    sub-int/2addr v5, v4

    .line 184
    iget-object v6, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    sub-int/2addr v3, v5

    invoke-static {v0, v4, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    int-to-byte p3, p3

    aput-byte p3, v0, v4

    .line 186
    iget-object p3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v0, v4, 0x1

    array-length v3, p1

    invoke-static {p1, v1, p3, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    if-eqz p2, :cond_5a

    .line 188
    iget-object p3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v3, p1

    add-int/2addr v0, v3

    const/16 v3, 0x3d

    aput-byte v3, p3, v0

    .line 189
    iget-object p3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length p1, p1

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x2

    invoke-static {p2, v1, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :cond_5a
    return-void
.end method


# virtual methods
.method public blacklist contains(Ljava/lang/String;)Z
    .registers 5

    .line 151
    nop

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/net/module/util/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    const/4 p1, 0x1

    return p1

    .line 152
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 155
    :cond_14
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 286
    if-ne p1, p0, :cond_4

    .line 287
    const/4 p1, 0x1

    return p1

    .line 289
    :cond_4
    instance-of v0, p1, Lcom/android/net/module/util/DnsSdTxtRecord;

    if-nez v0, :cond_a

    .line 290
    const/4 p1, 0x0

    return p1

    .line 293
    :cond_a
    check-cast p1, Lcom/android/net/module/util/DnsSdTxtRecord;

    .line 294
    iget-object p1, p1, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    iget-object v0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 113
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    move-result-object p1

    .line 114
    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public blacklist getRawData()[B
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public blacklist keyCount()I
    .registers 4

    .line 142
    nop

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_14

    .line 144
    iget-object v2, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 146
    :cond_14
    return v1
.end method

.method public blacklist remove(Ljava/lang/String;)I
    .registers 10

    .line 119
    nop

    .line 121
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v3, v3

    if-ge v1, v3, :cond_61

    .line 122
    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    aget-byte v3, v3, v1

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v3, :cond_59

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_28

    iget-object v4, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_59

    .line 125
    :cond_28
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 126
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_59

    .line 127
    iget-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    .line 128
    array-length v4, p1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    .line 129
    iget-object v4, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-static {p1, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    add-int v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v5, p1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {p1, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    return v2

    .line 135
    :cond_59
    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 137
    :cond_61
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 74
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 76
    array-length v1, p2

    goto :goto_c

    .line 78
    :cond_9
    nop

    .line 79
    const/4 p2, 0x0

    move v1, v0

    .line 83
    :goto_c
    :try_start_c
    const-string v2, "US-ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_12} :catch_45

    .line 87
    nop

    .line 89
    nop

    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_28

    .line 90
    aget-byte v3, v2, v0

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_20

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 91
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "= is not a valid character in key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_28
    array-length v0, v2

    add-int/2addr v0, v1

    const/16 v1, 0xff

    if-ge v0, v1, :cond_3d

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/net/module/util/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    move-result p1

    .line 100
    const/4 v0, -0x1

    if-ne p1, v0, :cond_39

    .line 101
    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSdTxtRecord;->keyCount()I

    move-result p1

    .line 103
    :cond_39
    invoke-direct {p0, v2, p2, p1}, Lcom/android/net/module/util/DnsSdTxtRecord;->insert([B[BI)V

    .line 104
    return-void

    .line 96
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key and Value length cannot exceed 255 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :catch_45
    move-exception p1

    .line 86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key should be US-ASCII"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist size()I
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 267
    nop

    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/net/module/util/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-direct {p0, v1}, Lcom/android/net/module/util/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    const-string/jumbo v4, "}"

    if-eqz v3, :cond_42

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_53

    .line 275
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    :goto_53
    if-nez v0, :cond_57

    .line 277
    move-object v0, v2

    goto :goto_6e

    .line 279
    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 281
    :cond_71
    if-eqz v0, :cond_74

    goto :goto_76

    :cond_74
    const-string v0, ""

    :goto_76
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 309
    iget-object p2, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 310
    return-void
.end method
