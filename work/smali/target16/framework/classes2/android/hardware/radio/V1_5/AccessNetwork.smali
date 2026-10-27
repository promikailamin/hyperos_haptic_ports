.class public final Landroid/hardware/radio/V1_5/AccessNetwork;
.super Ljava/lang/Object;
.source "AccessNetwork.java"


# static fields
.field public static final blacklist CDMA2000:I = 0x4

.field public static final blacklist EUTRAN:I = 0x3

.field public static final blacklist GERAN:I = 0x1

.field public static final blacklist IWLAN:I = 0x5

.field public static final blacklist NGRAN:I = 0x6

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist UTRAN:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    nop

    .line 62
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 63
    const-string v1, "GERAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_12

    .line 62
    :cond_11
    const/4 v2, 0x0

    .line 66
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 67
    const-string v1, "UTRAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    or-int/lit8 v2, v2, 0x2

    .line 70
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    .line 71
    const-string v1, "EUTRAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    move v2, v3

    .line 74
    :cond_29
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    .line 75
    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    or-int/lit8 v2, v2, 0x4

    .line 78
    :cond_35
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_41

    .line 79
    const-string v1, "IWLAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    or-int/lit8 v2, v2, 0x5

    .line 82
    :cond_41
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    .line 84
    const-string v1, "NGRAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    or-int/lit8 v2, v2, 0x6

    .line 87
    :cond_52
    if-eq p0, v2, :cond_70

    .line 88
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

    .line 90
    :cond_70
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 35
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 36
    const-string p0, "GERAN"

    return-object p0

    .line 38
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 39
    const-string p0, "UTRAN"

    return-object p0

    .line 41
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 42
    const-string p0, "EUTRAN"

    return-object p0

    .line 44
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 45
    const-string p0, "CDMA2000"

    return-object p0

    .line 47
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 48
    const-string p0, "IWLAN"

    return-object p0

    .line 50
    :cond_1e
    if-nez p0, :cond_23

    .line 51
    const-string p0, "UNKNOWN"

    return-object p0

    .line 53
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 54
    const-string p0, "NGRAN"

    return-object p0

    .line 56
    :cond_29
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
