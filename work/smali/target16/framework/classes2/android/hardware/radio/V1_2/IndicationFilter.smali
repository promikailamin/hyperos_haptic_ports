.class public final Landroid/hardware/radio/V1_2/IndicationFilter;
.super Ljava/lang/Object;
.source "IndicationFilter.java"


# static fields
.field public static final blacklist ALL:I = -0x1

.field public static final blacklist DATA_CALL_DORMANCY_CHANGED:I = 0x4

.field public static final blacklist FULL_NETWORK_STATE:I = 0x2

.field public static final blacklist LINK_CAPACITY_ESTIMATE:I = 0x8

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist PHYSICAL_CHANNEL_CONFIG:I = 0x10

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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    nop

    .line 72
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 74
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_17

    .line 73
    :cond_16
    const/4 v2, 0x0

    .line 77
    :goto_17
    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_23

    .line 78
    const-string v1, "SIGNAL_STRENGTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v2, v2, 0x1

    .line 81
    :cond_23
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2f

    .line 82
    const-string v1, "FULL_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v2, v2, 0x2

    .line 85
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 86
    const-string v1, "DATA_CALL_DORMANCY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v2, v2, 0x4

    .line 89
    :cond_3b
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_48

    .line 90
    const-string v1, "LINK_CAPACITY_ESTIMATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v2, v2, 0x8

    .line 93
    :cond_48
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_55

    .line 94
    const-string v1, "PHYSICAL_CHANNEL_CONFIG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v2, v2, 0x10

    .line 97
    :cond_55
    if-eq p0, v2, :cond_73

    .line 98
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

    .line 100
    :cond_73
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 45
    if-nez p0, :cond_5

    .line 46
    const-string p0, "NONE"

    return-object p0

    .line 48
    :cond_5
    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    .line 49
    const-string p0, "ALL"

    return-object p0

    .line 51
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 52
    const-string p0, "SIGNAL_STRENGTH"

    return-object p0

    .line 54
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 55
    const-string p0, "FULL_NETWORK_STATE"

    return-object p0

    .line 57
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 58
    const-string p0, "DATA_CALL_DORMANCY_CHANGED"

    return-object p0

    .line 60
    :cond_1d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_24

    .line 61
    const-string p0, "LINK_CAPACITY_ESTIMATE"

    return-object p0

    .line 63
    :cond_24
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2b

    .line 64
    const-string p0, "PHYSICAL_CHANNEL_CONFIG"

    return-object p0

    .line 66
    :cond_2b
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
