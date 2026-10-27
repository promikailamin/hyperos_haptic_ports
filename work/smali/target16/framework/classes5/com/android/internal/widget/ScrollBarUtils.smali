.class public Lcom/android/internal/widget/ScrollBarUtils;
.super Ljava/lang/Object;
.source "ScrollBarUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-r getThumbLength(IIII)I
    .registers 4

    .line 27
    mul-int/lit8 p1, p1, 0x2

    .line 28
    int-to-float p0, p0

    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p2, p3

    div-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 29
    if-ge p0, p1, :cond_e

    .line 30
    goto :goto_f

    .line 29
    :cond_e
    move p1, p0

    .line 32
    :goto_f
    return p1
.end method

.method public static blacklist getThumbOffset(IIIII)I
    .registers 5

    .line 37
    sub-int/2addr p0, p1

    int-to-float p1, p0

    int-to-float p4, p4

    mul-float/2addr p1, p4

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 38
    if-le p1, p0, :cond_e

    .line 39
    goto :goto_f

    .line 38
    :cond_e
    move p0, p1

    .line 41
    :goto_f
    return p0
.end method
