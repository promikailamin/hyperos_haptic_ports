.class public Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;
.super Landroid/view/View;
.source "AutoclickIndicatorView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAnimationDuration:I

.field public final mAnimator:Landroid/animation/ValueAnimator;

.field public final mColor:I

.field public mIgnoreMinorCursorMovement:Z

.field public mMouseX:F

.field public mMouseY:F

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPointPaint:Landroid/graphics/Paint;

.field public final mPointSizePx:F

.field public final mPointStrokeWidthPx:F

.field public mRadius:I

.field public final mRingRect:Landroid/graphics/RectF;

.field public mSnapshotX:F

.field public mSnapshotY:F

.field public mSweepAngle:F

.field public showIndicator:Z


# direct methods
.method public static synthetic $r8$lambda$XCCBzXrVTtNEH0J0yQGwsCL9wM0(Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPaint(Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x10602c6

    .line 57
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mColor:I

    const/16 v1, 0x3c

    .line 60
    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    const/16 v1, 0x3e8

    .line 84
    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimationDuration:I

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mIgnoreMinorCursorMovement:Z

    .line 94
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 97
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, p1

    .line 101
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointSizePx:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    .line 102
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointStrokeWidthPx:F

    .line 105
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x2

    .line 108
    new-array p1, p1, [F

    fill-array-data p1, :array_76

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 109
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRingRect:Landroid/graphics/RectF;

    return-void

    :array_76
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public clearIndicator()V
    .registers 2

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getAnimatorForTesting()Landroid/animation/ValueAnimator;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .line 126
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7df

    .line 127
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x118

    .line 128
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 132
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x600010

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 135
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v0, 0x3

    .line 136
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, -0x3

    .line 137
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 138
    const-class v0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    return-object p0
.end method

.method public getRadiusForTesting()I
    .registers 1

    .line 219
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    return p0
.end method

.method public final synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 113
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSweepAngle:F

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 191
    new-instance p1, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    if-eqz v0, :cond_66

    .line 149
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSnapshotX:F

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    iget v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSnapshotY:F

    int-to-float v5, v2

    sub-float v5, v4, v5

    int-to-float v6, v2

    add-float/2addr v1, v6

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 154
    iget-object v7, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRingRect:Landroid/graphics/RectF;

    iget v9, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSweepAngle:F

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 160
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mIgnoreMinorCursorMovement:Z

    if-eqz p1, :cond_32

    .line 161
    iget p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSnapshotX:F

    .line 162
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSnapshotY:F

    goto :goto_36

    .line 164
    :cond_32
    iget p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mMouseX:F

    .line 165
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mMouseY:F

    .line 167
    :goto_36
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointSizePx:F

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointStrokeWidthPx:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointSizePx:F

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_66
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 183
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 184
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 186
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public redrawIndicator()V
    .registers 2

    .line 228
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mMouseX:F

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSnapshotX:F

    .line 229
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mMouseY:F

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSnapshotY:F

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 232
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 4

    const/16 v0, 0x32

    .line 242
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimationDuration:I

    .line 243
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setCoordination(FF)V
    .registers 4

    .line 201
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mMouseX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mMouseY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_d

    goto :goto_18

    .line 204
    :cond_d
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mMouseX:F

    .line 205
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mMouseY:F

    .line 208
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    if-eqz p1, :cond_18

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_18
    :goto_18
    return-void
.end method

.method public setIgnoreMinorCursorMovement(Z)V
    .registers 2

    .line 247
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mIgnoreMinorCursorMovement:Z

    return-void
.end method

.method public setRadius(I)V
    .registers 2

    .line 214
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    return-void
.end method
