.class public final Landroid/hardware/radio/V1_5/IndicationFilter;
.super Ljava/lang/Object;
.source "IndicationFilter.java"


# static fields
.field public static final blacklist ALL:I = -0x1

.field public static final blacklist BARRING_INFO:I = 0x40

.field public static final blacklist DATA_CALL_DORMANCY_CHANGED:I = 0x4

.field public static final blacklist FULL_NETWORK_STATE:I = 0x2

.field public static final blacklist LINK_CAPACITY_ESTIMATE:I = 0x8

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist PHYSICAL_CHANNEL_CONFIG:I = 0x10

.field public static final blacklist REGISTRATION_FAILURE:I = 0x20

.field public static final blacklist SIGNAL_STRENGTH:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    nop

    .line 86
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 88
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_17

    .line 87
    :cond_16
    const/4 v2, 0x0

    .line 91
    :goto_17
    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_23

    .line 92
    const-string v1, "SIGNAL_STRENGTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    or-int/lit8 v2, v2, 0x1

    .line 95
    :cond_23
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2f

    .line 96
    const-string v1, "FULL_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v2, v2, 0x2

    .line 99
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 100
    const-string v1, "DATA_CALL_DORMANCY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v2, v2, 0x4

    .line 103
    :cond_3b
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_48

    .line 104
    const-string v1, "LINK_CAPACITY_ESTIMATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v2, v2, 0x8

    .line 107
    :cond_48
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_55

    .line 108
    const-string v1, "PHYSICAL_CHANNEL_CONFIG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v2, v2, 0x10

    .line 111
    :cond_55
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_62

    .line 112
    const-string v1, "REGISTRATION_FAILURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v2, v2, 0x20

    .line 115
    :cond_62
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_6f

    .line 116
    const-string v1, "BARRING_INFO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v2, v2, 0x40

    .line 119
    :cond_6f
    if-eq p0, v2, :cond_8d

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_8d
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 53
    if-nez p0, :cond_5

    .line 54
    const-string p0, "NONE"

    return-object p0

    .line 56
    :cond_5
    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    .line 57
    const-string p0, "ALL"

    return-object p0

    .line 59
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 60
    const-string p0, "SIGNAL_STRENGTH"

    return-object p0

    .line 62
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 63
    const-string p0, "FULL_NETWORK_STATE"

    return-object p0

    .line 65
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 66
    const-string p0, "DATA_CALL_DORMANCY_CHANGED"

    return-object p0

    .line 68
    :cond_1d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_24

    .line 69
    const-string p0, "LINK_CAPACITY_ESTIMATE"

    return-object p0

    .line 71
    :cond_24
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2b

    .line 72
    const-string p0, "PHYSICAL_CHANNEL_CONFIG"

    return-object p0

    .line 74
    :cond_2b
    const/16 v0, 0x20

    if-ne p0, v0, :cond_32

    .line 75
    const-string p0, "REGISTRATION_FAILURE"

    return-object p0

    .line 77
    :cond_32
    const/16 v0, 0x40

    if-ne p0, v0, :cond_39

    .line 78
    const-string p0, "BARRING_INFO"

    return-object p0

    .line 80
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
