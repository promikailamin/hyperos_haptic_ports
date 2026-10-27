.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;,
        Landroid/graphics/drawable/GradientDrawable$StrokeCap;,
        Landroid/graphics/drawable/GradientDrawable$RadiusType;,
        Landroid/graphics/drawable/GradientDrawable$GradientType;,
        Landroid/graphics/drawable/GradientDrawable$Shape;
    }
.end annotation


# static fields
.field public static final whitelist ARC:I = 0x4

.field private static final blacklist BUTT:I = 0x0

.field private static final greylist-max-o DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final blacklist DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private static final greylist-max-o DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final whitelist LINE:I = 0x2

.field public static final whitelist LINEAR_GRADIENT:I = 0x0

.field public static final whitelist OVAL:I = 0x1

.field public static final whitelist RADIAL_GRADIENT:I = 0x1

.field private static final greylist-max-o RADIUS_TYPE_FRACTION:I = 0x1

.field private static final greylist-max-o RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final greylist-max-o RADIUS_TYPE_PIXELS:I = 0x0

.field public static final whitelist RECTANGLE:I = 0x0

.field public static final whitelist RING:I = 0x3

.field private static final blacklist ROUND:I = 0x1

.field private static final blacklist SQUARE:I = 0x2

.field public static final whitelist SWEEP_GRADIENT:I = 0x2

.field public static blacklist sWrapNegativeAngleMeasurements:Z


# instance fields
.field private greylist-max-o mAlpha:I

.field private blacklist mArcOutlinePath:Landroid/graphics/Path;

.field private blacklist mArcPath:Landroid/graphics/Path;

.field private blacklist mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private final greylist mFillPaint:Landroid/graphics/Paint;

.field private greylist-max-o mGradientIsDirty:Z

.field private greylist-max-o mGradientRadius:F

.field private greylist-max-p mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private greylist-max-o mLayerPaint:Landroid/graphics/Paint;

.field private greylist-max-o mMutated:Z

.field private greylist-max-p mPadding:Landroid/graphics/Rect;

.field private final greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mPathIsDirty:Z

.field private final greylist-max-o mRect:Landroid/graphics/RectF;

.field private greylist-max-o mRingPath:Landroid/graphics/Path;

.field private greylist mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/drawable/GradientDrawable;->sWrapNegativeAngleMeasurements:Z

    .line 174
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sput-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 245
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 246
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .registers 5

    .line 2505
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 198
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 206
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 208
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 209
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 215
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 2506
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2508
    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 2509
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 4

    .line 253
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 254
    return-void
.end method

.method private greylist-max-o applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1650
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1652
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v1, :cond_14

    .line 1653
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1655
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    .line 1656
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1659
    :cond_14
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-eqz v1, :cond_30

    .line 1660
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1663
    :try_start_20
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2b

    .line 1665
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1666
    goto :goto_30

    .line 1665
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1666
    throw p1

    .line 1669
    :cond_30
    :goto_30
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-eqz v1, :cond_42

    .line 1670
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1672
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 1673
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1676
    :cond_42
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-eqz v1, :cond_54

    .line 1677
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1679
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 1680
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1683
    :cond_54
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-eqz v1, :cond_66

    .line 1684
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    sget-object v2, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1686
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 1687
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1690
    :cond_66
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-eqz v1, :cond_78

    .line 1691
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    sget-object v1, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1693
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 1694
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1696
    :cond_78
    return-void
.end method

.method private greylist-max-o buildPathIfDirty()V
    .registers 5

    .line 964
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 965
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-eqz v1, :cond_1c

    .line 966
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 967
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 968
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 971
    :cond_1c
    return-void
.end method

