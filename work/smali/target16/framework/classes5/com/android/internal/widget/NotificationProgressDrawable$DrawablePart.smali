.class public abstract Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
.super Ljava/lang/Object;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawablePart"
.end annotation


# instance fields
.field protected final blacklist mColor:I

.field protected blacklist mEnd:F

.field protected blacklist mStart:F


# direct methods
.method protected constructor blacklist <init>(FFI)V
    .registers 4

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    .line 438
    iput p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    .line 439
    iput p3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    .line 440
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 470
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 472
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 474
    :cond_12
    check-cast p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 475
    iget v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1f

    return v1

    .line 476
    :cond_1f
    iget v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2a

    return v1

    .line 477
    :cond_2a
    iget v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    iget p1, p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    if-ne v2, p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0

    .line 472
    :cond_33
    :goto_33
    return v1
.end method

.method public blacklist getColor()I
    .registers 2

    .line 464
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    return v0
.end method

.method public blacklist getEnd()F
    .registers 2

    .line 451
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    return v0
.end method

.method public blacklist getStart()F
    .registers 2

    .line 443
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    return v0
.end method

.method public blacklist getWidth()F
    .registers 3

    .line 460
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 482
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setEnd(F)V
    .registers 2

    .line 455
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    .line 456
    return-void
.end method

.method public blacklist setStart(F)V
    .registers 2

    .line 447
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    .line 448
    return-void
.end method
