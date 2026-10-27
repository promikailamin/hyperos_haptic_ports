.class public Lcom/android/internal/widget/MiuiLockPatternView;
.super Landroid/view/View;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MiuiLockPatternView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final blacklist ASPECT_LOCK_WIDTH:I = 0x1

.field private static final blacklist ASPECT_SQUARE:I = 0x0

.field private static final blacklist MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final blacklist PROFILE_DRAWING:Z = false

.field static final blacklist STATUS_BAR_HEIGHT:I = 0x19

.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternView"


# instance fields
.field private blacklist mAnimatingPeriodStart:J

.field private final blacklist mArrowMatrix:Landroid/graphics/Matrix;

.field private blacklist mAspect:I

.field private blacklist mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private blacklist mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private blacklist mBitmapBtnError:Landroid/graphics/Bitmap;

.field private blacklist mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private blacklist mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private blacklist mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private blacklist mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private blacklist mBitmapHeight:I

.field private blacklist mBitmapWidth:I

.field private final blacklist mCircleMatrix:Landroid/graphics/Matrix;

.field private final blacklist mCurrentPath:Landroid/graphics/Path;

.field private blacklist mDiameterFactor:F

.field private blacklist mDrawingProfilingStarted:Z

.field private blacklist mHitFactor:F

.field private blacklist mInProgressX:F

.field private blacklist mInProgressY:F

.field private blacklist mInStealthMode:Z

.field private blacklist mInputEnabled:Z

.field private final blacklist mInvalidate:Landroid/graphics/Rect;

.field private blacklist mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mPathPaint:Landroid/graphics/Paint;

.field private blacklist mPathPaintColor:I

.field private blacklist mPathPaintErrorColor:I

