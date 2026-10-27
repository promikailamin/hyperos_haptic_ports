.class public final Landroid/hardware/camera2/utils/HashCodeHelpers;
.super Ljava/lang/Object;
.source "HashCodeHelpers.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist hashCode([F)I
    .registers 6

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 69
    return v0

    .line 72
    :cond_4
    nop

    .line 73
    array-length v1, p0

    const/4 v2, 0x1

    :goto_7
    if-ge v0, v1, :cond_17

    aget v3, p0, v0

    .line 74
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 75
    shl-int/lit8 v4, v2, 0x5

    sub-int/2addr v4, v2

    xor-int v2, v4, v3

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 78
    :cond_17
    return v2
.end method

.method public static varargs greylist-max-r hashCode([I)I
    .registers 6

    .line 38
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 39
    return v0

    .line 49
    :cond_4
    nop

    .line 50
    array-length v1, p0

    const/4 v2, 0x1

    :goto_7
    if-ge v0, v1, :cond_13

    aget v3, p0, v0

    .line 52
    shl-int/lit8 v4, v2, 0x5

    sub-int/2addr v4, v2

    xor-int v2, v4, v3

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 55
    :cond_13
    return v2
.end method

.method public static varargs blacklist hashCodeGeneric([Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 92
    return v0

    .line 95
    :cond_4
    nop

    .line 96
    array-length v1, p0

    const/4 v2, 0x1

    move v3, v0

    :goto_8
    if-ge v3, v1, :cond_1c

    aget-object v4, p0, v3

    .line 97
    if-nez v4, :cond_10

    move v4, v0

    goto :goto_14

    :cond_10
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 98
    :goto_14
    shl-int/lit8 v5, v2, 0x5

    sub-int/2addr v5, v2

    xor-int v2, v5, v4

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 101
    :cond_1c
    return v2
.end method