.method private greylist-max-o buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .registers 11

    .line 1121
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v0, :cond_f

    :cond_c
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    return-object p1

    .line 1122
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1124
    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v1, v3

    goto :goto_24

    :cond_23
    move v1, v2

    .line 1126
    :goto_24
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1128
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 1129
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    .line 1131
    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_40

    .line 1132
    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v5, v5

    goto :goto_47

    :cond_40
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v5, v8

    .line 1134
    :goto_47
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v7, :cond_4f

    .line 1135
    iget p1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float p1, p1

    goto :goto_57

    :cond_4f
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget p1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float p1, v7, p1

    .line 1137
    :goto_57
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1138
    sub-float v3, v4, p1

    sub-float v8, v6, p1

    invoke-virtual {v7, v3, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 1140
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1141
    neg-float v8, v5

    invoke-virtual {v3, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 1143
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v8, :cond_78

    .line 1144
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    goto :goto_7d

    .line 1146
    :cond_78
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 1149
    :goto_7d
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 1152
    cmpg-float v2, v1, v2

    if-gez v2, :cond_a2

    const/high16 v2, -0x3c4c0000    # -360.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a2

    .line 1153
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v8, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1155
    add-float/2addr v4, p1

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1157
    add-float/2addr v4, v5

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1159
    const/4 p1, 0x0

    invoke-virtual {v8, v3, p1, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1161
    neg-float p1, v1

    invoke-virtual {v8, v7, v1, p1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1162
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    goto :goto_ac

    .line 1165
    :cond_a2
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v3, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1166
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v7, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1169
    :goto_ac
    return-object v8
.end method

.method private greylist-max-o ensureValidRect()Z
    .registers 18

    .line 1386
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1e8

    .line 1387
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1389
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1390
    nop

    .line 1392
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    .line 1393
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    goto :goto_1f

    .line 1392
    :cond_1e
    move v4, v5

    .line 1396
    :goto_1f
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1398
    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    iget v9, v3, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    iget v10, v3, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {v7, v8, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1401
    nop

    .line 1402
    iget-object v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    const/4 v4, 0x0

    if-eqz v3, :cond_59

    .line 1403
    iget-object v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v3, v3

    new-array v7, v3, [I

    .line 1404
    move v8, v1

    :goto_42
    if-ge v8, v3, :cond_57

    .line 1405
    iget-object v9, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v9, v9, v8

    if-eqz v9, :cond_54

    .line 1406
    iget-object v9, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    aput v9, v7, v8

    .line 1404
    :cond_54
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    :cond_57
    move-object v13, v7

    goto :goto_5a

    .line 1402
    :cond_59
    move-object v13, v4

    .line 1410
    :goto_5a
    if-eqz v13, :cond_1e8

    .line 1411
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 1414
    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const v8, 0x461c4000    # 10000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v7, :cond_f8

    .line 1415
    iget-boolean v1, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v1, :cond_72

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    div-float v9, v1, v8

    .line 1416
    :cond_72
    iget-object v1, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1f0

    .line 1446
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 1447
    iget v5, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v9

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, v9

    move v10, v1

    move v11, v4

    move v12, v5

    move v4, v3

    goto/16 :goto_e6

    .line 1442
    :pswitch_8b
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 1443
    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v9, v3

    .line 1444
    move v10, v1

    move v11, v4

    move v12, v9

    goto/16 :goto_e6

    .line 1438
    :pswitch_97
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 1439
    iget v5, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v9

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v9

    .line 1440
    move v10, v1

    move v11, v4

    move v12, v5

    move v4, v3

    goto :goto_e6

    .line 1434
    :pswitch_a6
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 1435
    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v9

    .line 1436
    move v10, v1

    move v12, v10

    move v11, v4

    move v4, v3

    goto :goto_e6

    .line 1430
    :pswitch_b2
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 1431
    iget v5, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v9

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v9

    .line 1432
    move v10, v1

    move v11, v4

    move v12, v5

    move v4, v3

    goto :goto_e6

    .line 1426
    :pswitch_c1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 1427
    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v9, v3

    .line 1428
    move v10, v1

    move v11, v4

    move v12, v9

    goto :goto_e6

    .line 1422
    :pswitch_cc
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 1423
    iget v5, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v9

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, v9

    .line 1424
    move v10, v1

    move v11, v4

    move v12, v5

    move v4, v3

    goto :goto_e6

    .line 1418
    :pswitch_db
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 1419
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, v9

    .line 1420
    move v10, v1

    move v12, v10

    move v11, v4

    move v4, v3

    .line 1451
    :goto_e6
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v15, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v13

    move v13, v4

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1453
    goto/16 :goto_1dd

    :cond_f8
    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v10, 0x2

    if-ne v7, v2, :cond_171

    .line 1454
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v7, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v7

    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v4, v7

    add-float/2addr v1, v4

    .line 1455
    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v9

    iget v9, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v7, v9

    add-float v11, v4, v7

    .line 1457
    iget v4, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1458
    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-ne v7, v2, :cond_138

    .line 1461
    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-ltz v7, :cond_122

    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    int-to-float v7, v7

    goto :goto_126

    :cond_122
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 1462
    :goto_126
    iget v9, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-ltz v9, :cond_12e

    iget v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    int-to-float v3, v3

    goto :goto_132

    :cond_12e
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 1463
    :goto_132
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v4, v3

    goto :goto_14a

    .line 1464
    :cond_138
    iget v7, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-ne v7, v10, :cond_14a

    .line 1465
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v4, v3

    goto :goto_14b

    .line 1464
    :cond_14a
    :goto_14a
    nop

    .line 1468
    :goto_14b
    iget-boolean v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v3, :cond_156

    .line 1469
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    mul-float/2addr v4, v3

    .line 1472
    :cond_156
    iput v4, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    .line 1474
    cmpg-float v3, v4, v5

    if-gtz v3, :cond_161

    .line 1477
    const v4, 0x3a83126f    # 0.001f

    move v12, v4

    goto :goto_162

    .line 1474
    :cond_161
    move v12, v4

    .line 1480
    :goto_162
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/RadialGradient;

    const/4 v14, 0x0

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v10, v1

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1dc

    .line 1482
    :cond_171
    iget v5, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-ne v5, v10, :cond_1dc

    .line 1483
    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v10

    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    .line 1484
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v3

    iget v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v10, v3

    add-float/2addr v7, v10

    .line 1486
    nop

    .line 1487
    nop

    .line 1489
    iget-boolean v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v3, :cond_1d1

    .line 1490
    iget-object v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 1491
    array-length v4, v13

    .line 1492
    if-eqz v3, :cond_19b

    array-length v10, v3

    add-int/lit8 v11, v4, 0x1

    if-eq v10, v11, :cond_1a1

    .line 1493
    :cond_19b
    add-int/lit8 v3, v4, 0x1

    new-array v3, v3, [I

    iput-object v3, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 1495
    :cond_1a1
    invoke-static {v13, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1496
    add-int/lit8 v10, v4, -0x1

    aget v11, v13, v10

    aput v11, v3, v4

    .line 1498
    iget-object v11, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 1499
    int-to-float v10, v10

    div-float v10, v9, v10

    .line 1500
    if-eqz v11, :cond_1b6

    array-length v12, v11

    add-int/lit8 v13, v4, 0x1

    if-eq v12, v13, :cond_1bc

    .line 1501
    :cond_1b6
    add-int/lit8 v11, v4, 0x1

    new-array v11, v11, [F

    iput-object v11, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 1504
    :cond_1bc
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v8

    .line 1505
    nop

    :goto_1c3
    if-ge v1, v4, :cond_1cd

    .line 1506
    int-to-float v8, v1

    mul-float/2addr v8, v10

    mul-float/2addr v8, v12

    aput v8, v11, v1

    .line 1505
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c3

    .line 1508
    :cond_1cd
    aput v9, v11, v4

    move-object v13, v3

    move-object v4, v11

    .line 1511
    :cond_1d1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/SweepGradient;

    invoke-direct {v3, v5, v7, v13, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1dd

    .line 1482
    :cond_1dc
    :goto_1dc
    nop

    .line 1516
    :goto_1dd
    iget-object v1, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1e8

    .line 1517
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1521
    :cond_1e8
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_db
        :pswitch_cc
        :pswitch_c1
        :pswitch_b2
        :pswitch_a6
        :pswitch_97
        :pswitch_8b
    .end packed-switch
.end method

.method private static greylist-max-o getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .registers 3

    .line 2009
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    .line 2010
    nop

    .line 2011
    if-eqz p0, :cond_1d

    .line 2012
    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 2013
    :goto_f
    if-eqz p1, :cond_18

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    goto :goto_1c

    :cond_18
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    :goto_1c
    move p2, p0

    .line 2015
    :cond_1d
    return p2
.end method

.method private blacklist getStrokeLineCapForPaint(I)Landroid/graphics/Paint$Cap;
    .registers 2

    .line 1173
    packed-switch p1, :pswitch_data_10

    .line 1177
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_e

    .line 1176
    :pswitch_6
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_e

    .line 1175
    :pswitch_9
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_e

    .line 1174
    :pswitch_c
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 1173
    :goto_e
    return-object p1

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1703
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1705
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_bd

    .line 1706
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_bd

    .line 1708
    :cond_15
    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    .line 1709
    goto :goto_6

    .line 1712
    :cond_19
    if-le v3, v0, :cond_1c

    .line 1713
    goto :goto_6

    .line 1716
    :cond_1c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1718
    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1719
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1720
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    .line 1721
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_bb

    .line 1722
    :cond_37
    const-string v3, "gradient"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1723
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1724
    invoke-direct {p0, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 1725
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bb

    .line 1726
    :cond_4c
    const-string/jumbo v3, "solid"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1727
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1728
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 1729
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bb

    .line 1730
    :cond_62
    const-string/jumbo v3, "stroke"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 1731
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1732
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 1733
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bb

    .line 1734
    :cond_78
    const-string v3, "corners"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 1735
    sget-object v2, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1736
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 1737
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bb

    .line 1738
    :cond_8d
    const-string/jumbo v3, "padding"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1739
    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1740
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 1741
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bb

    .line 1743
    :cond_a3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad element under <shape>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :goto_bb
    goto/16 :goto_6

    .line 1746
    :cond_bd
    return-void
.end method

.method static greylist-max-o isOpaque(I)Z
    .registers 2

    .line 2495
    shr-int/lit8 p0, p0, 0x18

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private greylist-max-o isOpaqueForState()Z
    .registers 3

    .line 2040
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 2041
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2042
    return v1

    .line 2047
    :cond_18
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2048
    return v1

    .line 2051
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o modulateAlpha(I)I
    .registers 4

    .line 668
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 669
    mul-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method private greylist-max-o setStrokeInternal(IIFF)V
    .registers 8

    .line 430
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 431
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 432
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 434
    :cond_13
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 435
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    nop

    .line 438
    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-lez p2, :cond_32

    .line 439
    new-instance p2, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p3, v0, v2

    aput p4, v0, v1

    invoke-direct {p2, v0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    goto :goto_33

    .line 438
    :cond_32
    const/4 p2, 0x0

    .line 441
    :goto_33
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 442
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 443
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 444
    return-void
.end method

.method private greylist-max-o updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .registers 11

    .line 1770
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1773
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1776
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    .line 1778
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1780
    int-to-float v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1783
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1785
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 1787
    const/4 v6, 0x3

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 1789
    const/4 v8, 0x4

    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 1791
    if-ne v3, v0, :cond_39

    if-ne v5, v0, :cond_39

    if-ne v7, v0, :cond_39

    if-eq p1, v0, :cond_57

    .line 1794
    :cond_39
    int-to-float v0, v3

    int-to-float v3, v5

    int-to-float p1, p1

    int-to-float v5, v7

    const/16 v7, 0x8

    new-array v7, v7, [F

    aput v0, v7, v1

    aput v0, v7, v2

    aput v3, v7, v4

    aput v3, v7, v6

    aput p1, v7, v8

    const/4 v0, 0x5

    aput p1, v7, v0

    const/4 p1, 0x6

    aput v5, v7, p1

    const/4 p1, 0x7

    aput v5, v7, p1

    invoke-virtual {p0, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1801
    :cond_57
    return-void
.end method

.method private greylist-max-o updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .registers 19

    .line 1852
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1855
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1858
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    .line 1860
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/4 v3, 0x5

    invoke-static {v0, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v2

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1862
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    const/4 v4, 0x6

    invoke-static {v0, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v2

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1864
    iget-boolean v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1866
    const/4 v2, 0x4

    iget v6, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1869
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 1871
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 1873
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 1876
    iget-object v11, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_4f

    move v11, v9

    goto :goto_50

    :cond_4f
    move v11, v2

    .line 1877
    :goto_50
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->hasCenterColor()Z

    move-result v12

    .line 1879
    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    goto :goto_5c

    :cond_5b
    move v13, v2

    .line 1880
    :goto_5c
    if-eqz v8, :cond_63

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    goto :goto_64

    :cond_63
    move v14, v2

    .line 1881
    :goto_64
    if-eqz v10, :cond_6b

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    goto :goto_6c

    :cond_6b
    move v15, v2

    .line 1883
    :goto_6c
    if-eqz v11, :cond_7f

    move/from16 p0, v2

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, p0

    if-eqz v2, :cond_81

    .line 1884
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, p0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    goto :goto_81

    .line 1883
    :cond_7f
    move/from16 p0, v2

    .line 1886
    :cond_81
    :goto_81
    if-eqz v12, :cond_91

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v9

    if-eqz v2, :cond_91

    .line 1887
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    .line 1889
    :cond_91
    if-eqz v12, :cond_a2

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v5

    if-eqz v2, :cond_a2

    .line 1891
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    goto :goto_b2

    .line 1892
    :cond_a2
    if-eqz v11, :cond_b2

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v9

    if-eqz v2, :cond_b2

    .line 1895
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    .line 1898
    :cond_b2
    :goto_b2
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_be

    if-eqz v12, :cond_bb

    goto :goto_be

    :cond_bb
    move/from16 v2, p0

    goto :goto_bf

    :cond_be
    :goto_be
    move v2, v9

    .line 1901
    :goto_bf
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, 0x3

    if-eqz v2, :cond_108

    .line 1902
    new-array v2, v11, [Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1903
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1904
    if-eqz v6, :cond_cd

    goto :goto_d1

    :cond_cd
    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_d1
    aput-object v6, v2, p0

    .line 1905
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1906
    if-eqz v8, :cond_d8

    goto :goto_dc

    :cond_d8
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :goto_dc
    aput-object v8, v2, v9

    .line 1907
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1908
    if-eqz v10, :cond_e3

    goto :goto_e7

    :cond_e3
    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :goto_e7
    aput-object v10, v2, v5

    .line 1910
    new-array v2, v11, [F

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 1911
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/4 v6, 0x0

    aput v6, v2, p0

    .line 1913
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    iget v6, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_ff

    iget v6, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    goto :goto_101

    :cond_ff
    iget v6, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    :goto_101
    aput v6, v2, v9

    .line 1914
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    aput v7, v2, v5

    goto :goto_122

    .line 1916
    :cond_108
    new-array v2, v5, [Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1917
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1918
    if-eqz v6, :cond_111

    goto :goto_115

    :cond_111
    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_115
    aput-object v6, v2, p0

    .line 1919
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1920
    if-eqz v10, :cond_11c

    goto :goto_120

    :cond_11c
    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :goto_120
    aput-object v10, v2, v9

    .line 1923
    :goto_122
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    int-to-float v2, v2

    invoke-virtual {v0, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    float-to-int v2, v2

    .line 1931
    sget-boolean v6, Landroid/graphics/drawable/GradientDrawable;->sWrapNegativeAngleMeasurements:Z

    if-eqz v6, :cond_137

    .line 1932
    rem-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    goto :goto_13b

    .line 1934
    :cond_137
    rem-int/lit16 v2, v2, 0x168

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 1937
    :goto_13b
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    if-ltz v2, :cond_16e

    .line 1938
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    sparse-switch v2, :sswitch_data_1a6

    goto :goto_16d

    .line 1961
    :sswitch_145
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_16d

    .line 1958
    :sswitch_14a
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1959
    goto :goto_16d

    .line 1955
    :sswitch_14f
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1956
    goto :goto_16d

    .line 1952
    :sswitch_154
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1953
    goto :goto_16d

    .line 1949
    :sswitch_159
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1950
    goto :goto_16d

    .line 1946
    :sswitch_15e
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1947
    goto :goto_16d

    .line 1943
    :sswitch_163
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1944
    goto :goto_16d

    .line 1940
    :sswitch_168
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1941
    nop

    .line 1962
    :goto_16d
    goto :goto_172

    .line 1965
    :cond_16e
    sget-object v2, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1968
    :goto_172
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1969
    if-eqz v0, :cond_1a5

    .line 1972
    iget v2, v0, Landroid/util/TypedValue;->type:I

    if-ne v2, v4, :cond_18c

    .line 1973
    invoke-virtual {v0, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    .line 1975
    iget v0, v0, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0xf

    .line 1977
    if-ne v0, v9, :cond_18a

    .line 1978
    goto :goto_18b

    .line 1980
    :cond_18a
    move v5, v9

    .line 1982
    :goto_18b
    goto :goto_1a1

    :cond_18c
    iget v2, v0, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_19b

    .line 1983
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    .line 1984
    move/from16 v5, p0

    goto :goto_1a1

    .line 1986
    :cond_19b
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 1987
    move/from16 v5, p0

    .line 1990
    :goto_1a1
    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1991
    iput v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 1993
    :cond_1a5
    return-void

    :sswitch_data_1a6
    .sparse-switch
        0x0 -> :sswitch_168
        0x2d -> :sswitch_163
        0x5a -> :sswitch_15e
        0x87 -> :sswitch_159
        0xb4 -> :sswitch_154
        0xe1 -> :sswitch_14f
        0x10e -> :sswitch_14a
        0x13b -> :sswitch_145
    .end sparse-switch
.end method

.method private greylist-max-o updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .registers 8

    .line 1749
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1752
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1755
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    .line 1757
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_1c

    .line 1758
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1761
    :cond_1c
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1762
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 1763
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 1764
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1765
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 1762
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1766
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1767
    return-void
.end method

.method private greylist-max-o updateGradientDrawableSize(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 1996
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1999
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 2002
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    .line 2004
    const/4 v1, 0x1

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 2005
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 2006
    return-void
.end method

.method private greylist-max-o updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 1836
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1839
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1842
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    .line 1844
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1846
    if-eqz p1, :cond_1b

    .line 1847
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1849
    :cond_1b
    return-void
.end method

.method private greylist-max-o updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .registers 7

    .line 1804
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1807
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1810
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    .line 1814
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1815
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1817
    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 1820
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 1822
    if-nez v3, :cond_2c

    .line 1823
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1826
    :cond_2c
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_3c

    .line 1827
    const/4 v4, 0x3

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    .line 1829
    invoke-virtual {p0, v1, v3, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 1830
    goto :goto_3f

    .line 1831
    :cond_3c
    invoke-virtual {p0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 1833
    :goto_3f
    return-void
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .registers 9

    .line 2512
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2514
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2515
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    .line 2516
    iget-object v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2517
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2518
    goto :goto_28

    :cond_17
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_21

    .line 2522
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_28

    .line 2525
    :cond_21
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2528
    :goto_28
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 2530
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v2, 0x1

    if-ltz v0, :cond_76

    .line 2531
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 2532
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2533
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2535
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5a

    .line 2536
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    .line 2537
    iget-object v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2539
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2542
    :cond_5a
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_76

    .line 2543
    new-instance v0, Landroid/graphics/DashPathEffect;

    iget v4, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v4, v6, v1

    aput v5, v6, v2

    invoke-direct {v0, v6, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 2545
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2549
    :cond_76
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 2551
    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 2553
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->-$$Nest$mcomputeOpacity(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 2554
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 8

    .line 1588
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1591
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1594
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    .line 1596
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1597
    const/4 v1, 0x0

    iget-boolean v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1599
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v3, 0x4

    const/4 v4, -0x1

    if-eq v1, v2, :cond_2d

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-ne v1, v3, :cond_6c

    .line 1600
    :cond_2d
    const/4 v1, 0x7

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1603
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-ne v1, v4, :cond_42

    .line 1604
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1608
    :cond_42
    const/16 v1, 0x8

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1611
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-ne v1, v4, :cond_59

    .line 1612
    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1616
    :cond_59
    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1619
    const/16 v1, 0xe

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    .line 1623
    :cond_6c
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1624
    if-eq v1, v4, :cond_7c

    .line 1625
    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1628
    :cond_7c
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1629
    if-eqz v1, :cond_85

    .line 1630
    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1633
    :cond_85
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1635
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 1637
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1639
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    const/16 v5, 0xd

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 1641
    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1642
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 6

    .line 1543
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1545
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1546
    if-nez v0, :cond_8

    .line 1547
    return-void

    .line 1550
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    .line 1552
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-eqz v1, :cond_26

    .line 1553
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    sget-object v3, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1555
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1556
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1559
    :cond_26
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1560
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1563
    :cond_3a
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4e

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1564
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1567
    :cond_4e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_62

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1568
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1571
    :cond_62
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_8b

    .line 1572
    nop

    :goto_67
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v1, v1

    if-ge v2, v1, :cond_8b

    .line 1573
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v1, v1, v2

    if-eqz v1, :cond_88

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1574
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1572
    :cond_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 1579
    :cond_8b
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    .line 1581
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1582
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 1646
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 2116
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 2117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 2118
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 20

    .line 765
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v1

    if-nez v1, :cond_9

    .line 767
    return-void

    .line 772
    :cond_9
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 773
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    if-eqz v1, :cond_1c

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    move v9, v1

    goto :goto_1d

    :cond_1c
    move v9, v8

    .line 775
    :goto_1d
    invoke-direct {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v1

    .line 776
    invoke-direct {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v2

    .line 778
    const/4 v3, 0x1

    const/4 v10, 0x0

    if-lez v2, :cond_39

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_39

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 779
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    cmpl-float v4, v4, v10

    if-lez v4, :cond_39

    move v11, v3

    goto :goto_3a

    :cond_39
    move v11, v8

    .line 780
    :goto_3a
    if-lez v1, :cond_3e

    move v4, v3

    goto :goto_3f

    :cond_3e
    move v4, v8

    .line 781
    :goto_3f
    iget-object v12, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 782
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v5, :cond_48

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_4a

    :cond_48
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    :goto_4a
    move-object v13, v5

    .line 789
    if-eqz v11, :cond_60

    if-eqz v4, :cond_60

    iget v4, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_60

    const/16 v4, 0xff

    if-ge v2, v4, :cond_60

    iget v5, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-lt v5, v4, :cond_5e

    if-eqz v13, :cond_60

    :cond_5e
    move v14, v3

    goto :goto_61

    :cond_60
    move v14, v8

    .line 799
    :goto_61
    if-eqz v14, :cond_ae

    .line 800
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6e

    .line 801
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 803
    :cond_6e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget-boolean v2, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 804
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 805
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 807
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 808
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v1

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v1

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v1

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 814
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 815
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 816
    goto :goto_e1

    .line 820
    :cond_ae
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 821
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-boolean v3, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 822
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 823
    if-eqz v13, :cond_ce

    iget-object v1, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_ce

    .line 824
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    :cond_ce
    if-eqz v11, :cond_e1

    .line 827
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 828
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-boolean v2, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 829
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 833
    :cond_e1
    :goto_e1
    iget v1, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v1, :pswitch_data_278

    move-object/from16 v1, p1

    goto/16 :goto_265

    .line 878
    :pswitch_ea
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/flags/Flags;->gradientDrawableShapeArcForRoundedCap()Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 880
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 881
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 883
    iget v3, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_105

    iget v3, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v3, v3

    goto :goto_10e

    .line 884
    :cond_105
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v5, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v3, v5

    .line 885
    :goto_10e
    iget v5, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v5, v4, :cond_116

    iget v4, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v4, v4

    goto :goto_11f

    .line 886
    :cond_116
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v4, v5

    .line 887
    :goto_11f
    sub-float/2addr v4, v3

    .line 888
    iget-boolean v5, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    const/high16 v13, 0x43b40000    # 360.0f

    if-eqz v5, :cond_131

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v13

    const v6, 0x461c4000    # 10000.0f

    div-float/2addr v5, v6

    goto :goto_132

    :cond_131
    move v5, v13

    .line 889
    :goto_132
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    sub-float v15, v1, v4

    move/from16 v16, v13

    sub-float v13, v2, v4

    add-float/2addr v1, v4

    add-float/2addr v2, v4

    invoke-virtual {v6, v15, v13, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 893
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 894
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 895
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    invoke-direct {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->getStrokeLineCapForPaint(I)Landroid/graphics/Paint$Cap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 896
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move v4, v5

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 898
    if-eqz v11, :cond_1ab

    .line 899
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    if-nez v2, :cond_170

    .line 900
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    goto :goto_175

    .line 902
    :cond_170
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 904
    :goto_175
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    if-nez v2, :cond_181

    .line 905
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    goto :goto_186

    .line 907
    :cond_181
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 909
    :goto_186
    cmpl-float v2, v4, v16

    if-nez v2, :cond_194

    .line 910
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_19b

    .line 912
    :cond_194
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v10, v4, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 918
    :goto_19b
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mArcPath:Landroid/graphics/Path;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 919
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mArcOutlinePath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 923
    :cond_1ab
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 924
    goto/16 :goto_265

    .line 878
    :cond_1b4
    move-object/from16 v1, p1

    goto :goto_1b9

    .line 833
    :pswitch_1b7
    move-object/from16 v1, p1

    .line 927
    :goto_1b9
    invoke-direct {v0, v12}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v2

    .line 928
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 929
    if-eqz v11, :cond_265

    .line 930
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_265

    .line 870
    :pswitch_1cb
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 871
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 872
    if-eqz v11, :cond_265

    .line 873
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move v5, v3

    move/from16 v17, v4

    move v4, v2

    move/from16 v2, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_265

    .line 864
    :pswitch_1e6
    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 865
    if-eqz v11, :cond_265

    .line 866
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_265

    .line 835
    :pswitch_1f9
    move-object/from16 v1, p1

    iget-object v2, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v2, :cond_213

    .line 836
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 837
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 838
    if-eqz v11, :cond_265

    .line 839
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_265

    .line 841
    :cond_213
    iget v2, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_243

    .line 847
    iget v2, v12, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 848
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 847
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 849
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 850
    if-eqz v11, :cond_242

    .line 851
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 853
    :cond_242
    goto :goto_265

    .line 854
    :cond_243
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-nez v2, :cond_255

    if-nez v13, :cond_255

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 855
    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_25c

    .line 856
    :cond_255
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 858
    :cond_25c
    if-eqz v11, :cond_265

    .line 859
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 935
    :cond_265
    :goto_265
    if-eqz v14, :cond_26b

    .line 936
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_277

    .line 938
    :cond_26b
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 939
    if-eqz v11, :cond_277

    .line 940
    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 943
    :cond_277
    :goto_277
    return-void

    :pswitch_data_278
    .packed-switch 0x0
        :pswitch_1f9
        :pswitch_1e6
        :pswitch_1cb
        :pswitch_1b7
        :pswitch_ea
    .end packed-switch
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 1315
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1302
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1238
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1329
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getColors()[I
    .registers 4

    .line 750
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_8

    .line 751
    const/4 v0, 0x0

    return-object v0

    .line 753
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v0, v0

    new-array v0, v0, [I

    .line 754
    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    .line 755
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2b

    .line 756
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v0, v1

    .line 754
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 759
    :cond_2e
    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 2035
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 2036
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public whitelist getCornerRadii()[F
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 304
    if-nez v0, :cond_8

    .line 305
    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_8
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public whitelist getCornerRadius()F
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    return v0
.end method

.method public whitelist getGradientCenterX()F
    .registers 2

    .line 559
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method public whitelist getGradientCenterY()F
    .registers 2

    .line 570
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method public whitelist getGradientRadius()F
    .registers 3

    .line 601
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 602
    const/4 v0, 0x0

    return v0

    .line 605
    :cond_9
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 606
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    return v0
.end method

.method public whitelist getGradientType()I
    .registers 2

    .line 524
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return v0
.end method

.method public whitelist getInnerRadius()I
    .registers 2

    .line 1018
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    return v0
.end method

.method public whitelist getInnerRadiusRatio()F
    .registers 2

    .line 996
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    return v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 2025
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 2020
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 3

    .line 1358
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1359
    const/4 v0, -0x1

    goto :goto_15

    :cond_14
    const/4 v0, -0x3

    .line 1358
    :goto_15
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .line 2030
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 2

    .line 679
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 8

    .line 2056
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2057
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2060
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v2, :cond_22

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 2062
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-ne v2, v3, :cond_24

    :cond_22
    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 2063
    :goto_25
    const/4 v3, 0x0

    if-eqz v2, :cond_37

    .line 2064
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    goto :goto_38

    .line 2065
    :cond_37
    move v2, v3

    .line 2063
    :goto_38
    invoke-virtual {p1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 2067
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/high16 v4, 0x3f000000    # 0.5f

    packed-switch v2, :pswitch_data_9e

    .line 2100
    return-void

    .line 2089
    :pswitch_43
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4b

    .line 2090
    const v0, 0x38d1b717    # 1.0E-4f

    goto :goto_52

    :cond_4b
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    mul-float/2addr v0, v4

    .line 2091
    :goto_52
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    .line 2092
    sub-float v3, v2, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 2093
    add-float/2addr v2, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 2095
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 2096
    return-void

    .line 2084
    :pswitch_6e
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 2085
    return-void

    .line 2069
    :pswitch_72
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v2, :cond_7f

    .line 2070
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 2071
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 2072
    return-void

    .line 2075
    :cond_7f
    nop

    .line 2076
    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9a

    .line 2078
    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2079
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 2078
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2081
    :cond_9a
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 2082
    return-void

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_72
        :pswitch_6e
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 258
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 260
    const/4 p1, 0x1

    return p1

    .line 262
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public whitelist getShape()I
    .registers 2

    .line 492
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    return v0
.end method

.method public blacklist getStrokeCap()I
    .registers 2

    .line 1080
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    return v0
.end method

.method public whitelist getThickness()I
    .registers 2

    .line 1065
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    return v0
.end method

.method public whitelist getThicknessRatio()F
    .registers 2

    .line 1044
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    return v0
.end method

.method public whitelist getUseLevel()Z
    .registers 2

    .line 664
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 3

    .line 1294
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1295
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1296
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_1a
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_28

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1297
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 1295
    :goto_29
    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1528
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1530
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    .line 1532
    sget-object v0, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1533
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1534
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1536
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1538
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1539
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 3

    .line 1285
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1286
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1287
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_14
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1288
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_20
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2d

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1289
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    .line 1286
    :goto_30
    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 2104
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1a

    .line 2105
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2106
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 2107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 2109
    :cond_1a
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1364
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 1365
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 1366
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1367
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1368
    return-void
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 2

    .line 1372
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 1373
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1374
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1375
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1376
    return p1
.end method

.method protected whitelist onStateChange([I)Z
    .registers 8

    .line 1243
    nop

    .line 1245
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1246
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1247
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 1248
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 1249
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    .line 1250
    if-eq v4, v1, :cond_1c

    .line 1251
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1252
    move v1, v2

    goto :goto_1d

    .line 1256
    :cond_1c
    move v1, v3

    :goto_1d
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 1257
    if-eqz v4, :cond_33

    .line 1258
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1259
    if-eqz v5, :cond_33

    .line 1260
    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 1261
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 1262
    if-eq v5, p1, :cond_33

    .line 1263
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1264
    move v1, v2

    .line 1269
    :cond_33
    iget-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_48

    iget-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz p1, :cond_48

    .line 1270
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1272
    move v1, v2

    .line 1275
    :cond_48
    if-eqz v1, :cond_4e

    .line 1276
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1277
    return v2

    .line 1280
    :cond_4e
    return v3
.end method

.method public whitelist setAlpha(I)V
    .registers 3

    .line 1307
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_9

    .line 1308
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 1309
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1311
    :cond_9
    return-void
.end method

.method public greylist-max-o setAntiAlias(Z)V
    .registers 3

    .line 960
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 961
    return-void
.end method

.method public whitelist setColor(I)V
    .registers 4

    .line 1195
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 1196
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1197
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1198
    return-void
.end method

.method public whitelist setColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1216
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1217
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1c

    .line 1219
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 1220
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1221
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 1222
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1223
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1225
    :goto_1c
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1334
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_9

    .line 1335
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1336
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1338
    :cond_9
    return-void
.end method

.method public whitelist setColors([I)V
    .registers 3

    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    .line 716
    return-void
.end method

.method public whitelist setColors([I[F)V
    .registers 4

    .line 735
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    .line 736
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 737
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 738
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 739
    return-void
.end method

.method public whitelist setCornerRadii([F)V
    .registers 3

    .line 284
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    .line 285
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 286
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 287
    return-void
.end method

.method public whitelist setCornerRadius(F)V
    .registers 3

    .line 327
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    .line 328
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 329
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 330
    return-void
.end method

.method public whitelist setDither(Z)V
    .registers 3

    .line 1320
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    if-eq p1, v0, :cond_d

    .line 1321
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1322
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1324
    :cond_d
    return-void
.end method

.method public whitelist setGradientCenter(FF)V
    .registers 4

    .line 546
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    .line 547
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 548
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 549
    return-void
.end method

.method public whitelist setGradientRadius(F)V
    .registers 4

    .line 588
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    .line 589
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 590
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 591
    return-void
.end method

.method public whitelist setGradientType(I)V
    .registers 3

    .line 509
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    .line 510
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 511
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 512
    return-void
.end method

.method public whitelist setInnerRadius(I)V
    .registers 3

    .line 1006
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1007
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1008
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1009
    return-void
.end method

.method public whitelist setInnerRadiusRatio(F)V
    .registers 3

    .line 981
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    .line 984
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 985
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 986
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 987
    return-void

    .line 982
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ratio must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .registers 3

    .line 695
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 696
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 697
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 698
    return-void
.end method

.method public whitelist setPadding(IIII)V
    .registers 7

    .line 1111
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    .line 1112
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1115
    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1116
    iget-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object p1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1117
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1118
    return-void
.end method

.method public whitelist setShape(I)V
    .registers 3

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 479
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    .line 480
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 481
    return-void
.end method

.method public whitelist setSize(II)V
    .registers 4

    .line 460
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    .line 461
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 462
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 463
    return-void
.end method

.method public whitelist setStroke(II)V
    .registers 4

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 361
    return-void
.end method

.method public whitelist setStroke(IIFF)V
    .registers 7

    .line 396
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 397
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    .line 398
    return-void
.end method

.method public whitelist setStroke(ILandroid/content/res/ColorStateList;)V
    .registers 4

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 378
    return-void
.end method

.method public whitelist setStroke(ILandroid/content/res/ColorStateList;FF)V
    .registers 7

    .line 418
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 420
    const/4 v0, 0x0

    if-nez p2, :cond_9

    .line 421
    goto :goto_11

    .line 423
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 424
    invoke-virtual {p2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 426
    :goto_11
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    .line 427
    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .registers 3

    .line 1094
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeCap:I

    .line 1095
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1096
    return-void
.end method

.method public whitelist setThickness(I)V
    .registers 3

    .line 1053
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1054
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1055
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1056
    return-void
.end method

.method public whitelist setThicknessRatio(F)V
    .registers 3

    .line 1029
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    .line 1032
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1033
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1034
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1035
    return-void

    .line 1030
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ratio must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4

    .line 1350
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1351
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1353
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1354
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1342
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1343
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1344
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1345
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1346
    return-void
.end method

.method public whitelist setUseLevel(Z)V
    .registers 3

    .line 649
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 650
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 651
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 652
    return-void
.end method

.method public greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3

    .line 951
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 952
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 953
    return-void
.end method
