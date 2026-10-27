.class public final Landroid/hardware/gnss/V2_0/GnssConstellationType;
.super Ljava/lang/Object;
.source "GnssConstellationType.java"


# static fields
.field public static final blacklist BEIDOU:B = 0x5t

.field public static final blacklist GALILEO:B = 0x6t

.field public static final blacklist GLONASS:B = 0x3t

.field public static final blacklist GPS:B = 0x1t

.field public static final blacklist IRNSS:B = 0x7t

.field public static final blacklist QZSS:B = 0x4t

.field public static final blacklist SBAS:B = 0x2t

.field public static final blacklist UNKNOWN:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    nop

    .line 65
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 67
    const-string v1, "GPS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    int-to-byte v1, v2

    goto :goto_18

    .line 66
    :cond_17
    const/4 v1, 0x0

    .line 70
    :goto_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 71
    const-string v2, "SBAS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    .line 74
    :cond_25
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 75
    const-string v2, "GLONASS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    or-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    .line 78
    :cond_32
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    .line 79
    const-string v2, "QZSS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    .line 82
    :cond_3f
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4c

    .line 83
    const-string v2, "BEIDOU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    or-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    .line 86
    :cond_4c
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_59

    .line 87
    const-string v2, "GALILEO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    or-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    .line 90
    :cond_59
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_66

    .line 91
    const-string v2, "IRNSS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    or-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    .line 94
    :cond_66
    if-eq p0, v1, :cond_89

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v1, v1

    and-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_89
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3

    .line 35
    if-nez p0, :cond_5

    .line 36
    const-string p0, "UNKNOWN"

    return-object p0

    .line 38
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 39
    const-string p0, "GPS"

    return-object p0

    .line 41
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 42
    const-string p0, "SBAS"

    return-object p0

    .line 44
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 45
    const-string p0, "GLONASS"

    return-object p0

    .line 47
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 48
    const-string p0, "QZSS"

    return-object p0

    .line 50
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 51
    const-string p0, "BEIDOU"

    return-object p0

    .line 53
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 54
    const-string p0, "GALILEO"

    return-object p0

    .line 56
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 57
    const-string p0, "IRNSS"

    return-object p0

    .line 59
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
