.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ScaleType;,
        Landroid/widget/ImageView$ImageDrawableCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImageView"

.field private static greylist-max-o sCompatAdjustViewBounds:Z

.field private static greylist-max-o sCompatDone:Z

.field private static greylist-max-o sCompatDrawableVisibilityDispatch:Z

.field private static greylist-max-o sCompatUseCorrectStreamDensity:Z

.field private static final greylist-max-o sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final greylist-max-o sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private greylist mAdjustViewBounds:Z

.field private greylist mAlpha:I

.field private greylist-max-o mBaseline:I

.field private greylist-max-o mBaselineAlignBottom:Z

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist mCropToPadding:Z

.field private greylist-max-p mDrawMatrix:Landroid/graphics/Matrix;

.field private greylist mDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mDrawableBlendMode:Landroid/graphics/BlendMode;

.field private greylist mDrawableHeight:I

.field private greylist-max-o mDrawableTintList:Landroid/content/res/ColorStateList;

.field private greylist mDrawableWidth:I

.field private blacklist mHasAlpha:Z

.field private greylist-max-o mHasColorFilter:Z

.field private blacklist mHasDrawableBlendMode:Z

.field private greylist-max-o mHasDrawableTint:Z

.field private blacklist mHasLevelSet:Z

.field private blacklist mHasXfermode:Z

.field private greylist-max-o mHaveFrame:Z

.field private blacklist mHdrBrightRegion:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;"
        }
    .end annotation
.end field

.field private blacklist mHdrBrightRegionOffset:Landroid/graphics/PointF;

