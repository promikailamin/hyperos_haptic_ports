.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$InputMode;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/internal/widget/LockPatternView$Cell;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;,
        Lcom/android/internal/widget/LockPatternView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_MAX_VALUE:I = 0xff

.field private static final blacklist ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final blacklist ASPECT_LOCK_WIDTH:I = 0x1

.field private static final blacklist ASPECT_SQUARE:I = 0x0

.field private static final blacklist CELL_ACTIVATE:I = 0x0

.field private static final blacklist CELL_DEACTIVATE:I = 0x1

.field public static final blacklist DEBUG_A11Y:Z = false

.field private static final blacklist DOT_ACTIVATION_DURATION_MILLIS:I = 0x32

.field private static final blacklist DOT_RADIUS_DECREASE_DURATION_MILLIS:I = 0xc0

.field private static final blacklist DOT_RADIUS_INCREASE_DURATION_MILLIS:I = 0x60

.field private static final blacklist DRAG_THRESHHOLD:F = 0.0f

.field private static final blacklist LINE_END_ANIMATION_DURATION_MILLIS:I = 0x32

.field private static final blacklist MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final blacklist MIN_DOT_HIT_FACTOR:F = 0.2f

.field private static final blacklist PROFILE_DRAWING:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternView"

.field public static final blacklist VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field private blacklist mAnimatingPeriodStart:J

.field private blacklist mAspect:I

.field private blacklist mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field private blacklist mClickInputSupported:Z

.field private final blacklist mCurrentPath:Landroid/graphics/Path;

.field private blacklist mDotActivatedColor:I

.field private blacklist mDotColor:I

.field private final blacklist mDotHitFactor:F

.field private blacklist mDotHitMaxRadius:F

.field private blacklist mDotHitRadius:F

.field private blacklist mDotSize:I

.field private blacklist mDotSizeActivated:I

.field private blacklist mDrawingProfilingStarted:Z

.field private blacklist mEnlargeVertex:Z

.field private blacklist mErrorColor:I

.field private final blacklist mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private blacklist mExternalHapticsPlayer:Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

.field private blacklist mFadeAnimationAlpha:I

.field private blacklist mFadeClear:Z

.field private final blacklist mFadeOutGradientShader:Landroid/graphics/LinearGradient;

.field private blacklist mFadePattern:Z

.field private final blacklist mFadePatternAnimationDelayMs:I

.field private final blacklist mFadePatternAnimationDurationMs:I

.field private final blacklist mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mInProgressX:F

.field private blacklist mInProgressY:F

.field private greylist mInStealthMode:Z

.field private blacklist mInputEnabled:Z

.field private blacklist mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

.field private final blacklist mInvalidate:Landroid/graphics/Rect;

.field private blacklist mKeepDotActivated:Z

.field private final blacklist mLineFadeOutAnimationDelayMs:I

.field private final blacklist mLineFadeOutAnimationDurationMs:I

