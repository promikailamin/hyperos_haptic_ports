.class final Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;,
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;,
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final blacklist ANIMATION_DURATION_FADE:I = 0x1c2

.field private static final blacklist ANIMATION_DURATION_SCALE:I = 0x15e

.field private static final blacklist GLOW_MAX_ALPHA:F = 0.2f

.field private static final blacklist GLOW_MAX_ALPHA_DARK:F = 0.1f

.field private static final blacklist GLOW_MAX_SCALE_FACTOR:F = 1.35f


# instance fields
.field private final blacklist mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private blacklist mBottomProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDark:Z

.field private blacklist mDelayTouchFeedback:Z

.field private blacklist mDrawingHardwareGlow:Z

.field private final blacklist mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

.field private final blacklist mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

.field private blacklist mGlowAlpha:F

.field private blacklist mGlowScale:F

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mLastDark:Z

.field private blacklist mLeftProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxWidth:I

.field private final blacklist mMaxWidthResource:I

.field private blacklist mPaintProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPressed:Z

.field private blacklist mRightProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRipplePaint:Landroid/graphics/Paint;

.field private final blacklist mRunningAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRxProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRyProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportHardware:Z

.field private final blacklist mTapTimeoutMillis:I

.field private final blacklist mTargetView:Landroid/view/View;

.field private final blacklist mTmpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTopProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

