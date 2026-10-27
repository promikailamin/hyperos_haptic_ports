.class public Lcom/miui/mishare/app/view/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final blacklist ANIMATION_REPEAT_COUNT:I = 0x8

.field public static final blacklist ARROW_BOTTOM_MODE:I = 0x0

.field public static final blacklist ARROW_LEFT_MODE:I = 0x3

.field public static final blacklist ARROW_NONE_MODE:I = -0x1

.field private static final blacklist ARROW_PADDING:I = 0x1

.field public static final blacklist ARROW_RIGHT_MODE:I = 0x2

.field public static final blacklist ARROW_TOP_MODE:I = 0x1

.field private static final blacklist FEATURE_WHOLE_ANIM:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ArrowPopupView"

.field private static final blacklist TRANSLATION_VALUE:I = 0x4


# instance fields
.field private blacklist mAnchor:Landroid/view/View;

.field private blacklist mAnimationSet:Landroid/view/animation/AnimationSet;

.field private blacklist mAnimator:Landroid/animation/AnimatorSet;

.field private blacklist mArrow:Landroid/widget/ImageView;

.field private final blacklist mArrowBottom:Landroid/graphics/drawable/Drawable;

.field private final blacklist mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private blacklist mArrowMode:I

.field private blacklist mArrowPopupWindow:Lcom/miui/mishare/app/view/ArrowPopupWindow;

.field private final blacklist mArrowRight:Landroid/graphics/drawable/Drawable;

.field private final blacklist mArrowTop:Landroid/graphics/drawable/Drawable;

.field private blacklist mAutoDismiss:Z

.field private final blacklist mBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mContentFrame:Landroid/widget/FrameLayout;

.field private blacklist mContentFrameWrapper:Landroid/widget/LinearLayout;

.field private final blacklist mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

.field private blacklist mIsDismissing:Z

.field private final blacklist mMinBorder:I

.field private blacklist mOffsetX:I

.field private blacklist mOffsetY:I

.field private final blacklist mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private blacklist mShowingAnimation:Z

.field private blacklist mSpaceLeft:I

