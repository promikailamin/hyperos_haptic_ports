.class public Lcom/android/modules/utils/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static blacklist countBytes(Ljava/lang/String;Z)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .line 68
    nop

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 70
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_38

    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 72
    if-eqz v4, :cond_18

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_18

    .line 73
    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    goto :goto_23

    .line 74
    :cond_18
    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_20

    .line 75
    const-wide/16 v4, 0x2

    add-long/2addr v1, v4

    goto :goto_23

    .line 77
    :cond_20
    const-wide/16 v4, 0x3

    add-long/2addr v1, v4

    .line 79
    :goto_23
    if-eqz p1, :cond_35

    const-wide/32 v4, 0xffff

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2d

    goto :goto_35

    .line 80
    :cond_2d
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "String more than 65535 UTF bytes long"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 83
    :cond_38
    return-wide v1
.end method

.method public static blacklist decode([B[CII)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 31
    :goto_3
    if-ge v1, p3, :cond_e7

    .line 32
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p0, v1

    int-to-char v1, v1

    aput-char v1, p1, v2

    const/16 v4, 0x80

    if-ge v1, v4, :cond_15

    .line 33
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_3

    .line 34
    :cond_15
    aget-char v1, p1, v2

    and-int/lit16 v5, v1, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_69

    .line 35
    const-string v5, "bad second byte at "

    if-ge v3, p3, :cond_52

    .line 38
    add-int/lit8 v6, v3, 0x1

    add-int/2addr v3, p2

    aget-byte v3, p0, v3

    .line 39
    and-int/lit16 v7, v3, 0xc0

    if-ne v7, v4, :cond_39

    .line 42
    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, p1, v2

    .line 43
    move v2, v4

    move v1, v6

    goto :goto_3

    .line 40
    :cond_39
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_52
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_69
    and-int/lit16 v5, v1, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_cc

    .line 44
    add-int/lit8 v5, v3, 0x1

    if-ge v5, p3, :cond_b3

    .line 47
    add-int/2addr v3, p2

    aget-byte v3, p0, v3

    .line 48
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, p2

    aget-byte v5, p0, v5

    .line 49
    and-int/lit16 v7, v3, 0xc0

    if-ne v7, v4, :cond_98

    and-int/lit16 v7, v5, 0xc0

    if-ne v7, v4, :cond_98

    .line 52
    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    and-int/lit8 v3, v5, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, p1, v2

    .line 53
    move v2, v4

    move v1, v6

    goto/16 :goto_3

    .line 50
    :cond_98
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad second or third byte at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_b3
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad third byte at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_cc
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad byte at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_e7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static blacklist encode([BILjava/lang/String;)V
    .registers 8

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 92
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_54

    .line 93
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 94
    if-eqz v2, :cond_18

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_18

    .line 95
    add-int/lit8 v3, p1, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v3

    goto :goto_51

    .line 96
    :cond_18
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_31

    .line 97
    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 98
    add-int/lit8 p1, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, v3

    goto :goto_51

    .line 100
    :cond_31
    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 101
    add-int/lit8 p1, v3, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 102
    add-int/lit8 v3, p1, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v3

    .line 92
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 105
    :cond_54
    return-void
.end method