.field private blacklist mLineFadeStart:[J

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private blacklist mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final greylist mPaint:Landroid/graphics/Paint;

.field private final greylist mPathPaint:Landroid/graphics/Paint;

.field private blacklist mPathWidth:I

.field private greylist mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private blacklist mPatternDrawLookup:[[Z

.field private greylist mPatternInProgress:Z

.field private final blacklist mPatternPath:Landroid/graphics/Path;

.field private blacklist mPatternSize:B

.field private blacklist mRegularColor:I

.field private blacklist mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mShowErrorPath:Z

.field private greylist mSquareHeight:F

.field private greylist mSquareWidth:F

.field private final blacklist mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mSuccessColor:I

.field private final blacklist mTmpInvalidateRect:Landroid/graphics/Rect;

.field private blacklist mUseLockPatternDrawable:Z

.field private blacklist mVisibleDots:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1p7c1z0e6_J5Y9SXs1wkVl8Hzig(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->lambda$createDotActivationColorAnimation$1(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JZpXCsCkFuuVqh7jRi9sEhjBiQU(Lcom/android/internal/widget/LockPatternView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->lambda$createLineDisappearingAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MFqzMAhlEv8Tvsad0E1aJPdwdrM(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->lambda$createDotRadiusAnimation$4(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RPYxufAqLTe9AmQCY_DGPjKv9sU(Lcom/android/internal/widget/LockPatternView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->lambda$createFadePatternAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$t5G2IjsRpY6s0HgwZGOaUwLZ-fY(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/LockPatternView;->lambda$createLineEndAnimation$2(Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDotHitRadius(Lcom/android/internal/widget/LockPatternView;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDotSize(Lcom/android/internal/widget/LockPatternView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPatternDrawLookup(Lcom/android/internal/widget/LockPatternView;)[[Z
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnimationAlpha(Lcom/android/internal/widget/LockPatternView;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeClear(Lcom/android/internal/widget/LockPatternView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectCellHit(Lcom/android/internal/widget/LockPatternView;FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCenterXForColumn(Lcom/android/internal/widget/LockPatternView;I)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCenterYForRow(Lcom/android/internal/widget/LockPatternView;I)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetPattern(Lcom/android/internal/widget/LockPatternView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 399
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 20

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 105
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 117
    const/4 v3, 0x3

    iput-byte v3, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    iget-byte v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    iget-byte v6, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    mul-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 139
    iget-byte v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    iget-byte v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    aput v4, v7, v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 146
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 147
    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 150
    iget-byte v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    iget-byte v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    mul-int/2addr v4, v5

    new-array v4, v4, [J

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    .line 152
    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 154
    iput-boolean v8, v0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 155
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 157
    sget-object v4, Lcom/android/internal/widget/LockPatternView$InputMode;->Swipe:Lcom/android/internal/widget/LockPatternView$InputMode;

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    .line 158
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mClickInputSupported:Z

    .line 159
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 161
    iput-boolean v8, v0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    .line 162
    iput-boolean v8, v0, Lcom/android/internal/widget/LockPatternView;->mVisibleDots:Z

    .line 163
    iput-boolean v8, v0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    .line 165
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    .line 166
    const/16 v4, 0xff

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    .line 167
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    .line 177
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 178
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 179
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 405
    sget-object v4, Lcom/android/internal/R$styleable;->LockPatternView:[I

    const v5, 0x1120087

    const v7, 0x10304f6

    move-object/from16 v9, p2

    invoke-virtual {v1, v9, v4, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 408
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    const-string/jumbo v7, "square"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 411
    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_ba

    .line 412
    :cond_a2
    const-string v7, "lock_width"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 413
    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_ba

    .line 414
    :cond_ad
    const-string v7, "lock_height"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 415
    iput v6, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_ba

    .line 417
    :cond_b8
    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 420
    :goto_ba
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    .line 423
    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 424
    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 426
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 427
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    .line 428
    const/16 v5, 0x8

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 429
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    .line 430
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    invoke-virtual {v4, v8, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    .line 431
    const/4 v5, 0x5

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    .line 432
    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/widget/LockPatternView;->mEnlargeVertex:Z

    .line 434
    const/4 v3, 0x6

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 435
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 439
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 441
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105025d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    .line 442
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 444
    nop

    .line 445
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e01d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    .line 446
    nop

    .line 447
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e01d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    .line 449
    nop

    .line 450
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e01d2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDurationMs:I

    .line 451
    nop

    .line 452
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e01d1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDelayMs:I

    .line 454
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105025e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 455
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105025f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    .line 457
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x105025c

    invoke-virtual {v5, v7, v3, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 459
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mDotHitFactor:F

    .line 461
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x11102f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    .line 462
    iget-boolean v3, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v3, :cond_1cf

    .line 463
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10806ef

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 464
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10806ed

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    :cond_1cf
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 468
    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 470
    iget-byte v3, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    iget-byte v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    new-array v7, v6, [I

    aput v5, v7, v8

    aput v3, v7, v2

    const-class v3, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 471
    move v3, v2

    :goto_1ee
    iget-byte v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v3, v5, :cond_224

    .line 472
    move v5, v2

    :goto_1f3
    iget-byte v7, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v5, v7, :cond_221

    .line 473
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v7, v7, v3

    new-instance v8, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v8}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v8, v7, v5

    .line 474
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v7, v7, v3

    aget-object v7, v7, v5

    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/2addr v8, v6

    int-to-float v8, v8

    iput v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 475
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v7, v7, v3

    aget-object v7, v7, v5

    iput v3, v7, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 476
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v7, v7, v3

    aget-object v7, v7, v5

    iput v5, v7, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    .line 472
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f3

    .line 471
    :cond_221
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ee

    .line 480
    :cond_224
    nop

    .line 481
    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 482
    nop

    .line 483
    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 484
    nop

    .line 485
    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 486
    new-instance v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v1, v0, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 487
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 489
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 492
    new-instance v9, Landroid/graphics/LinearGradient;

    neg-int v2, v1

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    int-to-float v1, v1

    div-float v12, v1, v3

    const/4 v14, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    .line 496
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    return-void
.end method

.method private blacklist addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 5

    .line 1001
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1002
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_1b

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 1006
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    .line 1007
    return-void
.end method

.method private blacklist calculateLastSegmentAlpha(FFFF)F
    .registers 5

    .line 1785
    sub-float/2addr p1, p3

    .line 1786
    sub-float/2addr p2, p4

    .line 1787
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1788
    iget p2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float/2addr p1, p2

    .line 1789
    const p2, 0x3e99999a    # 0.3f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private blacklist cancelLineAnimations()V
    .registers 7

    .line 1461
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-byte v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v1, v2, :cond_33

    .line 1462
    move v2, v0

    :goto_7
    iget-byte v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v2, v3, :cond_30

    .line 1463
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 1464
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_2d

    .line 1465
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1466
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 1467
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 1468
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1469
    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 1470
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    .line 1462
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1461
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1474
    :cond_33
    return-void
.end method

.method private blacklist checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 4

    .line 1202
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p1

    .line 1203
    if-eqz p1, :cond_13

    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object p2, p2, v0

    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean p2, p2, v0

    if-nez p2, :cond_13

    .line 1204
    return-object p1

    .line 1206
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist clearPatternDrawLookup()V
    .registers 8

    .line 864
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-byte v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v1, v2, :cond_21

    .line 865
    move v2, v0

    :goto_7
    iget-byte v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v2, v3, :cond_1e

    .line 866
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aput-boolean v0, v3, v2

    .line 867
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    iget-byte v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 864
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 870
    :cond_21
    return-void
.end method

.method private blacklist createDotActivationColorAnimation(Lcom/android/internal/widget/LockPatternView$CellState;IZ)Landroid/animation/Animator;
    .registers 8

    .line 1102
    new-instance v0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 1108
    const/4 p1, 0x2

    new-array v1, p1, [F

    fill-array-data v1, :array_58

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1109
    new-array p1, p1, [F

    fill-array-data p1, :array_60

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1110
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1111
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1112
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1113
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1116
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1117
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1118
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1120
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v2, :cond_43

    if-nez p3, :cond_43

    .line 1121
    if-nez p2, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v1, p1

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_56

    .line 1124
    :cond_43
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    iget p3, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x64

    int-to-long p2, p2

    .line 1125
    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 1127
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1130
    :goto_56
    return-object v0

    nop

    :array_58
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_60
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist createDotRadiusAnimation(Lcom/android/internal/widget/LockPatternView$CellState;IZ)Landroid/animation/Animator;
    .registers 12

    .line 1164
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1165
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 1167
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 1173
    const/4 p1, 0x2

    new-array v3, p1, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    aput v2, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1174
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1175
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1176
    const-wide/16 v6, 0x60

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1178
    new-array v6, p1, [F

    aput v2, v6, v4

    aput v0, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1179
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1180
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1181
    const-wide/16 v1, 0xc0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1183
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1184
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v2, :cond_67

    .line 1185
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v2, :cond_61

    .line 1186
    if-eqz p3, :cond_59

    .line 1187
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v3, p1, v4

    aput-object v0, p1, v5

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_70

    .line 1189
    :cond_59
    if-nez p2, :cond_5c

    goto :goto_5d

    :cond_5c
    move-object v3, v0

    :goto_5d
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_70

    .line 1191
    :cond_61
    if-nez p2, :cond_70

    .line 1192
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_70

    .line 1195
    :cond_67
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v3, p1, v4

    aput-object v0, p1, v5

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1197
    :cond_70
    :goto_70
    return-object v1
.end method

.method private blacklist createFadePatternAnimation()Landroid/animation/Animator;
    .registers 4

    .line 1025
    const/16 v0, 0xff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1026
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1030
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1031
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDelayMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1032
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1033
    return-object v0
.end method

.method private blacklist createLineDisappearingAnimation()Landroid/animation/Animator;
    .registers 4

    .line 1156
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_20

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1157
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1158
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1159
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1160
    return-object v0

    nop

    :array_20
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist createLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)Landroid/animation/Animator;
    .registers 14

    .line 1139
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1140
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1146
    iget-object p1, v2, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1147
    const-wide/16 p1, 0x32

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1148
    return-object v0

    nop

    :array_24
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist deactivateLastCell()V
    .registers 3

    .line 1456
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1457
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;Z)V

    .line 1458
    return-void
.end method

.method private blacklist detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 10

    .line 955
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p1

    .line 956
    if-eqz p1, :cond_67

    .line 959
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 960
    nop

    .line 961
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_60

    .line 962
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 963
    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v2, p2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int/2addr v0, v2

    .line 964
    iget v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v3, p2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int/2addr v2, v3

    .line 966
    iget v3, p2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 967
    iget p2, p2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 969
    if-eqz v0, :cond_37

    if-eqz v2, :cond_37

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v4, v5, :cond_60

    .line 971
    :cond_37
    :goto_37
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 972
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v4

    add-int/2addr p2, v4

    .line 973
    iget v4, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-ne v3, v4, :cond_4a

    iget v4, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-ne p2, v4, :cond_4a

    goto :goto_60

    .line 974
    :cond_4a
    iget-byte v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    invoke-static {v3, p2, v4}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 975
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v6, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v5, v5, v6

    iget v6, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_5f

    .line 976
    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 978
    :cond_5f
    goto :goto_37

    .line 982
    :cond_60
    :goto_60
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 983
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/LockPatternView;->performHapticFeedback(II)Z

    .line 985
    return-object p1

    .line 987
    :cond_67
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 10

    .line 1212
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-byte v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v1, v2, :cond_46

    .line 1213
    move v2, v0

    :goto_7
    iget-byte v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v2, v3, :cond_43

    .line 1214
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 1215
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    .line 1218
    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mEnlargeVertex:Z

    if-eqz v5, :cond_29

    .line 1223
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->isVertex(II)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1224
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    mul-float/2addr v5, v6

    goto :goto_28

    .line 1225
    :cond_23
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    mul-float/2addr v5, v6

    :goto_28
    goto :goto_2e

    .line 1227
    :cond_29
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    mul-float/2addr v5, v6

    .line 1230
    :goto_2e
    sub-float v4, p1, v4

    mul-float/2addr v4, v4

    sub-float v3, p2, v3

    mul-float/2addr v3, v3

    add-float/2addr v4, v3

    cmpg-float v3, v4, v5

    if-gez v3, :cond_40

    .line 1232
    iget-byte p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    invoke-static {v1, v2, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p1

    return-object p1

    .line 1213
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1212
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1236
    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V
    .registers 11

    .line 1845
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v2, v2

    int-to-float v3, p2

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v3, v3

    add-int/lit8 p3, p3, 0x1

    int-to-float p3, p3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr p3, v4

    add-float/2addr v3, p3

    float-to-int p3, v3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v3, v3

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr p2, v4

    add-float/2addr v3, p2

    float-to-int p2, v3

    invoke-direct {v0, v1, v2, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1850
    iget p2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-float/2addr p4, p2

    .line 1853
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1854
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1855
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1856
    if-eqz p5, :cond_55

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p4, p2

    if-lez p2, :cond_4f

    goto :goto_55

    .line 1859
    :cond_4f
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5a

    .line 1857
    :cond_55
    :goto_55
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1861
    :goto_5a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1862
    return-void
.end method

.method private blacklist drawCircle(Landroid/graphics/Canvas;FFFZFF)V
    .registers 10

    .line 1826
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1827
    :goto_d
    iget-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v1, :cond_25

    if-nez v0, :cond_25

    .line 1828
    iget p5, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    invoke-static {p5, v0, p7}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p5

    .line 1830
    iget-object p7, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p7, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1831
    goto :goto_3c

    :cond_25
    iget-boolean p7, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-nez p7, :cond_33

    if-eqz p5, :cond_33

    .line 1832
    iget-object p5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    iget p7, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    invoke-virtual {p5, p7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3c

    .line 1834
    :cond_33
    iget-object p5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->getDotColor()I

    move-result p7

    invoke-virtual {p5, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1836
    :goto_3c
    iget-object p5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 p7, 0x437f0000    # 255.0f

    mul-float/2addr p6, p7

    float-to-int p6, p6

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1837
    iget-object p5, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1838
    return-void
.end method

.method private blacklist drawFadingAwayLineSegment(Landroid/graphics/Canvas;FFFFF)V
    .registers 15

    .line 1751
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p6

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1755
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1756
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1759
    mul-float v0, p4, p6

    mul-float v2, p2, v1

    add-float/2addr v0, v2

    .line 1760
    mul-float v2, p5, p6

    mul-float v3, p3, v1

    add-float/2addr v2, v3

    .line 1761
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1764
    sub-float/2addr p5, p3

    sub-float/2addr p4, p2

    div-float p2, p5, p4

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p2

    .line 1765
    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 1766
    const/4 p3, 0x0

    cmpg-float p3, p4, p3

    if-gez p3, :cond_39

    .line 1769
    const/high16 p3, 0x43340000    # 180.0f

    add-float/2addr p2, p3

    .line 1771
    :cond_39
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1774
    float-to-double p2, p4

    float-to-double p4, p5

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p2

    double-to-float p2, p2

    .line 1777
    neg-float p3, p2

    mul-float v3, p3, p6

    mul-float v5, p2, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1780
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1781
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1782
    return-void
.end method

.method private blacklist drawLineSegment(Landroid/graphics/Canvas;FFFFJJ)V
    .registers 17

    .line 1731
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1732
    :goto_d
    iget-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v1, :cond_38

    if-nez v0, :cond_38

    .line 1733
    sub-long p6, p8, p6

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p6, v0

    if-ltz v0, :cond_20

    .line 1736
    return-void

    .line 1739
    :cond_20
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    int-to-long v0, v0

    sub-long/2addr p6, v0

    long-to-float p6, p6

    iget p7, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    int-to-float p7, p7

    div-float/2addr p6, p7

    const/4 p7, 0x0

    invoke-static {p6, p7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1742
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView;->drawFadingAwayLineSegment(Landroid/graphics/Canvas;FFFFF)V

    goto :goto_49

    .line 1744
    :cond_38
    iget-object p6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 p7, 0xff

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1745
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1747
    :goto_49
    return-void
.end method

.method private blacklist getCenterXForColumn(I)F
    .registers 4

    .line 1570
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private blacklist getCenterYForRow(I)F
    .registers 4

    .line 1574
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private blacklist getCurrentColor(Z)I
    .registers 4

    .line 1804
    if-eqz p1, :cond_50

    iget-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_50

    :cond_c
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_16

    iget-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    if-eqz p1, :cond_50

    :cond_16
    iget-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz p1, :cond_1b

    goto :goto_50

    .line 1810
    :cond_1b
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_24

    .line 1812
    iget p1, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return p1

    .line 1813
    :cond_24
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq p1, v0, :cond_4d

    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_31

    goto :goto_4d

    .line 1817
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown display mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1815
    :cond_4d
    :goto_4d
    iget p1, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    return p1

    .line 1809
    :cond_50
    :goto_50
    iget p1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    return p1
.end method

.method private blacklist getDotColor()I
    .registers 3

    .line 1793
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v0, :cond_7

    .line 1795
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    return v0

    .line 1796
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_10

    .line 1798
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    .line 1800
    :cond_10
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    return v0
.end method

.method private blacklist handleActionCancel()V
    .registers 2

    .line 1510
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_e

    .line 1511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1512
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 1513
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 1521
    :cond_e
    return-void
.end method

.method private blacklist handleActionDown(Landroid/view/MotionEvent;)V
    .registers 9

    .line 1477
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 1478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1480
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 1481
    if-eqz v1, :cond_1d

    .line 1482
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1483
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1484
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    goto :goto_28

    .line 1485
    :cond_1d
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_28

    .line 1486
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1487
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 1489
    :cond_28
    :goto_28
    if-eqz v1, :cond_4b

    .line 1490
    iget v2, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 1491
    iget v1, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    .line 1493
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 1494
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    div-float/2addr v5, v4

    .line 1496
    sub-float v4, v2, v3

    float-to-int v4, v4

    sub-float v6, v1, v5

    float-to-int v6, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {p0, v4, v6, v2, v1}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    .line 1499
    :cond_4b
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1500
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1507
    return-void
.end method

.method private blacklist handleActionMouseUp(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1429
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_9

    .line 1430
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 1432
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1434
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1435
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p1

    .line 1436
    if-eqz p1, :cond_40

    .line 1437
    if-nez v1, :cond_2a

    .line 1438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1439
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1440
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 1442
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    .line 1443
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1444
    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1445
    iget p1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1453
    :cond_40
    return-void
.end method

.method private blacklist handleActionMove(Landroid/view/MotionEvent;)V
    .registers 15

    .line 1342
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v0, v0

    .line 1343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 1344
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1345
    nop

    .line 1346
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    add-int/lit8 v4, v1, 0x1

    if-ge v2, v4, :cond_cd

    .line 1347
    if-ge v2, v1, :cond_1a

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1348
    :goto_1e
    if-ge v2, v1, :cond_25

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    goto :goto_29

    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1349
    :goto_29
    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v6

    .line 1350
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1351
    const/4 v8, 0x1

    if-eqz v6, :cond_3e

    if-ne v7, v8, :cond_3e

    .line 1352
    invoke-direct {p0, v8}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1353
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 1356
    :cond_3e
    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1357
    iget v10, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1358
    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_57

    cmpl-float v9, v10, v11

    if-lez v9, :cond_58

    .line 1359
    :cond_57
    move v3, v8

    .line 1362
    :cond_58
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v8, :cond_c9

    if-lez v7, :cond_c9

    .line 1363
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1364
    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1365
    iget v8, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 1366
    iget v7, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 1369
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v0

    .line 1370
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v0

    .line 1371
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v8, v0

    .line 1372
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v0

    .line 1375
    if-eqz v6, :cond_b4

    .line 1376
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    .line 1377
    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v11, v10

    .line 1378
    iget v10, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 1379
    iget v6, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v6

    .line 1381
    sub-float v12, v10, v7

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1382
    add-float/2addr v10, v7

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1383
    sub-float v7, v6, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1384
    add-float/2addr v6, v11

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1388
    :cond_b4
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1389
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1388
    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1346
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 1392
    :cond_cd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1396
    if-eqz v3, :cond_ee

    .line 1397
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1398
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 1399
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1401
    :cond_ee
    return-void
.end method

.method private blacklist handleActionUp()V
    .registers 2

    .line 1405
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1406
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1407
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v0, :cond_14

    .line 1411
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->deactivateLastCell()V

    goto :goto_17

    .line 1415
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->cancelLineAnimations()V

    .line 1417
    :goto_17
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    .line 1418
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1426
    :cond_1d
    return-void
.end method

.method private blacklist isVertex(II)Z
    .registers 4

    .line 1240
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    if-eq p2, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic blacklist lambda$createDotActivationColorAnimation$1(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1104
    nop

    .line 1105
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    .line 1106
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1107
    return-void
.end method

.method private synthetic blacklist lambda$createDotRadiusAnimation$4(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1169
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 1170
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1171
    return-void
.end method

.method private synthetic blacklist lambda$createFadePatternAnimation$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1027
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    .line 1028
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1029
    return-void
.end method

.method private synthetic blacklist lambda$createLineDisappearingAnimation$3(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1157
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private synthetic blacklist lambda$createLineEndAnimation$2(Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V
    .registers 8

    .line 1141
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    .line 1142
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p6

    mul-float/2addr p2, v0

    mul-float/2addr p3, p6

    add-float/2addr p2, p3

    iput p2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1143
    mul-float/2addr v0, p4

    mul-float/2addr p6, p5

    add-float/2addr v0, p6

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1145
    return-void
.end method

.method private blacklist notifyCellAdded()V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_12

    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;Lcom/android/internal/widget/LockPatternView$InputMode;)V

    .line 774
    :cond_12
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 775
    return-void
.end method

.method private blacklist notifyPatternCleared()V
    .registers 2

    .line 791
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_9

    .line 792
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 794
    :cond_9
    return-void
.end method

.method private greylist notifyPatternDetected()V
    .registers 5

    .line 785
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_14

    .line 786
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    iget-byte v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;Lcom/android/internal/widget/LockPatternView$InputMode;B)V

    .line 788
    :cond_14
    return-void
.end method

.method private blacklist notifyPatternStarted()V
    .registers 3

    .line 778
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_b

    .line 779
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart(Lcom/android/internal/widget/LockPatternView$InputMode;)V

    .line 781
    :cond_b
    return-void
.end method

.method private blacklist resetPattern()V
    .registers 2

    .line 826
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 827
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPatternCellSize()V

    .line 829
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 830
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 831
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 832
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 833
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 834
    return-void
.end method

.method private blacklist resetPatternCellSize()V
    .registers 7

    .line 837
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    array-length v2, v2

    if-ge v1, v2, :cond_38

    .line 838
    move v2, v0

    :goto_8
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_35

    .line 839
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 840
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_1e

    .line 841
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 843
    :cond_1e
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->deactivationAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_27

    .line 844
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->deactivationAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 846
    :cond_27
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    .line 847
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 838
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 837
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 850
    :cond_38
    return-void
.end method

.method private blacklist resolveMeasured(II)I
    .registers 4

    .line 909
    nop

    .line 910
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 911
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    sparse-switch p1, :sswitch_data_16

    .line 920
    move p2, v0

    goto :goto_15

    .line 913
    :sswitch_e
    nop

    .line 914
    goto :goto_15

    .line 916
    :sswitch_10
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 917
    nop

    .line 922
    :goto_15
    return p2

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private blacklist setPatternInProgress(Z)V
    .registers 2

    .line 1335
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 1336
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 1337
    return-void
.end method

.method private blacklist startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 3

    .line 1037
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/LockPatternView;->startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;IZ)V

    .line 1038
    return-void
.end method

.method private blacklist startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;IZ)V
    .registers 12

    .line 1051
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v3, v0, v1

    .line 1055
    iget-object v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-nez v0, :cond_17

    .line 1056
    iget-object v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1058
    :cond_17
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1064
    if-nez p2, :cond_21

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    goto :goto_23

    :cond_21
    iget v1, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    :goto_23
    move v4, v1

    .line 1065
    if-nez p2, :cond_29

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    goto :goto_2b

    :cond_29
    iget v1, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    :goto_2b
    move v5, v1

    .line 1066
    nop

    .line 1067
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->createLineDisappearingAnimation()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 1069
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v6

    iget p1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 1068
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternView;->createLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 1070
    iget v1, v2, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    iget v4, v2, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    if-eq v1, v4, :cond_57

    .line 1071
    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/widget/LockPatternView;->createDotRadiusAnimation(Lcom/android/internal/widget/LockPatternView$CellState;IZ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1073
    :cond_57
    iget v1, v2, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iget v4, v2, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    if-eq v1, v4, :cond_65

    .line 1074
    nop

    .line 1075
    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/widget/LockPatternView;->createDotActivationColorAnimation(Lcom/android/internal/widget/LockPatternView$CellState;IZ)Landroid/animation/Animator;

    move-result-object p3

    .line 1074
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1078
    :cond_65
    if-nez p2, :cond_72

    .line 1079
    new-instance p1, Lcom/android/internal/widget/LockPatternView$5;

    invoke-direct {p1, p0, v3}, Lcom/android/internal/widget/LockPatternView$5;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1086
    iput-object v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    goto :goto_7c

    .line 1088
    :cond_72
    new-instance p1, Lcom/android/internal/widget/LockPatternView$6;

    invoke-direct {p1, p0, v3}, Lcom/android/internal/widget/LockPatternView$6;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1095
    iput-object v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->deactivationAnimator:Landroid/animation/Animator;

    .line 1097
    :goto_7c
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1098
    return-void
.end method

.method private blacklist startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;Z)V
    .registers 4

    .line 1041
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternView;->startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;IZ)V

    .line 1042
    return-void
.end method

.method private blacklist startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 23

    .line 714
    iput p3, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 715
    iput p5, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 716
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p7

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 717
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 718
    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 719
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    add-float/2addr v2, p4

    .line 718
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 720
    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 721
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, p6

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 722
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->getDotColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 724
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 726
    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 727
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    add-float/2addr v2, p5

    .line 726
    move-object v0, p0

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 728
    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 730
    new-instance v1, Lcom/android/internal/widget/LockPatternView$3;

    move-object/from16 v2, p13

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    move v2, p3

    move-object v8, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView;->startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 742
    return-void
.end method

.method private blacklist startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 16

    .line 681
    iput p2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 682
    iput p4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 683
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p6

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 684
    new-array v0, v1, [F

    fill-array-data v0, :array_3a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 685
    invoke-virtual {v0, p10, p11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 686
    invoke-virtual {v0, p8, p9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 687
    invoke-virtual {v0, p12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 688
    move p9, p7

    move p7, p5

    move p5, p3

    move-object p3, p1

    new-instance p1, Lcom/android/internal/widget/LockPatternView$1;

    move p8, p6

    move p6, p4

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p1 .. p9}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 698
    new-instance p1, Lcom/android/internal/widget/LockPatternView$2;

    invoke-direct {p1, p0, p13}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 706
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 707
    return-void

    :array_3a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist startFadePatternAnimation()V
    .registers 3

    .line 1010
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1011
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->createFadePatternAnimation()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1012
    new-instance v1, Lcom/android/internal/widget/LockPatternView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1020
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1022
    return-void
.end method

.method private blacklist startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .registers 11

    .line 747
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object p1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 749
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 750
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 751
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 752
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 753
    invoke-virtual {v0, p8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 754
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 755
    return-void
.end method

.method private blacklist startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .line 759
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 760
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 761
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 762
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 763
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 764
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 765
    return-void
.end method

.method private blacklist switchInputMode(Lcom/android/internal/widget/LockPatternView$InputMode;)V
    .registers 3

    .line 1328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1329
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 1330
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    .line 1331
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 1332
    return-void
.end method


# virtual methods
.method public greylist clearPattern()V
    .registers 1

    .line 801
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 802
    return-void
.end method

.method public greylist disableInput()V
    .registers 2

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 879
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 817
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 818
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 819
    return p1
.end method

.method public greylist enableInput()V
    .registers 2

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 887
    return-void
.end method

.method public greylist fadeClearPattern()V
    .registers 2

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    .line 810
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->startFadePatternAnimation()V

    .line 811
    return-void
.end method

.method public greylist getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method public blacklist getInputMode()Lcom/android/internal/widget/LockPatternView$InputMode;
    .registers 2

    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    return-object v0
.end method

.method public blacklist getLockPatternSize()B
    .registers 2

    .line 515
    iget-byte v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist isInStealthMode()Z
    .registers 2

    .line 508
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public blacklist isShowErrorPath()Z
    .registers 2

    .line 542
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    return v0
.end method

.method public blacklist isVisibleDots()Z
    .registers 2

    .line 534
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mVisibleDots:Z

    return v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 22

    .line 1579
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1580
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1581
    iget-object v12, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 1583
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v14, 0x1

    if-ne v1, v2, :cond_7d

    .line 1588
    add-int/lit8 v1, v11, 0x1

    mul-int/lit16 v1, v1, 0x2bc

    .line 1589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    rem-int/2addr v2, v1

    .line 1591
    div-int/lit16 v1, v2, 0x2bc

    .line 1593
    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 1594
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v1, :cond_3b

    .line 1595
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1596
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    aget-object v5, v12, v5

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    aput-boolean v14, v5, v4

    .line 1594
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1601
    :cond_3b
    if-lez v1, :cond_41

    if-ge v1, v11, :cond_41

    move v3, v14

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    .line 1604
    :goto_42
    if-eqz v3, :cond_7a

    .line 1605
    rem-int/lit16 v2, v2, 0x2bc

    int-to-float v2, v2

    const/high16 v3, 0x442f0000    # 700.0f

    div-float/2addr v2, v3

    .line 1609
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1610
    iget v4, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    .line 1611
    iget v3, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 1613
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1614
    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 1615
    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v2

    .line 1616
    iget v1, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 1617
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    .line 1618
    add-float/2addr v4, v5

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1619
    add-float/2addr v3, v2

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1622
    :cond_7a
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1625
    :cond_7d
    iget-object v15, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1626
    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    .line 1631
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_8e

    iget-boolean v1, v0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    if-eqz v1, :cond_8e

    move v1, v14

    goto :goto_8f

    :cond_8e
    const/4 v1, 0x0

    .line 1632
    :goto_8f
    iget-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v2, :cond_99

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_9b

    :cond_99
    if-eqz v1, :cond_9d

    :cond_9b
    move v1, v14

    goto :goto_9e

    :cond_9d
    const/4 v1, 0x0

    .line 1635
    :goto_9e
    if-eqz v1, :cond_17c

    iget-boolean v1, v0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    if-nez v1, :cond_17c

    .line 1636
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v14}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1638
    nop

    .line 1639
    nop

    .line 1640
    nop

    .line 1641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1642
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_b9
    if-ge v1, v11, :cond_14a

    .line 1643
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1648
    iget v6, v5, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v6, v12, v6

    iget v7, v5, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v6, v6, v7

    if-nez v6, :cond_cf

    .line 1649
    move-object/from16 v1, p1

    goto/16 :goto_14c

    .line 1651
    :cond_cf
    nop

    .line 1653
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v6, v4, v1

    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-nez v4, :cond_e2

    .line 1654
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 1657
    :cond_e2
    iget v4, v5, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    .line 1658
    iget v6, v5, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v6

    .line 1659
    if-eqz v1, :cond_136

    .line 1660
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v13, v5, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v7, v7, v13

    iget v5, v5, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v5, v7, v5

    .line 1661
    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    .line 1664
    iget v7, v5, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v13, 0x1

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_10f

    iget v7, v5, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    cmpl-float v7, v7, v13

    if-eqz v7, :cond_10f

    .line 1665
    iget v7, v5, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1666
    iget v5, v5, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    goto :goto_112

    .line 1668
    :cond_10f
    nop

    .line 1669
    move v7, v4

    move v5, v6

    .line 1671
    :goto_112
    iget-object v13, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v17, v13, v1

    move v13, v1

    move v14, v4

    move v4, v7

    move-object/from16 v1, p1

    move-object/from16 v19, v10

    move v10, v6

    move-wide/from16 v6, v17

    move-object/from16 v18, v19

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/LockPatternView;->drawLineSegment(Landroid/graphics/Canvas;FFFFJJ)V

    .line 1674
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1675
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1676
    invoke-virtual {v4, v14, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1677
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v2, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_13d

    .line 1659
    :cond_136
    move v13, v1

    move v14, v4

    move-object/from16 v18, v10

    move-object/from16 v1, p1

    move v10, v6

    .line 1679
    :goto_13d
    nop

    .line 1680
    nop

    .line 1642
    add-int/lit8 v2, v13, 0x1

    move v1, v2

    move v3, v10

    move v2, v14

    move-object/from16 v10, v18

    const/4 v4, 0x1

    const/4 v14, 0x1

    goto/16 :goto_b9

    :cond_14a
    move-object/from16 v1, p1

    .line 1684
    :goto_14c
    iget-boolean v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v5, :cond_156

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_17e

    :cond_156
    if-eqz v4, :cond_17e

    .line 1686
    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    .line 1687
    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1688
    iget v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v15, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1690
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v6, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/android/internal/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1692
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_17e

    .line 1635
    :cond_17c
    move-object/from16 v1, p1

    .line 1696
    :cond_17e
    :goto_17e
    iget-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    if-eqz v2, :cond_190

    .line 1697
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1698
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1702
    :cond_190
    iget-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mVisibleDots:Z

    if-eqz v2, :cond_202

    .line 1703
    const/4 v2, 0x0

    :goto_195
    iget-byte v3, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v2, v3, :cond_202

    .line 1704
    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v8

    .line 1705
    const/4 v3, 0x0

    :goto_19e
    iget-byte v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v3, v4, :cond_1fa

    .line 1706
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 1707
    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    .line 1708
    iget v6, v4, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 1710
    iget-boolean v7, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v7, :cond_1be

    .line 1711
    iget v4, v4, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v5, v12, v2

    aget-boolean v5, v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternView;->drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V

    move v9, v2

    move v10, v3

    goto :goto_1f2

    .line 1713
    :cond_1be
    move v9, v2

    move v10, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1da

    iget-boolean v0, v4, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    if-eqz v0, :cond_1da

    .line 1714
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 1715
    iget-object v1, v4, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, v4, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, v4, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, v4, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 1717
    goto :goto_1f2

    .line 1718
    :cond_1da
    float-to-int v0, v5

    int-to-float v2, v0

    float-to-int v0, v8

    int-to-float v0, v0

    add-float v3, v0, v6

    iget v0, v4, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v1, v12, v9

    aget-boolean v5, v1, v10

    iget v6, v4, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    iget v7, v4, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    move-object/from16 v1, p1

    move v4, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZFF)V

    .line 1705
    :goto_1f2
    add-int/lit8 v3, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    goto :goto_19e

    .line 1703
    :cond_1fa
    move v9, v2

    add-int/lit8 v2, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_195

    .line 1726
    :cond_202
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1245
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1247
    packed-switch v0, :pswitch_data_2e

    :pswitch_13
    goto :goto_23

    .line 1255
    :pswitch_14
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_23

    .line 1249
    :pswitch_19
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1250
    goto :goto_23

    .line 1252
    :pswitch_1e
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1253
    nop

    .line 1258
    :goto_23
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1259
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1261
    :cond_29
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_1e
        :pswitch_13
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 7

    .line 1895
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1897
    move-object p1, p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1898
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5

    .line 927
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 928
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 929
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result p1

    .line 930
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result p2

    .line 932
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_25

    .line 940
    :pswitch_16
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_25

    .line 937
    :pswitch_1b
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 938
    goto :goto_25

    .line 934
    :pswitch_20
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 935
    move p2, p1

    .line 944
    :goto_25
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    .line 945
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 1878
    check-cast p1, Lcom/android/internal/widget/LockPatternView$SavedState;

    .line 1879
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1880
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1882
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1883
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getPatternSize()B

    move-result v2

    .line 1882
    invoke-static {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([BB)Ljava/util/List;

    move-result-object v1

    .line 1880
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1884
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1885
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getPatternSize()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    .line 1886
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 1887
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$InputMode;->values()[Lcom/android/internal/widget/LockPatternView$InputMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getInputMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    .line 1888
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 1889
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isVisibleDots()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mVisibleDots:Z

    .line 1890
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isShowErrorPath()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    .line 1891
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 12

    .line 1866
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1867
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    iget-byte v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;B)[B

    move-result-object v0

    .line 1868
    if-eqz v0, :cond_14

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 1869
    :goto_15
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1871
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-byte v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    .line 1872
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$InputMode;->ordinal()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mVisibleDots:Z

    iget-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IBZIZZZLcom/android/internal/widget/LockPatternView-IA;)V

    .line 1869
    return-object v0
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 6

    .line 891
    iget p3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    sub-int/2addr p1, p3

    iget p3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingRight:I

    sub-int/2addr p1, p3

    .line 892
    int-to-float p3, p1

    iget-byte p4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    int-to-float p4, p4

    div-float/2addr p3, p4

    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 895
    iget p3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingBottom:I

    sub-int/2addr p2, p3

    .line 896
    int-to-float p3, p2

    iget-byte p4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    int-to-float p4, p4

    div-float/2addr p3, p4

    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 897
    iget-object p3, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 898
    iget p3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float/2addr v0, p4

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    .line 899
    iget p3, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    iget p4, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitFactor:F

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    .line 901
    iget-boolean p3, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz p3, :cond_4a

    .line 902
    iget-object p3, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget p4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 903
    iget-object p3, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget p4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 905
    :cond_4a
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1266
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_8c

    .line 1270
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 1271
    const/16 v2, 0x2002

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_19

    move v0, v3

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 1273
    :goto_1a
    nop

    .line 1275
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_29

    if-nez v0, :cond_45

    :cond_29
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$InputMode;->Click:Lcom/android/internal/widget/LockPatternView$InputMode;

    if-ne v2, v4, :cond_45

    .line 1279
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_3f

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v2, :cond_3f

    .line 1281
    return v1

    .line 1283
    :cond_3f
    sget-object v0, Lcom/android/internal/widget/LockPatternView$InputMode;->Swipe:Lcom/android/internal/widget/LockPatternView$InputMode;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->switchInputMode(Lcom/android/internal/widget/LockPatternView$InputMode;)V

    goto :goto_56

    .line 1284
    :cond_45
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mClickInputSupported:Z

    if-eqz v2, :cond_56

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$InputMode;->Swipe:Lcom/android/internal/widget/LockPatternView$InputMode;

    if-ne v0, v2, :cond_56

    .line 1287
    sget-object v0, Lcom/android/internal/widget/LockPatternView$InputMode;->Click:Lcom/android/internal/widget/LockPatternView$InputMode;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->switchInputMode(Lcom/android/internal/widget/LockPatternView$InputMode;)V

    .line 1290
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputMode:Lcom/android/internal/widget/LockPatternView$InputMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$InputMode;->Click:Lcom/android/internal/widget/LockPatternView$InputMode;

    if-ne v0, v2, :cond_70

    .line 1291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_8e

    .line 1302
    goto :goto_6f

    .line 1299
    :pswitch_64
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionCancel()V

    .line 1300
    move v1, v3

    goto :goto_6f

    .line 1295
    :pswitch_69
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMouseUp(Landroid/view/MotionEvent;)V

    .line 1296
    move v1, v3

    goto :goto_6f

    .line 1293
    :pswitch_6e
    move v1, v3

    .line 1291
    :goto_6f
    return v1

    .line 1305
    :cond_70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    .line 1322
    goto :goto_8b

    .line 1319
    :pswitch_78
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionCancel()V

    .line 1320
    move v1, v3

    goto :goto_8b

    .line 1315
    :pswitch_7d
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 1316
    move v1, v3

    goto :goto_8b

    .line 1311
    :pswitch_82
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionUp()V

    .line 1312
    move v1, v3

    goto :goto_8b

    .line 1307
    :pswitch_87
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 1308
    move v1, v3

    .line 1305
    :goto_8b
    return v1

    .line 1267
    :cond_8c
    :goto_8c
    return v1

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_69
        :pswitch_6e
        :pswitch_64
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_87
        :pswitch_82
        :pswitch_7d
        :pswitch_78
    .end packed-switch
.end method

.method public whitelist performHapticFeedback(II)Z
    .registers 4

    .line 992
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExternalHapticsPlayer:Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

    if-eqz v0, :cond_b

    .line 993
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mExternalHapticsPlayer:Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

    invoke-interface {p1}, Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;->performCellAddedFeedback()V

    .line 994
    const/4 p1, 0x1

    return p1

    .line 996
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result p1

    return p1
.end method

.method public blacklist setClickInputSupported(Z)V
    .registers 2

    .line 561
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mClickInputSupported:Z

    .line 562
    return-void
.end method

.method public blacklist setColors(III)V
    .registers 4

    .line 1530
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 1531
    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    .line 1532
    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 1533
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1534
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1535
    return-void
.end method

.method public greylist setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .registers 4

    .line 646
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 647
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_3e

    .line 648
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_35

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 653
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 654
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 655
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 656
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    goto :goto_3e

    .line 649
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 658
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 659
    return-void
.end method

.method public blacklist setDotColors(II)V
    .registers 3

    .line 1541
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    .line 1542
    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    .line 1543
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1544
    return-void
.end method

.method public blacklist setDotSizes(II)V
    .registers 3

    .line 1557
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 1558
    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    .line 1559
    return-void
.end method

.method public greylist setExternalHapticsPlayer(Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;)V
    .registers 2

    .line 618
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mExternalHapticsPlayer:Lcom/android/internal/widget/LockPatternView$ExternalHapticsPlayer;

    .line 619
    return-void
.end method

.method public blacklist setFadePattern(Z)V
    .registers 2

    .line 569
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    .line 570
    return-void
.end method

.method public greylist setInStealthMode(Z)V
    .registers 2

    .line 526
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 527
    return-void
.end method

.method public blacklist setKeepDotActivated(Z)V
    .registers 2

    .line 1550
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    .line 1551
    return-void
.end method

.method public blacklist setLockPatternSize(B)V
    .registers 9

    .line 578
    iput-byte p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    .line 579
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->updateSize(B)V

    .line 580
    iget-byte v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    iget-byte v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    const-class v0, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 581
    move v0, v1

    :goto_1d
    iget-byte v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v0, v3, :cond_53

    .line 582
    move v3, v1

    :goto_22
    iget-byte v5, p0, Lcom/android/internal/widget/LockPatternView;->mPatternSize:B

    if-ge v3, v5, :cond_50

    .line 583
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v5, v5, v0

    new-instance v6, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v6}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v6, v5, v3

    .line 584
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/2addr v6, v2

    int-to-float v6, v6

    iput v6, v5, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 585
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iput v0, v5, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 586
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iput v3, v5, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 581
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 589
    :cond_53
    new-instance v0, Ljava/util/ArrayList;

    mul-int v3, p1, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 590
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    .line 591
    new-array v0, v2, [I

    aput p1, v0, v4

    aput p1, v0, v1

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 592
    return-void
.end method

.method public blacklist setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2

    .line 599
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 600
    return-void
.end method

.method public greylist setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .registers 2

    .line 609
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 610
    return-void
.end method

.method public blacklist setPathWidth(I)V
    .registers 3

    .line 1565
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    .line 1566
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1567
    return-void
.end method

.method public blacklist setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 630
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 631
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 632
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 633
    goto :goto_11

    .line 635
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 636
    return-void
.end method

.method public blacklist setShowErrorPath(Z)V
    .registers 2

    .line 538
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mShowErrorPath:Z

    .line 539
    return-void
.end method

.method public blacklist setVisibleDots(Z)V
    .registers 2

    .line 530
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mVisibleDots:Z

    .line 531
    return-void
.end method

.method public blacklist startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 15

    .line 665
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 666
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_d

    .line 670
    :cond_a
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 674
    :goto_d
    return-void
.end method
