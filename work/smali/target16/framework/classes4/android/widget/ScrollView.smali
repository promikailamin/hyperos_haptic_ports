.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$DifferentialFlingTarget;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final greylist-max-o ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final blacklist FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.5f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private greylist-max-o mActivePointerId:I

.field private greylist-max-p mChildToScrollTo:Landroid/view/View;

.field private blacklist mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

.field public greylist-max-p mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private greylist-max-o mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-r mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private blacklist mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

.field private greylist mIsBeingDragged:Z

.field private greylist-max-o mIsLayoutDirty:Z

.field private greylist mLastMotionY:I

.field private greylist mLastScroll:J

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-p mMinimumVelocity:I

.field private greylist-max-o mNestedYOffset:I

.field private greylist-max-p mOverflingDistance:I

.field private greylist-max-p mOverscrollDistance:I

.field private greylist-max-o mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final greylist-max-o mScrollConsumed:[I

.field private final greylist-max-o mScrollOffset:[I

.field private greylist-max-o mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private greylist mScroller:Landroid/widget/OverScroller;

.field private greylist-max-o mSmoothScrollingEnabled:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mVerticalScrollFactor:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Landroid/widget/ScrollView;)Landroid/widget/OverScroller;
    .registers 1

    iget-object p0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerticalScrollFactor(Landroid/widget/ScrollView;)F
    .registers 1

    iget p0, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 229
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 234
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 156
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 175
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 198
    const/4 v0, 0x2

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 199
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 208
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 209
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 238
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 239
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 240
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 242
    sget-object v0, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 244
    sget-object v5, Lcom/android/internal/R$styleable;->ScrollView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ScrollView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 247
    invoke-virtual {v7, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 249
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_60

    .line 252
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setRevealOnFocusHint(Z)V

    .line 254
    :cond_60
    return-void
.end method

.method private greylist canScroll()Z
    .registers 5

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_19

    .line 424
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 425
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 427
    :cond_19
    return v0
.end method

.method private static greylist-max-o clamp(III)I
    .registers 4

    .line 2113
    if-ge p1, p2, :cond_c

    if-gez p0, :cond_5

    goto :goto_c

    .line 2131
    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_b

    .line 2137
    sub-int/2addr p2, p1

    return p2

    .line 2139
    :cond_b
    return p0

    .line 2129
    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist consumeFlingInStretch(I)I
    .registers 7

    .line 1623
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 1624
    if-ltz v0, :cond_7a

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_d

    goto :goto_7a

    .line 1628
    :cond_d
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-lez p1, :cond_47

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_47

    .line 1629
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 1630
    neg-int v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1631
    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1632
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 1631
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1633
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1634
    if-eq v0, p1, :cond_45

    .line 1635
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 1637
    :cond_45
    sub-int/2addr p1, v0

    return p1

    .line 1639
    :cond_47
    if-gez p1, :cond_79

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_79

    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_79

    .line 1640
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 1641
    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 1642
    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1643
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 1642
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1644
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1645
    if-eq v0, p1, :cond_77

    .line 1646
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 1648
    :cond_77
    sub-int/2addr p1, v0

    return p1

    .line 1650
    :cond_79
    return p1

    .line 1626
    :cond_7a
    :goto_7a
    return p1
.end method

.method private greylist-max-o doScrollY(I)V
    .registers 4

    .line 1438
    if-eqz p1, :cond_e

    .line 1439
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1440
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_e

    .line 1442
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1445
    :cond_e
    :goto_e
    return-void
.end method

.method private greylist endDrag()V
    .registers 2

    .line 1979
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1981
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1983
    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1984
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1985
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1988
    :cond_16
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_22

    .line 1989
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1990
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1992
    :cond_22
    return-void
.end method

.method private greylist-max-o findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16

    .line 1184
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1185
    nop

    .line 1194
    nop

    .line 1196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1197
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_f
    if-ge v4, v1, :cond_58

    .line 1198
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1199
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1200
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1202
    if-ge p2, v8, :cond_55

    if-ge v7, p3, :cond_55

    .line 1208
    const/4 v9, 0x1

    if-ge p2, v7, :cond_2a

    if-ge v8, p3, :cond_2a

    move v10, v9

    goto :goto_2b

    :cond_2a
    move v10, v3

    .line 1211
    :goto_2b
    if-nez v2, :cond_31

    .line 1213
    nop

    .line 1214
    move-object v2, v6

    move v5, v10

    goto :goto_55

    .line 1216
    :cond_31
    if-eqz p1, :cond_39

    .line 1217
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_41

    :cond_39
    if-nez p1, :cond_43

    .line 1219
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v8, v7, :cond_43

    :cond_41
    move v7, v9

    goto :goto_44

    :cond_43
    move v7, v3

    .line 1221
    :goto_44
    if-eqz v5, :cond_4b

    .line 1222
    if-eqz v10, :cond_55

    if-eqz v7, :cond_55

    .line 1228
    goto :goto_54

    .line 1231
    :cond_4b
    if-eqz v10, :cond_51

    .line 1233
    nop

    .line 1234
    move-object v2, v6

    move v5, v9

    goto :goto_55

    .line 1235
    :cond_51
    if-eqz v7, :cond_55

    .line 1240
    nop

    .line 1197
    :goto_54
    move-object v2, v6

    :cond_55
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1247
    :cond_58
    return-object v2
.end method

.method private greylist-max-o flingWithNestedDispatch(I)V
    .registers 6

    .line 1932
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v0, :cond_6

    if-lez p1, :cond_11

    :cond_6
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1933
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_13

    if-gez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 1934
    :goto_14
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 1935
    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    move-result v1

    .line 1936
    if-eqz v0, :cond_26

    .line 1937
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_5c

    .line 1938
    :cond_26
    if-nez v1, :cond_5c

    .line 1939
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1940
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-direct {p0, v0, v1}, Landroid/widget/ScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1941
    iget-object p1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5c

    .line 1943
    :cond_3f
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_5c

    .line 1945
    :cond_43
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1946
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0, p1}, Landroid/widget/ScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1947
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_5c

    .line 1949
    :cond_59
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 1954
    :cond_5c
    :goto_5c
    return-void
.end method

.method private greylist-max-o getScrollRange()I
    .registers 5

    .line 1158
    nop

    .line 1159
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_20

    .line 1160
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1161
    nop

    .line 1162
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 1161
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1164
    :cond_20
    return v1
.end method

.method private greylist-max-o inChild(II)Z
    .registers 7

    .line 581
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    .line 582
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 583
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 584
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_29

    .line 585
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_29

    .line 586
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_29

    .line 587
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p1, p2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 584
    :goto_2a
    return v1

    .line 589
    :cond_2b
    return v1
.end method

.method private blacklist initDifferentialFlingHelperIfNotExists()V
    .registers 5

    .line 607
    iget-object v0, p0, Landroid/widget/ScrollView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    if-nez v0, :cond_13

    .line 608
    new-instance v0, Landroid/widget/DifferentialMotionFlingHelper;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/ScrollView$DifferentialFlingTarget;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ScrollView$DifferentialFlingTarget;-><init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/DifferentialMotionFlingHelper;-><init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    .line 612
    :cond_13
    return-void
.end method

.method private blacklist initHapticScrollFeedbackProviderIfNotExists()V
    .registers 2

    .line 615
    iget-object v0, p0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    if-nez v0, :cond_b

    .line 616
    new-instance v0, Landroid/view/HapticScrollFeedbackProvider;

    invoke-direct {v0, p0}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 618
    :cond_b
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .registers 2

    .line 593
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 594
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_10

    .line 596
    :cond_b
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 598
    :goto_10
    return-void
.end method

.method private greylist-max-o initScrollView()V
    .registers 3

    .line 368
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 370
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 372
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 374
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 376
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 377
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 378
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    iput v0, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    .line 379
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .registers 2

    .line 601
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 602
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 604
    :cond_a
    return-void
.end method

.method private greylist-max-o isOffScreen(Landroid/view/View;)Z
    .registers 4

    .line 1417
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static greylist-max-o isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 1896
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1897
    return v0

    .line 1900
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1901
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private greylist-max-o isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    .line 1425
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1426
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1428
    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1429
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    .line 1428
    :goto_24
    return p1
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 974
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 975
    iget v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_2d

    .line 979
    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 980
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 981
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 982
    iget-object p1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2d

    .line 983
    iget-object p1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 986
    :cond_2d
    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .registers 2

    .line 621
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 622
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 625
    :cond_c
    return-void
.end method

.method private greylist-max-o scrollAndFocus(III)Z
    .registers 10

    .line 1330
    nop

    .line 1332
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 1333
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1334
    add-int/2addr v0, v1

    .line 1335
    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    .line 1337
    :goto_13
    invoke-direct {p0, v2, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1338
    if-nez v5, :cond_1a

    .line 1339
    move-object v5, p0

    .line 1342
    :cond_1a
    if-lt p2, v1, :cond_1f

    if-gt p3, v0, :cond_1f

    .line 1343
    goto :goto_29

    .line 1345
    :cond_1f
    if-eqz v2, :cond_23

    sub-int/2addr p2, v1

    goto :goto_25

    :cond_23
    sub-int p2, p3, v0

    .line 1346
    :goto_25
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->doScrollY(I)V

    move v3, v4

    .line 1349
    :goto_29
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p2

    if-eq v5, p2, :cond_32

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1351
    :cond_32
    return v3
.end method

.method private greylist-max-o scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1684
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1685
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v0

    .line 1686
    :goto_a
    if-eqz v1, :cond_15

    .line 1687
    if-eqz p2, :cond_12

    .line 1688
    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_15

    .line 1690
    :cond_12
    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1693
    :cond_15
    :goto_15
    return v1
.end method

.method private blacklist shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .registers 6

    .line 1966
    const/4 v0, 0x1

    if-lez p2, :cond_4

    .line 1967
    return v0

    .line 1969
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    .line 1972
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    neg-int p2, p2

    invoke-virtual {v1, p2}, Landroid/widget/OverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    double-to-float p2, v1

    .line 1974
    cmpg-float p1, p2, p1

    if-gez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .registers 3

    .line 778
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .registers 3

    .line 383
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 387
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 388
    return-void

    .line 384
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .registers 4

    .line 392
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 396
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 397
    return-void

    .line 393
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 410
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 414
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 415
    return-void

    .line 411
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 401
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 405
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-void

    .line 402
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist arrowScroll(I)Z
    .registers 9

    .line 1363
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1364
    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 1366
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1368
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    .line 1370
    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1371
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1372
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1373
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1374
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1375
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1376
    goto :goto_73

    .line 1378
    :cond_36
    nop

    .line 1380
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_49

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_49

    .line 1381
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    goto :goto_69

    .line 1382
    :cond_49
    if-ne p1, v4, :cond_69

    .line 1383
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_69

    .line 1384
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1385
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 1386
    sub-int/2addr v1, v5

    if-ge v1, v2, :cond_69

    .line 1387
    move v2, v1

    .line 1391
    :cond_69
    :goto_69
    if-nez v2, :cond_6c

    .line 1392
    return v3

    .line 1394
    :cond_6c
    if-ne p1, v4, :cond_6f

    goto :goto_70

    :cond_6f
    neg-int v2, v2

    :goto_70
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1397
    :goto_73
    if-eqz v0, :cond_90

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 1398
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 1404
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result p1

    .line 1405
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1406
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1407
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1409
    :cond_90
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist computeScroll()V
    .registers 14

    .line 1557
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1574
    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1575
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1576
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 1577
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 1578
    sub-int v1, v11, v5

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->consumeFlingInStretch(I)I

    move-result v3

    .line 1580
    if-ne v4, v0, :cond_25

    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    move-object v1, p0

    goto :goto_6e

    .line 1581
    :cond_25
    :goto_25
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v7

    .line 1582
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v1

    .line 1583
    const/4 v2, 0x1

    if-eqz v1, :cond_36

    if-ne v1, v2, :cond_35

    if-lez v7, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :cond_36
    :goto_36
    move v12, v2

    .line 1586
    sub-int v2, v0, v4

    iget v9, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1588
    iget v0, v1, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, v1, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v2, v4, v5}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1590
    if-eqz v12, :cond_6e

    if-eqz v3, :cond_6e

    .line 1591
    if-gez v11, :cond_5e

    if-ltz v5, :cond_5e

    .line 1592
    iget-object v0, v1, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v2, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_6e

    .line 1593
    :cond_5e
    if-le v11, v7, :cond_6e

    if-gt v5, v7, :cond_6e

    .line 1594
    iget-object v0, v1, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v2, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1599
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_77

    .line 1601
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1605
    :cond_77
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->viewVelocityApi()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1606
    iget-object v0, v1, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    .line 1608
    :cond_8a
    goto :goto_98

    .line 1609
    :cond_8b
    move-object v1, p0

    iget-object v0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_98

    .line 1610
    iget-object v0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1611
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1614
    :cond_98
    :goto_98
    return-void
.end method

.method protected whitelist computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 9

    .line 1705
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1707
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 1708
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 1709
    add-int v3, v2, v0

    .line 1711
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1714
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    .line 1715
    add-int/2addr v2, v4

    .line 1719
    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_28

    .line 1720
    sub-int/2addr v3, v4

    .line 1723
    :cond_28
    nop

    .line 1725
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4e

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4e

    .line 1730
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3c

    .line 1732
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    goto :goto_40

    .line 1735
    :cond_3c
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    .line 1739
    :goto_40
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1740
    sub-int/2addr v0, v3

    .line 1741
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1743
    :cond_4d
    goto :goto_6e

    :cond_4e
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_4d

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_4d

    .line 1748
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_61

    .line 1750
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_65

    .line 1753
    :cond_61
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1757
    :goto_65
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1759
    :goto_6e
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 3

    .line 1517
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 5

    .line 1497
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1498
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 1499
    if-nez v0, :cond_11

    .line 1500
    return v1

    .line 1503
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1504
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1505
    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1506
    if-gez v3, :cond_26

    .line 1507
    sub-int/2addr v2, v3

    goto :goto_2a

    .line 1508
    :cond_26
    if-le v3, v0, :cond_2a

    .line 1509
    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 1512
    :cond_2a
    :goto_2a
    return v2
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 514
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 2055
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2056
    invoke-direct {p0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 2057
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2058
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v1

    .line 2059
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_61

    .line 2060
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2065
    if-eqz v1, :cond_39

    .line 2066
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    .line 2067
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 2068
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v6, v6

    .line 2069
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v7, v7

    goto :goto_44

    .line 2071
    :cond_39
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    .line 2072
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    .line 2073
    nop

    .line 2074
    move v6, v3

    move v7, v6

    .line 2076
    :goto_44
    const/4 v8, 0x0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2077
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2078
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2079
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2081
    :cond_5e
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2083
    :cond_61
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_bf

    .line 2084
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2089
    if-eqz v1, :cond_8a

    .line 2090
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v4

    .line 2091
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 2092
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    .line 2093
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v6, v6

    goto :goto_95

    .line 2095
    :cond_8a
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    .line 2096
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2097
    nop

    .line 2098
    move v5, v3

    move v6, v5

    .line 2100
    :goto_95
    neg-int v7, v1

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 2101
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    add-float/2addr v0, v6

    .line 2100
    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2102
    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v5, v1

    invoke-virtual {p1, v0, v5, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2103
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2104
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 2105
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2107
    :cond_bc
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2110
    :cond_bf
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 2172
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2173
    const-string v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2174
    return-void
.end method

.method public whitelist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 526
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 528
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_41

    .line 529
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_40

    .line 530
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_40

    .line 531
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 532
    if-ne p1, p0, :cond_2a

    const/4 p1, 0x0

    .line 533
    :cond_2a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 535
    if-eqz p1, :cond_3e

    if-eq p1, p0, :cond_3e

    .line 537
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    nop

    .line 535
    :goto_3f
    return v1

    .line 539
    :cond_40
    return v1

    .line 542
    :cond_41
    nop

    .line 543
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_92

    .line 544
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x21

    sparse-switch v0, :sswitch_data_94

    goto :goto_92

    .line 563
    :sswitch_52
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 564
    goto :goto_92

    .line 560
    :sswitch_57
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 561
    goto :goto_92

    .line 569
    :sswitch_5c
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result v1

    .line 570
    goto :goto_92

    .line 566
    :sswitch_61
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result v1

    .line 567
    goto :goto_92

    .line 572
    :sswitch_66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_6d

    move v2, v3

    :cond_6d
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->pageScroll(I)Z

    move-result v1

    goto :goto_92

    .line 553
    :sswitch_72
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 554
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_92

    .line 556
    :cond_7d
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 558
    goto :goto_92

    .line 546
    :sswitch_82
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_8d

    .line 547
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_92

    .line 549
    :cond_8d
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 551
    nop

    .line 577
    :cond_92
    :goto_92
    return v1

    nop

    :sswitch_data_94
    .sparse-switch
        0x13 -> :sswitch_82
        0x14 -> :sswitch_72
        0x3e -> :sswitch_66
        0x5c -> :sswitch_61
        0x5d -> :sswitch_5c
        0x7a -> :sswitch_57
        0x7b -> :sswitch_52
    .end sparse-switch
.end method

.method public whitelist fling(I)V
    .registers 16

    .line 1912
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_51

    .line 1913
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v1

    .line 1914
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1916
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v0

    .line 1917
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit8 v13, v0, 0x2

    .line 1916
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v7, p1

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1920
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->viewVelocityApi()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1921
    iget-object p1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    .line 1923
    :cond_42
    iget-object p1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez p1, :cond_4e

    .line 1924
    const-string p1, "ScrollView-fling"

    invoke-static {p1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1927
    :cond_4e
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1929
    :cond_51
    return-void
.end method

.method public whitelist fullScroll(I)Z
    .registers 7

    .line 1299
    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1300
    :goto_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1302
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 1303
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1305
    if-eqz v0, :cond_36

    .line 1306
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1307
    if-lez v0, :cond_36

    .line 1308
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1309
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1310
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1314
    :cond_36
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1123
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .registers 2

    .line 356
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .registers 5

    .line 277
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 278
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 282
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 283
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 284
    if-ge v2, v0, :cond_26

    .line 285
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    .line 288
    :cond_26
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public whitelist getMaxScrollAmount()I
    .registers 3

    .line 364
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .registers 3

    .line 263
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 264
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 268
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_16

    .line 269
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    .line 272
    :cond_16
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public whitelist isFillViewport()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public whitelist isSmoothScrollingEnabled()Z
    .registers 2

    .line 462
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected whitelist measureChild(Landroid/view/View;II)V
    .registers 7

    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1528
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v0}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1530
    iget v0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v0, v1

    .line 1531
    nop

    .line 1532
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    sub-int/2addr p3, v0

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1531
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p3

    .line 1535
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1536
    return-void
.end method

.method protected whitelist measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 9

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1543
    iget v1, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1546
    iget p3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v0

    add-int/2addr p3, p5

    .line 1548
    nop

    .line 1549
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p4

    sub-int/2addr p4, p3

    const/4 p3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1548
    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p3

    .line 1552
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1553
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 1829
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1831
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1832
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1833
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1835
    :cond_f
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1a

    .line 1836
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1837
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1839
    :cond_1a
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 990
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_e2

    goto/16 :goto_dc

    .line 993
    :pswitch_9
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    .line 994
    const/16 v0, 0x9

    goto :goto_20

    .line 995
    :cond_14
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 996
    const/16 v0, 0x1a

    goto :goto_20

    .line 998
    :cond_1f
    move v0, v1

    .line 1001
    :goto_20
    if-ne v0, v1, :cond_24

    const/4 v1, 0x0

    goto :goto_28

    :cond_24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 1002
    :goto_28
    iget v2, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1003
    if-eqz v1, :cond_dc

    .line 1007
    nop

    .line 1008
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    .line 1009
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1010
    sub-int v4, v3, v1

    .line 1012
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v5

    .line 1013
    const/16 v6, 0x2002

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_50

    if-eqz v5, :cond_4e

    if-ne v5, v8, :cond_50

    if-lez v2, :cond_50

    :cond_4e
    move v5, v8

    goto :goto_51

    :cond_50
    move v5, v7

    .line 1016
    :goto_51
    nop

    .line 1018
    const/high16 v6, 0x3f000000    # 0.5f

    if-gez v4, :cond_75

    .line 1019
    if-eqz v5, :cond_6f

    .line 1020
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v4

    neg-float v4, v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1021
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1022
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1023
    move v2, v8

    goto :goto_70

    .line 1019
    :cond_6f
    move v2, v7

    .line 1025
    :goto_70
    nop

    .line 1026
    move v4, v2

    move v2, v7

    move v5, v8

    goto :goto_97

    .line 1027
    :cond_75
    if-le v4, v2, :cond_94

    .line 1028
    if-eqz v5, :cond_90

    .line 1029
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    sub-int/2addr v4, v2

    int-to-float v4, v4

    .line 1030
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v4, v9

    .line 1029
    invoke-virtual {v5, v4, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1031
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1032
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1033
    move v4, v8

    goto :goto_91

    .line 1028
    :cond_90
    move v4, v7

    .line 1035
    :goto_91
    nop

    .line 1036
    move v5, v8

    goto :goto_97

    .line 1027
    :cond_94
    move v2, v4

    move v4, v7

    move v5, v4

    .line 1038
    :goto_97
    if-eq v2, v3, :cond_d9

    .line 1039
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v3, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1040
    if-eqz v5, :cond_ba

    .line 1041
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 1042
    invoke-direct {p0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 1043
    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 1044
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    if-nez v2, :cond_b6

    move v7, v8

    .line 1043
    :cond_b6
    invoke-virtual {v1, v3, p1, v0, v7}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    goto :goto_d8

    .line 1048
    :cond_ba
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1049
    invoke-direct {p0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 1050
    iget-object v2, p0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 1051
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    .line 1050
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    .line 1053
    :cond_d0
    invoke-direct {p0}, Landroid/widget/ScrollView;->initDifferentialFlingHelperIfNotExists()V

    .line 1054
    iget-object v1, p0, Landroid/widget/ScrollView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    invoke-virtual {v1, p1, v0}, Landroid/widget/DifferentialMotionFlingHelper;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 1056
    :cond_d8
    :goto_d8
    return v8

    .line 1058
    :cond_d9
    if-eqz v4, :cond_dc

    .line 1059
    return v8

    .line 1065
    :cond_dc
    :goto_dc
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_e2
    .packed-switch 0x8
        :pswitch_9
    .end packed-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1151
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1152
    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1153
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1154
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1155
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 1129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1130
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1131
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1132
    if-lez v0, :cond_2f

    .line 1133
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1134
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_21

    .line 1135
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1137
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1139
    :cond_21
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_2f

    .line 1140
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1141
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1145
    :cond_2f
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 650
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_d

    .line 651
    return v1

    .line 654
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 655
    return v1

    .line 661
    :cond_14
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_22

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_22

    .line 662
    return v4

    .line 665
    :cond_22
    and-int/lit16 v0, v0, 0xff

    const-string v3, "ScrollView-scroll"

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_15e

    :pswitch_2a
    goto/16 :goto_15b

    .line 766
    :pswitch_2c
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_15b

    .line 676
    :pswitch_31
    iget v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 677
    if-ne v0, v5, :cond_37

    .line 679
    goto/16 :goto_15b

    .line 682
    :cond_37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 683
    if-ne v6, v5, :cond_5d

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    goto/16 :goto_15b

    .line 689
    :cond_5d
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 690
    iget v5, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 691
    iget v6, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_15b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v5

    and-int/2addr v2, v5

    if-nez v2, :cond_15b

    .line 692
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 693
    iput v0, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 694
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 695
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 696
    iput v4, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 697
    iget-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez p1, :cond_8d

    .line 698
    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 700
    :cond_8d
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 701
    if-eqz p1, :cond_96

    .line 702
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 704
    :cond_96
    goto/16 :goto_15b

    .line 757
    :pswitch_98
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 758
    iput v5, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 759
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 760
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 761
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 763
    :cond_b5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    .line 764
    goto/16 :goto_15b

    .line 709
    :pswitch_ba
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v0}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v5

    if-nez v5, :cond_d1

    .line 711
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 712
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 713
    goto/16 :goto_15b

    .line 720
    :cond_d1
    iput v0, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 721
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 723
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 724
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 731
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 734
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->viewVelocityApi()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 735
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFrameContentVelocity(F)V

    .line 738
    :cond_f9
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 739
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_112

    goto :goto_114

    :cond_112
    move v1, v4

    goto :goto_115

    :cond_114
    :goto_114
    nop

    :goto_115
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 741
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12f

    .line 742
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 744
    :cond_12f
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_149

    .line 745
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-virtual {v0, v1, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 747
    :cond_149
    iget-boolean p1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz p1, :cond_157

    iget-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez p1, :cond_157

    .line 748
    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 750
    :cond_157
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 751
    nop

    .line 774
    :cond_15b
    :goto_15b
    iget-boolean p1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return p1

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_98
        :pswitch_31
        :pswitch_98
        :pswitch_2a
        :pswitch_2a
        :pswitch_2c
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 7

    .line 1843
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1844
    move-object p1, p0

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1846
    iget-object p4, p1, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p4, :cond_18

    iget-object p4, p1, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {p4, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_18

    .line 1847
    iget-object p4, p1, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, p4}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    .line 1849
    :cond_18
    const/4 p4, 0x0

    iput-object p4, p1, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1851
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1852
    iget-object v0, p1, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v0, :cond_2d

    .line 1853
    iget-object v0, p1, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v0, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v0, p1, Landroid/widget/ScrollView;->mScrollY:I

    .line 1854
    iput-object p4, p1, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 1857
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p4

    if-lez p4, :cond_3c

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    goto :goto_3d

    :cond_3c
    move p4, p2

    .line 1858
    :goto_3d
    sub-int/2addr p5, p3

    iget p3, p1, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p5, p3

    iget p3, p1, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p5, p3

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1862
    iget p4, p1, Landroid/widget/ScrollView;->mScrollY:I

    if-le p4, p3, :cond_50

    .line 1863
    iput p3, p1, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_56

    .line 1864
    :cond_50
    iget p3, p1, Landroid/widget/ScrollView;->mScrollY:I

    if-gez p3, :cond_56

    .line 1865
    iput p2, p1, Landroid/widget/ScrollView;->mScrollY:I

    .line 1870
    :cond_56
    :goto_56
    iget p2, p1, Landroid/widget/ScrollView;->mScrollX:I

    iget p3, p1, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, p2, p3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1871
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7

    .line 475
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 477
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    .line 478
    return-void

    .line 481
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 482
    if-nez p2, :cond_f

    .line 483
    return-void

    .line 486
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_69

    .line 487
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 490
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 491
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 492
    const/16 v2, 0x17

    if-lt v0, v2, :cond_45

    .line 493
    iget v0, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 494
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    goto :goto_4f

    .line 496
    :cond_45
    iget v0, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v0, v2

    .line 497
    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v2, v3

    .line 500
    :goto_4f
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v2

    .line 501
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v3, :cond_69

    .line 502
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v0, v1}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result p1

    .line 504
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 506
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 509
    :cond_69
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 2046
    if-nez p4, :cond_8

    .line 2047
    float-to-int p1, p3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 2048
    const/4 p1, 0x1

    return p1

    .line 2050
    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .line 2034
    iget p1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2035
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2036
    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, p2, p1

    .line 2037
    sub-int v4, p5, v2

    .line 2038
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 2039
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 2019
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2020
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 2021
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .registers 13

    .line 1072
    iget-object p3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_2d

    .line 1073
    iget p3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1074
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1075
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1076
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1077
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1078
    iget p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1079
    if-eqz p4, :cond_2c

    .line 1080
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1082
    :cond_2c
    goto :goto_30

    .line 1083
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1086
    :goto_30
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1087
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    .line 1789
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1790
    const/16 p1, 0x82

    goto :goto_b

    .line 1791
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1792
    const/16 p1, 0x21

    .line 1795
    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 1796
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    .line 1797
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .line 1800
    :goto_1f
    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 1801
    return v1

    .line 1804
    :cond_23
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1805
    return v1

    .line 1808
    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 2144
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_10

    .line 2147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2148
    return-void

    .line 2150
    :cond_10
    check-cast p1, Landroid/widget/ScrollView$SavedState;

    .line 2151
    invoke-virtual {p1}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2152
    iput-object p1, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2153
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 2154
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 2158
    iget-object v0, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_11

    .line 2161
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 2163
    :cond_11
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2164
    new-instance v1, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2165
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v0, v1, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 2166
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5

    .line 1875
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1877
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 1878
    if-eqz p1, :cond_27

    if-ne p0, p1, :cond_c

    goto :goto_27

    .line 1884
    :cond_c
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1885
    iget-object p2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1886
    iget-object p2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1887
    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1888
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1890
    :cond_26
    return-void

    .line 1879
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    .line 2014
    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 2028
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2029
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23

    .line 783
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 785
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    .line 787
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 789
    const/4 v11, 0x0

    if-nez v2, :cond_14

    .line 790
    iput v11, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 792
    :cond_14
    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 794
    const/4 v3, -0x1

    const/4 v13, 0x1

    packed-switch v2, :pswitch_data_2e0

    :pswitch_20
    goto/16 :goto_2d3

    .line 959
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 960
    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_2d3

    .line 953
    :pswitch_34
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 954
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 955
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 956
    goto/16 :goto_2d3

    .line 944
    :pswitch_47
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_2d3

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2d3

    .line 945
    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/16 v19, 0x0

    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 946
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 948
    :cond_6c
    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 949
    invoke-direct {v0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_2d3

    .line 825
    :pswitch_73
    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 826
    if-ne v2, v3, :cond_9d

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    goto/16 :goto_2d3

    .line 831
    :cond_9d
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 832
    iget v4, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int/2addr v4, v3

    .line 833
    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    iget-object v6, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    invoke-virtual {v0, v11, v4, v5, v6}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 834
    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    aget v5, v5, v13

    sub-int/2addr v4, v5

    .line 835
    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v5, v5, v13

    int-to-float v5, v5

    invoke-virtual {v10, v12, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 836
    iget v5, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v6, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v6, v6, v13

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 838
    :cond_c5
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_e5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_e5

    .line 839
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 840
    if-eqz v5, :cond_da

    .line 841
    invoke-interface {v5, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 843
    :cond_da
    iput-boolean v13, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 844
    if-lez v4, :cond_e2

    .line 845
    iget v5, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v4, v5

    goto :goto_e5

    .line 847
    :cond_e2
    iget v5, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v4, v5

    .line 850
    :cond_e5
    :goto_e5
    nop

    .line 851
    nop

    .line 852
    iget-boolean v5, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_20f

    .line 854
    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v5, v5, v13

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 856
    iget v14, v0, Landroid/widget/ScrollView;->mScrollY:I

    .line 857
    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 858
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 859
    if-eqz v3, :cond_105

    if-ne v3, v13, :cond_103

    if-lez v6, :cond_103

    goto :goto_105

    :cond_103
    move v15, v11

    goto :goto_106

    :cond_105
    :goto_105
    move v15, v13

    .line 862
    :goto_106
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 863
    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v15, :cond_165

    .line 864
    nop

    .line 865
    if-gez v4, :cond_13b

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_13b

    .line 866
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    .line 867
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float v7, v16, v1

    invoke-virtual {v3, v5, v7}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 866
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_162

    .line 869
    :cond_13b
    if-lez v4, :cond_161

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v2

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_161

    .line 870
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v5, v4

    int-to-float v5, v5

    .line 871
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 870
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_162

    .line 874
    :cond_161
    move v2, v11

    :goto_162
    sub-int/2addr v4, v2

    move v2, v4

    goto :goto_166

    .line 863
    :cond_165
    move v2, v4

    .line 879
    :goto_166
    iget v4, v0, Landroid/widget/ScrollView;->mScrollY:I

    iget v8, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move v3, v1

    const/4 v1, 0x0

    move v5, v3

    const/4 v3, 0x0

    move v7, v5

    const/4 v5, 0x0

    move/from16 v17, v7

    const/4 v7, 0x0

    move/from16 v18, v11

    move/from16 v11, v17

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 881
    move v7, v6

    move v6, v2

    iget v1, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v1, v14

    .line 882
    sub-int v4, v6, v2

    .line 883
    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 884
    iget v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v13

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 885
    iget-object v1, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    int-to-float v1, v1

    invoke-virtual {v10, v12, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 886
    iget v1, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    aget v2, v2, v13

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto :goto_20b

    .line 887
    :cond_1a7
    if-eqz v15, :cond_20b

    int-to-float v1, v6

    cmpl-float v2, v1, v12

    if-eqz v2, :cond_20b

    .line 888
    add-int/2addr v14, v6

    .line 889
    if-gez v14, :cond_1cd

    .line 890
    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v2, v6

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v11}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 892
    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1cb

    .line 893
    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 895
    :cond_1cb
    move v11, v13

    goto :goto_1f0

    .line 896
    :cond_1cd
    if-le v14, v7, :cond_1ee

    .line 897
    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float v3, v16, v11

    invoke-virtual {v2, v1, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 899
    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1e9

    .line 900
    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 902
    :cond_1e9
    move/from16 v11, v18

    move/from16 v18, v13

    goto :goto_1f0

    .line 896
    :cond_1ee
    move/from16 v11, v18

    .line 904
    :goto_1f0
    invoke-direct {v0}, Landroid/widget/ScrollView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_209

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 905
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_206

    iget-object v1, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_209

    .line 906
    :cond_206
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 912
    :cond_209
    move v4, v6

    goto :goto_211

    :cond_20b
    :goto_20b
    move v4, v6

    move/from16 v11, v18

    goto :goto_211

    .line 852
    :cond_20f
    move/from16 v18, v11

    .line 912
    :goto_211
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v1

    if-eqz v1, :cond_2d3

    .line 913
    if-nez v11, :cond_234

    if-eqz v18, :cond_21c

    goto :goto_234

    .line 918
    :cond_21c
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz v1, :cond_2d3

    .line 919
    invoke-direct {v0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 920
    iget-object v1, v0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    .line 921
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    .line 920
    invoke-virtual {v1, v2, v3, v13, v4}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    goto/16 :goto_2d3

    .line 914
    :cond_234
    :goto_234
    invoke-direct {v0}, Landroid/widget/ScrollView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 915
    iget-object v1, v0, Landroid/widget/ScrollView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    .line 916
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    .line 915
    invoke-virtual {v1, v2, v3, v13, v11}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    goto/16 :goto_2d3

    .line 926
    :pswitch_246
    iget-boolean v1, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_2d3

    .line 927
    iget-object v1, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 928
    iget v2, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 929
    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    .line 931
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v4, v5, :cond_268

    .line 932
    neg-int v2, v2

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    goto :goto_283

    .line 933
    :cond_268
    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    .line 934
    invoke-direct {v0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    .line 933
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v2

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_283

    .line 935
    invoke-virtual {v0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 938
    :cond_283
    :goto_283
    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 939
    invoke-direct {v0}, Landroid/widget/ScrollView;->endDrag()V

    .line 940
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 941
    goto :goto_2d3

    .line 796
    :pswitch_28c
    move/from16 v18, v11

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_295

    .line 797
    return v18

    .line 799
    :cond_295
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2a6

    .line 800
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 801
    if-eqz v2, :cond_2a6

    .line 802
    invoke-interface {v2, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 810
    :cond_2a6
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2bf

    .line 811
    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 812
    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_2bf

    .line 813
    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 814
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 819
    :cond_2bf
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 820
    move/from16 v2, v18

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 821
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 822
    nop

    .line 964
    :cond_2d3
    :goto_2d3
    iget-object v1, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2dc

    .line 965
    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 967
    :cond_2dc
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 968
    return v13

    :pswitch_data_2e0
    .packed-switch 0x0
        :pswitch_28c
        :pswitch_246
        :pswitch_73
        :pswitch_47
        :pswitch_20
        :pswitch_34
        :pswitch_22
    .end packed-switch
.end method

.method public whitelist pageScroll(I)Z
    .registers 6

    .line 1263
    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1264
    :goto_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1266
    if-eqz v0, :cond_38

    .line 1267
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1268
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1269
    if-lez v0, :cond_37

    .line 1270
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1271
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_37

    .line 1272
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1275
    :cond_37
    goto :goto_4b

    .line 1276
    :cond_38
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1277
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_4b

    .line 1278
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1281
    :cond_4b
    :goto_4b
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1283
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 5

    .line 1092
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 1093
    return v0

    .line 1095
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_10

    .line 1096
    return v1

    .line 1098
    :cond_10
    sparse-switch p1, :sswitch_data_4c

    .line 1118
    return v1

    .line 1110
    :sswitch_14
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    iget p2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p1, p2

    .line 1111
    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr p2, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1112
    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p1, p2, :cond_2d

    .line 1113
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1114
    return v0

    .line 1116
    :cond_2d
    return v1

    .line 1101
    :sswitch_2e
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    iget p2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p1, p2

    .line 1102
    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr p2, p1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1103
    iget p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p1, p2, :cond_4b

    .line 1104
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1105
    return v0

    .line 1107
    :cond_4b
    return v1

    :sswitch_data_4c
    .sparse-switch
        0x1000 -> :sswitch_2e
        0x2000 -> :sswitch_14
        0x1020038 -> :sswitch_14
        0x102003a -> :sswitch_2e
    .end sparse-switch
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1764
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1765
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_10

    .line 1766
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->scrollToDescendant(Landroid/view/View;)V

    goto :goto_12

    .line 1769
    :cond_10
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1772
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1773
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .line 1815
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1816
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1815
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1818
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 629
    if-eqz p1, :cond_5

    .line 630
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 632
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 633
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 1823
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1824
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1825
    return-void
.end method

.method public whitelist scrollTo(II)V
    .registers 6

    .line 2002
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3a

    .line 2003
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2004
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2005
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2006
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v0, :cond_37

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v0, :cond_3a

    .line 2007
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2010
    :cond_3a
    return-void
.end method

.method public whitelist scrollToDescendant(Landroid/view/View;)V
    .registers 3

    .line 1659
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1b

    .line 1660
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1663
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1665
    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1667
    if-eqz p1, :cond_1a

    .line 1668
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1670
    :cond_1a
    goto :goto_1d

    .line 1671
    :cond_1b
    iput-object p1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1673
    :goto_1d
    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .registers 3

    .line 315
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 316
    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .registers 2

    .line 301
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setTopEdgeEffectColor(I)V

    .line 302
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBottomEdgeEffectColor(I)V

    .line 303
    return-void
.end method

.method public whitelist setFillViewport(Z)V
    .registers 3

    .line 452
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 453
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 454
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 456
    :cond_9
    return-void
.end method

.method public whitelist setSmoothScrollingEnabled(Z)V
    .registers 2

    .line 470
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 471
    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .registers 3

    .line 328
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 329
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist smoothScrollBy(II)V
    .registers 7

    .line 1454
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1456
    return-void

    .line 1458
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 1459
    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_43

    .line 1460
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr p1, v0

    .line 1461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1462
    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1463
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1464
    add-int/2addr p2, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    .line 1466
    iget-object p2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p2, v2, v1, v0, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1467
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1468
    goto :goto_5f

    .line 1469
    :cond_43
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1470
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1471
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_5c

    .line 1472
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1473
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1476
    :cond_5c
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1478
    :goto_5f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 1479
    return-void
.end method

.method public final whitelist smoothScrollTo(II)V
    .registers 4

    .line 1488
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1489
    return-void
.end method
