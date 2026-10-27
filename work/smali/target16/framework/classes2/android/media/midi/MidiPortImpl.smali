.class Landroid/media/midi/MidiPortImpl;
.super Ljava/lang/Object;
.source "MidiPortImpl.java"


# static fields
.field private static final blacklist DATA_PACKET_OVERHEAD:I = 0x9

.field public static final blacklist MAX_PACKET_DATA_SIZE:I = 0x3f7

.field public static final blacklist MAX_PACKET_SIZE:I = 0x400

.field public static final blacklist PACKET_TYPE_DATA:I = 0x1

.field public static final blacklist PACKET_TYPE_FLUSH:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "MidiPort"

.field private static final blacklist TIMESTAMP_SIZE:I = 0x8


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDataOffset([BI)I
    .registers 2

    .line 107
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist getDataSize([BI)I
    .registers 2

    .line 116
    add-int/lit8 p1, p1, -0x9

    return p1
.end method

.method public static blacklist getPacketTimestamp([BI)J
    .registers 7

    .line 125
    nop

    .line 126
    nop

    .line 128
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_5
    const/16 v3, 0x8

    if-ge v2, v3, :cond_15

    .line 129
    add-int/lit8 p1, p1, -0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    .line 130
    shl-long/2addr v0, v3

    int-to-long v3, v4

    or-long/2addr v0, v3

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 132
    :cond_15
    return-wide v0
.end method

.method public static blacklist getPacketType([BI)I
    .registers 2

    .line 98
    const/4 p1, 0x0

    aget-byte p0, p0, p1

    return p0
.end method

.method public static blacklist packData([BIIJ[B)I
    .registers 8

    .line 67
    const/16 v0, 0x3f7

    if-le p2, v0, :cond_5

    .line 68
    move p2, v0

    .line 70
    :cond_5
    nop

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-byte v1, p5, v0

    .line 74
    invoke-static {p0, p1, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    add-int/2addr v1, p2

    .line 78
    nop

    :goto_f
    const/16 p0, 0x8

    if-ge v0, p0, :cond_1e

    .line 79
    add-int/lit8 p1, v1, 0x1

    long-to-int p2, p3

    int-to-byte p2, p2

    aput-byte p2, p5, v1

    .line 80
    shr-long/2addr p3, p0

    .line 78
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    goto :goto_f

    .line 83
    :cond_1e
    return v1
.end method

.method public static blacklist packFlush([B)I
    .registers 3

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-byte v1, p0, v0

    .line 91
    const/4 p0, 0x1

    return p0
.end method