.field private blacklist mSpaceTop:I

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private blacklist mTranslationValue:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/AnimationSet;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimator(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArrowMode(Lcom/miui/mishare/app/view/ArrowPopupView;)I
    .registers 1

    iget p0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArrowPopupWindow(Lcom/miui/mishare/app/view/ArrowPopupView;)Lcom/miui/mishare/app/view/ArrowPopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowPopupWindow:Lcom/miui/mishare/app/view/ArrowPopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentFrameWrapper(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowAnimationListener(Lcom/miui/mishare/app/view/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowingAnimation(Lcom/miui/mishare/app/view/ArrowPopupView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mShowingAnimation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTranslationValue(Lcom/miui/mishare/app/view/ArrowPopupView;)I
    .registers 1

    iget p0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mTranslationValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimationSet(Lcom/miui/mishare/app/view/ArrowPopupView;Landroid/view/animation/AnimationSet;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDismissing(Lcom/miui/mishare/app/view/ArrowPopupView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mIsDismissing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTranslationValue(Lcom/miui/mishare/app/view/ArrowPopupView;I)V
    .registers 2

    iput p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mTranslationValue:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manimateShowing(Lcom/miui/mishare/app/view/ArrowPopupView;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->animateShowing()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAnimationPivot(Lcom/miui/mishare/app/view/ArrowPopupView;[F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/ArrowPopupView;->getAnimationPivot([F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFEATURE_WHOLE_ANIM()Z
    .registers 1

    sget-boolean v0, Lcom/miui/mishare/app/view/ArrowPopupView;->FEATURE_WHOLE_ANIM:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    const-string v0, "ro.sys.ft_whole_anim"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/mishare/app/view/ArrowPopupView;->FEATURE_WHOLE_ANIM:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mShowingAnimation:Z

    .line 112
    new-instance v0, Lcom/miui/mishare/app/view/ArrowPopupView$1;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/ArrowPopupView$1;-><init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 131
    new-instance v0, Lcom/miui/mishare/app/view/ArrowPopupView$2;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/ArrowPopupView$2;-><init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAutoDismiss:Z

    .line 164
    const v0, 0x1108014c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 165
    const v0, 0x11080150

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 166
    const v0, 0x1108014d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 167
    const v0, 0x1108014f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 168
    const v0, 0x1108014e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    const v1, 0x11070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mMinBorder:I

    .line 172
    return-void
.end method

.method private blacklist adjustArrowMode()V
    .registers 15

    .line 656
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 657
    .local v1, "anchorLocation":[I
    iget-object v2, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 659
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getWidth()I

    move-result v2

    .line 660
    .local v2, "displayWidth":I
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getHeight()I

    move-result v3

    .line 661
    .local v3, "displayHeight":I
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 662
    .local v4, "contentWrapperWidth":I
    iget-object v5, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    .line 663
    .local v5, "contentWrapperHeight":I
    iget-object v6, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 664
    .local v6, "anchorHeight":I
    iget-object v7, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 666
    .local v7, "anchorWidth":I
    const/4 v8, 0x4

    new-array v9, v8, [I

    .line 667
    .local v9, "remainSize":[I
    const/4 v10, 0x1

    aget v11, v1, v10

    sub-int/2addr v11, v5

    const/4 v12, 0x0

    aput v11, v9, v12

    .line 668
    aget v11, v1, v10

    sub-int v11, v3, v11

    sub-int/2addr v11, v6

    sub-int/2addr v11, v5

    aput v11, v9, v10

    .line 669
    aget v10, v1, v12

    sub-int/2addr v10, v4

    aput v10, v9, v0

    .line 670
    aget v0, v1, v12

    sub-int v0, v2, v0

    sub-int/2addr v0, v7

    sub-int/2addr v0, v4

    const/4 v10, 0x3

    aput v0, v9, v10

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "arrowMode":I
    const/high16 v10, -0x80000000

    .line 676
    .local v10, "maxSpace":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4c
    if-ge v11, v8, :cond_60

    .line 677
    aget v12, v9, v11

    iget v13, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mMinBorder:I

    if-lt v12, v13, :cond_56

    .line 678
    move v0, v11

    .line 679
    goto :goto_60

    .line 680
    :cond_56
    aget v12, v9, v11

    if-le v12, v10, :cond_5d

    .line 681
    move v0, v11

    .line 682
    aget v10, v9, v11

    .line 676
    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    .line 685
    .end local v11    # "i":I
    :cond_60
    :goto_60
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->setArrowMode(I)V

    .line 686
    return-void
.end method

.method private blacklist animateShowing()V
    .registers 14

    .line 589
    sget-boolean v0, Lcom/miui/mishare/app/view/ArrowPopupView;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_ad

    .line 590
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_b

    .line 591
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 593
    :cond_b
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_12

    .line 594
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 596
    :cond_12
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 597
    new-instance v1, Lcom/miui/mishare/app/view/ArrowPopupView$6;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/view/ArrowPopupView$6;-><init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 604
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    .line 605
    .local v1, "translation":F
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 606
    .local v0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    iget v2, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    packed-switch v2, :pswitch_data_ae

    :pswitch_39
    goto :goto_43

    .line 612
    :pswitch_3a
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 613
    goto :goto_43

    .line 616
    :pswitch_3d
    neg-float v1, v1

    .line 617
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_43

    .line 608
    :pswitch_41
    neg-float v1, v1

    .line 609
    nop

    .line 621
    :goto_43
    iget-object v2, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v1, v4, v7

    const/4 v8, 0x2

    aput v6, v4, v8

    invoke-static {v2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 622
    .local v2, "contentAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 623
    const-wide/16 v9, 0x4b0

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 624
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAutoDismiss:Z

    const/16 v11, 0x8

    const/4 v12, -0x1

    if-eqz v4, :cond_6e

    .line 625
    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_71

    .line 627
    :cond_6e
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 629
    :goto_71
    new-instance v4, Lcom/miui/mishare/app/view/ArrowPopupView$7;

    invoke-direct {v4, p0}, Lcom/miui/mishare/app/view/ArrowPopupView$7;-><init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 639
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    new-array v3, v3, [F

    aput v6, v3, v5

    aput v1, v3, v7

    aput v6, v3, v8

    invoke-static {v4, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 640
    .local v3, "arrowAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 641
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 642
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAutoDismiss:Z

    if-eqz v4, :cond_9a

    .line 643
    invoke-virtual {v3, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_9d

    .line 645
    :cond_9a
    invoke-virtual {v3, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 647
    :goto_9d
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v2, v6, v5

    aput-object v3, v6, v7

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 648
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 650
    .end local v0    # "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    .end local v1    # "translation":F
    .end local v2    # "contentAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "arrowAnimator":Landroid/animation/ObjectAnimator;
    :cond_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_41
        :pswitch_39
        :pswitch_3d
        :pswitch_3a
    .end packed-switch
.end method

.method private blacklist arrowHorizontalLayout()V
    .registers 24

    .line 377
    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 378
    .local v2, "location":[I
    iget-object v3, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 379
    const/4 v3, 0x0

    aget v4, v2, v3

    .line 380
    .local v4, "anchorLocationX":I
    const/4 v5, 0x1

    aget v6, v2, v5

    .line 381
    .local v6, "anchorLocationY":I
    invoke-virtual {v0, v2}, Lcom/miui/mishare/app/view/ArrowPopupView;->getLocationOnScreen([I)V

    .line 382
    iget-object v7, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 383
    .local v7, "anchorWidth":I
    iget-object v8, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 384
    .local v8, "anchorHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getWidth()I

    move-result v9

    .line 385
    .local v9, "displayWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getHeight()I

    move-result v10

    .line 386
    .local v10, "displayHeight":I
    iget-object v11, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 387
    .local v11, "contentFrameWrapperWidth":I
    iget-object v12, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 388
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 389
    .local v12, "contentFrameWrapperHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getArrowWidth()I

    move-result v13

    .line 390
    .local v13, "arrowWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getArrowHeight()I

    move-result v14

    .line 391
    .local v14, "arrowHeight":I
    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v6

    aget v16, v2, v5

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    .line 392
    sub-int v15, v10, v15

    .line 393
    .local v15, "spaceBottom":I
    sub-int v16, v8, v14

    div-int/lit8 v16, v16, 0x2

    add-int v16, v6, v16

    aget v17, v2, v5

    sub-int v16, v16, v17

    iget-object v5, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 394
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    iget-object v3, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/2addr v5, v1

    add-int v16, v16, v5

    .line 396
    .local v16, "mArrowSpaceTop":I
    div-int/lit8 v3, v12, 0x2

    .line 397
    .local v3, "contentFrameWrapperTopHeight":I
    sub-int v5, v12, v3

    .line 399
    .local v5, "contentFrameWrapperBottomHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getLeft()I

    move-result v19

    iget v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetX:I

    add-int v1, v19, v1

    iput v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    .line 400
    const/16 v19, 0x0

    .line 401
    .local v19, "arrowSpaceLeft":I
    move/from16 v21, v6

    .end local v6    # "anchorLocationY":I
    .local v21, "anchorLocationY":I
    iget v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    move/from16 v22, v8

    const/4 v8, 0x2

    .end local v8    # "anchorHeight":I
    .local v22, "anchorHeight":I
    if-ne v6, v8, :cond_ad

    .line 402
    sub-int v6, v4, v11

    iget-object v8, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 403
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v6, v13

    const/4 v8, 0x0

    aget v18, v2, v8

    sub-int v6, v6, v18

    add-int/2addr v1, v6

    iput v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    .line 404
    sub-int v1, v4, v13

    aget v6, v2, v8

    sub-int/2addr v1, v6

    iget v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetX:I

    add-int/2addr v1, v6

    const/4 v6, 0x1

    add-int/lit8 v19, v1, -0x1

    move/from16 v1, v19

    goto :goto_d2

    .line 405
    :cond_ad
    const/4 v8, 0x3

    if-ne v6, v8, :cond_d0

    .line 406
    add-int v6, v4, v7

    iget-object v8, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 407
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v6, v8

    add-int/2addr v6, v13

    const/4 v8, 0x0

    aget v20, v2, v8

    sub-int v6, v6, v20

    add-int/2addr v1, v6

    iput v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    .line 408
    iget-object v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v6, v13

    add-int/2addr v1, v6

    const/4 v6, 0x1

    add-int/lit8 v19, v1, 0x1

    move/from16 v1, v19

    goto :goto_d2

    .line 405
    :cond_d0
    move/from16 v1, v19

    .line 411
    .end local v19    # "arrowSpaceLeft":I
    .local v1, "arrowSpaceLeft":I
    :goto_d2
    iget v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    if-lt v6, v3, :cond_df

    if-lt v15, v5, :cond_df

    .line 413
    sub-int/2addr v6, v3

    iget v8, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetY:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    goto :goto_ef

    .line 414
    :cond_df
    if-ge v15, v5, :cond_e9

    .line 416
    sub-int v6, v10, v12

    iget v8, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetY:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    goto :goto_ef

    .line 417
    :cond_e9
    if-ge v6, v3, :cond_ef

    .line 419
    iget v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetY:I

    iput v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    .line 421
    :cond_ef
    :goto_ef
    iget v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetY:I

    add-int v16, v16, v6

    .line 423
    if-gez v16, :cond_fa

    .line 424
    const/16 v16, 0x0

    move/from16 v6, v16

    goto :goto_108

    .line 425
    :cond_fa
    add-int v6, v16, v14

    if-le v6, v10, :cond_106

    .line 426
    add-int v6, v16, v14

    sub-int/2addr v6, v10

    sub-int v16, v16, v6

    move/from16 v6, v16

    goto :goto_108

    .line 425
    :cond_106
    move/from16 v6, v16

    .line 428
    .end local v16    # "mArrowSpaceTop":I
    .local v6, "mArrowSpaceTop":I
    :goto_108
    iget-object v8, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v16, v2

    .end local v2    # "location":[I
    .local v16, "location":[I
    iget v2, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    .line 429
    move/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "contentFrameWrapperTopHeight":I
    .local v17, "contentFrameWrapperTopHeight":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v18, v4

    .end local v4    # "anchorLocationX":I
    .local v18, "anchorLocationX":I
    iget v4, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    .line 430
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v11

    .line 431
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v19, v5

    .end local v5    # "contentFrameWrapperBottomHeight":I
    .local v19, "contentFrameWrapperBottomHeight":I
    iget v5, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v5, v12

    .line 432
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 428
    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 434
    iget-object v2, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    add-int v3, v1, v13

    add-int v4, v6, v14

    invoke-virtual {v2, v1, v6, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 438
    return-void
.end method

.method private blacklist arrowLayout()V
    .registers 5

    .line 289
    iget v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_c

    .line 292
    :cond_8
    invoke-direct {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->arrowHorizontalLayout()V

    goto :goto_f

    .line 290
    :cond_c
    :goto_c
    invoke-direct {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->arrowVerticalLayout()V

    .line 296
    :goto_f
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_57

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 299
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    if-le v2, v3, :cond_31

    .line 300
    iget-object v2, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_48

    .line 302
    :cond_31
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_48

    .line 303
    iget-object v2, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :cond_48
    :goto_48
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_50

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_57

    .line 307
    :cond_50
    const-string v2, "ArrowPopupView"

    const-string v3, "Invalid LayoutPrams of content view, please check the anchor view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_57
    return-void
.end method

.method private blacklist arrowVerticalLayout()V
    .registers 23

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 314
    .local v1, "anchorWidth":I
    iget-object v2, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 315
    .local v2, "anchorHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getWidth()I

    move-result v3

    .line 316
    .local v3, "displayWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getHeight()I

    move-result v4

    .line 317
    .local v4, "displayHeight":I
    iget-object v5, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 318
    .local v5, "contentFrameWrapperWidth":I
    iget-object v6, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 319
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 320
    .local v6, "contentFrameWrapperHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getArrowWidth()I

    move-result v7

    .line 321
    .local v7, "arrowWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getArrowHeight()I

    move-result v8

    .line 323
    .local v8, "arrowHeight":I
    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 324
    .local v10, "location":[I
    iget-object v11, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 325
    const/4 v11, 0x0

    aget v12, v10, v11

    .line 326
    .local v12, "anchorLocationX":I
    const/4 v13, 0x1

    aget v14, v10, v13

    .line 327
    .local v14, "anchorLocationY":I
    invoke-virtual {v0, v10}, Lcom/miui/mishare/app/view/ArrowPopupView;->getLocationOnScreen([I)V

    .line 328
    div-int/lit8 v15, v1, 0x2

    add-int/2addr v15, v12

    aget v16, v10, v11

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    .line 329
    sub-int v15, v3, v15

    .line 330
    .local v15, "spaceRight":I
    sub-int v16, v1, v7

    div-int/lit8 v16, v16, 0x2

    add-int v16, v12, v16

    aget v9, v10, v11

    sub-int v16, v16, v9

    .line 332
    .local v16, "mArrowSpaceLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getTop()I

    move-result v9

    iget v11, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetY:I

    add-int/2addr v9, v11

    iput v9, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    .line 333
    const/4 v11, 0x0

    .line 334
    .local v11, "arrowSpaceTop":I
    iget v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    if-nez v13, :cond_94

    .line 335
    const/4 v13, 0x1

    aget v18, v10, v13

    sub-int v18, v14, v18

    sub-int v18, v18, v6

    iget-object v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 336
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v13, v8

    add-int v18, v18, v13

    add-int v9, v9, v18

    iput v9, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    .line 337
    const/4 v9, 0x1

    aget v13, v10, v9

    sub-int v13, v14, v13

    sub-int/2addr v13, v8

    move/from16 v19, v1

    .end local v1    # "anchorWidth":I
    .local v19, "anchorWidth":I
    iget v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetY:I

    add-int/2addr v13, v1

    add-int/lit8 v11, v13, -0x1

    goto :goto_b5

    .line 338
    .end local v19    # "anchorWidth":I
    .restart local v1    # "anchorWidth":I
    :cond_94
    move/from16 v19, v1

    const/4 v1, 0x1

    .end local v1    # "anchorWidth":I
    .restart local v19    # "anchorWidth":I
    if-ne v13, v1, :cond_b5

    .line 339
    add-int v13, v14, v2

    aget v20, v10, v1

    sub-int v13, v13, v20

    iget-object v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 340
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v13, v1

    add-int/2addr v13, v8

    add-int/2addr v9, v13

    iput v9, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    .line 341
    iget-object v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v1, v8

    add-int/2addr v9, v1

    const/4 v1, 0x1

    add-int/lit8 v11, v9, 0x1

    .line 344
    :cond_b5
    :goto_b5
    div-int/lit8 v1, v5, 0x2

    .line 345
    .local v1, "contentFrameWrapperLeftWidth":I
    sub-int v9, v5, v1

    .line 346
    .local v9, "contentFrameWrapperRightWidth":I
    iget v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    if-lt v13, v1, :cond_c3

    if-lt v15, v9, :cond_c3

    .line 348
    sub-int/2addr v13, v1

    iput v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    goto :goto_cf

    .line 349
    :cond_c3
    if-ge v15, v9, :cond_ca

    .line 351
    sub-int v13, v3, v5

    iput v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    goto :goto_cf

    .line 352
    :cond_ca
    if-ge v13, v1, :cond_cf

    .line 354
    const/4 v13, 0x0

    iput v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    .line 356
    :cond_cf
    :goto_cf
    iget v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    move/from16 v18, v1

    .end local v1    # "contentFrameWrapperLeftWidth":I
    .local v18, "contentFrameWrapperLeftWidth":I
    iget v1, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetX:I

    add-int/2addr v13, v1

    iput v13, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    .line 357
    add-int v16, v16, v1

    .line 359
    if-gez v16, :cond_e1

    .line 360
    const/16 v16, 0x0

    move/from16 v1, v16

    goto :goto_ef

    .line 361
    :cond_e1
    add-int v1, v16, v7

    if-le v1, v3, :cond_ed

    .line 362
    add-int v1, v16, v7

    sub-int/2addr v1, v3

    sub-int v16, v16, v1

    move/from16 v1, v16

    goto :goto_ef

    .line 361
    :cond_ed
    move/from16 v1, v16

    .line 364
    .end local v16    # "mArrowSpaceLeft":I
    .local v1, "mArrowSpaceLeft":I
    :goto_ef
    move/from16 v16, v2

    .end local v2    # "anchorHeight":I
    .local v16, "anchorHeight":I
    iget-object v2, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 365
    move/from16 v20, v9

    const/4 v9, 0x0

    .end local v9    # "contentFrameWrapperRightWidth":I
    .local v20, "contentFrameWrapperRightWidth":I
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v17, v10

    .end local v10    # "location":[I
    .local v17, "location":[I
    iget v10, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    .line 366
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v10, v5

    .line 367
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    move/from16 v21, v3

    .end local v3    # "displayWidth":I
    .local v21, "displayWidth":I
    iget v3, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v3, v6

    .line 368
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 364
    invoke-virtual {v2, v13, v9, v10, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 370
    iget-object v2, v0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    add-int v3, v1, v7

    add-int v9, v11, v8

    invoke-virtual {v2, v1, v11, v3, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 374
    return-void
.end method

.method private blacklist getAnimationPivot([F)V
    .registers 11
    .param p1, "outPivot"    # [F

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "pivotX":F
    const/4 v1, 0x0

    .line 476
    .local v1, "pivotY":F
    iget-object v2, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    .line 477
    .local v2, "arrowTop":I
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 478
    .local v3, "arrowBottom":I
    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 479
    .local v4, "arrowLeft":I
    iget-object v5, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    .line 481
    .local v5, "arrowRight":I
    iget v6, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v6, :pswitch_data_4c

    goto :goto_45

    .line 483
    :pswitch_22
    int-to-float v0, v4

    .line 484
    int-to-float v6, v2

    sub-int v8, v3, v2

    int-to-float v8, v8

    div-float/2addr v8, v7

    add-float v1, v6, v8

    .line 485
    goto :goto_45

    .line 487
    :pswitch_2b
    int-to-float v0, v5

    .line 488
    int-to-float v6, v2

    sub-int v8, v3, v2

    int-to-float v8, v8

    div-float/2addr v8, v7

    add-float v1, v6, v8

    .line 489
    goto :goto_45

    .line 491
    :pswitch_34
    int-to-float v6, v4

    sub-int v8, v5, v4

    int-to-float v8, v8

    div-float/2addr v8, v7

    add-float v0, v6, v8

    .line 492
    int-to-float v1, v2

    .line 493
    goto :goto_45

    .line 495
    :pswitch_3d
    int-to-float v6, v4

    sub-int v8, v5, v4

    int-to-float v8, v8

    div-float/2addr v8, v7

    add-float v0, v6, v8

    .line 496
    int-to-float v1, v3

    .line 500
    :goto_45
    const/4 v6, 0x0

    aput v0, p1, v6

    .line 501
    const/4 v6, 0x1

    aput v1, p1, v6

    .line 502
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_22
    .end packed-switch
.end method

.method private blacklist getArrowHeight()I
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 451
    .local v0, "height":I
    if-nez v0, :cond_12

    .line 452
    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 455
    :cond_12
    return v0
.end method

.method private blacklist getArrowWidth()I
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 442
    .local v0, "width":I
    if-nez v0, :cond_12

    .line 443
    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 446
    :cond_12
    return v0
.end method


# virtual methods
.method public blacklist addShadow()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/mishare/app/view/ArrowPopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/view/ArrowPopupView$3;-><init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V

    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupWindowHelper;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    .line 249
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/mishare/app/view/ArrowPopupView$4;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/view/ArrowPopupView$4;-><init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V

    invoke-static {v0, v1}, Lcom/miui/mishare/app/view/ArrowPopupWindowHelper;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    .line 264
    return-void
.end method

.method public blacklist animateToDismiss()V
    .registers 13

    .line 550
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mIsDismissing:Z

    if-eqz v0, :cond_5

    .line 551
    return-void

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 555
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 558
    :cond_c
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_13

    .line 559
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 562
    :cond_13
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 564
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 565
    .local v0, "pivot":[F
    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getAnimationPivot([F)V

    .line 567
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/4 v2, 0x0

    aget v8, v0, v2

    const/4 v9, 0x0

    aget v10, v0, v1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v1, v11

    .line 572
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 574
    .local v2, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-boolean v3, Lcom/miui/mishare/app/view/ArrowPopupView;->FEATURE_WHOLE_ANIM:Z

    if-eqz v3, :cond_4c

    .line 575
    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 576
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_53

    .line 578
    :cond_4c
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 581
    :goto_53
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 582
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 583
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 584
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 585
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/miui/mishare/app/view/ArrowPopupView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 586
    return-void
.end method

.method public blacklist animateToShow()V
    .registers 3

    .line 505
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->invalidate()V

    .line 506
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/ArrowPopupView$5;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/view/ArrowPopupView$5;-><init>(Lcom/miui/mishare/app/view/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 547
    return-void
.end method

.method public blacklist enableShowingAnimation(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 742
    iput-boolean p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mShowingAnimation:Z

    .line 743
    return-void
.end method

.method public blacklist getContentView()Landroid/view/View;
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 280
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 282
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 3

    .line 180
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 181
    const v0, 0x110a009e

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    .line 182
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    .line 183
    const v0, 0x110a003c

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 184
    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 186
    .local v0, "minHeight":I
    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 187
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 460
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_16

    .line 461
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowPopupWindow:Lcom/miui/mishare/app/view/ArrowPopupWindow;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 462
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowPopupWindow:Lcom/miui/mishare/app/view/ArrowPopupWindow;

    invoke-virtual {v0}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->dismiss()V

    .line 464
    :cond_15
    return-void

    .line 466
    :cond_16
    iget v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 467
    invoke-direct {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->adjustArrowMode()V

    .line 469
    :cond_1e
    invoke-direct {p0}, Lcom/miui/mishare/app/view/ArrowPopupView;->arrowLayout()V

    .line 470
    return-void
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 728
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 729
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 732
    .local v1, "y":I
    iget-object v2, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 733
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 734
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_24

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_24

    .line 735
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowPopupWindow:Lcom/miui/mishare/app/view/ArrowPopupWindow;

    invoke-virtual {v3, v4}, Lcom/miui/mishare/app/view/ArrowPopupWindow;->dismiss(Z)V

    .line 736
    return v4

    .line 738
    :cond_24
    iget-object v3, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_2f

    invoke-interface {v3, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    :goto_30
    return v4
.end method

.method public blacklist setAnchor(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 710
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 711
    return-void
.end method

.method public blacklist setArrowMode(I)V
    .registers 4
    .param p1, "arrowMode"    # I

    .line 689
    iput p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowMode:I

    .line 690
    packed-switch p1, :pswitch_data_28

    goto :goto_26

    .line 700
    :pswitch_6
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 701
    goto :goto_26

    .line 704
    :pswitch_e
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26

    .line 692
    :pswitch_16
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    goto :goto_26

    .line 696
    :pswitch_1e
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    nop

    .line 707
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist setArrowPopupWindow(Lcom/miui/mishare/app/view/ArrowPopupWindow;)V
    .registers 2
    .param p1, "arrowPopupWindow"    # Lcom/miui/mishare/app/view/ArrowPopupWindow;

    .line 719
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mArrowPopupWindow:Lcom/miui/mishare/app/view/ArrowPopupWindow;

    .line 720
    return-void
.end method

.method public blacklist setAutoDismiss(Z)V
    .registers 2
    .param p1, "autoDismiss"    # Z

    .line 175
    iput-boolean p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mAutoDismiss:Z

    .line 176
    return-void
.end method

.method public blacklist setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "contentView"    # Landroid/view/View;

    .line 267
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/mishare/app/view/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    return-void
.end method

.method public blacklist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 272
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 273
    if-eqz p1, :cond_c

    .line 274
    iget-object v0, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :cond_c
    return-void
.end method

.method public blacklist setOffset(II)V
    .registers 3
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 714
    iput p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetX:I

    .line 715
    iput p2, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mOffsetY:I

    .line 716
    return-void
.end method

.method public blacklist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 723
    iput-object p1, p0, Lcom/miui/mishare/app/view/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 724
    return-void
.end method
