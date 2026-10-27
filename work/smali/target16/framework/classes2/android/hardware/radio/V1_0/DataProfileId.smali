.class public final Landroid/hardware/radio/V1_0/DataProfileId;
.super Ljava/lang/Object;
.source "DataProfileId.java"


# static fields
.field public static final blacklist CBS:I = 0x4

.field public static final blacklist DEFAULT:I = 0x0

.field public static final blacklist FOTA:I = 0x3

.field public static final blacklist IMS:I = 0x2

.field public static final blacklist INVALID:I = -0x1

.field public static final blacklist OEM_BASE:I = 0x3e8

.field public static final blacklist TETHERED:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    nop

    .line 40
    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 42
    const-string v1, "TETHERED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_17

    .line 41
    :cond_16
    const/4 v2, 0x0

    .line 45
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 46
    const-string v1, "IMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v2, v2, 0x2

    .line 49
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 50
    const-string v1, "FOTA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    move v2, v3

    .line 53
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 54
    const-string v1, "CBS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v2, v2, 0x4

    .line 57
    :cond_3a
    and-int/lit16 v1, p0, 0x3e8

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_47

    .line 58
    const-string v1, "OEM_BASE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit16 v2, v2, 0x3e8

    .line 61
    :cond_47
    and-int/lit8 v1, p0, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_52

    .line 62
    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    move v2, v3

    .line 65
    :cond_52
    if-eq p0, v2, :cond_70

    .line 66
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

    .line 68
    :cond_70
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 13
    if-nez p0, :cond_5

    .line 14
    const-string p0, "DEFAULT"

    return-object p0

    .line 16
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 17
    const-string p0, "TETHERED"

    return-object p0

    .line 19
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 20
    const-string p0, "IMS"

    return-object p0

    .line 22
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 23
    const-string p0, "FOTA"

    return-object p0

    .line 25
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 26
    const-string p0, "CBS"

    return-object p0

    .line 28
    :cond_1d
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_24

    .line 29
    const-string p0, "OEM_BASE"

    return-object p0

    .line 31
    :cond_24
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2a

    .line 32
    const-string p0, "INVALID"

    return-object p0

    .line 34
    :cond_2a
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