.field private blacklist mHdrBrightRegionPadding:[F

.field private blacklist mHdrDimmerEnabled:Z

.field private blacklist mHdrViewPadding:[F

.field private blacklist mIsScaleTypeMatrix:Z

.field private greylist-max-o mLevel:I

.field private greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-p mMaxHeight:I

.field private greylist-max-p mMaxWidth:I

.field private greylist-max-o mMergeState:Z

.field private greylist-max-r mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private greylist mResource:I

.field private greylist-max-o mScaleType:Landroid/widget/ImageView$ScaleType;

.field private greylist-max-o mState:[I

.field private final greylist-max-o mTempDst:Landroid/graphics/RectF;

.field private final greylist-max-o mTempSrc:Landroid/graphics/RectF;

.field private greylist mUri:Landroid/net/Uri;

.field private final greylist-max-o mViewAlphaScale:I

.field private greylist-max-o mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmResource(Landroid/widget/ImageView;I)V
    .registers 2

    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUri(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 177
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 1122
    new-array v0, v6, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 117
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 118
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 120
    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 122
    iput v1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 127
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 129
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    .line 130
    const/16 v2, 0xff

    iput v2, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 132
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    .line 133
    const/16 v2, 0x100

    iput v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 135
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    iput-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 139
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 140
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 141
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 142
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 144
    iput-object v1, p0, Landroid/widget/ImageView;->mState:[I

    .line 145
    iput-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 146
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    .line 147
    iput v0, p0, Landroid/widget/ImageView;->mLevel:I

    .line 152
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 156
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 157
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 162
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 163
    iput-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1752
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/16 v3, 0xf

    new-array v3, v3, [F

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    .line 1753
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mHdrBrightRegionOffset:Landroid/graphics/PointF;

    .line 1754
    const/4 v1, 0x4

    new-array v2, v1, [F

    iput-object v2, p0, Landroid/widget/ImageView;->mHdrBrightRegionPadding:[F

    .line 1755
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHdrDimmerEnabled:Z

    .line 1756
    iput-boolean v0, p0, Landroid/widget/ImageView;->mIsScaleTypeMatrix:Z

    .line 1776
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/ImageView;->mHdrViewPadding:[F

    .line 190
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 191
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 203
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    const/4 v8, 0x0

    iput v8, v7, Landroid/widget/ImageView;->mResource:I

    .line 117
    iput-boolean v8, v7, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 118
    iput-boolean v8, v7, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 120
    const v9, 0x7fffffff

    iput v9, v7, Landroid/widget/ImageView;->mMaxWidth:I

    .line 122
    iput v9, v7, Landroid/widget/ImageView;->mMaxHeight:I

    .line 126
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 127
    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 129
    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasXfermode:Z

    .line 130
    const/16 v10, 0xff

    iput v10, v7, Landroid/widget/ImageView;->mAlpha:I

    .line 132
    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasAlpha:Z

    .line 133
    const/16 v1, 0x100

    iput v1, v7, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 135
    iput-object v0, v7, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    iput-object v0, v7, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 139
    iput-object v0, v7, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 140
    iput-object v0, v7, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 141
    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 142
    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 144
    iput-object v0, v7, Landroid/widget/ImageView;->mState:[I

    .line 145
    iput-boolean v8, v7, Landroid/widget/ImageView;->mMergeState:Z

    .line 146
    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasLevelSet:Z

    .line 147
    iput v8, v7, Landroid/widget/ImageView;->mLevel:I

    .line 152
    iput-object v0, v7, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 156
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 162
    const/4 v11, -0x1

    iput v11, v7, Landroid/widget/ImageView;->mBaseline:I

    .line 163
    iput-boolean v8, v7, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1752
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/16 v2, 0xf

    new-array v2, v2, [F

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v7, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    .line 1753
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, v7, Landroid/widget/ImageView;->mHdrBrightRegionOffset:Landroid/graphics/PointF;

    .line 1754
    const/4 v12, 0x4

    new-array v0, v12, [F

    iput-object v0, v7, Landroid/widget/ImageView;->mHdrBrightRegionPadding:[F

    .line 1755
    iput-boolean v8, v7, Landroid/widget/ImageView;->mHdrDimmerEnabled:Z

    .line 1756
    iput-boolean v8, v7, Landroid/widget/ImageView;->mIsScaleTypeMatrix:Z

    .line 1776
    new-array v0, v12, [F

    iput-object v0, v7, Landroid/widget/ImageView;->mHdrViewPadding:[F

    .line 205
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->initImageView()V

    .line 207
    sget-object v0, Lcom/android/internal/R$styleable;->ImageView:[I

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v6, p4

    invoke-virtual {v13, v14, v0, v15, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 209
    .local v5, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->ImageView:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v10, v5

    .end local v5    # "a":Landroid/content/res/TypedArray;
    .local v10, "a":Landroid/content/res/TypedArray;
    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/ImageView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 212
    invoke-virtual {v10, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9a

    .line 214
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_9a
    const/4 v1, 0x6

    invoke-virtual {v10, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v7, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 218
    const/16 v1, 0x8

    invoke-virtual {v10, v1, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v7, Landroid/widget/ImageView;->mBaseline:I

    .line 220
    const/4 v1, 0x2

    invoke-virtual {v10, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 221
    const/4 v1, 0x3

    invoke-virtual {v10, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 222
    invoke-virtual {v10, v12, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 224
    const/4 v1, 0x1

    invoke-virtual {v10, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 225
    .local v2, "index":I
    if-ltz v2, :cond_ce

    .line 226
    sget-object v3, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 229
    :cond_ce
    const/4 v3, 0x5

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 230
    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 231
    iput-boolean v1, v7, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 235
    sget-object v3, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    iput-object v3, v7, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 236
    iput-boolean v1, v7, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 239
    :cond_e3
    const/16 v3, 0x9

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 240
    invoke-virtual {v10, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, v7, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 242
    iput-boolean v1, v7, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 245
    :cond_f9
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 247
    const/16 v1, 0xa

    const/16 v3, 0xff

    invoke-virtual {v10, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 248
    .local v1, "alpha":I
    if-eq v1, v3, :cond_109

    .line 249
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 252
    :cond_109
    const/4 v3, 0x7

    invoke-virtual {v10, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 255
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    return-void
.end method

.method private blacklist applyAlpha()V
    .registers 3

    .line 1656
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    if-eqz v1, :cond_17

    .line 1657
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1658
    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v1, v1, 0x100

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1660
    :cond_17
    return-void
.end method

.method private blacklist applyColorFilter()V
    .registers 3

    .line 1649
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    if-eqz v1, :cond_13

    .line 1650
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1651
    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1653
    :cond_13
    return-void
.end method

.method private greylist-max-o applyImageTint()V
    .registers 3

    .line 741
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    if-eqz v1, :cond_37

    .line 742
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 744
    iget-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-eqz v1, :cond_1b

    .line 745
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 748
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    if-eqz v0, :cond_26

    .line 749
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 754
    :cond_26
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 755
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 758
    :cond_37
    return-void
.end method

.method private blacklist applyXfermode()V
    .registers 3

    .line 1642
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    if-eqz v1, :cond_13

    .line 1643
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1644
    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 1646
    :cond_13
    return-void
.end method

.method private greylist-max-o configureBounds()V
    .registers 13

    .line 1289
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11d

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-nez v0, :cond_a

    goto/16 :goto_11d

    .line 1293
    :cond_a
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1294
    .local v0, "dwidth":I
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1296
    .local v1, "dheight":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 1297
    .local v2, "vwidth":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 1299
    .local v3, "vheight":I
    const/4 v4, 0x0

    if-ltz v0, :cond_27

    if-ne v2, v0, :cond_2c

    :cond_27
    if-ltz v1, :cond_2e

    if-ne v3, v1, :cond_2c

    goto :goto_2e

    :cond_2c
    move v5, v4

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v5, 0x1

    .line 1302
    .local v5, "fits":Z
    :goto_2f
    const/4 v6, 0x0

    if-lez v0, :cond_115

    if-lez v1, :cond_115

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v8, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_3c

    goto/16 :goto_115

    .line 1311
    :cond_3c
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1313
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v7, :cond_59

    .line 1315
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1316
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_11c

    .line 1318
    :cond_53
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_11c

    .line 1320
    :cond_59
    if-eqz v5, :cond_5f

    .line 1322
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_11c

    .line 1323
    :cond_5f
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v4, v6, :cond_82

    .line 1325
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1326
    sub-int v6, v2, v0

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    sub-int v8, v3, v1

    int-to-float v8, v8

    mul-float/2addr v8, v7

    .line 1327
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 1326
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_11c

    .line 1328
    :cond_82
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v6, :cond_ba

    .line 1329
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1332
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v8, 0x0

    .line 1334
    .local v8, "dy":F
    mul-int v9, v0, v3

    mul-int v10, v2, v1

    if-le v9, v10, :cond_9e

    .line 1335
    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    .line 1336
    .local v9, "scale":F
    int-to-float v10, v2

    int-to-float v11, v0

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    mul-float v6, v10, v7

    goto :goto_a7

    .line 1338
    .end local v9    # "scale":F
    :cond_9e
    int-to-float v9, v2

    int-to-float v10, v0

    div-float/2addr v9, v10

    .line 1339
    .restart local v9    # "scale":F
    int-to-float v10, v3

    int-to-float v11, v1

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    mul-float v8, v10, v7

    .line 1342
    :goto_a7
    invoke-virtual {v4, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1343
    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1344
    .end local v6    # "dx":F
    .end local v8    # "dy":F
    .end local v9    # "scale":F
    goto :goto_11c

    :cond_ba
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v6, :cond_f4

    .line 1345
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1350
    if-gt v0, v2, :cond_cb

    if-gt v1, v3, :cond_cb

    .line 1351
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "scale":F
    goto :goto_d5

    .line 1353
    .end local v4    # "scale":F
    :cond_cb
    int-to-float v4, v2

    int-to-float v6, v0

    div-float/2addr v4, v6

    int-to-float v6, v3

    int-to-float v8, v1

    div-float/2addr v6, v8

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1357
    .restart local v4    # "scale":F
    :goto_d5
    int-to-float v6, v2

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v6, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 1358
    .restart local v6    # "dx":F
    int-to-float v8, v3

    int-to-float v9, v1

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 1360
    .local v7, "dy":F
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1361
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1362
    .end local v4    # "scale":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    goto :goto_11c

    .line 1364
    :cond_f4
    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1365
    iget-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1367
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1368
    iget-object v6, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v7, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v8, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_11c

    .line 1306
    :cond_115
    :goto_115
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1307
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1371
    :goto_11c
    return-void

    .line 1290
    .end local v0    # "dwidth":I
    .end local v1    # "dheight":I
    .end local v2    # "vwidth":I
    .end local v3    # "vheight":I
    .end local v5    # "fits":Z
    :cond_11d
    :goto_11d
    return-void
.end method

.method private greylist-max-o getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1010
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Unable to open content: "

    const-string v4, "ImageView"

    if-eqz v1, :cond_40

    .line 1014
    :try_start_11
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 1015
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v1

    .line 1016
    .local v1, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v5, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v6, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v7, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    return-object v2

    .line 1017
    .end local v1    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :catch_2a
    move-exception v1

    .line 1018
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_8e

    .line 1020
    :cond_40
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1021
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_5a

    .line 1033
    :cond_51
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1023
    :cond_5a
    :goto_5a
    :try_start_5a
    sget-boolean v1, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_64

    :cond_63
    move-object v1, v2

    .line 1024
    .local v1, "res":Landroid/content/res/Resources;
    :goto_64
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v5

    .line 1026
    .local v5, "src":Landroid/graphics/ImageDecoder$Source;
    new-instance v6, Landroid/widget/ImageView$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Landroid/widget/ImageView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5, v6}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_77} :catch_78

    return-object v2

    .line 1029
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v5    # "src":Landroid/graphics/ImageDecoder$Source;
    :catch_78
    move-exception v1

    .line 1030
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 1035
    :goto_8e
    return-object v2
.end method

.method private greylist-max-o initImageView()V
    .registers 5

    .line 261
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 262
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 264
    sget-boolean v0, Landroid/widget/ImageView;->sCompatDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_34

    .line 265
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 266
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x11

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1f

    move v2, v1

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    sput-boolean v2, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    .line 267
    const/16 v2, 0x17

    if-le v0, v2, :cond_28

    move v2, v1

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    sput-boolean v2, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    .line 268
    const/16 v2, 0x18

    if-ge v0, v2, :cond_30

    move v3, v1

    :cond_30
    sput-boolean v3, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    .line 269
    sput-boolean v1, Landroid/widget/ImageView;->sCompatDone:Z

    .line 274
    .end local v0    # "targetSdkVersion":I
    :cond_34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_3e

    .line 275
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImportantForAutofill(I)V

    .line 277
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForContentCapture()I

    move-result v0

    if-nez v0, :cond_47

    .line 278
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImportantForContentCapture(I)V

    .line 280
    :cond_47
    return-void
.end method

.method private greylist-max-o isFilledByImage()Z
    .registers 9

    .line 1671
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1672
    return v1

    .line 1675
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1676
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1677
    .local v2, "matrix":Landroid/graphics/Matrix;
    const/4 v3, 0x1

    if-nez v2, :cond_2b

    .line 1678
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_29

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_29

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_29

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1679
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_29

    move v1, v3

    goto :goto_2a

    :cond_29
    nop

    .line 1678
    :goto_2a
    return v1

    .line 1680
    :cond_2b
    invoke-virtual {v2}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1681
    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 1682
    .local v4, "boundsSrc":Landroid/graphics/RectF;
    iget-object v5, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 1683
    .local v5, "boundsDst":Landroid/graphics/RectF;
    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1684
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1685
    iget v6, v5, Landroid/graphics/RectF;->left:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_60

    iget v6, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_60

    iget v6, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_60

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 1686
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_60

    move v1, v3

    goto :goto_61

    :cond_60
    nop

    .line 1685
    :goto_61
    return v1

    .line 1689
    .end local v4    # "boundsSrc":Landroid/graphics/RectF;
    .end local v5    # "boundsDst":Landroid/graphics/RectF;
    :cond_62
    return v1
.end method

.method static synthetic blacklist lambda$getDrawableFromUri$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 1027
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 1028
    return-void
.end method

.method private greylist resizeFromDrawable()V
    .registers 5

    .line 1099
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1100
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_23

    .line 1101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1102
    .local v1, "w":I
    if-gez v1, :cond_c

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1103
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1104
    .local v2, "h":I
    if-gez v2, :cond_14

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1105
    :cond_14
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v3, :cond_1c

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v2, v3, :cond_23

    .line 1106
    :cond_1c
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1107
    iput v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1108
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1111
    .end local v1    # "w":I
    .end local v2    # "h":I
    :cond_23
    return-void
.end method

.method private greylist-max-o resolveAdjustedSize(III)I
    .registers 8
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .line 1256
    move v0, p1

    .line 1257
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1258
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1259
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_1e

    goto :goto_1d

    .line 1274
    :sswitch_d
    move v0, v2

    goto :goto_1d

    .line 1264
    :sswitch_f
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1265
    goto :goto_1d

    .line 1270
    :sswitch_14
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1271
    nop

    .line 1277
    :goto_1d
    return v0

    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_14
        0x0 -> :sswitch_f
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method

.method private greylist resolveUri()V
    .registers 6

    .line 976
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 977
    return-void

    .line 980
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_c

    .line 981
    return-void

    .line 984
    :cond_c
    const/4 v0, 0x0

    .line 986
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/ImageView;->mResource:I

    const-string v2, "ImageView"

    if-eqz v1, :cond_3a

    .line 988
    :try_start_13
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_1d

    move-object v0, v1

    goto :goto_39

    .line 989
    :catch_1d
    move-exception v1

    .line 990
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    .line 993
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_39
    goto :goto_60

    .line 994
    :cond_3a
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_64

    .line 995
    invoke-direct {p0, v1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 997
    if-nez v0, :cond_60

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 1006
    :cond_60
    :goto_60
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    return-void

    .line 1003
    :cond_64
    return-void
.end method

.method private static greylist scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .registers 3
    .param p0, "st"    # Landroid/widget/ImageView$ScaleType;

    .line 1132
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist screenAntiBurnDimPaint()V
    .registers 5

    .line 1826
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScreenAntiBurnEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1827
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScreenAntiBurnDimRatio()F

    move-result v0

    .line 1828
    .local v0, "ratio":F
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1829
    .local v1, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 1830
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1831
    .local v2, "colorFilter":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1832
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1834
    .end local v0    # "ratio":F
    .end local v1    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .end local v2    # "colorFilter":Landroid/graphics/ColorMatrixColorFilter;
    :cond_24
    return-void
.end method

.method private greylist updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1052
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    if-eqz v0, :cond_a

    .line 1053
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1056
    :cond_a
    const/4 v0, 0x0

    .line 1058
    .local v0, "sameDrawable":Z
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_30

    .line 1059
    if-ne v2, p1, :cond_15

    move v5, v3

    goto :goto_16

    :cond_15
    move v5, v4

    :goto_16
    move v0, v5

    .line 1060
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1061
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1062
    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v1, :cond_30

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1063
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1067
    :cond_30
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1069
    if-eqz p1, :cond_99

    .line 1070
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1071
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1072
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1073
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1075
    :cond_4b
    if-eqz v0, :cond_51

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_74

    .line 1076
    :cond_51
    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_5d

    .line 1077
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_70

    move v4, v3

    goto :goto_70

    .line 1078
    :cond_5d
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_70

    move v4, v3

    :cond_70
    :goto_70
    move v1, v4

    .line 1079
    .local v1, "visible":Z
    invoke-virtual {p1, v1, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1081
    .end local v1    # "visible":Z
    :cond_74
    iget-boolean v1, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    if-eqz v1, :cond_7d

    .line 1082
    iget v1, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1084
    :cond_7d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1085
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1086
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 1087
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorFilter()V

    .line 1088
    invoke-direct {p0}, Landroid/widget/ImageView;->applyAlpha()V

    .line 1089
    invoke-direct {p0}, Landroid/widget/ImageView;->applyXfermode()V

    .line 1091
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    goto :goto_9e

    .line 1093
    :cond_99
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1095
    :goto_9e
    return-void
.end method


# virtual methods
.method public whitelist animateTransform(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 1404
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 1405
    return-void

    .line 1407
    :cond_5
    const/4 v1, 0x0

    if-nez p1, :cond_25

    .line 1408
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v0, v2

    .line 1409
    .local v0, "vwidth":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    .line 1410
    .local v2, "vheight":I
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1411
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1412
    .end local v0    # "vwidth":I
    .end local v2    # "vheight":I
    goto :goto_3c

    .line 1413
    :cond_25
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1414
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_37

    .line 1415
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1417
    :cond_37
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1419
    :goto_3c
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1420
    return-void
.end method

.method public final whitelist clearColorFilter()V
    .registers 2

    .line 1554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1555
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1386
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1388
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1389
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1391
    :cond_a
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 1375
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1377
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1378
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1379
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1380
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1382
    :cond_1a
    return-void
.end method

.method public blacklist enableHdrDimmer(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1792
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHdrDimmerEnabled:Z

    .line 1793
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 1738
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1739
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    move-result v0

    const-string v1, "layout:baseline"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1740
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1732
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdjustViewBounds()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public whitelist getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .line 1472
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_9

    .line 1473
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 1475
    :cond_9
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    return v0
.end method

.method public whitelist getBaselineAlignBottom()Z
    .registers 2

    .line 1519
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1577
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getCropToPadding()Z
    .registers 2

    .line 954
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 464
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v0, v1, :cond_9

    .line 466
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 468
    :cond_9
    return-object v0
.end method

.method public blacklist getHdrBrightRegion()Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "[F>;"
        }
    .end annotation

    .line 1804
    iget-boolean v0, p0, Landroid/widget/ImageView;->mIsScaleTypeMatrix:Z

    if-eqz v0, :cond_c4

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c4

    .line 1805
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/ImageView;->mHdrBrightRegionOffset:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->getGlobalVisibleRectF(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    .line 1806
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    .line 1807
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/ImageView;->mHdrBrightRegionPadding:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 1808
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Landroid/widget/ImageView;->mHdrBrightRegionPadding:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    add-float/2addr v2, v4

    .line 1809
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v6, p0, Landroid/widget/ImageView;->mHdrBrightRegionPadding:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    sub-float/2addr v4, v6

    .line 1810
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v8, p0, Landroid/widget/ImageView;->mHdrBrightRegionPadding:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-float/2addr v6, v8

    .line 1806
    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1811
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1812
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/widget/ImageView;->mHdrBrightRegionOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    .line 1813
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    const/16 v1, 0xa

    iget-object v2, p0, Landroid/widget/ImageView;->mHdrBrightRegionOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    .line 1814
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    const/16 v1, 0xb

    iget-object v2, p0, Landroid/widget/ImageView;->mHdrViewPadding:[F

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1815
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    const/16 v1, 0xc

    iget-object v2, p0, Landroid/widget/ImageView;->mHdrViewPadding:[F

    aget v2, v2, v5

    aput v2, v0, v1

    .line 1816
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    const/16 v1, 0xd

    iget-object v2, p0, Landroid/widget/ImageView;->mHdrViewPadding:[F

    aget v2, v2, v7

    aput v2, v0, v1

    .line 1817
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    const/16 v1, 0xe

    iget-object v2, p0, Landroid/widget/ImageView;->mHdrViewPadding:[F

    aget v2, v2, v9

    aput v2, v0, v1

    .line 1818
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegion:Landroid/util/Pair;

    return-object v0

    .line 1820
    :cond_c4
    invoke-super {p0}, Landroid/view/View;->getHdrBrightRegion()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHdrDimmerEnabled()Z
    .registers 2

    .line 1798
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHdrDimmerEnabled:Z

    return v0
.end method

.method public whitelist getImageAlpha()I
    .registers 2

    .line 1606
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public whitelist getImageMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 915
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_c

    .line 916
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    .line 918
    :cond_c
    return-object v0
.end method

.method public whitelist getImageTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 737
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 678
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 724
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_9

    .line 725
    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 724
    :goto_a
    return-object v0
.end method

.method public whitelist getMaxHeight()I
    .registers 2

    .line 427
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public whitelist getMaxWidth()I
    .registers 2

    .line 388
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public whitelist getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 904
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 2

    .line 322
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 295
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_21

    .line 296
    if-eqz p1, :cond_1d

    .line 298
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 299
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 300
    .local v1, "h":I
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_16

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1d

    .line 301
    :cond_16
    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 302
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 304
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 314
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_24

    .line 316
    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :goto_24
    return-void
.end method

.method public blacklist isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foreground"    # Landroid/graphics/drawable/Drawable;

    .line 1746
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1747
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    .line 1748
    .local v0, "lackFocusState":Z
    :goto_18
    invoke-super {p0, p1, p2}, Landroid/view/View;->isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v0, :cond_21

    move v1, v2

    :cond_21
    return v1
.end method

.method public whitelist isOpaque()Z
    .registers 3

    .line 1664
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v1, :cond_26

    .line 1665
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v0, v0, 0x100

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_26

    .line 1667
    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 1664
    :goto_29
    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 289
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 290
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 291
    :cond_a
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 1714
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1716
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_18

    .line 1717
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1719
    :cond_18
    return-void
.end method

.method public whitelist onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 1040
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_9

    .line 1041
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 1042
    :cond_9
    iget-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v1, :cond_e

    .line 1043
    return-object v0

    .line 1045
    :cond_e
    array-length v0, v0

    add-int/2addr v0, p1

    .line 1046
    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    .line 1045
    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 1723
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1725
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_f

    .line 1726
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1728
    :cond_f
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1424
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1426
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 1427
    return-void

    .line 1430
    :cond_8
    invoke-direct {p0}, Landroid/widget/ImageView;->screenAntiBurnDimPaint()V

    .line 1433
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v0, :cond_69

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-nez v0, :cond_14

    goto :goto_69

    .line 1437
    :cond_14
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_26

    iget v0, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v0, :cond_26

    iget v0, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v0, :cond_26

    .line 1438
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_68

    .line 1440
    :cond_26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1441
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1443
    iget-boolean v1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v1, :cond_50

    .line 1444
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    .line 1445
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    .line 1446
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1451
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_50
    iget v1, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1453
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_60

    .line 1454
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1456
    :cond_60
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1457
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1459
    .end local v0    # "saveCount":I
    :goto_68
    return-void

    .line 1434
    :cond_69
    :goto_69
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1137
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 1142
    const/4 v3, 0x0

    .line 1145
    .local v3, "desiredAspect":F
    const/4 v4, 0x0

    .line 1148
    .local v4, "resizeWidth":Z
    const/4 v5, 0x0

    .line 1150
    .local v5, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1151
    .local v6, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1153
    .local v7, "heightSpecMode":I
    iget-object v8, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-nez v8, :cond_21

    .line 1155
    const/4 v8, -0x1

    iput v8, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1156
    iput v8, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1157
    move v8, v9

    .local v8, "h":I
    move v10, v9

    .local v10, "w":I
    goto :goto_4c

    .line 1159
    .end local v8    # "h":I
    .end local v10    # "w":I
    :cond_21
    iget v8, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1160
    .local v8, "w":I
    iget v10, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1161
    .local v10, "h":I
    if-gtz v8, :cond_28

    const/4 v8, 0x1

    .line 1162
    :cond_28
    if-gtz v10, :cond_2b

    const/4 v10, 0x1

    .line 1166
    :cond_2b
    iget-boolean v11, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz v11, :cond_47

    .line 1167
    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v6, v12, :cond_36

    move v13, v11

    goto :goto_37

    :cond_36
    move v13, v9

    :goto_37
    move v4, v13

    .line 1168
    if-eq v7, v12, :cond_3b

    goto :goto_3c

    :cond_3b
    move v11, v9

    :goto_3c
    move v5, v11

    .line 1170
    int-to-float v11, v8

    int-to-float v12, v10

    div-float v3, v11, v12

    move/from16 v21, v10

    move v10, v8

    move/from16 v8, v21

    goto :goto_4c

    .line 1166
    :cond_47
    move/from16 v21, v10

    move v10, v8

    move/from16 v8, v21

    .line 1174
    .local v8, "h":I
    .local v10, "w":I
    :goto_4c
    iget v11, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    .line 1175
    .local v11, "pleft":I
    iget v12, v0, Landroid/widget/ImageView;->mPaddingRight:I

    .line 1176
    .local v12, "pright":I
    iget v13, v0, Landroid/widget/ImageView;->mPaddingTop:I

    .line 1177
    .local v13, "ptop":I
    iget v14, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    .line 1182
    .local v14, "pbottom":I
    if-nez v4, :cond_7d

    if-eqz v5, :cond_59

    goto :goto_7d

    .line 1241
    :cond_59
    add-int v15, v11, v12

    add-int/2addr v10, v15

    .line 1242
    add-int v15, v13, v14

    add-int/2addr v8, v15

    .line 1244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1245
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1247
    invoke-static {v10, v1, v9}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v15

    .line 1248
    .local v15, "widthSize":I
    invoke-static {v8, v2, v9}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v9

    move/from16 v16, v6

    move/from16 v18, v7

    .local v9, "heightSize":I
    goto/16 :goto_fa

    .line 1189
    .end local v9    # "heightSize":I
    .end local v15    # "widthSize":I
    :cond_7d
    :goto_7d
    add-int v9, v10, v11

    add-int/2addr v9, v12

    iget v15, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v9, v15, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v15

    .line 1192
    .restart local v15    # "widthSize":I
    add-int v9, v8, v13

    add-int/2addr v9, v14

    move/from16 v16, v6

    .end local v6    # "widthSpecMode":I
    .local v16, "widthSpecMode":I
    iget v6, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v9, v6, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    .line 1194
    .restart local v9    # "heightSize":I
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_f8

    .line 1196
    sub-int v6, v15, v11

    sub-int/2addr v6, v12

    int-to-float v6, v6

    sub-int v17, v9, v13

    move/from16 v18, v7

    .end local v7    # "heightSpecMode":I
    .local v18, "heightSpecMode":I
    sub-int v7, v17, v14

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1199
    .local v6, "actualAspect":F
    sub-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v17, v6

    .end local v6    # "actualAspect":F
    .local v17, "actualAspect":F
    float-to-double v6, v7

    const-wide v19, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v6, v6, v19

    if-lez v6, :cond_f7

    .line 1201
    const/4 v6, 0x0

    .line 1204
    .local v6, "done":Z
    if-eqz v4, :cond_d9

    .line 1205
    sub-int v7, v9, v13

    sub-int/2addr v7, v14

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    add-int/2addr v7, v11

    add-int/2addr v7, v12

    .line 1209
    .local v7, "newWidth":I
    if-nez v5, :cond_cf

    sget-boolean v19, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    if-nez v19, :cond_cf

    .line 1210
    move/from16 v19, v6

    .end local v6    # "done":Z
    .local v19, "done":Z
    iget v6, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v7, v6, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v6

    move v15, v6

    .end local v15    # "widthSize":I
    .local v6, "widthSize":I
    goto :goto_d1

    .line 1209
    .end local v19    # "done":Z
    .local v6, "done":Z
    .restart local v15    # "widthSize":I
    :cond_cf
    move/from16 v19, v6

    .line 1213
    .end local v6    # "done":Z
    .restart local v19    # "done":Z
    :goto_d1
    if-gt v7, v15, :cond_d6

    .line 1214
    move v15, v7

    .line 1215
    const/4 v6, 0x1

    .end local v19    # "done":Z
    .restart local v6    # "done":Z
    goto :goto_db

    .line 1213
    .end local v6    # "done":Z
    .restart local v19    # "done":Z
    :cond_d6
    move/from16 v6, v19

    goto :goto_db

    .line 1204
    .end local v7    # "newWidth":I
    .end local v19    # "done":Z
    .restart local v6    # "done":Z
    :cond_d9
    move/from16 v19, v6

    .line 1220
    :goto_db
    if-nez v6, :cond_f7

    if-eqz v5, :cond_f7

    .line 1221
    sub-int v7, v15, v11

    sub-int/2addr v7, v12

    int-to-float v7, v7

    div-float/2addr v7, v3

    float-to-int v7, v7

    add-int/2addr v7, v13

    add-int/2addr v7, v14

    .line 1225
    .local v7, "newHeight":I
    if-nez v4, :cond_f3

    sget-boolean v19, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    if-nez v19, :cond_f3

    .line 1226
    iget v1, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    .line 1230
    :cond_f3
    if-gt v7, v9, :cond_f7

    .line 1231
    move v1, v7

    move v9, v1

    .line 1235
    .end local v6    # "done":Z
    .end local v7    # "newHeight":I
    .end local v17    # "actualAspect":F
    :cond_f7
    goto :goto_fa

    .line 1194
    .end local v18    # "heightSpecMode":I
    .local v7, "heightSpecMode":I
    :cond_f8
    move/from16 v18, v7

    .line 1251
    .end local v7    # "heightSpecMode":I
    .restart local v18    # "heightSpecMode":I
    :goto_fa
    invoke-virtual {v0, v15, v9}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 1252
    return-void
.end method

.method public greylist-max-o onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 328
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 330
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 331
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 332
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_14
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1115
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 1117
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1118
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1120
    :cond_a
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .registers 4
    .param p1, "isVisible"    # Z

    .line 1695
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1697
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v1, :cond_f

    .line 1698
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1700
    :cond_f
    return-void
.end method

.method public whitelist setAdjustViewBounds(Z)V
    .registers 3
    .param p1, "adjustViewBounds"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 371
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 372
    if-eqz p1, :cond_9

    .line 373
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 375
    :cond_9
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1632
    and-int/lit16 p1, p1, 0xff

    .line 1633
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_11

    .line 1634
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 1635
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    .line 1636
    invoke-direct {p0}, Landroid/widget/ImageView;->applyAlpha()V

    .line 1637
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1639
    :cond_11
    return-void
.end method

.method public whitelist setBaseline(I)V
    .registers 3
    .param p1, "baseline"    # I

    .line 1490
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_9

    .line 1491
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 1492
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1494
    :cond_9
    return-void
.end method

.method public whitelist setBaselineAlignBottom(Z)V
    .registers 3
    .param p1, "aligned"    # Z

    .line 1505
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_9

    .line 1506
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1507
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1509
    :cond_9
    return-void
.end method

.method public final whitelist setColorFilter(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1544
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1545
    return-void
.end method

.method public final whitelist setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1532
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1533
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 1588
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_f

    .line 1589
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1590
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 1591
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorFilter()V

    .line 1592
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1594
    :cond_f
    return-void
.end method

.method public whitelist setCropToPadding(Z)V
    .registers 3
    .param p1, "cropToPadding"    # Z

    .line 967
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_c

    .line 968
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 969
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 970
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 972
    :cond_c
    return-void
.end method

.method protected whitelist setFrame(IIII)Z
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 1282
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 1283
    .local v0, "changed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 1284
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 1285
    return v0
.end method

.method public blacklist setHdrBrightRegion(Z)V
    .registers 4
    .param p1, "isScaleTypeMatrix"    # Z

    .line 1761
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    .line 1762
    const-string v0, "hdr-dim"

    const-string v1, "Can\'t set matrix without a drawable!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return-void

    .line 1765
    :cond_c
    iput-boolean p1, p0, Landroid/widget/ImageView;->mIsScaleTypeMatrix:Z

    .line 1766
    return-void
.end method

.method public blacklist setHdrImagePadding(FFFF)V
    .registers 7
    .param p1, "l"    # F
    .param p2, "t"    # F
    .param p3, "r"    # F
    .param p4, "b"    # F

    .line 1770
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrBrightRegionPadding:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1771
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1772
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1773
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 1774
    return-void
.end method

.method public blacklist setHdrViewPadding(FFFF)V
    .registers 7
    .param p1, "l"    # F
    .param p2, "t"    # F
    .param p3, "r"    # F
    .param p4, "b"    # F

    .line 1780
    iget-object v0, p0, Landroid/widget/ImageView;->mHdrViewPadding:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1781
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1782
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1783
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 1784
    return-void
.end method

.method public whitelist setImageAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1619
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1620
    return-void
.end method

.method public whitelist setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 770
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_15

    .line 771
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_18

    .line 773
    :cond_15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 775
    :goto_18
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 599
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1f

    .line 600
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 603
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 604
    .local v0, "oldWidth":I
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 606
    .local v1, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_19

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1c

    .line 609
    :cond_19
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 611
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 613
    .end local v0    # "oldWidth":I
    .end local v1    # "oldHeight":I
    :cond_1f
    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 630
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 631
    return-void
.end method

.method public greylist-max-o setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 635
    new-instance v0, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v1, 0x0

    if-nez p1, :cond_7

    move-object v2, v1

    goto :goto_d

    :cond_7
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_d
    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public whitelist setImageLevel(I)V
    .registers 3
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 808
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    .line 810
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 811
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 812
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 814
    :cond_f
    return-void
.end method

.method public whitelist setImageMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 930
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 931
    const/4 p1, 0x0

    .line 935
    :cond_9
    if-nez p1, :cond_13

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_13
    if-eqz p1, :cond_28

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 936
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 937
    :cond_1d
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 938
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 939
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 941
    :cond_28
    return-void
.end method

.method public whitelist setImageResource(I)V
    .registers 5
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    .line 507
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 508
    .local v0, "oldWidth":I
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 510
    .local v1, "oldHeight":I
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 512
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 514
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 516
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_17

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1a

    .line 517
    :cond_17
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 519
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 520
    return-void
.end method

.method public greylist setImageResourceAsync(I)Ljava/lang/Runnable;
    .registers 6
    .param p1, "resId"    # I

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_27

    .line 528
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 532
    goto :goto_27

    .line 529
    :catch_d
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageView"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 p1, 0x0

    .line 534
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1
.end method

.method public whitelist setImageState([IZ)V
    .registers 4
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    .line 786
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 787
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 788
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 789
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 790
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 792
    :cond_e
    return-void
.end method

.method public whitelist setImageTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 709
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 712
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 713
    return-void
.end method

.method public whitelist setImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 661
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 664
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 665
    return-void
.end method

.method public whitelist setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 693
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 694
    return-void
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    .line 561
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_30

    if-eqz p1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 562
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 564
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 566
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 567
    .local v0, "oldWidth":I
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 569
    .local v1, "oldHeight":I
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 571
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_2a

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_2d

    .line 572
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 574
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 576
    .end local v0    # "oldWidth":I
    .end local v1    # "oldHeight":I
    :cond_30
    return-void
.end method

.method public greylist setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 581
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_14

    if-eqz p1, :cond_15

    if-eqz v0, :cond_15

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    .line 589
    :cond_14
    return-object v1

    .line 582
    :cond_15
    :goto_15
    if-nez p1, :cond_18

    goto :goto_1c

    :cond_18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1c
    move-object v0, v1

    .line 583
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_20

    .line 585
    const/4 p1, 0x0

    .line 587
    :cond_20
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1
.end method

.method public whitelist setMaxHeight(I)V
    .registers 2
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 452
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 453
    return-void
.end method

.method public whitelist setMaxWidth(I)V
    .registers 2
    .param p1, "maxWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 413
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 414
    return-void
.end method

.method public whitelist setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 884
    if-eqz p1, :cond_f

    .line 888
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_e

    .line 889
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 891
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 892
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 894
    :cond_e
    return-void

    .line 885
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist setSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .line 796
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 797
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 798
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1705
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1707
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_14

    .line 1708
    const/4 v1, 0x0

    if-nez p1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1710
    :cond_14
    return-void
.end method

.method public final greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 1561
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_f

    .line 1562
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    .line 1563
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    .line 1564
    invoke-direct {p0}, Landroid/widget/ImageView;->applyXfermode()V

    .line 1565
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1567
    :cond_f
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
