.class public final Landroid/hardware/radio/V1_0/CellInfoType;
.super Ljava/lang/Object;
.source "CellInfoType.java"


# static fields
.field public static final blacklist CDMA:I = 0x2

.field public static final blacklist GSM:I = 0x1

.field public static final blacklist LTE:I = 0x3

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist TD_SCDMA:I = 0x5

.field public static final blacklist WCDMA:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    nop

    .line 36
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 38
    const-string v1, "GSM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_17

    .line 37
    :cond_16
    const/4 v2, 0x0

    .line 41
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    .line 42
    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    or-int/lit8 v2, v2, 0x2

    .line 45
    :cond_23
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    .line 46
    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    move v2, v3

    .line 49
    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    .line 50
    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v2, v2, 0x4

    .line 53
    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    .line 54
    const-string v1, "TD_SCDMA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v2, v2, 0x5

    .line 57
    :cond_46
    if-eq p0, v2, :cond_64

    .line 58
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

    .line 60
    :cond_64
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 12
    if-nez p0, :cond_5

    .line 13
    const-string p0, "NONE"

    return-object p0

    .line 15
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 16
    const-string p0, "GSM"

    return-object p0

    .line 18
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 19
    const-string p0, "CDMA"

    return-object p0

    .line 21
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 22
    const-string p0, "LTE"

    return-object p0

    .line 24
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 25
    const-string p0, "WCDMA"

    return-object p0

    .line 27
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 28
    const-string p0, "TD_SCDMA"

    return-object p0

    .line 30
    :cond_23
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
