.class final Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
.super Ljava/lang/Object;
.source "ButtonDispatcher.java"


# static fields
.field private static final blacklist FADE_DURATION_IN:I = 0x96

.field private static final blacklist FADE_DURATION_OUT:I = 0xfa

.field public static final blacklist LINEAR:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private blacklist mAlpha:F

.field private final blacklist mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private blacklist mClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mCurrentView:Landroid/view/View;

.field private blacklist mDarkIntensity:Ljava/lang/Float;

.field private blacklist mDelayTouchFeedback:Ljava/lang/Boolean;

.field private blacklist mFadeAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mFadeListener:Landroid/animation/AnimatorListenerAdapter;

.field private final blacklist mId:I

.field private blacklist mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private blacklist mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private blacklist mLongClickable:Ljava/lang/Boolean;

.field private blacklist mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private blacklist mTouchListener:Landroid/view/View$OnTouchListener;

.field private final blacklist mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVisibility:I


# direct methods
.method public static synthetic blacklist $r8$lambda$KjJ2pWpjRQqNin9pSaH2s26SUz0(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnimator(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->LINEAR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    .line 56
    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 62
    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;-><init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    .line 71
    iput p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    .line 72
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZZ)V

    return-void
.end method


# virtual methods
.method public blacklist addView(Landroid/view/View;)V
    .registers 3

    .line 79
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 84
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    .line 85
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 87
    :cond_26
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_39

    .line 90
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 92
    :cond_39
    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v0, :cond_62

    .line 93
    check-cast p1, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    .line 94
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v0, :cond_4c

    .line 95
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDarkIntensity(F)V

    .line 97
    :cond_4c
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v0, :cond_55

    .line 98
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-interface {p1, v0}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_55
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    if-eqz v0, :cond_62

    .line 101
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDelayTouchFeedback(Z)V

    .line 104
    :cond_62
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    return-void
.end method

.method public blacklist getAlpha()F
    .registers 2

    .line 119
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    return v0
.end method

.method public blacklist getCurrentView()Landroid/view/View;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    return v0
.end method

.method public blacklist getImageDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    return-object v0
.end method

.method public blacklist getViews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getVisibility()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    return v0
.end method

.method public blacklist isVisible()Z
    .registers 2

    .line 115
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist onDestroy()V
    .registers 1

    .line 301
    return-void
.end method

.method public blacklist setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 5

    .line 260
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 261
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 262
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 263
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 265
    :cond_19
    return-void
.end method

.method public blacklist setAlpha(F)V
    .registers 3

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZ)V

    .line 154
    return-void
.end method

.method public blacklist setAlpha(FZ)V
    .registers 4

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZZ)V

    .line 158
    return-void
.end method

.method public blacklist setAlpha(FZJ)V
    .registers 11

    .line 161
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZJZ)V

    .line 162
    return-void
.end method

.method public blacklist setAlpha(FZJZ)V
    .registers 7

    .line 173
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    if-nez p5, :cond_8

    if-eqz p2, :cond_d

    .line 174
    :cond_8
    iget-object p5, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 176
    :cond_d
    const/4 p5, 0x0

    if-eqz p2, :cond_45

    .line 177
    invoke-virtual {p0, p5}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p2, v0, p5

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 179
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 180
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6e

    .line 187
    :cond_45
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result p2

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 188
    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 189
    if-eq p2, p1, :cond_6e

    .line 190
    int-to-float p1, p1

    div-float/2addr p1, p3

    iput p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    .line 191
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 192
    nop

    :goto_5c
    if-ge p5, p1, :cond_6e

    .line 193
    iget-object p2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget p3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 192
    add-int/lit8 p5, p5, 0x1

    goto :goto_5c

    .line 197
    :cond_6e
    :goto_6e
    return-void
.end method

.method public blacklist setAlpha(FZZ)V
    .registers 12

    .line 165
    nop

    .line 168
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_c

    const-wide/16 v0, 0x96

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0xfa

    :goto_e
    move-wide v5, v0

    .line 165
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZJZ)V

    .line 170
    return-void
.end method

.method public blacklist setCurrentView(Landroid/view/View;)V
    .registers 3

    .line 286
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 287
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz p1, :cond_13

    .line 288
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 290
    :cond_13
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    if-eqz p1, :cond_27

    .line 291
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 292
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 293
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 295
    :cond_27
    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .registers 5

    .line 200
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    .line 201
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_27

    .line 203
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v2, :cond_24

    .line 204
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    invoke-interface {v2, p1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDarkIntensity(F)V

    .line 202
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 207
    :cond_27
    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .registers 5

    .line 210
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    .line 211
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 212
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_27

    .line 213
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v2, :cond_24

    .line 214
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    invoke-interface {v2, p1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDelayTouchFeedback(Z)V

    .line 212
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 217
    :cond_27
    return-void
.end method

.method public blacklist setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V
    .registers 5

    .line 127
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 128
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 129
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_25

    .line 130
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v1, :cond_22

    .line 131
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-interface {v1, v2}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 134
    :cond_25
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz p1, :cond_30

    .line 135
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 137
    :cond_30
    return-void
.end method

.method public blacklist setLongClickable(Z)V
    .registers 5

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    .line 237
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 238
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p1, :cond_23

    .line 239
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 241
    :cond_23
    return-void
.end method

.method public blacklist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 220
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    .line 221
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 222
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 223
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 225
    :cond_1b
    return-void
.end method

.method public blacklist setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 5

    .line 252
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 253
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 254
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 255
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 257
    :cond_1b
    return-void
.end method

.method public blacklist setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5

    .line 244
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 245
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 246
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 247
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 249
    :cond_1b
    return-void
.end method

.method public blacklist setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 5

    .line 228
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 229
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 230
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1b

    .line 231
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 233
    :cond_1b
    return-void
.end method

.method public blacklist setTranslation(III)V
    .registers 8

    .line 268
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 269
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 270
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 271
    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 272
    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 273
    int-to-float v3, p3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 275
    :cond_20
    return-void
.end method

.method public blacklist setVisibility(I)V
    .registers 5

    .line 140
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    if-ne v0, p1, :cond_5

    return-void

    .line 141
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    .line 142
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 145
    :cond_e
    iput p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    .line 146
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 147
    const/4 v0, 0x0

    :goto_17
    if-ge v0, p1, :cond_29

    .line 148
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 150
    :cond_29
    return-void
.end method