.field private blacklist mVisible:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1kxzO9l4o5ccpNWKzbe8QdbxSkI(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qcwyoeC3PIlniS8FJUu6DOG84HQ(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPressed(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDrawingHardwareGlow(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisible(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 6

    .line 95
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    .line 74
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "exitHardware"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    .line 85
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "enterHardware"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    .line 93
    sget-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 483
    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 96
    iput p3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidthResource:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    .line 98
    iput-object p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 99
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 100
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result p1

    goto :goto_6b

    .line 101
    :cond_67
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    :goto_6b
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTapTimeoutMillis:I

    .line 102
    return-void
.end method

.method private blacklist drawHardware(Landroid/graphics/RecordingCanvas;)V
    .registers 12

    .line 189
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    if-eqz v0, :cond_60

    .line 190
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    if-ne v0, v1, :cond_1d

    .line 191
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    iget-object v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    iget-object v9, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_60

    .line 194
    :cond_1d
    move-object v2, p1

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 197
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    .line 198
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 201
    :cond_60
    :goto_60
    return-void
.end method

.method private blacklist drawSoftware(Landroid/graphics/Canvas;)V
    .registers 11

    .line 132
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_73

    .line 133
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 134
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 137
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 138
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 139
    :goto_2d
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    mul-float/2addr v3, v4

    .line 140
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 141
    mul-float/2addr v0, v4

    .line 142
    mul-float/2addr v1, v4

    .line 143
    if-eqz v2, :cond_3e

    move v4, v3

    goto :goto_3f

    :cond_3e
    move v4, v0

    .line 144
    :goto_3f
    if-eqz v2, :cond_42

    move v3, v1

    .line 145
    :cond_42
    move-object v8, v6

    if-eqz v2, :cond_47

    move v6, v1

    goto :goto_48

    :cond_47
    move v6, v0

    .line 147
    :goto_48
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    sget-object v5, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    if-ne v2, v5, :cond_5b

    .line 148
    sub-float v2, v0, v4

    move v5, v3

    sub-float v3, v1, v5

    add-float/2addr v4, v0

    add-float/2addr v5, v1

    move v7, v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_73

    .line 150
    :cond_5b
    move v5, v1

    move-object v1, p1

    move p1, v5

    move v5, v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 151
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 153
    neg-float v2, v4

    move v3, v2

    move v5, v4

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 154
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    :cond_73
    :goto_73
    return-void
.end method

.method private blacklist endAnimations(Ljava/lang/String;Z)V
    .registers 5

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyButtonRipple.endAnim: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cancel="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 295
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    .line 296
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 298
    nop

    :goto_34
    if-ge p1, v0, :cond_4a

    .line 299
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 300
    if-eqz p2, :cond_44

    .line 301
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_47

    .line 303
    :cond_44
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 298
    :goto_47
    add-int/lit8 p1, p1, 0x1

    goto :goto_34

    .line 306
    :cond_4a
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 308
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method private blacklist enterHardware()V
    .registers 10

    .line 415
    const-string v0, "enterHardware"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 416
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    .line 417
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 418
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    .line 419
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v1

    .line 420
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faccccd    # 1.35f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 421
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 422
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 426
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    .line 427
    new-instance v3, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v6

    .line 428
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 429
    invoke-virtual {v3, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 430
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 435
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c5

    .line 436
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 437
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 438
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 439
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_fc

    .line 441
    :cond_c5
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 442
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 443
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 444
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 447
    :goto_fc
    iput v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    .line 448
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    .line 449
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 450
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 451
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 453
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 454
    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    .line 455
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 462
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_13b

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-nez v0, :cond_13b

    .line 463
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitHardware()V

    .line 465
    :cond_13b
    return-void
.end method

.method private blacklist enterSoftware()V
    .registers 4

    .line 329
    const-string v0, "enterSoftware"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 330
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    .line 331
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    .line 332
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    const-string v1, "glowScale"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 334
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 335
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 336
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 338
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-nez v0, :cond_3c

    .line 343
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitSoftware()V

    .line 345
    :cond_3c
    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private blacklist exitHardware()V
    .registers 5

    .line 468
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 469
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 471
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 472
    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 474
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 475
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 477
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 478
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 481
    return-void
.end method

.method private blacklist exitSoftware()V
    .registers 4

    .line 348
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "glowAlpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 349
    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 352
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 353
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method private blacklist getExtendEnd()Landroid/graphics/CanvasProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 402
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_b
    return-object v0
.end method

.method private blacklist getExtendSize()I
    .registers 2

    .line 406
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_17
    return v0
.end method

.method private blacklist getExtendStart()Landroid/graphics/CanvasProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_b
    return-object v0
.end method

.method private blacklist getMaxGlowAlpha()F
    .registers 2

    .line 226
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eqz v0, :cond_8

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_b

    :cond_8
    const v0, 0x3e4ccccd    # 0.2f

    :goto_b
    return v0
.end method

.method private blacklist getRipplePaint()Landroid/graphics/Paint;
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1e

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eqz v1, :cond_1a

    const/high16 v1, -0x1000000

    goto :goto_1b

    :cond_1a
    const/4 v1, -0x1

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    :cond_1e
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private blacklist getRippleSize()I
    .registers 3

    .line 410
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 411
    :goto_17
    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private blacklist isHorizontal()Z
    .registers 3

    .line 185
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private blacklist setExtendEnd(Landroid/graphics/CanvasProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 394
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 395
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    .line 397
    :cond_9
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 399
    :goto_b
    return-void
.end method

.method private blacklist setExtendStart(Landroid/graphics/CanvasProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 379
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    .line 381
    :cond_9
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 383
    :goto_b
    return-void
.end method

.method private blacklist setPressedHardware(Z)V
    .registers 5

    .line 357
    if-eqz p1, :cond_2e

    .line 358
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz p1, :cond_2a

    .line 359
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 360
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTapTimeoutMillis:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_31

    .line 362
    :cond_22
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    if-eqz p1, :cond_31

    .line 363
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    goto :goto_31

    .line 366
    :cond_2a
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    goto :goto_31

    .line 369
    :cond_2e
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitHardware()V

    .line 371
    :cond_31
    :goto_31
    return-void
.end method

.method private blacklist setPressedSoftware(Z)V
    .registers 5

    .line 312
    if-eqz p1, :cond_2e

    .line 313
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz p1, :cond_2a

    .line 314
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 315
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 316
    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTapTimeoutMillis:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_31

    .line 317
    :cond_22
    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    if-eqz p1, :cond_31

    .line 318
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    goto :goto_31

    .line 321
    :cond_2a
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    goto :goto_31

    .line 324
    :cond_2e
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitSoftware()V

    .line 326
    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public blacklist abortDelayedRipple()V
    .registers 3

    .line 289
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    .line 162
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_10

    .line 163
    check-cast p1, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->drawHardware(Landroid/graphics/RecordingCanvas;)V

    goto :goto_13

    .line 165
    :cond_10
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->drawSoftware(Landroid/graphics/Canvas;)V

    .line 167
    :goto_13
    return-void
.end method

.method public blacklist getGlowAlpha()F
    .registers 2

    .line 205
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    return v0
.end method

.method public blacklist getGlowScale()F
    .registers 2

    .line 216
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 181
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 3

    .line 259
    const-string v0, "jumpToCurrentState"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    .line 260
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .registers 7

    .line 231
    nop

    .line 232
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_14

    .line 233
    aget v2, p1, v1

    const v4, 0x10100a7

    if-ne v2, v4, :cond_11

    .line 234
    nop

    .line 235
    move p1, v3

    goto :goto_15

    .line 232
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    move p1, v0

    .line 238
    :goto_15
    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-eq p1, v1, :cond_1f

    .line 239
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressed(Z)V

    .line 240
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    .line 241
    return v3

    .line 243
    :cond_1f
    return v0
.end method

.method public whitelist setAlpha(I)V
    .registers 2

    .line 172
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 177
    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .registers 3

    .line 111
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDark:Z

    .line 112
    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    .line 116
    return-void
.end method

.method public blacklist setGlowAlpha(F)V
    .registers 2

    .line 210
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    .line 211
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 212
    return-void
.end method

.method public blacklist setGlowScale(F)V
    .registers 2

    .line 221
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    .line 222
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 223
    return-void
.end method

.method public blacklist setPressed(Z)V
    .registers 4

    .line 273
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDark:Z

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eq v0, v1, :cond_f

    if-eqz p1, :cond_f

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 275
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDark:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    .line 277
    :cond_f
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_17

    .line 278
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressedHardware(Z)V

    goto :goto_1a

    .line 280
    :cond_17
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressedSoftware(Z)V

    .line 282
    :goto_1a
    return-void
.end method

.method public blacklist setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V
    .registers 2

    .line 119
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 120
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 3

    .line 249
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    .line 250
    if-eqz p1, :cond_9

    .line 252
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->jumpToCurrentState()V

    .line 254
    :cond_9
    return p1
.end method

.method public blacklist updateResources()V
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidthResource:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    .line 107
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 108
    return-void
.end method