.field private blacklist mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private blacklist mPatternDrawLookup:[[Z

.field private blacklist mPatternInProgress:Z

.field private blacklist mSquareHeight:F

.field private blacklist mSquareWidth:F

.field private final blacklist mStrokeAlpha:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MiuiLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mDrawingProfilingStarted:Z

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 77
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_150

    const-class v3, Z

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 84
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 85
    iput v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 89
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 94
    const v3, 0x3dcccccd    # 0.1f

    iput v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    .line 95
    const/16 v3, 0x80

    iput v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mStrokeAlpha:I

    .line 96
    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    .line 110
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 111
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 117
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 118
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 127
    sget-object v4, Landroid/miui/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 129
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "aspect":Ljava/lang/String;
    const-string v6, "square"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 132
    iput v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_95

    .line 133
    :cond_7d
    const-string v6, "lock_width"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 134
    iput v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_95

    .line 135
    :cond_88
    const-string v6, "lock_height"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 136
    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    goto :goto_95

    .line 138
    :cond_93
    iput v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    .line 141
    :goto_95
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->setClickable(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1106005f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintColor:I

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11060060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintErrorColor:I

    .line 145
    iget-object v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 147
    iget-object v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 150
    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 153
    const v3, 0x11080056

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    .line 154
    const v3, 0x11080057

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 155
    const v3, 0x1108012b

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 156
    const v3, 0x1108012c

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 157
    const v3, 0x1108012d

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 159
    const v3, 0x11080129

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 160
    const v3, 0x1108012a

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 163
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    aput-object v6, v3, v0

    iget-object v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v6, v3, v2

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v2, v3, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v2, v3, v1

    move-object v1, v3

    .line 166
    .local v1, "bitmaps":[Landroid/graphics/Bitmap;
    array-length v2, v1

    :goto_130
    if-ge v0, v2, :cond_14f

    aget-object v3, v1, v0

    .line 167
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    .line 168
    iget v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    .line 166
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v0, v0, 0x1

    goto :goto_130

    .line 171
    :cond_14f
    return-void

    :array_150
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private blacklist addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 5
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyCellAdded()V

    .line 424
    return-void
.end method

.method private blacklist checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 429
    invoke-direct {p0, p2}, Lcom/android/internal/widget/MiuiLockPatternView;->getRowHit(F)I

    move-result v0

    .line 430
    .local v0, "rowHit":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 431
    return-object v1

    .line 433
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->getColumnHit(F)I

    move-result v2

    .line 434
    .local v2, "columnHit":I
    if-gez v2, :cond_f

    .line 435
    return-object v1

    .line 438
    :cond_f
    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_18

    .line 439
    return-object v1

    .line 441
    :cond_18
    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    return-object v1
.end method

.method private blacklist clearPatternDrawLookup()V
    .registers 6

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    .line 292
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    if-ge v2, v1, :cond_11

    .line 293
    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 291
    .end local v2    # "j":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private blacklist detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MiuiLockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 383
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_70

    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 388
    .local v2, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_57

    .line 389
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 390
    .local v3, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v6, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int/2addr v5, v6

    .line 391
    .local v5, "dRow":I
    iget v6, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int/2addr v6, v7

    .line 393
    .local v6, "dColumn":I
    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 394
    .local v7, "fillInRow":I
    iget v8, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 396
    .local v8, "fillInColumn":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-ne v9, v11, :cond_40

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_40

    .line 397
    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v5, :cond_3d

    move v12, v4

    goto :goto_3e

    :cond_3d
    move v12, v10

    :goto_3e
    add-int v7, v9, v12

    .line 400
    :cond_40
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v11, :cond_53

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_53

    .line 401
    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v6, :cond_51

    move v10, v4

    :cond_51
    add-int v8, v9, v10

    .line 404
    :cond_53
    invoke-static {v7, v8}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 407
    .end local v3    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "dRow":I
    .end local v6    # "dColumn":I
    .end local v7    # "fillInRow":I
    .end local v8    # "fillInColumn":I
    :cond_57
    if-eqz v1, :cond_68

    iget-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v3, v5

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v5

    if-nez v3, :cond_68

    .line 409
    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 411
    :cond_68
    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 412
    const/4 v3, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->performHapticFeedback(II)Z

    .line 415
    return-object v0

    .line 417
    .end local v1    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v2    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_70
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # F
    .param p3, "topY"    # F
    .param p4, "start"    # Lcom/android/internal/widget/LockPatternView$Cell;
    .param p5, "end"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v3, v4, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    .line 862
    .local v3, "green":Z
    :goto_f
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 863
    .local v4, "endRow":I
    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 864
    .local v5, "startRow":I
    iget v6, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 865
    .local v6, "endColumn":I
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 868
    .local v7, "startColumn":I
    iget v8, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    float-to-int v8, v8

    iget v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 869
    .local v8, "offsetX":I
    iget v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    float-to-int v9, v9

    iget v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 874
    .local v9, "offsetY":I
    if-eqz v3, :cond_2c

    iget-object v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    goto :goto_2e

    :cond_2c
    iget-object v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 875
    .local v10, "arrow":Landroid/graphics/Bitmap;
    :goto_2e
    iget v11, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    .line 876
    .local v11, "cellWidth":I
    iget v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    .line 879
    .local v12, "cellHeight":I
    sub-int v13, v4, v5

    int-to-double v13, v13

    sub-int v15, v6, v7

    int-to-double v1, v15

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 881
    .local v1, "theta":F
    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v2, v13

    const/high16 v13, 0x42b40000    # 90.0f

    add-float/2addr v2, v13

    .line 884
    .local v2, "angle":F
    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 885
    .local v13, "sx":F
    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    int-to-float v14, v14

    div-float/2addr v15, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 886
    .local v14, "sy":F
    iget-object v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move/from16 v16, v1

    .end local v1    # "theta":F
    .local v16, "theta":F
    int-to-float v1, v8

    add-float v1, p2, v1

    move/from16 v17, v3

    .end local v3    # "green":Z
    .local v17, "green":Z
    int-to-float v3, v9

    add-float v3, p3, v3

    invoke-virtual {v15, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 887
    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 888
    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 889
    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 890
    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v3, v15

    move/from16 v18, v4

    .end local v4    # "endRow":I
    .local v18, "endRow":I
    int-to-float v4, v12

    div-float/2addr v4, v15

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 891
    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v11, v3

    int-to-float v3, v3

    div-float/2addr v3, v15

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 892
    iget-object v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v10, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 893
    return-void
.end method

.method private blacklist drawCircle(Landroid/graphics/Canvas;IIZ)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z

    .line 905
    move-object v0, p0

    move-object/from16 v1, p1

    if-eqz p4, :cond_50

    iget-boolean v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v2, v3, :cond_10

    goto :goto_50

    .line 909
    :cond_10
    iget-boolean v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_19

    .line 911
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 912
    .local v2, "outerCircle":Landroid/graphics/Bitmap;
    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .local v3, "innerCircle":Landroid/graphics/Bitmap;
    goto :goto_53

    .line 913
    .end local v2    # "outerCircle":Landroid/graphics/Bitmap;
    .end local v3    # "innerCircle":Landroid/graphics/Bitmap;
    :cond_19
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_24

    .line 915
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 916
    .restart local v2    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v3, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapBtnError:Landroid/graphics/Bitmap;

    .restart local v3    # "innerCircle":Landroid/graphics/Bitmap;
    goto :goto_53

    .line 917
    .end local v2    # "outerCircle":Landroid/graphics/Bitmap;
    .end local v3    # "innerCircle":Landroid/graphics/Bitmap;
    :cond_24
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v2, v3, :cond_4c

    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_31

    goto :goto_4c

    .line 923
    :cond_31
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown display mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 920
    :cond_4c
    :goto_4c
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 921
    .restart local v2    # "outerCircle":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .restart local v3    # "innerCircle":Landroid/graphics/Bitmap;
    goto :goto_53

    .line 907
    .end local v2    # "outerCircle":Landroid/graphics/Bitmap;
    .end local v3    # "innerCircle":Landroid/graphics/Bitmap;
    :cond_50
    :goto_50
    iget-object v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 908
    .restart local v2    # "outerCircle":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 926
    .restart local v3    # "innerCircle":Landroid/graphics/Bitmap;
    :goto_53
    iget v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    .line 927
    .local v4, "width":I
    iget v5, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    .line 929
    .local v5, "height":I
    iget v6, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 930
    .local v6, "squareWidth":F
    iget v7, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 932
    .local v7, "squareHeight":F
    int-to-float v8, v4

    sub-float v8, v6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 933
    .local v8, "offsetX":I
    int-to-float v10, v5

    sub-float v10, v7, v10

    div-float/2addr v10, v9

    float-to-int v9, v10

    .line 936
    .local v9, "offsetY":I
    iget v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    iget v11, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 937
    .local v10, "sx":F
    iget v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 939
    .local v11, "sy":F
    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v13, p2, v8

    int-to-float v13, v13

    add-int v14, p3, v9

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 940
    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 941
    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 942
    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    iget v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapHeight:I

    neg-int v14, v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 944
    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 945
    if-eqz v3, :cond_bd

    .line 946
    iget-object v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 948
    :cond_bd
    return-void
.end method

.method private blacklist getBitmapFor(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "resId"    # I

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCenterXForColumn(I)F
    .registers 5
    .param p1, "column"    # I

    .line 719
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private blacklist getCenterYForRow(I)F
    .registers 5
    .param p1, "row"    # I

    .line 723
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private blacklist getColumnHit(F)I
    .registers 8
    .param p1, "x"    # F

    .line 471
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 472
    .local v0, "squareWidth":F
    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 474
    .local v1, "hitSize":F
    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 475
    .local v2, "offset":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    const/4 v4, 0x3

    if-ge v3, v4, :cond_23

    .line 477
    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    .line 478
    .local v4, "hitLeft":F
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_20

    add-float v5, v4, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_20

    .line 479
    return v3

    .line 475
    .end local v4    # "hitLeft":F
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 482
    .end local v3    # "i":I
    :cond_23
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist getRowHit(F)I
    .registers 8
    .param p1, "y"    # F

    .line 451
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 452
    .local v0, "squareHeight":F
    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 454
    .local v1, "hitSize":F
    iget v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 455
    .local v2, "offset":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    const/4 v4, 0x3

    if-ge v3, v4, :cond_23

    .line 457
    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    .line 458
    .local v4, "hitTop":F
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_20

    add-float v5, v4, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_20

    .line 459
    return v3

    .line 455
    .end local v4    # "hitTop":F
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 462
    .end local v3    # "i":I
    :cond_23
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist handleActionDown(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 686
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 688
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 689
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    .line 690
    .local v2, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v2, :cond_1c

    .line 691
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 692
    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 693
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternStarted()V

    goto :goto_22

    .line 695
    :cond_1c
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 696
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternCleared()V

    .line 698
    :goto_22
    if-eqz v2, :cond_47

    .line 699
    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 700
    .local v3, "startX":F
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v4}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 702
    .local v4, "startY":F
    iget v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 703
    .local v5, "widthOffset":F
    iget v7, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    div-float/2addr v7, v6

    .line 705
    .local v7, "heightOffset":F
    sub-float v6, v3, v5

    float-to-int v6, v6

    sub-float v8, v4, v7

    float-to-int v8, v8

    add-float v9, v3, v5

    float-to-int v9, v9

    add-float v10, v4, v7

    float-to-int v10, v10

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate(IIII)V

    .line 708
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v5    # "widthOffset":F
    .end local v7    # "heightOffset":F
    :cond_47
    iput v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 709
    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 716
    return-void
.end method

.method private blacklist handleActionMove(Landroid/view/MotionEvent;)V
    .registers 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 541
    .local v2, "historySize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    add-int/lit8 v4, v2, 0x1

    if-ge v3, v4, :cond_197

    .line 542
    if-ge v3, v2, :cond_14

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_18

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 543
    .local v4, "x":F
    :goto_18
    if-ge v3, v2, :cond_1f

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    goto :goto_23

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 544
    .local v5, "y":F
    :goto_23
    iget-object v6, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 545
    .local v6, "patternSizePreHitDetect":I
    invoke-direct {v0, v4, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v7

    .line 546
    .local v7, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v8, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 547
    .local v8, "patternSize":I
    if-eqz v7, :cond_3d

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3d

    .line 548
    iput-boolean v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 549
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternStarted()V

    .line 552
    :cond_3d
    iget v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 553
    .local v9, "dx":F
    iget v10, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 554
    .local v10, "dy":F
    add-float v11, v9, v10

    iget v12, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v13, v12

    cmpl-float v11, v11, v13

    if-lez v11, :cond_183

    .line 555
    iget v11, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 556
    .local v11, "oldX":F
    iget v13, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 558
    .local v13, "oldY":F
    iput v4, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 559
    iput v5, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 561
    iget-boolean v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    if-eqz v14, :cond_173

    if-lez v8, :cond_173

    .line 562
    iget-object v14, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 563
    .local v14, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget v15, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    mul-float/2addr v12, v15

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v12, v15

    .line 565
    .local v12, "radius":F
    add-int/lit8 v15, v8, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 567
    .local v15, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v1, v15, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    .line 568
    .local v1, "startX":F
    move/from16 v16, v2

    .end local v2    # "historySize":I
    .local v16, "historySize":I
    iget v2, v15, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v2

    .line 575
    .local v2, "startY":F
    move/from16 v17, v9

    .end local v9    # "dx":F
    .local v17, "dx":F
    iget-object v9, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 577
    .local v9, "invalidateRect":Landroid/graphics/Rect;
    cmpg-float v18, v1, v4

    if-gez v18, :cond_92

    .line 578
    move/from16 v18, v1

    .line 579
    .local v18, "left":F
    move/from16 v19, v4

    .local v19, "right":F
    goto :goto_96

    .line 581
    .end local v18    # "left":F
    .end local v19    # "right":F
    :cond_92
    move/from16 v18, v4

    .line 582
    .restart local v18    # "left":F
    move/from16 v19, v1

    .line 585
    .restart local v19    # "right":F
    :goto_96
    cmpg-float v20, v2, v5

    if-gez v20, :cond_9f

    .line 586
    move/from16 v20, v2

    .line 587
    .local v20, "top":F
    move/from16 v21, v5

    .local v21, "bottom":F
    goto :goto_a3

    .line 589
    .end local v20    # "top":F
    .end local v21    # "bottom":F
    :cond_9f
    move/from16 v20, v5

    .line 590
    .restart local v20    # "top":F
    move/from16 v21, v2

    .line 594
    .restart local v21    # "bottom":F
    :goto_a3
    move/from16 v22, v4

    .end local v4    # "x":F
    .local v22, "x":F
    sub-float v4, v18, v12

    float-to-int v4, v4

    move/from16 v23, v5

    .end local v5    # "y":F
    .local v23, "y":F
    sub-float v5, v20, v12

    float-to-int v5, v5

    move/from16 v24, v10

    .end local v10    # "dy":F
    .local v24, "dy":F
    add-float v10, v19, v12

    float-to-int v10, v10

    move-object/from16 v25, v15

    .end local v15    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v25, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-float v15, v21, v12

    float-to-int v15, v15

    invoke-virtual {v9, v4, v5, v10, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 597
    cmpg-float v4, v1, v11

    if-gez v4, :cond_c1

    .line 598
    move v4, v1

    .line 599
    .end local v18    # "left":F
    .local v4, "left":F
    move v5, v11

    .end local v19    # "right":F
    .local v5, "right":F
    goto :goto_c3

    .line 601
    .end local v4    # "left":F
    .end local v5    # "right":F
    .restart local v18    # "left":F
    .restart local v19    # "right":F
    :cond_c1
    move v4, v11

    .line 602
    .end local v18    # "left":F
    .restart local v4    # "left":F
    move v5, v1

    .line 605
    .end local v19    # "right":F
    .restart local v5    # "right":F
    :goto_c3
    cmpg-float v10, v2, v13

    if-gez v10, :cond_ca

    .line 606
    move v10, v2

    .line 607
    .end local v20    # "top":F
    .local v10, "top":F
    move v15, v13

    .end local v21    # "bottom":F
    .local v15, "bottom":F
    goto :goto_cc

    .line 609
    .end local v10    # "top":F
    .end local v15    # "bottom":F
    .restart local v20    # "top":F
    .restart local v21    # "bottom":F
    :cond_ca
    move v10, v13

    .line 610
    .end local v20    # "top":F
    .restart local v10    # "top":F
    move v15, v2

    .line 614
    .end local v21    # "bottom":F
    .restart local v15    # "bottom":F
    :goto_cc
    move/from16 v18, v1

    .end local v1    # "startX":F
    .local v18, "startX":F
    sub-float v1, v4, v12

    float-to-int v1, v1

    move/from16 v19, v2

    .end local v2    # "startY":F
    .local v19, "startY":F
    sub-float v2, v10, v12

    float-to-int v2, v2

    move/from16 v20, v4

    .end local v4    # "left":F
    .local v20, "left":F
    add-float v4, v5, v12

    float-to-int v4, v4

    move/from16 v21, v5

    .end local v5    # "right":F
    .local v21, "right":F
    add-float v5, v15, v12

    float-to-int v5, v5

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 618
    if-eqz v7, :cond_165

    .line 619
    iget v1, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    .line 620
    .end local v18    # "startX":F
    .restart local v1    # "startX":F
    iget v2, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v2

    .line 622
    .end local v19    # "startY":F
    .restart local v2    # "startY":F
    const/4 v4, 0x2

    if-lt v8, v4, :cond_12e

    .line 624
    add-int/lit8 v4, v8, -0x1

    sub-int v5, v8, v6

    sub-int/2addr v4, v5

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 625
    .end local v7    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v4, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v5}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v5

    .line 626
    .end local v11    # "oldX":F
    .local v5, "oldX":F
    iget v7, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v7}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 628
    .end local v13    # "oldY":F
    .local v7, "oldY":F
    cmpg-float v11, v1, v5

    if-gez v11, :cond_112

    .line 629
    move v11, v1

    .line 630
    .end local v20    # "left":F
    .local v11, "left":F
    move v13, v5

    .end local v21    # "right":F
    .local v13, "right":F
    goto :goto_114

    .line 632
    .end local v11    # "left":F
    .end local v13    # "right":F
    .restart local v20    # "left":F
    .restart local v21    # "right":F
    :cond_112
    move v11, v5

    .line 633
    .end local v20    # "left":F
    .restart local v11    # "left":F
    move v13, v1

    .line 636
    .end local v21    # "right":F
    .restart local v13    # "right":F
    :goto_114
    cmpg-float v18, v2, v7

    if-gez v18, :cond_123

    .line 637
    move v10, v2

    .line 638
    move v15, v7

    move/from16 v28, v7

    move-object v7, v4

    move v4, v11

    move v11, v5

    move v5, v13

    move/from16 v13, v28

    goto :goto_137

    .line 640
    :cond_123
    move v10, v7

    .line 641
    move v15, v2

    move/from16 v28, v7

    move-object v7, v4

    move v4, v11

    move v11, v5

    move v5, v13

    move/from16 v13, v28

    goto :goto_137

    .line 644
    .end local v4    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "oldX":F
    .local v7, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v11, "oldX":F
    .local v13, "oldY":F
    .restart local v20    # "left":F
    .restart local v21    # "right":F
    :cond_12e
    move v4, v1

    .end local v21    # "right":F
    .local v4, "right":F
    move v5, v1

    .line 645
    .end local v20    # "left":F
    .local v5, "left":F
    move v15, v2

    move v10, v2

    move/from16 v28, v5

    move v5, v4

    move/from16 v4, v28

    .line 648
    .local v4, "left":F
    .local v5, "right":F
    :goto_137
    move/from16 v18, v1

    .end local v1    # "startX":F
    .restart local v18    # "startX":F
    iget v1, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v1, v19

    .line 649
    .local v1, "widthOffset":F
    move/from16 v26, v2

    .end local v2    # "startY":F
    .local v26, "startY":F
    iget v2, v0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    div-float v2, v2, v19

    .line 651
    .local v2, "heightOffset":F
    move/from16 v27, v6

    .end local v6    # "patternSizePreHitDetect":I
    .local v27, "patternSizePreHitDetect":I
    sub-float v6, v4, v1

    float-to-int v6, v6

    move/from16 v19, v4

    .end local v4    # "left":F
    .local v19, "left":F
    sub-float v4, v10, v2

    float-to-int v4, v4

    move-object/from16 v20, v7

    .end local v7    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v20, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-float v7, v5, v1

    float-to-int v7, v7

    move/from16 v21, v1

    .end local v1    # "widthOffset":F
    .local v21, "widthOffset":F
    add-float v1, v15, v2

    float-to-int v1, v1

    invoke-virtual {v9, v6, v4, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v1, v18

    move/from16 v4, v19

    move-object/from16 v7, v20

    move/from16 v2, v26

    goto :goto_16f

    .line 618
    .end local v2    # "heightOffset":F
    .end local v5    # "right":F
    .end local v26    # "startY":F
    .end local v27    # "patternSizePreHitDetect":I
    .restart local v6    # "patternSizePreHitDetect":I
    .restart local v7    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v19, "startY":F
    .local v20, "left":F
    .local v21, "right":F
    :cond_165
    move/from16 v27, v6

    .end local v6    # "patternSizePreHitDetect":I
    .restart local v27    # "patternSizePreHitDetect":I
    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v4, v20

    move/from16 v5, v21

    .line 656
    .end local v18    # "startX":F
    .end local v19    # "startY":F
    .end local v20    # "left":F
    .end local v21    # "right":F
    .local v1, "startX":F
    .local v2, "startY":F
    .restart local v4    # "left":F
    .restart local v5    # "right":F
    :goto_16f
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 657
    .end local v1    # "startX":F
    .end local v2    # "startY":F
    .end local v4    # "left":F
    .end local v5    # "right":F
    .end local v9    # "invalidateRect":Landroid/graphics/Rect;
    .end local v10    # "top":F
    .end local v12    # "radius":F
    .end local v14    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v15    # "bottom":F
    .end local v25    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    goto :goto_18f

    .line 561
    .end local v16    # "historySize":I
    .end local v17    # "dx":F
    .end local v22    # "x":F
    .end local v23    # "y":F
    .end local v24    # "dy":F
    .end local v27    # "patternSizePreHitDetect":I
    .local v2, "historySize":I
    .local v4, "x":F
    .local v5, "y":F
    .restart local v6    # "patternSizePreHitDetect":I
    .local v9, "dx":F
    .local v10, "dy":F
    :cond_173
    move/from16 v16, v2

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v27, v6

    move/from16 v17, v9

    move/from16 v24, v10

    .line 658
    .end local v2    # "historySize":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "patternSizePreHitDetect":I
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    .restart local v16    # "historySize":I
    .restart local v17    # "dx":F
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    .restart local v24    # "dy":F
    .restart local v27    # "patternSizePreHitDetect":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    goto :goto_18f

    .line 554
    .end local v11    # "oldX":F
    .end local v13    # "oldY":F
    .end local v16    # "historySize":I
    .end local v17    # "dx":F
    .end local v22    # "x":F
    .end local v23    # "y":F
    .end local v24    # "dy":F
    .end local v27    # "patternSizePreHitDetect":I
    .restart local v2    # "historySize":I
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    .restart local v6    # "patternSizePreHitDetect":I
    .restart local v9    # "dx":F
    .restart local v10    # "dy":F
    :cond_183
    move/from16 v16, v2

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v27, v6

    move/from16 v17, v9

    move/from16 v24, v10

    .line 541
    .end local v2    # "historySize":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "patternSizePreHitDetect":I
    .end local v7    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v8    # "patternSize":I
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    .restart local v16    # "historySize":I
    :goto_18f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    goto/16 :goto_9

    .line 662
    .end local v3    # "i":I
    .end local v16    # "historySize":I
    .restart local v2    # "historySize":I
    :cond_197
    return-void
.end method

.method private blacklist handleActionUp(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 672
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 674
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternDetected()V

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    .line 683
    :cond_11
    return-void
.end method

.method private blacklist notifyCellAdded()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_9

    .line 244
    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 246
    :cond_9
    const v0, 0x110f026e

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    .line 247
    return-void
.end method

.method private blacklist notifyPatternCleared()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_7

    .line 265
    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 267
    :cond_7
    const v0, 0x110f026f

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    .line 268
    return-void
.end method

.method private blacklist notifyPatternDetected()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_9

    .line 258
    iget-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 260
    :cond_9
    const v0, 0x110f0270

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    .line 261
    return-void
.end method

.method private blacklist notifyPatternStarted()V
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_7

    .line 251
    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 253
    :cond_7
    const v0, 0x110f0271

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessEvent(I)V

    .line 254
    return-void
.end method

.method private blacklist resetPattern()V
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 283
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    .line 285
    return-void
.end method

.method private blacklist resolveMeasured(II)I
    .registers 6
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 326
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 335
    move v0, v1

    goto :goto_15

    .line 328
    :sswitch_e
    move v0, p2

    .line 329
    goto :goto_15

    .line 331
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 332
    nop

    .line 337
    :goto_15
    return v0

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private blacklist sendAccessEvent(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 665
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 666
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->sendAccessibilityEvent(I)V

    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 668
    return-void
.end method


# virtual methods
.method public blacklist clearPattern()V
    .registers 1

    .line 274
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    .line 275
    return-void
.end method

.method public blacklist disableInput()V
    .registers 2

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 304
    return-void
.end method

.method public blacklist enableInput()V
    .registers 2

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 311
    return-void
.end method

.method protected whitelist getSuggestedMinimumHeight()I
    .registers 2

    .line 349
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected whitelist getSuggestedMinimumWidth()I
    .registers 2

    .line 343
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public blacklist isInStealthMode()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    return v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 728
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 729
    .local v8, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 730
    .local v9, "count":I
    iget-object v10, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    .line 732
    .local v10, "drawLookup":[[Z
    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_86

    .line 737
    add-int/lit8 v0, v9, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 738
    .local v0, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v11, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v4, v11

    long-to-int v1, v4

    rem-int/2addr v1, v0

    .line 740
    .local v1, "spotInCycle":I
    div-int/lit16 v4, v1, 0x2bc

    .line 742
    .local v4, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 743
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    if-ge v5, v4, :cond_3d

    .line 744
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 745
    .local v11, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v12

    aget-object v12, v10, v12

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v13

    aput-boolean v3, v12, v13

    .line 743
    .end local v11    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 750
    .end local v5    # "i":I
    :cond_3d
    if-lez v4, :cond_43

    if-ge v4, v9, :cond_43

    move v5, v3

    goto :goto_44

    :cond_43
    const/4 v5, 0x0

    .line 753
    .local v5, "needToUpdateInProgressPoint":Z
    :goto_44
    if-eqz v5, :cond_81

    .line 754
    rem-int/lit16 v11, v1, 0x2bc

    int-to-float v11, v11

    const/high16 v12, 0x442f0000    # 700.0f

    div-float/2addr v11, v12

    .line 758
    .local v11, "percentageOfNextCircle":F
    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 759
    .local v12, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v13, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v6, v13}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v13

    .line 760
    .local v13, "centerX":F
    iget v14, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v6, v14}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 762
    .local v14, "centerY":F
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 763
    .local v15, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v2, v15, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 764
    invoke-direct {v6, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    sub-float/2addr v2, v13

    mul-float/2addr v2, v11

    .line 765
    .local v2, "dx":F
    iget v3, v15, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 766
    invoke-direct {v6, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v14

    mul-float/2addr v3, v11

    .line 767
    .local v3, "dy":F
    move/from16 v18, v0

    .end local v0    # "oneCycle":I
    .local v18, "oneCycle":I
    add-float v0, v13, v2

    iput v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 768
    add-float v0, v14, v3

    iput v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    goto :goto_83

    .line 753
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v11    # "percentageOfNextCircle":F
    .end local v12    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v13    # "centerX":F
    .end local v14    # "centerY":F
    .end local v15    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "oneCycle":I
    .restart local v0    # "oneCycle":I
    :cond_81
    move/from16 v18, v0

    .line 771
    .end local v0    # "oneCycle":I
    .restart local v18    # "oneCycle":I
    :goto_83
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    .line 774
    .end local v1    # "spotInCycle":I
    .end local v4    # "numCircles":I
    .end local v5    # "needToUpdateInProgressPoint":Z
    .end local v18    # "oneCycle":I
    :cond_86
    iget v11, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 775
    .local v11, "squareWidth":F
    iget v12, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 777
    .local v12, "squareHeight":F
    iget v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mDiameterFactor:F

    mul-float v13, v11, v0

    .line 778
    .local v13, "radius":F
    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 780
    iget-object v14, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 781
    .local v14, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 784
    iget v15, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    .line 785
    .local v15, "paddingTop":I
    iget v5, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    .line 787
    .local v5, "paddingLeft":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9d
    const/4 v1, 0x3

    if-ge v0, v1, :cond_c3

    .line 788
    int-to-float v2, v15

    int-to-float v3, v0

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    .line 790
    .local v2, "topY":F
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_a5
    if-ge v3, v1, :cond_be

    .line 791
    int-to-float v4, v5

    int-to-float v1, v3

    mul-float/2addr v1, v11

    add-float/2addr v4, v1

    .line 792
    .local v4, "leftX":F
    float-to-int v1, v4

    move/from16 v19, v4

    .end local v4    # "leftX":F
    .local v19, "leftX":F
    float-to-int v4, v2

    aget-object v20, v10, v0

    move/from16 v21, v2

    .end local v2    # "topY":F
    .local v21, "topY":F
    aget-boolean v2, v20, v3

    invoke-direct {v6, v7, v1, v4, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 790
    .end local v19    # "leftX":F
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v21

    const/4 v1, 0x3

    goto :goto_a5

    .end local v21    # "topY":F
    .restart local v2    # "topY":F
    :cond_be
    move/from16 v21, v2

    .line 787
    .end local v2    # "topY":F
    .end local v3    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 800
    .end local v0    # "i":I
    :cond_c3
    iget-boolean v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    if-eqz v0, :cond_d0

    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_ce

    goto :goto_d0

    :cond_ce
    const/4 v0, 0x0

    goto :goto_d1

    :cond_d0
    :goto_d0
    const/4 v0, 0x1

    :goto_d1
    move/from16 v18, v0

    .line 804
    .local v18, "drawPath":Z
    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_df

    const/4 v2, 0x1

    goto :goto_e0

    :cond_df
    const/4 v2, 0x0

    :goto_e0
    move v4, v2

    .line 805
    .local v4, "oldFlag":Z
    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 806
    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_f2

    iget v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintErrorColor:I

    goto :goto_f4

    :cond_f2
    iget v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaintColor:I

    :goto_f4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 807
    if-eqz v18, :cond_157

    .line 808
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_fb
    add-int/lit8 v0, v9, -0x1

    if-ge v3, v0, :cond_14f

    .line 809
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 810
    .local v2, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 815
    .local v1, "next":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v0, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v10, v0

    move/from16 v16, v3

    .end local v3    # "i":I
    .local v16, "i":I
    iget v3, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_121

    .line 816
    move/from16 v23, v5

    move/from16 v22, v11

    move v11, v4

    goto :goto_15c

    .line 819
    :cond_121
    int-to-float v0, v5

    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float v17, v0, v3

    .line 820
    .local v17, "leftX":F
    int-to-float v0, v15

    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    add-float v19, v0, v3

    .line 822
    .local v19, "topY":F
    move-object/from16 v0, p0

    move-object/from16 v20, v1

    .end local v1    # "next":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v20, "next":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v1, p1

    move-object/from16 v21, v2

    .end local v2    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v21, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v22, v11

    move v11, v4

    .end local v4    # "oldFlag":Z
    .local v11, "oldFlag":Z
    .local v22, "squareWidth":F
    move-object/from16 v4, v21

    move/from16 v23, v5

    .end local v5    # "paddingLeft":I
    .local v23, "paddingLeft":I
    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/MiuiLockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 808
    .end local v17    # "leftX":F
    .end local v19    # "topY":F
    .end local v20    # "next":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v21    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v3, v16, 0x1

    move v4, v11

    move/from16 v11, v22

    move/from16 v5, v23

    .end local v16    # "i":I
    .restart local v3    # "i":I
    goto :goto_fb

    .end local v22    # "squareWidth":F
    .end local v23    # "paddingLeft":I
    .restart local v4    # "oldFlag":Z
    .restart local v5    # "paddingLeft":I
    .local v11, "squareWidth":F
    :cond_14f
    move/from16 v16, v3

    move/from16 v23, v5

    move/from16 v22, v11

    move v11, v4

    .end local v3    # "i":I
    .end local v4    # "oldFlag":Z
    .end local v5    # "paddingLeft":I
    .local v11, "oldFlag":Z
    .restart local v16    # "i":I
    .restart local v22    # "squareWidth":F
    .restart local v23    # "paddingLeft":I
    goto :goto_15c

    .line 807
    .end local v16    # "i":I
    .end local v22    # "squareWidth":F
    .end local v23    # "paddingLeft":I
    .restart local v4    # "oldFlag":Z
    .restart local v5    # "paddingLeft":I
    .local v11, "squareWidth":F
    :cond_157
    move/from16 v23, v5

    move/from16 v22, v11

    move v11, v4

    .line 826
    .end local v4    # "oldFlag":Z
    .end local v5    # "paddingLeft":I
    .local v11, "oldFlag":Z
    .restart local v22    # "squareWidth":F
    .restart local v23    # "paddingLeft":I
    :goto_15c
    if-eqz v18, :cond_1a4

    .line 827
    const/4 v0, 0x0

    .line 828
    .local v0, "anyCircles":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_160
    if-ge v1, v9, :cond_18c

    .line 829
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 834
    .restart local v2    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v10, v3

    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_173

    .line 835
    goto :goto_18c

    .line 837
    :cond_173
    const/4 v0, 0x1

    .line 839
    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v6, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 840
    .local v3, "centerX":F
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v6, v4}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 841
    .local v4, "centerY":F
    if-nez v1, :cond_186

    .line 842
    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_189

    .line 844
    :cond_186
    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 828
    .end local v2    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v3    # "centerX":F
    .end local v4    # "centerY":F
    :goto_189
    add-int/lit8 v1, v1, 0x1

    goto :goto_160

    .line 849
    .end local v1    # "i":I
    :cond_18c
    :goto_18c
    iget-boolean v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    if-nez v1, :cond_196

    iget-object v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_19f

    :cond_196
    if-eqz v0, :cond_19f

    .line 851
    iget v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    iget v2, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 853
    :cond_19f
    iget-object v1, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 856
    .end local v0    # "anyCircles":Z
    :cond_1a4
    iget-object v0, v6, Lcom/android/internal/widget/MiuiLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 857
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 487
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 489
    .local v0, "action":I
    packed-switch v0, :pswitch_data_2e

    :pswitch_13
    goto :goto_23

    .line 497
    :pswitch_14
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_23

    .line 491
    :pswitch_19
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 492
    goto :goto_23

    .line 494
    :pswitch_1e
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 495
    nop

    .line 500
    :goto_23
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 501
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 503
    .end local v0    # "action":I
    :cond_29
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_1e
        :pswitch_13
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 355
    .local v0, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 356
    .local v1, "minimumHeight":I
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MiuiLockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 357
    .local v2, "viewWidth":I
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 359
    .local v3, "viewHeight":I
    iget v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_2c

    goto :goto_27

    .line 367
    :pswitch_16
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_27

    .line 364
    :pswitch_1b
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 365
    goto :goto_27

    .line 361
    :pswitch_20
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    move v2, v4

    .line 362
    nop

    .line 371
    :goto_27
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/MiuiLockPatternView;->setMeasuredDimension(II)V

    .line 372
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 961
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;

    .line 962
    .local v0, "ss":Lcom/android/internal/widget/MiuiLockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 963
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 965
    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v2

    .line 963
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/MiuiLockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 966
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 967
    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    .line 968
    invoke-virtual {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 969
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    .line 952
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    .line 953
    .local v7, "superState":Landroid/os/Parcelable;
    new-instance v8, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;

    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 954
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 955
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZLcom/android/internal/widget/MiuiLockPatternView$SavedState-IA;)V

    .line 953
    return-object v8
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 315
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 316
    .local v0, "width":I
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareWidth:F

    .line 318
    iget v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPaddingBottom:I

    sub-int/2addr v1, v3

    .line 319
    .local v1, "height":I
    int-to-float v3, v1

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mSquareHeight:F

    .line 320
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 508
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2a

    .line 512
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_2c

    .line 534
    return v1

    .line 523
    :pswitch_15
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->resetPattern()V

    .line 524
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternInProgress:Z

    .line 525
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->notifyPatternCleared()V

    .line 532
    return v2

    .line 520
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 521
    return v2

    .line 517
    :pswitch_22
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 518
    return v2

    .line 514
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 515
    return v2

    .line 509
    :cond_2a
    :goto_2a
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_15
    .end packed-switch
.end method

.method public blacklist setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .registers 4
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 227
    iput-object p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 228
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_3d

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_35

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mAnimatingPeriodStart:J

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 235
    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressX:F

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/MiuiLockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInProgressY:F

    .line 237
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    goto :goto_3d

    .line 230
    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->invalidate()V

    .line 240
    return-void
.end method

.method public blacklist setInStealthMode(Z)V
    .registers 2
    .param p1, "inStealthMode"    # Z

    .line 191
    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mInStealthMode:Z

    .line 192
    return-void
.end method

.method public blacklist setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .registers 2
    .param p1, "onPatternListener"    # Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 200
    iput-object p1, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 201
    return-void
.end method

.method public blacklist setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .registers 8
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiLockPatternView;->clearPatternDrawLookup()V

    .line 213
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 214
    .local v1, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/MiuiLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 215
    .end local v1    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    goto :goto_11

    .line 217
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 218
    return-void
.end method
