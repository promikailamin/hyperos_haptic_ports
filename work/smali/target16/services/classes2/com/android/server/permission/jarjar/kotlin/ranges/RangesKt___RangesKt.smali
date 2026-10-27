.class public abstract Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;
.super Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt__RangesKt;
.source "_Ranges.kt"


# direct methods
.method public static coerceAtLeast(II)I
    .registers 2

    .line 0
    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    return p0
.end method

.method public static coerceAtMost(II)I
    .registers 2

    .line 0
    if-le p0, p1, :cond_3

    return p1

    :cond_3
    return p0
.end method

.method public static coerceAtMost(JJ)J
    .registers 5

    .line 0
    cmp-long v0, p0, p2

    if-lez v0, :cond_5

    return-wide p2

    :cond_5
    return-wide p0
.end method
