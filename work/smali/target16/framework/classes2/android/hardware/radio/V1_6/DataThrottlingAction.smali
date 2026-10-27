.class public final Landroid/hardware/radio/V1_6/DataThrottlingAction;
.super Ljava/lang/Object;
.source "DataThrottlingAction.java"


# static fields
.field public static final blacklist HOLD:B = 0x3t

.field public static final blacklist NO_DATA_THROTTLING:B = 0x0t

.field public static final blacklist THROTTLE_ANCHOR_CARRIER:B = 0x2t

.field public static final blacklist THROTTLE_SECONDARY_CARRIER:B = 0x1t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    nop

    .line 42
    const-string v1, "NO_DATA_THROTTLING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 44
    const-string v1, "THROTTLE_SECONDARY_CARRIER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    int-to-byte v1, v2

    goto :goto_18

    .line 43
    :cond_17
    const/4 v1, 0x0

    .line 47
    :goto_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 48
    const-string v2, "THROTTLE_ANCHOR_CARRIER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    .line 51
    :cond_25
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 52
    const-string v2, "HOLD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    or-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    .line 55
    :cond_32
    if-eq p0, v1, :cond_55

    .line 56
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

    .line 58
    :cond_55
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3

    .line 24
    if-nez p0, :cond_5

    .line 25
    const-string p0, "NO_DATA_THROTTLING"

    return-object p0

    .line 27
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 28
    const-string p0, "THROTTLE_SECONDARY_CARRIER"

    return-object p0

    .line 30
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 31
    const-string p0, "THROTTLE_ANCHOR_CARRIER"

    return-object p0

    .line 33
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 34
    const-string p0, "HOLD"

    return-object p0

    .line 36
    :cond_17
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
