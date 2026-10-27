.class public final Landroid/hardware/radio/V1_2/AccessNetwork;
.super Ljava/lang/Object;
.source "AccessNetwork.java"


# static fields
.field public static final blacklist CDMA2000:I = 0x4

.field public static final blacklist EUTRAN:I = 0x3

.field public static final blacklist GERAN:I = 0x1

.field public static final blacklist IWLAN:I = 0x5

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

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    nop

    .line 47
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 48
    const-string v1, "GERAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_12

    .line 47
    :cond_11
    const/4 v2, 0x0

    .line 51
    :goto_12
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 52
    const-string v1, "UTRAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    or-int/lit8 v2, v2, 0x2

    .line 55
    :cond_1e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    .line 56
    const-string v1, "EUTRAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    move v2, v3

    .line 59
    :cond_29
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    .line 60
    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    or-int/lit8 v2, v2, 0x4

    .line 63
    :cond_35
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_41

    .line 64
    const-string v1, "IWLAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v2, v2, 0x5

    .line 67
    :cond_41
    if-eq p0, v2, :cond_5f

    .line 68
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

    .line 70
    :cond_5f
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 26
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 27
    const-string p0, "GERAN"

    return-object p0

    .line 29
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 30
    const-string p0, "UTRAN"

    return-object p0

    .line 32
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 33
    const-string p0, "EUTRAN"

    return-object p0

    .line 35
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 36
    const-string p0, "CDMA2000"

    return-object p0

    .line 38
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 39
    const-string p0, "IWLAN"

    return-object p0

    .line 41
    :cond_1e
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
