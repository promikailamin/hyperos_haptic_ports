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

    .line 170
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

    const/4 v1, 0x5

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v7, v0, v1

    const/4 v1, 0x6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v7, v0, v1

    const/4 v1, 0x7

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v7, v0, v1

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 1115
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
    .registers 4

    .line 182
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 110
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 111
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 113
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 115
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 120
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 122
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    .line 123
    const/16 v1, 0xff

    iput v1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 125
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    .line 126
    const/16 v1, 0x100

    iput v1, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 128
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 132
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 133
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 134
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 135
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 137
    iput-object v0, p0, Landroid/widget/ImageView;->mState:[I

    .line 138
    iput-boolean p1, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 139
    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    .line 140
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 145
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 156
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 183
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 184
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    .line 196
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/ImageView;->mResource:I

    .line 110
    iput-boolean v7, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 111
    iput-boolean v7, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 113
    const v8, 0x7fffffff

    iput v8, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 115
    iput v8, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 120
    iput-boolean v7, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 122
    iput-boolean v7, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    .line 123
    const/16 v9, 0xff

    iput v9, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 125
    iput-boolean v7, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    .line 126
    const/16 v2, 0x100

    iput v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 128
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 132
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 133
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 134
    iput-boolean v7, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 135
    iput-boolean v7, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 137
    iput-object v1, p0, Landroid/widget/ImageView;->mState:[I

    .line 138
    iput-boolean v7, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 139
    iput-boolean v7, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    .line 140
    iput v7, p0, Landroid/widget/ImageView;->mLevel:I

    .line 145
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 149
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 150
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 155
    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 156
    iput-boolean v7, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 198
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 200
    sget-object v1, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 202
    sget-object v2, Lcom/android/internal/R$styleable;->ImageView:[I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/ImageView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 205
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_67

    .line 207
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_67
    const/4 v1, 0x6

    invoke-virtual {v4, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 211
    const/16 v1, 0x8

    invoke-virtual {v4, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 213
    const/4 v1, 0x2

    invoke-virtual {v4, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 214
    const/4 v1, 0x3

    invoke-virtual {v4, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 215
    const/4 v1, 0x4

    invoke-virtual {v4, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v4, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 218
    if-ltz v2, :cond_9c

    .line 219
    sget-object v3, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 222
    :cond_9c
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 223
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 224
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 228
    sget-object v2, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 229
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 232
    :cond_b1
    const/16 v2, 0x9

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 233
    invoke-virtual {v4, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 235
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 238
    :cond_c7
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 240
    const/16 v1, 0xa

    invoke-virtual {v4, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 241
    if-eq v1, v9, :cond_d5

    .line 242
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 245
    :cond_d5
    const/4 v1, 0x7

    invoke-virtual {v4, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 248
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    return-void
.end method

.method private blacklist applyAlpha()V
    .registers 3

    .line 1646
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    if-eqz v0, :cond_1b

    .line 1647
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1648
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v1, v1, 0x100

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1650
    :cond_1b
    return-void
.end method

.method private blacklist applyColorFilter()V
    .registers 3

    .line 1639
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    if-eqz v0, :cond_17

    .line 1640
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1641
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1643
    :cond_17
    return-void
.end method

.method private greylist-max-o applyImageTint()V
    .registers 3

    .line 734
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    if-eqz v0, :cond_3b

    .line 735
    :cond_c
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 737
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-eqz v0, :cond_1f

    .line 738
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 741
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    if-eqz v0, :cond_2a

    .line 742
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 747
    :cond_2a
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 748
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 751
    :cond_3b
    return-void
.end method

.method private blacklist applyXfermode()V
    .registers 3

    .line 1632
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    if-eqz v0, :cond_17

    .line 1633
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1634
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 1636
    :cond_17
    return-void
.end method

.method private greylist-max-o configureBounds()V
    .registers 10

    .line 1282
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_122

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-nez v0, :cond_a

    goto/16 :goto_122

    .line 1286
    :cond_a
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1287
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1289
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 1290
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 1292
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

    .line 1295
    :goto_2f
    const/4 v6, 0x0

    if-lez v0, :cond_11a

    if-lez v1, :cond_11a

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v8, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_3c

    goto/16 :goto_11a

    .line 1304
    :cond_3c
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1306
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v7, :cond_59

    .line 1308
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1309
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_121

    .line 1311
    :cond_53
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_121

    .line 1313
    :cond_59
    if-eqz v5, :cond_5f

    .line 1315
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_121

    .line 1316
    :cond_5f
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v5, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    const/high16 v6, 0x3f000000    # 0.5f

    if-ne v4, v5, :cond_82

    .line 1318
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1319
    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, v6

    .line 1320
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 1319
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_121

    .line 1321
    :cond_82
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v5, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x0

    if-ne v4, v5, :cond_be

    .line 1322
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1325
    nop

    .line 1327
    mul-int v4, v0, v3

    mul-int v5, v2, v1

    if-le v4, v5, :cond_9f

    .line 1328
    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 1329
    int-to-float v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    mul-float/2addr v1, v6

    move v2, v7

    move v7, v1

    goto :goto_a9

    .line 1331
    :cond_9f
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 1332
    int-to-float v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    mul-float/2addr v2, v6

    move v3, v0

    .line 1335
    :goto_a9
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1336
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1337
    goto :goto_121

    :cond_be
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v5, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_f8

    .line 1338
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1343
    if-gt v0, v2, :cond_cf

    if-gt v1, v3, :cond_cf

    .line 1344
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_d9

    .line 1346
    :cond_cf
    int-to-float v4, v2

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v5, v3

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1350
    :goto_d9
    int-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float/2addr v2, v0

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 1351
    int-to-float v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float/2addr v2, v1

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 1353
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1354
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1355
    goto :goto_121

    .line 1357
    :cond_f8
    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v4, v7, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1358
    iget-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1360
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1361
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v3}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_121

    .line 1299
    :cond_11a
    :goto_11a
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1300
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1364
    :goto_121
    return-void

    .line 1283
    :cond_122
    :goto_122
    return-void
.end method

.method private greylist-max-o getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 1003
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1004
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Unable to open content: "

    const-string v4, "ImageView"

    if-eqz v1, :cond_40

    .line 1007
    :try_start_11
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 1008
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v0

    .line 1009
    iget-object v1, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v0, v0, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    return-object p1

    .line 1010
    :catch_2a
    move-exception v0

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1012
    goto :goto_8e

    .line 1013
    :cond_40
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1014
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_5a

    .line 1026
    :cond_51
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1016
    :cond_5a
    :goto_5a
    :try_start_5a
    sget-boolean v0, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_64

    :cond_63
    move-object v0, v2

    .line 1017
    :goto_64
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 1019
    new-instance v1, Landroid/widget/ImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/widget/ImageView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_77} :catch_78

    return-object p1

    .line 1022
    :catch_78
    move-exception v0

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    nop

    .line 1028
    :goto_8e
    return-object v2
.end method

.method private greylist-max-o initImageView()V
    .registers 5

    .line 254
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 255
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 257
    sget-boolean v0, Landroid/widget/ImageView;->sCompatDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_34

    .line 258
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 259
    const/16 v2, 0x11

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1f

    move v2, v1

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    sput-boolean v2, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    .line 260
    const/16 v2, 0x17

    if-le v0, v2, :cond_28

    move v2, v1

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    sput-boolean v2, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    .line 261
    const/16 v2, 0x18

    if-ge v0, v2, :cond_30

    move v3, v1

    :cond_30
    sput-boolean v3, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    .line 262
    sput-boolean v1, Landroid/widget/ImageView;->sCompatDone:Z

    .line 267
    :cond_34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_3e

    .line 268
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImportantForAutofill(I)V

    .line 270
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForContentCapture()I

    move-result v0

    if-nez v0, :cond_47

    .line 271
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImportantForContentCapture(I)V

    .line 273
    :cond_47
    return-void
.end method

.method private greylist-max-o isFilledByImage()Z
    .registers 7

    .line 1661
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1662
    return v1

    .line 1665
    :cond_6
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1666
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1667
    const/4 v3, 0x1

    if-nez v2, :cond_2d

    .line 1668
    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_2b

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gtz v2, :cond_2b

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    if-lt v2, v4, :cond_2b

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 1669
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_2b

    move v1, v3

    goto :goto_2c

    :cond_2b
    nop

    .line 1668
    :goto_2c
    return v1

    .line 1670
    :cond_2d
    invoke-virtual {v2}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1671
    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 1672
    iget-object v5, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 1673
    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1674
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1675
    iget v0, v5, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_62

    iget v0, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_62

    iget v0, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_62

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 1676
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_62

    move v1, v3

    goto :goto_63

    :cond_62
    nop

    .line 1675
    :goto_63
    return v1

    .line 1679
    :cond_64
    return v1
.end method

.method static synthetic blacklist lambda$getDrawableFromUri$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 3

    .line 1020
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 1021
    return-void
.end method

.method private greylist resizeFromDrawable()V
    .registers 4

    .line 1092
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1093
    if-eqz v0, :cond_23

    .line 1094
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1095
    if-gez v1, :cond_c

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1096
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1097
    if-gez v0, :cond_14

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1098
    :cond_14
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_1c

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_23

    .line 1099
    :cond_1c
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1100
    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1101
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1104
    :cond_23
    return-void
.end method

.method private greylist-max-o resolveAdjustedSize(III)I
    .registers 5

    .line 1249
    nop

    .line 1250
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1251
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 1252
    sparse-switch v0, :sswitch_data_1e

    goto :goto_1d

    .line 1267
    :sswitch_d
    move p1, p3

    goto :goto_1d

    .line 1257
    :sswitch_f
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1258
    goto :goto_1d

    .line 1263
    :sswitch_14
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1264
    nop

    .line 1270
    :goto_1d
    return p1

    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_14
        0x0 -> :sswitch_f
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method

.method private greylist resolveUri()V
    .registers 6

    .line 969
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 970
    return-void

    .line 973
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_c

    .line 974
    return-void

    .line 977
    :cond_c
    nop

    .line 979
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    const-string v1, "ImageView"

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    .line 981
    :try_start_14
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_39

    .line 982
    :catch_1d
    move-exception v0

    .line 983
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

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 986
    :goto_39
    goto :goto_61

    .line 987
    :cond_3a
    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_65

    .line 988
    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 990
    if-nez v0, :cond_60

    .line 991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 999
    :cond_60
    move-object v2, v0

    :goto_61
    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1000
    return-void

    .line 996
    :cond_65
    return-void
.end method

.method private static greylist scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .registers 2

    .line 1125
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget p0, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method private greylist updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 1045
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_e

    .line 1046
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1049
    :cond_e
    nop

    .line 1051
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_38

    .line 1052
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v3

    .line 1053
    :goto_1c
    iget-object v4, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1054
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v1, :cond_39

    if-nez v0, :cond_39

    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1056
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_39

    .line 1051
    :cond_38
    move v0, v3

    .line 1060
    :cond_39
    :goto_39
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1062
    if-eqz p1, :cond_a1

    .line 1063
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1064
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1066
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1068
    :cond_54
    if-eqz v0, :cond_5a

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_7c

    .line 1069
    :cond_5a
    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_66

    .line 1070
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_79

    move v3, v2

    goto :goto_79

    .line 1071
    :cond_66
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_79

    move v3, v2

    .line 1072
    :cond_79
    :goto_79
    invoke-virtual {p1, v3, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1074
    :cond_7c
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    if-eqz v0, :cond_85

    .line 1075
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1077
    :cond_85
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1078
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1079
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 1080
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorFilter()V

    .line 1081
    invoke-direct {p0}, Landroid/widget/ImageView;->applyAlpha()V

    .line 1082
    invoke-direct {p0}, Landroid/widget/ImageView;->applyXfermode()V

    .line 1084
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    goto :goto_a6

    .line 1086
    :cond_a1
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput p1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1088
    :goto_a6
    return-void
.end method


# virtual methods
.method public whitelist animateTransform(Landroid/graphics/Matrix;)V
    .registers 6

    .line 1397
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 1398
    return-void

    .line 1400
    :cond_5
    const/4 v0, 0x0

    if-nez p1, :cond_25

    .line 1401
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    iget v1, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr p1, v1

    .line 1402
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 1403
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1404
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1405
    goto :goto_3e

    .line 1406
    :cond_25
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1407
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_39

    .line 1408
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1410
    :cond_39
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1412
    :goto_3e
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1413
    return-void
.end method

.method public final whitelist clearColorFilter()V
    .registers 2

    .line 1544
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1545
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .registers 4

    .line 1379
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1381
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1382
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1384
    :cond_c
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 1368
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1370
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1371
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1372
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1373
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    :cond_1a
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 1728
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1729
    const-string v0, "layout:baseline"

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1730
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1722
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdjustViewBounds()Z
    .registers 2

    .line 342
    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public whitelist getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .line 1462
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_9

    .line 1463
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 1465
    :cond_9
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    return v0
.end method

.method public whitelist getBaselineAlignBottom()Z
    .registers 2

    .line 1509
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1567
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getCropToPadding()Z
    .registers 2

    .line 947
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 457
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v0, v1, :cond_9

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 461
    :cond_9
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getImageAlpha()I
    .registers 2

    .line 1596
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public whitelist getImageMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 908
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_c

    .line 909
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    .line 911
    :cond_c
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public whitelist getImageTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 730
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 671
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 717
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_b

    .line 718
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 717
    :goto_c
    return-object v0
.end method

.method public whitelist getMaxHeight()I
    .registers 2

    .line 420
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public whitelist getMaxWidth()I
    .registers 2

    .line 381
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public whitelist getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 897
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 2

    .line 315
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
    .registers 4

    .line 288
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_21

    .line 289
    if-eqz p1, :cond_1d

    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 292
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 293
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v1, :cond_16

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq p1, v1, :cond_1d

    .line 294
    :cond_16
    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 295
    iput p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 297
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 307
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_24

    .line 309
    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :goto_24
    return-void
.end method

.method public blacklist isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .registers 6

    .line 1736
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1737
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    .line 1738
    :goto_1a
    invoke-super {p0, p1, p2}, Landroid/view/View;->isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_23

    if-eqz v0, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method public whitelist isOpaque()Z
    .registers 3

    .line 1654
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1655
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v0, v0, 0x100

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_28

    .line 1657
    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    .line 1654
    :goto_2b
    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 282
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 283
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 284
    :cond_c
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 1704
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1706
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_1a

    .line 1707
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1709
    :cond_1a
    return-void
.end method

.method public whitelist onCreateDrawableState(I)[I
    .registers 3

    .line 1033
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_9

    .line 1034
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 1035
    :cond_9
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_10

    .line 1036
    iget-object p1, p0, Landroid/widget/ImageView;->mState:[I

    return-object p1

    .line 1038
    :cond_10
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr p1, v0

    .line 1039
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    .line 1038
    invoke-static {p1, v0}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 1713
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1715
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_11

    .line 1716
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1718
    :cond_11
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1417
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1419
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 1420
    return-void

    .line 1423
    :cond_8
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v0, :cond_68

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-nez v0, :cond_11

    goto :goto_68

    .line 1427
    :cond_11
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_23

    iget v0, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v0, :cond_23

    iget v0, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v0, :cond_23

    .line 1428
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_67

    .line 1430
    :cond_23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1433
    iget-boolean v1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v1, :cond_4d

    .line 1434
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    .line 1435
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    .line 1436
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v1, v5

    iget v5, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v1, v5

    iget v5, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v1, v5

    iget v5, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v2, v5

    iget v5, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v2, v5

    iget v5, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v2, v5

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1441
    :cond_4d
    iget v1, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1443
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5f

    .line 1444
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1446
    :cond_5f
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1447
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1449
    :goto_67
    return-void

    .line 1424
    :cond_68
    :goto_68
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 21

    .line 1130
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0}, Landroid/widget/ImageView;->resolveUri()V

    .line 1135
    nop

    .line 1138
    nop

    .line 1141
    nop

    .line 1143
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1144
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1146
    iget-object v5, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v5, :cond_25

    .line 1148
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1149
    iput v3, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1150
    move v10, v7

    move v3, v8

    move v4, v3

    move v5, v4

    move v9, v5

    goto :goto_46

    .line 1152
    :cond_25
    iget v5, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1153
    iget v9, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1154
    if-gtz v5, :cond_2c

    const/4 v5, 0x1

    .line 1155
    :cond_2c
    if-gtz v9, :cond_2f

    const/4 v9, 0x1

    .line 1159
    :cond_2f
    iget-boolean v10, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz v10, :cond_43

    .line 1160
    const/high16 v10, 0x40000000    # 2.0f

    if-eq v3, v10, :cond_39

    const/4 v3, 0x1

    goto :goto_3a

    :cond_39
    move v3, v8

    .line 1161
    :goto_3a
    if-eq v4, v10, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    move v4, v8

    .line 1163
    :goto_3f
    int-to-float v10, v5

    int-to-float v11, v9

    div-float/2addr v10, v11

    goto :goto_46

    .line 1159
    :cond_43
    move v10, v7

    move v3, v8

    move v4, v3

    .line 1167
    :goto_46
    iget v11, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    .line 1168
    iget v12, v0, Landroid/widget/ImageView;->mPaddingRight:I

    .line 1169
    iget v13, v0, Landroid/widget/ImageView;->mPaddingTop:I

    .line 1170
    iget v14, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    .line 1175
    if-nez v3, :cond_71

    if-eqz v4, :cond_53

    goto :goto_71

    .line 1234
    :cond_53
    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 1235
    add-int/2addr v13, v14

    add-int/2addr v9, v13

    .line 1237
    invoke-virtual {v0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1238
    invoke-virtual {v0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1240
    invoke-static {v3, v1, v8}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v1

    .line 1241
    invoke-static {v4, v2, v8}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v2

    goto/16 :goto_e2

    .line 1182
    :cond_71
    :goto_71
    add-int/2addr v5, v11

    add-int/2addr v5, v12

    iget v15, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v5, v15, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v5

    .line 1185
    add-int/2addr v9, v13

    add-int/2addr v9, v14

    iget v15, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v9, v15, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    .line 1187
    cmpl-float v7, v10, v7

    if-eqz v7, :cond_e0

    .line 1189
    sub-int v7, v5, v11

    sub-int/2addr v7, v12

    int-to-float v7, v7

    sub-int v15, v9, v13

    sub-int/2addr v15, v14

    int-to-float v15, v15

    div-float/2addr v7, v15

    .line 1192
    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v6, v7

    const-wide v16, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v6, v6, v16

    if-lez v6, :cond_dd

    .line 1194
    nop

    .line 1197
    if-eqz v3, :cond_b9

    .line 1198
    mul-float/2addr v15, v10

    float-to-int v6, v15

    add-int/2addr v6, v11

    add-int/2addr v6, v12

    .line 1202
    if-nez v4, :cond_b1

    sget-boolean v7, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    if-nez v7, :cond_b1

    .line 1203
    iget v5, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v6, v5, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v1

    move v5, v1

    .line 1206
    :cond_b1
    if-gt v6, v5, :cond_b7

    .line 1207
    nop

    .line 1208
    move v5, v6

    const/4 v6, 0x1

    goto :goto_ba

    .line 1206
    :cond_b7
    move v6, v8

    goto :goto_ba

    .line 1197
    :cond_b9
    move v6, v8

    .line 1213
    :goto_ba
    if-nez v6, :cond_da

    if-eqz v4, :cond_da

    .line 1214
    sub-int v1, v5, v11

    sub-int/2addr v1, v12

    int-to-float v1, v1

    div-float/2addr v1, v10

    float-to-int v1, v1

    add-int/2addr v1, v13

    add-int/2addr v1, v14

    .line 1218
    if-nez v3, :cond_d2

    sget-boolean v3, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    if-nez v3, :cond_d2

    .line 1219
    iget v3, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    .line 1223
    :cond_d2
    if-gt v1, v9, :cond_d7

    .line 1224
    move v2, v1

    move v1, v5

    goto :goto_df

    .line 1223
    :cond_d7
    move v1, v5

    move v2, v9

    goto :goto_df

    .line 1228
    :cond_da
    move v1, v5

    move v2, v9

    goto :goto_df

    .line 1192
    :cond_dd
    move v1, v5

    move v2, v9

    .line 1228
    :goto_df
    goto :goto_e2

    .line 1187
    :cond_e0
    move v1, v5

    move v2, v9

    .line 1244
    :goto_e2
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 1245
    return-void
.end method

.method public greylist-max-o onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 321
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 323
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 325
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_14
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 3

    .line 1108
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 1110
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1111
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1113
    :cond_c
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .registers 4

    .line 1685
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1687
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v0, :cond_11

    .line 1688
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1690
    :cond_11
    return-void
.end method

.method public whitelist setAdjustViewBounds(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 364
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 365
    if-eqz p1, :cond_9

    .line 366
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 368
    :cond_9
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1622
    and-int/lit16 p1, p1, 0xff

    .line 1623
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_11

    .line 1624
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 1625
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    .line 1626
    invoke-direct {p0}, Landroid/widget/ImageView;->applyAlpha()V

    .line 1627
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1629
    :cond_11
    return-void
.end method

.method public whitelist setBaseline(I)V
    .registers 3

    .line 1480
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_9

    .line 1481
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 1482
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1484
    :cond_9
    return-void
.end method

.method public whitelist setBaselineAlignBottom(Z)V
    .registers 3

    .line 1495
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_9

    .line 1496
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1497
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1499
    :cond_9
    return-void
.end method

.method public final whitelist setColorFilter(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1534
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1535
    return-void
.end method

.method public final whitelist setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1522
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1523
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1578
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_f

    .line 1579
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1580
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 1581
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorFilter()V

    .line 1582
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1584
    :cond_f
    return-void
.end method

.method public whitelist setCropToPadding(Z)V
    .registers 3

    .line 960
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_c

    .line 961
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 962
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 963
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 965
    :cond_c
    return-void
.end method

.method protected whitelist setFrame(IIII)Z
    .registers 5

    .line 1275
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    .line 1276
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 1277
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 1278
    return p1
.end method

.method public whitelist setImageAlpha(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1609
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1610
    return-void
.end method

.method public whitelist setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 763
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_15

    .line 764
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1a

    .line 766
    :cond_15
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 768
    :goto_1a
    iget-object p1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 592
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1f

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 596
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 597
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 599
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget p1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, p1, :cond_19

    iget p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, p1, :cond_1c

    .line 602
    :cond_19
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 604
    :cond_1c
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 606
    :cond_1f
    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 623
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    return-void
.end method

.method public greylist-max-o setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 5

    .line 628
    new-instance v0, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v1, 0x0

    if-nez p1, :cond_7

    move-object p1, v1

    goto :goto_d

    :cond_7
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_d
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public whitelist setImageLevel(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 801
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    .line 803
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 804
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 805
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 807
    :cond_11
    return-void
.end method

.method public whitelist setImageMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 923
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 924
    const/4 p1, 0x0

    .line 928
    :cond_9
    if-nez p1, :cond_13

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_13
    if-eqz p1, :cond_28

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 929
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 930
    :cond_1d
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 931
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 932
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 934
    :cond_28
    return-void
.end method

.method public whitelist setImageResource(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    .line 500
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 501
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 503
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 505
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 507
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 509
    iget p1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, p1, :cond_17

    iget p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, p1, :cond_1a

    .line 510
    :cond_17
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 512
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 513
    return-void
.end method

.method public greylist setImageResourceAsync(I)Ljava/lang/Runnable;
    .registers 6

    .line 518
    nop

    .line 519
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 521
    :try_start_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 525
    goto :goto_2a

    .line 522
    :catch_d
    move-exception v1

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ImageView"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    const/4 p1, 0x0

    move-object v1, v0

    goto :goto_2a

    .line 519
    :cond_29
    move-object v1, v0

    .line 527
    :goto_2a
    new-instance v2, Landroid/widget/ImageView$ImageDrawableCallback;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v2
.end method

.method public whitelist setImageState([IZ)V
    .registers 3

    .line 779
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 780
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 781
    iget-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_e

    .line 782
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 783
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 785
    :cond_e
    return-void
.end method

.method public whitelist setImageTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 702
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    .line 703
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    .line 705
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 706
    return-void
.end method

.method public whitelist setImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 654
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 655
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 657
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 658
    return-void
.end method

.method public whitelist setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 686
    if-eqz p1, :cond_9

    iget p1, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {p1}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 687
    return-void
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    .line 554
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_34

    if-eqz p1, :cond_16

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 555
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 557
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 559
    iget p1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 560
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 562
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 564
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne p1, v1, :cond_2e

    iget p1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, p1, :cond_31

    .line 565
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 567
    :cond_31
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 569
    :cond_34
    return-void
.end method

.method public greylist setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .registers 5

    .line 574
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_18

    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_19

    .line 582
    :cond_18
    return-object v1

    .line 575
    :cond_19
    :goto_19
    if-nez p1, :cond_1d

    move-object v0, v1

    goto :goto_21

    :cond_1d
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 576
    :goto_21
    if-nez v0, :cond_24

    .line 578
    move-object p1, v1

    .line 580
    :cond_24
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1
.end method

.method public whitelist setMaxHeight(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 445
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 446
    return-void
.end method

.method public whitelist setMaxWidth(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 406
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 407
    return-void
.end method

.method public whitelist setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 877
    if-eqz p1, :cond_f

    .line 881
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_e

    .line 882
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 884
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 885
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 887
    :cond_e
    return-void

    .line 878
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public whitelist setSelected(Z)V
    .registers 2

    .line 789
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 790
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 791
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1695
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_16

    .line 1698
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    move p1, v1

    :goto_13
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1700
    :cond_16
    return-void
.end method

.method public final greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3

    .line 1551
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_f

    .line 1552
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    .line 1553
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    .line 1554
    invoke-direct {p0}, Landroid/widget/ImageView;->applyXfermode()V

    .line 1555
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1557
    :cond_f
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 277
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
