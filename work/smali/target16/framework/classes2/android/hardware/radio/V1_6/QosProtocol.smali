.class public final Landroid/hardware/radio/V1_6/QosProtocol;
.super Ljava/lang/Object;
.source "QosProtocol.java"


# static fields
.field public static final blacklist AH:B = 0x33t

.field public static final blacklist ESP:B = 0x32t

.field public static final blacklist TCP:B = 0x6t

.field public static final blacklist UDP:B = 0x11t

.field public static final blacklist UNSPECIFIED:B = -0x1t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    nop

    .line 47
    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    .line 48
    const-string v1, "UNSPECIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    int-to-byte v1, v2

    goto :goto_13

    .line 47
    :cond_12
    const/4 v1, 0x0

    .line 51
    :goto_13
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_20

    .line 52
    const-string v2, "TCP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    or-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    .line 55
    :cond_20
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2e

    .line 56
    const-string v2, "UDP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    or-int/lit8 v1, v1, 0x11

    int-to-byte v1, v1

    .line 59
    :cond_2e
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_3c

    .line 60
    const-string v2, "ESP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    or-int/lit8 v1, v1, 0x32

    int-to-byte v1, v1

    .line 63
    :cond_3c
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_4a

    .line 64
    const-string v2, "AH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v1, v1, 0x33

    int-to-byte v1, v1

    .line 67
    :cond_4a
    if-eq p0, v1, :cond_6d

    .line 68
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

    .line 70
    :cond_6d
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3

    .line 26
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 27
    const-string p0, "UNSPECIFIED"

    return-object p0

    .line 29
    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_c

    .line 30
    const-string p0, "TCP"

    return-object p0

    .line 32
    :cond_c
    const/16 v0, 0x11

    if-ne p0, v0, :cond_13

    .line 33
    const-string p0, "UDP"

    return-object p0

    .line 35
    :cond_13
    const/16 v0, 0x32

    if-ne p0, v0, :cond_1a

    .line 36
    const-string p0, "ESP"

    return-object p0

    .line 38
    :cond_1a
    const/16 v0, 0x33

    if-ne p0, v0, :cond_21

    .line 39
    const-string p0, "AH"

    return-object p0

    .line 41
    :cond_21
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
