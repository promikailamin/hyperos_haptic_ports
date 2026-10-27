.class public Lcom/android/internal/widget/LinearSmoothScroller;
.super Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MILLISECONDS_PER_INCH:F = 25.0f

.field public static final blacklist SNAP_TO_ANY:I = 0x0

.field public static final blacklist SNAP_TO_END:I = 0x1

.field public static final blacklist SNAP_TO_START:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final blacklist TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final blacklist TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final blacklist MILLISECONDS_PER_PX:F

.field protected final blacklist mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected blacklist mInterimTargetDx:I

.field protected blacklist mInterimTargetDy:I

.field protected final blacklist mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected blacklist mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 83
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 97
    return-void
.end method

.method private blacklist clampApplyScroll(II)I
    .registers 3

    .line 254
    nop

    .line 255
    sub-int p2, p1, p2

    .line 256
    mul-int/2addr p1, p2

    if-gtz p1, :cond_8

    .line 257
    const/4 p1, 0x0

    return p1

    .line 259
    :cond_8
    return p2
.end method


# virtual methods
.method public blacklist calculateDtToFit(IIIII)I
    .registers 6

    .line 268
    packed-switch p5, :pswitch_data_1a

    .line 284
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :pswitch_c
    sub-int/2addr p4, p2

    return p4

    .line 274
    :pswitch_e
    sub-int/2addr p3, p1

    .line 275
    if-lez p3, :cond_12

    .line 276
    return p3

    .line 278
    :cond_12
    sub-int/2addr p4, p2

    .line 279
    if-gez p4, :cond_16

    .line 280
    return p4

    .line 287
    :cond_16
    const/4 p1, 0x0

    return p1

    .line 270
    :pswitch_18
    sub-int/2addr p3, p1

    return p3

    :pswitch_data_1a
    .packed-switch -0x1
        :pswitch_18
        :pswitch_e
        :pswitch_c
    .end packed-switch
.end method

.method public blacklist calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 13

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_39

    .line 331
    :cond_d
    nop

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 333
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v5, v2, v3

    .line 334
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v6, p1, v1

    .line 335
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v7

    .line 336
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    sub-int v8, p1, v0

    .line 337
    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p1

    return p1

    .line 329
    :cond_39
    :goto_39
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 13

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_39

    .line 306
    :cond_d
    nop

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 308
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v5, v2, v3

    .line 309
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v6, p1, v1

    .line 310
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    .line 311
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    sub-int v8, p1, v0

    .line 312
    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p1

    return p1

    .line 304
    :cond_39
    :goto_39
    const/4 p1, 0x0

    return p1
.end method

.method protected blacklist calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 3

    .line 162
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected blacklist calculateTimeForDeceleration(I)I
    .registers 6

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected blacklist calculateTimeForScrolling(I)I
    .registers 4

    .line 193
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public blacklist computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 4

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 353
    instance-of v1, v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_f

    .line 354
    check-cast v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 355
    invoke-interface {v0, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 354
    return-object p1

    .line 357
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 358
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    const-string v0, "LinearSmoothScroller"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 p1, 0x0

    return-object p1
.end method

.method protected blacklist getHorizontalSnapPreference()I
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    goto :goto_1a

    .line 207
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_1b

    :cond_18
    const/4 v0, -0x1

    goto :goto_1b

    .line 206
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method protected blacklist getVerticalSnapPreference()I
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    goto :goto_1a

    .line 221
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_1b

    :cond_18
    const/4 v0, -0x1

    goto :goto_1b

    .line 220
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method protected blacklist onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 5

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getChildCount()I

    move-result p3

    if-nez p3, :cond_a

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->stop()V

    .line 128
    return-void

    .line 136
    :cond_a
    iget p3, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, p3, p1}, Lcom/android/internal/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 137
    iget p1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 139
    iget p1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez p1, :cond_25

    iget p1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez p1, :cond_25

    .line 140
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/LinearSmoothScroller;->updateActionForInterimTarget(Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    .line 143
    :cond_25
    return-void
.end method

.method protected blacklist onStart()V
    .registers 1

    .line 105
    return-void
.end method

.method protected blacklist onStop()V
    .registers 2

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 152
    return-void
.end method

.method protected blacklist onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    .line 114
    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    .line 116
    if-lez v0, :cond_28

    .line 117
    neg-int p2, p2

    neg-int p1, p1

    iget-object v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 119
    :cond_28
    return-void
.end method

.method protected blacklist updateActionForInterimTarget(Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_48

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_48

    .line 239
    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 240
    iput-object v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 242
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 243
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 244
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    .line 248
    iget v1, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/internal/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 251
    return-void

    .line 234
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v0

    .line 235
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearSmoothScroller;->stop()V

    .line 237
    return-void
.end method
