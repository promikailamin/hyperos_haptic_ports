.class final Landroid/inputmethodservice/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Landroid/view/Window$DecorCallback;
.implements Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;


# static fields
.field private static final blacklist DEFAULT_COLOR_ADAPT_TRANSITION_TIME:I = 0x6a4

.field private static final blacklist LEGACY_DECELERATE:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mCustomImeSwitcherButtonRequestedVisible:Z

.field private blacklist mDarkIntensity:F

.field private blacklist mDestroyed:Z

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mImeDrawsImeNavBar:Z

.field private blacklist mLastInsets:Landroid/graphics/Insets;

.field private blacklist mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

.field private final blacklist mService:Landroid/inputmethodservice/InputMethodService;

.field private blacklist mShouldShowImeSwitcherWhenImeIsShown:Z

.field private final blacklist mTempPos:[I

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTintAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic blacklist $r8$lambda$ANrY_c0JL4opC1AY5yRtWkruacI(Landroid/inputmethodservice/NavigationBarController;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/NavigationBarController;->lambda$installNavigationBarFrameIfNecessary$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$jxcUQTD1Ga3FWzIrhgWqtNKJlgI(Landroid/inputmethodservice/NavigationBarController;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/NavigationBarController;->lambda$scheduleRelayout$1(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vOfQphvlyiyLHEpuzau89Ye4Whg(Landroid/inputmethodservice/NavigationBarController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/NavigationBarController;->lambda$onSystemBarAppearanceChanged$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/NavigationBarController;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    .line 97
    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 98
    return-void
.end method

.method private static blacklist calculateTargetDarkIntensity(IZ)F
    .registers 2

    .line 480
    if-nez p1, :cond_8

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 482
    :goto_9
    if-eqz p0, :cond_e

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private blacklist checkCustomImeSwitcherButtonRequestedVisible(ZZZ)V
    .registers 4

    .line 551
    if-eqz p2, :cond_3

    goto :goto_10

    .line 552
    :cond_3
    iget-object p2, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p2}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11101db

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    .line 554
    :goto_10
    if-eqz p1, :cond_16

    if-eqz p3, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 555
    :goto_17
    iget-boolean p2, p0, Landroid/inputmethodservice/NavigationBarController;->mCustomImeSwitcherButtonRequestedVisible:Z

    if-eq p1, p2, :cond_22

    .line 556
    iput-boolean p1, p0, Landroid/inputmethodservice/NavigationBarController;->mCustomImeSwitcherButtonRequestedVisible:Z

    .line 557
    iget-object p2, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p2, p1}, Landroid/inputmethodservice/InputMethodService;->onCustomImeSwitcherButtonRequestedVisible(Z)V

    .line 559
    :cond_22
    return-void
.end method

.method private blacklist getImeCaptionBarHeight(Z)I
    .registers 3

    .line 524
    if-eqz p1, :cond_10

    .line 525
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105020b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_11

    .line 527
    :cond_10
    const/4 p1, 0x0

    .line 524
    :goto_11
    return p1
.end method

.method private blacklist getSystemInsets()Landroid/graphics/Insets;
    .registers 5

    .line 102
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 103
    return-object v1

    .line 105
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 106
    if-nez v0, :cond_17

    .line 107
    return-object v1

    .line 109
    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1e

    .line 111
    return-object v1

    .line 113
    :cond_1e
    nop

    .line 114
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 115
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 116
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    .line 115
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist installNavigationBarFrameIfNecessary()V
    .registers 8

    .line 120
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImeDrawsImeNavBar:Z

    if-nez v0, :cond_5

    .line 121
    return-void

    .line 123
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_a

    .line 124
    return-void

    .line 126
    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 127
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1b

    .line 128
    return-void

    .line 130
    :cond_1b
    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    const-class v1, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 132
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 133
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 134
    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/16 v3, 0x50

    const/4 v4, -0x1

    if-nez v2, :cond_96

    .line 135
    new-instance v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v2, v5}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 136
    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x1090095

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 139
    if-eqz v1, :cond_62

    .line 140
    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v5, v4, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mLastInsets:Landroid/graphics/Insets;

    goto :goto_71

    .line 148
    :cond_62
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/inputmethodservice/NavigationBarController;->getImeCaptionBarHeight(Z)I

    move-result v1

    .line 149
    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :goto_71
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v1, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 153
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 154
    if-eqz v0, :cond_95

    .line 157
    nop

    .line 158
    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eqz v1, :cond_8c

    .line 159
    const/4 v1, 0x4

    goto :goto_8d

    :cond_8c
    const/4 v1, 0x0

    :goto_8d
    or-int/lit8 v1, v1, 0x3

    .line 160
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavbarFlags(I)V

    .line 161
    invoke-virtual {v0, p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->prepareNavButtons(Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;)V

    .line 163
    :cond_95
    goto :goto_a4

    .line 164
    :cond_96
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mLastInsets:Landroid/graphics/Insets;

    .line 169
    :goto_a4
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_b0

    .line 170
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_b6

    .line 172
    :cond_b0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :goto_b6
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController;->mAppearance:I

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {v0, v1}, Landroid/inputmethodservice/NavigationBarController;->calculateTargetDarkIntensity(IZ)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/NavigationBarController;->setIconTintInternal(F)V

    .line 178
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v1, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/NavigationBarController;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 189
    return-void
.end method

.method private synthetic blacklist lambda$installNavigationBarFrameIfNecessary$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 179
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_20

    .line 182
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    .line 183
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_12

    const/4 v2, 0x0

    goto :goto_14

    :cond_12
    const/16 v2, 0x8

    :goto_14
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setVisibility(I)V

    .line 184
    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController;->mShouldShowImeSwitcherWhenImeIsShown:Z

    iget-boolean v2, p0, Landroid/inputmethodservice/NavigationBarController;->mImeDrawsImeNavBar:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v2, v0}, Landroid/inputmethodservice/NavigationBarController;->checkCustomImeSwitcherButtonRequestedVisible(ZZZ)V

    .line 187
    :cond_20
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$onSystemBarAppearanceChanged$2(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 457
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/inputmethodservice/NavigationBarController;->setIconTintInternal(F)V

    return-void
.end method

.method private synthetic blacklist lambda$scheduleRelayout$1(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .registers 9

    .line 309
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 310
    return-void

    .line 312
    :cond_5
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    .line 313
    return-void

    .line 315
    :cond_c
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 316
    if-nez v0, :cond_17

    .line 317
    return-void

    .line 319
    :cond_17
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 320
    if-nez v1, :cond_1e

    .line 321
    return-void

    .line 323
    :cond_1e
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_23

    .line 324
    return-void

    .line 326
    :cond_23
    check-cast v1, Landroid/view/ViewGroup;

    .line 327
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 328
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 329
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    const/16 v5, 0x50

    const/4 v6, -0x1

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v3}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController;->mLastInsets:Landroid/graphics/Insets;

    .line 334
    :cond_40
    nop

    .line 335
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_54

    .line 337
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 338
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-le v0, v2, :cond_54

    .line 339
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 341
    :cond_54
    return-void
.end method

.method private blacklist scheduleRelayout()V
    .registers 3

    .line 307
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 308
    new-instance v1, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda3;-><init>(Landroid/inputmethodservice/NavigationBarController;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method private blacklist setIconTintInternal(F)V
    .registers 5

    .line 465
    iput p1, p0, Landroid/inputmethodservice/NavigationBarController;->mDarkIntensity:F

    .line 466
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_7

    .line 467
    return-void

    .line 469
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v1, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 470
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 471
    if-nez v0, :cond_1c

    .line 472
    return-void

    .line 474
    :cond_1c
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setDarkIntensity(F)V

    .line 475
    return-void
.end method

.method private blacklist uninstallNavigationBarFrameIfNecessary()V
    .registers 3

    .line 192
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_5

    .line 193
    return-void

    .line 195
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 196
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_16

    .line 197
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 199
    :cond_16
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 200
    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 201
    return-void
.end method


# virtual methods
.method blacklist isShown()Z
    .registers 2

    .line 534
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method blacklist onDestroy()V
    .registers 2

    .line 358
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 359
    return-void

    .line 361
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    .line 362
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 365
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    .line 366
    return-void
.end method

.method public blacklist onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .registers 4

    .line 488
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 489
    const/4 p1, 0x0

    return p1

    .line 492
    :cond_6
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDrawLegacyNavigationBarBackground:Z

    if-eq p1, v0, :cond_2a

    .line 493
    iput-boolean p1, p0, Landroid/inputmethodservice/NavigationBarController;->mDrawLegacyNavigationBarBackground:Z

    .line 494
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_25

    .line 495
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_1c

    .line 496
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_22

    .line 498
    :cond_1c
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :goto_22
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->scheduleRelayout()V

    .line 502
    :cond_25
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController;->mAppearance:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/NavigationBarController;->onSystemBarAppearanceChanged(I)V

    .line 504
    :cond_2a
    return p1
.end method

.method public blacklist onImeSwitchButtonClick(Landroid/view/View;)V
    .registers 2

    .line 509
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->onImeSwitchButtonClickFromClient()V

    .line 510
    return-void
.end method

.method public blacklist onImeSwitchButtonLongClick(Landroid/view/View;)Z
    .registers 3

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 515
    const/4 p1, 0x1

    return p1
.end method

.method blacklist onNavButtonFlagsChanged(I)V
    .registers 8

    .line 395
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 396
    return-void

    .line 399
    :cond_5
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    .line 401
    :goto_e
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_14

    move p1, v2

    goto :goto_15

    :cond_14
    move p1, v1

    .line 405
    :goto_15
    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImeDrawsImeNavBar:Z

    .line 406
    iget-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController;->mShouldShowImeSwitcherWhenImeIsShown:Z

    .line 408
    iput-boolean p1, p0, Landroid/inputmethodservice/NavigationBarController;->mShouldShowImeSwitcherWhenImeIsShown:Z

    .line 410
    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v4

    .line 411
    invoke-direct {p0, v0}, Landroid/inputmethodservice/NavigationBarController;->getImeCaptionBarHeight(Z)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/WindowInsetsController;->setImeCaptionBarInsetsHeight(I)V

    .line 413
    if-eqz v0, :cond_61

    .line 414
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->installNavigationBarFrameIfNecessary()V

    .line 415
    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v4, :cond_64

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eq v4, v3, :cond_64

    .line 417
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v4, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 418
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 419
    if-eqz v3, :cond_60

    .line 422
    nop

    .line 423
    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eqz v4, :cond_5a

    .line 424
    const/4 v1, 0x4

    goto :goto_5b

    :cond_5a
    nop

    :goto_5b
    or-int/lit8 v1, v1, 0x3

    .line 425
    invoke-virtual {v3, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavbarFlags(I)V

    .line 427
    :cond_60
    goto :goto_64

    .line 429
    :cond_61
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->uninstallNavigationBarFrameIfNecessary()V

    .line 433
    :cond_64
    :goto_64
    nop

    .line 434
    invoke-virtual {p0}, Landroid/inputmethodservice/NavigationBarController;->isShown()Z

    move-result v1

    .line 433
    xor-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/inputmethodservice/NavigationBarController;->checkCustomImeSwitcherButtonRequestedVisible(ZZZ)V

    .line 435
    return-void
.end method

.method blacklist onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .registers 3

    .line 345
    invoke-virtual {p1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/NavigationBarController;->mAppearance:I

    .line 347
    invoke-virtual {p1, p0}, Landroid/view/Window;->setDecorCallback(Landroid/view/Window$DecorCallback;)V

    .line 348
    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .registers 5

    .line 439
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 440
    return-void

    .line 443
    :cond_5
    iput p1, p0, Landroid/inputmethodservice/NavigationBarController;->mAppearance:I

    .line 445
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez p1, :cond_c

    .line 446
    return-void

    .line 449
    :cond_c
    iget p1, p0, Landroid/inputmethodservice/NavigationBarController;->mAppearance:I

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {p1, v0}, Landroid/inputmethodservice/NavigationBarController;->calculateTargetDarkIntensity(IZ)F

    move-result p1

    .line 452
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1d

    .line 453
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 455
    :cond_1d
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDarkIntensity:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 456
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/NavigationBarController$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/NavigationBarController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 458
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x6a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 459
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 460
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroid/inputmethodservice/NavigationBarController;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 462
    return-void
.end method

.method blacklist onViewInitialized()V
    .registers 2

    .line 351
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 352
    return-void

    .line 354
    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->installNavigationBarFrameIfNecessary()V

    .line 355
    return-void
.end method

.method blacklist onWindowShown()V
    .registers 7

    .line 369
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mDestroyed:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_d

    goto :goto_56

    .line 372
    :cond_d
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_55

    .line 374
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 375
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    const/16 v4, 0x50

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mLastInsets:Landroid/graphics/Insets;

    .line 380
    :cond_2c
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 382
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_55

    .line 383
    check-cast v1, Landroid/view/ViewGroup;

    .line 384
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_55

    .line 386
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 387
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-le v0, v2, :cond_55

    .line 388
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 392
    :cond_55
    return-void

    .line 370
    :cond_56
    :goto_56
    return-void
.end method

.method blacklist toDebugString()Ljava/lang/String;
    .registers 3

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mImeDrawsImeNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController;->mImeDrawsImeNavBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNavigationBarFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShouldShowImeSwitcherWhenImeIsShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController;->mShouldShowImeSwitcherWhenImeIsShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCustomImeSwitcherButtonRequestedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController;->mCustomImeSwitcherButtonRequestedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppearance=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController;->mAppearance:I

    .line 567
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDarkIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDrawLegacyNavigationBarBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController;->mDrawLegacyNavigationBarBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    return-object v0
.end method

.method blacklist updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 6

    .line 209
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 210
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 211
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_37

    .line 215
    :cond_19
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 216
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getLocationInWindow([I)V

    .line 217
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    const/4 v2, 0x1

    aget v3, v0, v2

    if-le v1, v3, :cond_2c

    .line 218
    aget v1, v0, v2

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 220
    :cond_2c
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    aget v3, v0, v2

    if-le v1, v3, :cond_36

    .line 221
    aget v0, v0, v2

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 223
    :cond_36
    return-void

    .line 212
    :cond_37
    :goto_37
    return-void
.end method

.method blacklist updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 13

    .line 227
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_a

    goto/16 :goto_12b

    .line 231
    :cond_a
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_12a

    .line 233
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 238
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_101

    .line 239
    nop

    .line 240
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 241
    iget v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    packed-switch v6, :pswitch_data_12c

    goto/16 :goto_d0

    .line 270
    :pswitch_32
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 271
    iget-object p1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto/16 :goto_d1

    .line 261
    :pswitch_3e
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_d0

    .line 262
    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 263
    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v7, v7, v5

    iget p1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v8, v8, v5

    .line 264
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v9, v9, v4

    .line 265
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v9, v3

    .line 263
    invoke-virtual {v6, v7, p1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 266
    new-instance v3, Landroid/graphics/Region;

    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    goto :goto_d1

    .line 252
    :pswitch_6e
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_d0

    .line 253
    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 254
    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v7, v7, v5

    iget p1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v8, v8, v5

    .line 255
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v9, v9, v4

    .line 256
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v9, v3

    .line 254
    invoke-virtual {v6, v7, p1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    new-instance v3, Landroid/graphics/Region;

    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    goto :goto_d1

    .line 243
    :pswitch_9e
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d0

    .line 244
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 245
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v6, v6, v5

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v7, v7, v4

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v8, v8, v5

    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/inputmethodservice/NavigationBarController;->mTempPos:[I

    aget v9, v9, v4

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v9, v3

    .line 245
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    new-instance v3, Landroid/graphics/Region;

    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    goto :goto_d1

    .line 275
    :cond_d0
    :goto_d0
    const/4 v3, 0x0

    :goto_d1
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v7, v8

    .line 276
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 275
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    if-nez v3, :cond_f3

    .line 278
    new-instance v3, Landroid/graphics/Region;

    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    goto :goto_f8

    .line 280
    :cond_f3
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 283
    :goto_f8
    iget-object p1, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 284
    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 290
    :cond_101
    nop

    .line 291
    instance-of p1, v2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_11d

    .line 292
    check-cast v2, Landroid/view/ViewGroup;

    .line 293
    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object p1

    .line 294
    if-eqz p1, :cond_11b

    .line 295
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Landroid/inputmethodservice/NavigationBarController;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 296
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-le p1, p2, :cond_11b

    goto :goto_11c

    :cond_11b
    move v4, v5

    :goto_11c
    move v5, v4

    .line 298
    :cond_11d
    iget-object p1, p0, Landroid/inputmethodservice/NavigationBarController;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 299
    if-nez v5, :cond_127

    if-nez p1, :cond_12a

    .line 300
    :cond_127
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController;->scheduleRelayout()V

    .line 303
    :cond_12a
    return-void

    .line 228
    :cond_12b
    :goto_12b
    return-void

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_6e
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
