.class public Lcom/android/internal/widget/ViewGroupFader;
.super Ljava/lang/Object;
.source "ViewGroupFader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;,
        Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$DefaultViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ParentContainerBoundsProvider;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_LOWER_BOUND:F = 0.5f

.field private static final blacklist CHAINED_BOUNDS_BOTTOM_FRACTION:F = 0.2f

.field private static final blacklist CHAINED_BOUNDS_TOP_FRACTION:F = 0.6f

.field private static final blacklist CHAINED_LOWER_REGION_FRACTION:F = 0.35f

.field private static final blacklist CHAINED_UPPER_REGION_FRACTION:F = 0.55f

.field private static final blacklist SCALE_LOWER_BOUND:F = 0.7f


# instance fields
.field private blacklist mAlphaLowerBound:F

.field private blacklist mBottomBoundPixels:F

.field private blacklist mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

.field private final blacklist mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

.field private blacklist mChainedBoundsBottom:F

.field private blacklist mChainedBoundsTop:F

.field private blacklist mChainedLowerRegion:F

.field private blacklist mChainedUpperRegion:F

.field private final blacklist mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

.field private final blacklist mContainerBounds:Landroid/graphics/Rect;

.field private blacklist mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

.field private final blacklist mOffsetViewBounds:Landroid/graphics/Rect;

.field protected final blacklist mParent:Landroid/view/ViewGroup;

.field private blacklist mScaleLowerBound:F

.field private blacklist mTopBoundPixels:F

.field private blacklist mTopInterpolator:Landroid/view/animation/BaseInterpolator;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewGroup;Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;)V
    .registers 9

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    .line 46
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    .line 53
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsTop:F

    .line 54
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsBottom:F

    .line 55
    const v1, 0x3eb33333    # 0.35f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    .line 56
    const v1, 0x3f0ccccd    # 0.55f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    .line 68
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 69
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 176
    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    .line 177
    iput-object p2, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    .line 178
    iput-object p3, p0, Lcom/android/internal/widget/ViewGroupFader;->mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    .line 179
    new-instance p1, Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;

    invoke-direct {p1}, Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    .line 180
    return-void
.end method

.method private blacklist fadeElement(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;->provideBounds(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 247
    iget-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopBoundPixels:F

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomBoundPixels:F

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/internal/widget/ViewGroupFader;->setViewPropertiesByPosition(Landroid/view/View;Landroid/graphics/Rect;FF)V

    .line 248
    return-void
.end method

.method private static blacklist lerp(FFF)F
    .registers 3

    .line 321
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method private blacklist scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V
    .registers 5

    .line 298
    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result v0

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 300
    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result p2

    .line 301
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 302
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 303
    return-void
.end method

.method private blacklist setDefaultSizeAndAlphaForView(Landroid/view/View;)V
    .registers 3

    .line 307
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 310
    return-void
.end method

.method private blacklist setViewPropertiesByPosition(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .registers 10

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_23

    .line 257
    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    sub-float/2addr p3, p4

    div-float/2addr v2, p3

    .line 257
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result p3

    goto :goto_31

    .line 261
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p3, p3, p4

    if-gez p3, :cond_2f

    .line 262
    iget p3, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    goto :goto_31

    .line 264
    :cond_2f
    iget p3, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    .line 266
    :goto_31
    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p3

    float-to-int p3, p4

    .line 267
    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, p3

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    .line 271
    :goto_51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 273
    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v3, v0, :cond_89

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->shouldFadeFromBottom(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 274
    iget p4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotY(F)V

    .line 275
    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 277
    invoke-virtual {p4, p2}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result p2

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewGroupFader;->scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V

    goto :goto_bf

    .line 279
    :cond_89
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, p4, :cond_b5

    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {p4, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->shouldFadeFromTop(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_b5

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr p4, v0

    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotY(F)V

    .line 281
    iget-object p4, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 283
    invoke-virtual {p4, p2}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result p2

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewGroupFader;->scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V

    goto :goto_bf

    .line 286
    :cond_b5
    if-nez v1, :cond_bc

    .line 287
    iget-object p2, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->viewHasBecomeFullSize(Landroid/view/View;)V

    .line 289
    :cond_bc
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewGroupFader;->setDefaultSizeAndAlphaForView(Landroid/view/View;)V

    .line 291
    :goto_bf
    return-void
.end method


# virtual methods
.method blacklist getAnimationCallback()Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    return-object v0
.end method

.method blacklist setAlphaLowerBound(F)V
    .registers 2

    .line 201
    iput p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    .line 202
    return-void
.end method

.method blacklist setBottomInterpolator(Landroid/view/animation/BaseInterpolator;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 210
    return-void
.end method

.method blacklist setContainerBoundsProvider(Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    .line 214
    return-void
.end method

.method blacklist setScaleLowerBound(F)V
    .registers 2

    .line 192
    iput p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    .line 193
    return-void
.end method

.method blacklist setTopInterpolator(Landroid/view/animation/BaseInterpolator;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 206
    return-void
.end method

.method public blacklist updateFade()V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;->provideBounds(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsTop:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopBoundPixels:F

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsBottom:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomBoundPixels:F

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ViewGroupFader;->updateListElementFades(Landroid/view/ViewGroup;Z)V

    .line 222
    return-void
.end method

.method public blacklist updateListElementFades(Landroid/view/ViewGroup;Z)V
    .registers 7

    .line 226
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_12

    .line 229
    goto :goto_2f

    .line 232
    :cond_12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 234
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2a

    .line 235
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewGroupFader;->updateListElementFades(Landroid/view/ViewGroup;Z)V

    .line 239
    :cond_2a
    if-eqz p2, :cond_2f

    .line 240
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/ViewGroupFader;->fadeElement(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 226
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_32
    return-void
.end method
