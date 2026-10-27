.class public final Landroid/hardware/radio/V1_0/RegState;
.super Ljava/lang/Object;
.source "RegState.java"


# static fields
.field public static final blacklist NOT_REG_MT_NOT_SEARCHING_OP:I = 0x0

.field public static final blacklist NOT_REG_MT_NOT_SEARCHING_OP_EM:I = 0xa

.field public static final blacklist NOT_REG_MT_SEARCHING_OP:I = 0x2

.field public static final blacklist NOT_REG_MT_SEARCHING_OP_EM:I = 0xc

.field public static final blacklist REG_DENIED:I = 0x3

.field public static final blacklist REG_DENIED_EM:I = 0xd

.field public static final blacklist REG_HOME:I = 0x1

.field public static final blacklist REG_ROAMING:I = 0x5

.field public static final blacklist UNKNOWN:I = 0x4

.field public static final blacklist UNKNOWN_EM:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    nop

    .line 52
    const-string v1, "NOT_REG_MT_NOT_SEARCHING_OP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 54
    const-string v1, "REG_HOME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_17

    .line 53
    :cond_16
    const/4 v2, 0x0

    .line 57
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 58
    const-string v1, "NOT_REG_MT_SEARCHING_OP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v2, v2, 0x2

    .line 61
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 62
    const-string v1, "REG_DENIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    move v2, v3

    .line 65
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 66
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v2, v2, 0x4

    .line 69
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 70
    const-string v1, "REG_ROAMING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v2, v2, 0x5

    .line 73
    :cond_46
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_53

    .line 74
    const-string v1, "NOT_REG_MT_NOT_SEARCHING_OP_EM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v2, v2, 0xa

    .line 77
    :cond_53
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_60

    .line 78
    const-string v1, "NOT_REG_MT_SEARCHING_OP_EM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v2, v2, 0xc

    .line 81
    :cond_60
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_6d

    .line 82
    const-string v1, "REG_DENIED_EM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v2, v2, 0xd

    .line 85
    :cond_6d
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_7a

    .line 86
    const-string v1, "UNKNOWN_EM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v2, v2, 0xe

    .line 89
    :cond_7a
    if-eq p0, v2, :cond_98

    .line 90
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

    .line 92
    :cond_98
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 16
    if-nez p0, :cond_5

    .line 17
    const-string p0, "NOT_REG_MT_NOT_SEARCHING_OP"

    return-object p0

    .line 19
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 20
    const-string p0, "REG_HOME"

    return-object p0

    .line 22
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 23
    const-string p0, "NOT_REG_MT_SEARCHING_OP"

    return-object p0

    .line 25
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 26
    const-string p0, "REG_DENIED"

    return-object p0

    .line 28
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 29
    const-string p0, "UNKNOWN"

    return-object p0

    .line 31
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 32
    const-string p0, "REG_ROAMING"

    return-object p0

    .line 34
    :cond_23
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2a

    .line 35
    const-string p0, "NOT_REG_MT_NOT_SEARCHING_OP_EM"

    return-object p0

    .line 37
    :cond_2a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_31

    .line 38
    const-string p0, "NOT_REG_MT_SEARCHING_OP_EM"

    return-object p0

    .line 40
    :cond_31
    const/16 v0, 0xd

    if-ne p0, v0, :cond_38

    .line 41
    const-string p0, "REG_DENIED_EM"

    return-object p0

    .line 43
    :cond_38
    const/16 v0, 0xe

    if-ne p0, v0, :cond_3f

    .line 44
    const-string p0, "UNKNOWN_EM"

    return-object p0

    .line 46
    :cond_3f
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
