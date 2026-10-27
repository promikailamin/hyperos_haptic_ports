.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# static fields
.field private static final greylist-max-o INVALID_STROKE_ID:I = -0x1

.field static greylist-max-o sIdCounter:I


# instance fields
.field greylist-max-o mContinued:Z

.field greylist-max-o mContinuedStrokeId:I

.field greylist-max-o mEndTime:J

.field greylist-max-o mId:I

.field greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mPathMeasure:Landroid/graphics/PathMeasure;

.field greylist-max-o mStartTime:J

.field greylist-max-o mTapLocation:[F

.field private greylist-max-o mTimeToLengthConversion:F


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Path;JJ)V
    .registers 13

    .line 264
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    .line 265
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;JJZ)V
    .registers 12

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 283
    iput-boolean p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    .line 284
    const-wide/16 v0, 0x0

    cmp-long p6, p4, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p6, :cond_12

    move p6, v2

    goto :goto_13

    :cond_12
    move p6, v3

    :goto_13
    const-string v4, "Duration must be positive"

    invoke-static {p6, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 285
    cmp-long p6, p2, v0

    if-ltz p6, :cond_1e

    move p6, v2

    goto :goto_1f

    :cond_1e
    move p6, v3

    :goto_1f
    const-string v0, "Start time must not be negative"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p6

    xor-int/2addr p6, v2

    const-string v0, "Path is empty"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 287
    new-instance p6, Landroid/graphics/RectF;

    invoke-direct {p6}, Landroid/graphics/RectF;-><init>()V

    .line 288
    invoke-virtual {p1, p6, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 289
    iget v0, p6, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_50

    iget v0, p6, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_50

    iget v0, p6, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_50

    iget p6, p6, Landroid/graphics/RectF;->left:F

    cmpl-float p6, p6, v1

    if-ltz p6, :cond_50

    goto :goto_51

    :cond_50
    move v2, v3

    :goto_51
    const-string p6, "Path bounds must not be negative"

    invoke-static {v2, p6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 292
    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    .line 293
    new-instance p6, Landroid/graphics/PathMeasure;

    invoke-direct {p6, p1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 294
    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p6

    cmpl-float p6, p6, v1

    if-nez p6, :cond_88

    .line 296
    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 297
    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p6, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    .line 299
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1, p6, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 300
    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p6, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 302
    :cond_88
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result p1

    if-nez p1, :cond_ad

    .line 309
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p6, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 310
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 311
    add-long/2addr p2, p4

    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 312
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result p1

    long-to-float p2, p4

    div-float/2addr p1, p2

    iput p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    .line 313
    sget p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    iput p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    .line 314
    return-void

    .line 303
    :cond_ad
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Path has more than one contour"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist continueStroke(Landroid/graphics/Path;JJZ)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .registers 15

    .line 370
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    if-eqz v0, :cond_12

    .line 374
    new-instance v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    .line 376
    iget p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    iput p1, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 377
    return-object v1

    .line 371
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only strokes marked willContinue can be continued"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getContinuedStrokeId()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return v0
.end method

.method public whitelist getDuration()J
    .registers 5

    .line 340
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 351
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return v0
.end method

.method greylist-max-o getLength()F
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    return v0
.end method

.method public whitelist getPath()Landroid/graphics/Path;
    .registers 3

    .line 322
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method greylist-max-o getPosForTime(J[F)Z
    .registers 8

    .line 405
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    if-eqz v0, :cond_13

    .line 406
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    aput p1, p3, p2

    .line 407
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 p2, 0x1

    aget p1, p1, p2

    aput p1, p3, p2

    .line 408
    return p2

    .line 410
    :cond_13
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 412
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result p2

    invoke-virtual {p1, p2, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result p1

    return p1

    .line 414
    :cond_25
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    mul-float/2addr v0, p1

    .line 415
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v0, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result p1

    return p1
.end method

.method public whitelist getStartTime()J
    .registers 3

    .line 331
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    return-wide v0
.end method

.method greylist-max-o hasPointForTime(J)Z
    .registers 5

    .line 419
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_e

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist willContinue()Z
    .registers 2

    .line 386
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    return v0
.end method
