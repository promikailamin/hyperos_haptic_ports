.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EdgeEffect$EdgeEffectType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANGLE:D = 0.5235987755982988

.field private static final greylist-max-o COS:F

.field private static final blacklist DAMPING_RATIO:D = 0.98

.field public static final whitelist DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

.field private static final greylist-max-o EPSILON:F = 0.001f

.field private static final blacklist EXP_STRETCH_INTENSITY:F = 0.016f

.field private static final greylist-max-o GLOW_ALPHA_START:F = 0.09f

.field private static final blacklist LINEAR_DISTANCE_TAKE_OVER:D = 8.0

.field private static final blacklist LINEAR_STRETCH_INTENSITY:F = 0.016f

.field private static final blacklist LINEAR_VELOCITY_TAKE_OVER:F = 200.0f

.field private static final greylist-max-o MAX_ALPHA:F = 0.15f

.field private static final greylist-max-o MAX_GLOW_SCALE:F = 2.0f

.field private static final greylist-max-o MAX_VELOCITY:I = 0x2710

.field private static final greylist-max-o MIN_VELOCITY:I = 0x64

.field private static final blacklist NATURAL_FREQUENCY:D = 24.657

.field private static final blacklist ON_ABSORB_VELOCITY_ADJUSTMENT:F = 13.0f

.field private static final greylist-max-o PULL_DECAY_TIME:I = 0x7d0

.field private static final greylist-max-o PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final greylist-max-o PULL_GLOW_BEGIN:F = 0.0f

.field private static final greylist-max-o PULL_TIME:I = 0xa7

.field private static final greylist-max-o RADIUS_FACTOR:F = 0.6f

.field private static final greylist-max-o RECEDE_TIME:I = 0x258

.field private static final blacklist SCROLL_DIST_AFFECTED_BY_EXP_STRETCH:F = 0.33f

.field private static final greylist-max-o SIN:F

.field private static final greylist-max-o STATE_ABSORB:I = 0x2

.field private static final greylist-max-o STATE_IDLE:I = 0x0

.field private static final greylist-max-o STATE_PULL:I = 0x1

.field private static final greylist-max-o STATE_PULL_DECAY:I = 0x4

.field private static final greylist-max-o STATE_RECEDE:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final blacklist TYPE_GLOW:I = 0x0

.field private static final blacklist TYPE_NONE:I = -0x1

.field private static final blacklist TYPE_STRETCH:I = 0x1

.field public static final blacklist USE_STRETCH_EDGE_EFFECT_BY_DEFAULT:J = 0xa34bbc0L

.field private static final blacklist VALUE_THRESHOLD:D = 0.001

.field private static final greylist-max-o VELOCITY_GLOW_FACTOR:I = 0x6

.field private static final blacklist VELOCITY_THRESHOLD:D = 0.01


# instance fields
.field private greylist-max-o mBaseGlowScale:F

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDisplacement:F

.field private blacklist mDistance:F

.field private greylist-max-o mDuration:F

.field private blacklist mEdgeEffectType:I

.field private greylist-max-o mGlowAlpha:F

.field private greylist-max-o mGlowAlphaFinish:F

.field private greylist-max-o mGlowAlphaStart:F

.field private greylist-max-r mGlowScaleY:F

.field private greylist-max-o mGlowScaleYFinish:F

.field private greylist-max-o mGlowScaleYStart:F

.field private blacklist mHeight:F

.field private final greylist-max-o mInterpolator:Landroid/view/animation/Interpolator;

.field private final greylist-max-p mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mPullDistance:F

.field private greylist-max-o mRadius:F

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private greylist-max-o mTargetDisplacement:F

.field private blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private blacklist mTmpPoints:[F

.field private blacklist mVelocity:F

.field private blacklist mWidth:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 77
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    .line 177
    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/widget/EdgeEffect;->SIN:F

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 211
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 214
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 218
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 219
    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 226
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 228
    iput-object v1, p0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    .line 244
    sget-object v1, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 246
    const p2, -0x99999a

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 248
    const-wide/32 v1, 0xa34bbc0

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    .line 249
    move v0, v2

    goto :goto_42

    :cond_41
    nop

    :goto_42
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    .line 250
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    iget-object p1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object p1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v0, 0xffffff

    and-int/2addr p2, v0

    const/high16 v0, 0x33000000

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object p1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object p1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 256
    return-void
.end method

.method private blacklist calculateDistanceFromGlowValues(FF)F
    .registers 5

    .line 804
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_7

    .line 807
    return v0

    .line 809
    :cond_7
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1d

    .line 810
    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    sub-float/2addr p1, v0

    const p2, 0x3fb6db6e

    div-float/2addr p2, p1

    .line 811
    mul-float/2addr p2, p2

    iget-object p1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2

    .line 813
    :cond_1d
    const p1, 0x3f4ccccd    # 0.8f

    div-float/2addr p2, p1

    return p2
.end method

.method private blacklist dampStretchVector(F)F
    .registers 8

    .line 832
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    .line 833
    :goto_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 834
    const v1, 0x3c83126f    # 0.016f

    mul-float/2addr v1, p1

    .line 835
    nop

    .line 836
    neg-float p1, p1

    float-to-double v2, p1

    const-wide v4, 0x402079748cecfc47L    # 8.237217334679498

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    const-wide v2, 0x3f90624de0000000L    # 0.01600000075995922

    mul-double/2addr v4, v2

    .line 837
    float-to-double v1, v1

    add-double/2addr v1, v4

    double-to-float p1, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private blacklist getCurrentEdgeEffectBehavior()I
    .registers 2

    .line 260
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 261
    const/4 v0, -0x1

    return v0

    .line 263
    :cond_8
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    return v0
.end method

.method private blacklist isAtEquilibrium()Z
    .registers 7

    .line 821
    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 822
    iget v2, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v2, v2

    .line 827
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_28

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v4

    if-gez v2, :cond_26

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method private blacklist max(FFFF)F
    .registers 5

    .line 686
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 687
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 688
    invoke-static {p1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private blacklist min(FFFF)F
    .registers 5

    .line 680
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 681
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 682
    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private greylist-max-o update()V
    .registers 6

    .line 701
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 702
    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 704
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 706
    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 707
    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 708
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    .line 709
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-direct {p0, v1, v2}, Landroid/widget/EdgeEffect;->calculateDistanceFromGlowValues(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 711
    :cond_3c
    iget v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 713
    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8f

    .line 714
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_90

    goto :goto_8f

    .line 740
    :pswitch_55
    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 741
    goto :goto_8f

    .line 743
    :pswitch_58
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_8f

    .line 716
    :pswitch_5c
    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 717
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 718
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 720
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 721
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 724
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 725
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 726
    goto :goto_8f

    .line 728
    :pswitch_75
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 729
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 730
    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 732
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 733
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 736
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 737
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 738
    nop

    .line 747
    :cond_8f
    :goto_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_75
        :pswitch_5c
        :pswitch_58
        :pswitch_55
    .end packed-switch
.end method

.method private blacklist updateSpring()V
    .registers 22

    .line 750
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 751
    iget-wide v3, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 752
    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_16

    .line 753
    return-void

    .line 755
    :cond_16
    iput-wide v1, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 757
    iget v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    const/4 v4, 0x0

    if-gtz v1, :cond_6e

    iget v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v5, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v1, v5

    .line 758
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_6e

    iget v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 759
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    neg-float v5, v5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_6e

    .line 763
    iget v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 765
    iget v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v2, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 766
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget v3, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6b

    .line 768
    iput v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 769
    iput v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_6d

    .line 771
    :cond_6b
    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 773
    :goto_6d
    return-void

    .line 775
    :cond_6e
    const-wide v1, 0x3fa4467381d7dc00L    # 0.03960000000000008

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v5, 0x4038a83126e978d5L    # 24.657

    mul-double/2addr v1, v5

    .line 778
    iget v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v6, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    .line 779
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v1

    iget v9, v0, Landroid/widget/EdgeEffect;->mDistance:F

    float-to-double v9, v9

    const-wide v11, 0x403829f2ba9d1f60L    # 24.16386

    mul-double/2addr v9, v11

    iget v11, v0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-double v11, v11

    mul-double/2addr v9, v11

    iget v11, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v11, v11

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    .line 781
    float-to-double v9, v3

    const-wide v11, -0x3fc7d60d4562e0a0L    # -24.16386

    mul-double/2addr v11, v9

    const-wide v13, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v9, v1

    .line 782
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v5

    .line 783
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v7

    add-double v17, v17, v19

    move-wide/from16 v19, v5

    mul-double v4, v15, v17

    .line 784
    const-wide v15, -0x3fc757ced916872bL    # -24.657

    mul-double/2addr v15, v4

    const-wide v17, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double v15, v15, v17

    .line 785
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    neg-double v13, v1

    mul-double v13, v13, v19

    .line 786
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    mul-double/2addr v1, v7

    .line 787
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v1, v6

    add-double/2addr v13, v1

    mul-double/2addr v11, v13

    add-double v1, v15, v11

    .line 788
    double-to-float v4, v4

    iget v5, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 789
    double-to-float v1, v1

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 790
    iget v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f6

    .line 791
    iput v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 792
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_f7

    .line 790
    :cond_f6
    const/4 v3, 0x0

    .line 794
    :goto_f7
    invoke-direct {v0}, Landroid/widget/EdgeEffect;->isAtEquilibrium()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 795
    iput v3, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 796
    iput v3, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 798
    :cond_101
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)Z
    .registers 23

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v2

    .line 589
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v2, :cond_6d

    .line 590
    invoke-direct {v0}, Landroid/widget/EdgeEffect;->update()V

    .line 591
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 593
    iget-object v8, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    .line 594
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float/2addr v9, v10

    .line 596
    iget v10, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v11, v0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v1, v4, v10, v8, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 598
    iget v10, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v4, v10

    .line 599
    iget-object v10, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v10, v4

    .line 601
    iget-object v4, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 602
    invoke-virtual {v1, v10, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 603
    iget-object v4, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v10, 0x437f0000    # 255.0f

    iget v11, v0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v11, v10

    float-to-int v10, v11

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 604
    iget v4, v0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 605
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 606
    move/from16 v16, v5

    goto/16 :goto_1d8

    :cond_6d
    if-ne v2, v5, :cond_1d0

    instance-of v2, v1, Landroid/graphics/RecordingCanvas;

    if-eqz v2, :cond_1d0

    .line 607
    iget v2, v0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v2, v3, :cond_7a

    .line 608
    invoke-direct {v0}, Landroid/widget/EdgeEffect;->updateSpring()V

    .line 610
    :cond_7a
    iget v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_1cd

    .line 611
    check-cast v1, Landroid/graphics/RecordingCanvas;

    .line 612
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_93

    .line 613
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 614
    const/16 v2, 0xc

    new-array v2, v2, [F

    iput-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    .line 617
    :cond_93
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 619
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v2, v6

    .line 620
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v2, v5

    .line 621
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v8, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v9, 0x2

    aput v8, v2, v9

    .line 622
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v2, v3

    .line 623
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v8, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v10, 0x4

    aput v8, v2, v10

    .line 624
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v8, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v11, 0x5

    aput v8, v2, v11

    .line 625
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/4 v8, 0x6

    aput v7, v2, v8

    .line 626
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v12, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v13, 0x7

    aput v12, v2, v13

    .line 627
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v12, v0, Landroid/widget/EdgeEffect;->mWidth:F

    iget v14, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float/2addr v12, v14

    const/16 v14, 0x8

    aput v12, v2, v14

    .line 628
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v12, 0x9

    aput v7, v2, v12

    .line 629
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v15, v0, Landroid/widget/EdgeEffect;->mWidth:F

    move/from16 v16, v5

    iget v5, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float/2addr v15, v5

    const/16 v5, 0xa

    aput v15, v2, v5

    .line 630
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v15, v0, Landroid/widget/EdgeEffect;->mHeight:F

    move/from16 p1, v5

    iget v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v15, v5

    const/16 v5, 0xb

    aput v15, v2, v5

    .line 631
    iget-object v2, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    invoke-virtual {v2, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 633
    iget-object v1, v1, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 635
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v15, v15, v6

    move/from16 v17, v5

    iget-object v5, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v5, v5, v9

    move/from16 v18, v8

    iget-object v8, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v8, v8, v10

    move/from16 v19, v9

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v9, v9, v18

    .line 636
    invoke-direct {v0, v15, v5, v8, v9}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v5

    add-float/2addr v2, v5

    .line 637
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v8, v8, v16

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v9, v9, v3

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v15, v15, v11

    move/from16 v20, v10

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v10, v13

    .line 638
    invoke-direct {v0, v8, v9, v15, v10}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v8

    add-float/2addr v5, v8

    .line 639
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v9, v9, v6

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v10, v19

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v15, v15, v20

    move/from16 v19, v11

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v11, v18

    .line 640
    invoke-direct {v0, v9, v10, v15, v11}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v9

    add-float/2addr v8, v9

    .line 641
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getTop()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v10, v16

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v11, v3

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v15, v15, v19

    move/from16 v18, v12

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v13

    .line 642
    invoke-direct {v0, v10, v11, v15, v12}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v10

    add-float/2addr v9, v10

    .line 644
    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v10, p1

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v11, v14

    sub-float/2addr v10, v11

    .line 645
    sub-float v11, v8, v2

    .line 646
    div-float/2addr v10, v11

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-direct {v0, v10}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v10

    .line 648
    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v17

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v13, v13, v18

    sub-float/2addr v12, v13

    .line 649
    sub-float v13, v9, v5

    .line 650
    div-float/2addr v12, v13

    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {v0, v4}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v4

    .line 652
    invoke-static {v10}, Ljava/lang/Float;->isFinite(F)Z

    move-result v11

    if-eqz v11, :cond_1ae

    invoke-static {v4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v11

    if-eqz v11, :cond_1ae

    move/from16 v11, v16

    goto :goto_1af

    :cond_1ae
    move v11, v6

    .line 653
    :goto_1af
    cmpl-float v2, v8, v2

    if-lez v2, :cond_1cc

    cmpl-float v2, v9, v5

    if-lez v2, :cond_1cc

    iget v2, v0, Landroid/widget/EdgeEffect;->mWidth:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1cc

    iget v2, v0, Landroid/widget/EdgeEffect;->mHeight:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1cc

    if-eqz v11, :cond_1cc

    .line 654
    iget v2, v0, Landroid/widget/EdgeEffect;->mWidth:F

    iget v5, v0, Landroid/widget/EdgeEffect;->mHeight:F

    invoke-virtual {v1, v10, v4, v2, v5}, Landroid/graphics/RenderNode;->stretch(FFFF)Z

    .line 661
    :cond_1cc
    goto :goto_1d8

    .line 610
    :cond_1cd
    move/from16 v16, v5

    goto :goto_1d8

    .line 606
    :cond_1d0
    move/from16 v16, v5

    .line 665
    iput v6, v0, Landroid/widget/EdgeEffect;->mState:I

    .line 666
    iput v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 667
    iput v7, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 670
    :goto_1d8
    nop

    .line 671
    iget v1, v0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v1, v3, :cond_1ee

    iget v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_1ee

    iget v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_1ee

    .line 672
    iput v6, v0, Landroid/widget/EdgeEffect;->mState:I

    .line 673
    move/from16 v1, v16

    goto :goto_1ef

    .line 676
    :cond_1ee
    move v1, v6

    :goto_1ef
    iget v0, v0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_1f8

    if-eqz v1, :cond_1f6

    goto :goto_1f8

    :cond_1f6
    move v5, v6

    goto :goto_1fa

    :cond_1f8
    :goto_1f8
    move/from16 v5, v16

    :goto_1fa
    return v5
.end method

.method public whitelist finish()V
    .registers 2

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 308
    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 309
    return-void
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 573
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColor()I
    .registers 2

    .line 560
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public whitelist getDistance()F
    .registers 2

    .line 456
    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    return v0
.end method

.method public whitelist getMaxHeight()I
    .registers 2

    .line 697
    iget v0, p0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist isFinished()Z
    .registers 2

    .line 298
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist onAbsorb(I)V
    .registers 5

    .line 495
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 496
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 497
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 498
    int-to-float p1, p1

    const/high16 v0, 0x41500000    # 13.0f

    mul-float/2addr p1, v0

    iput p1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 499
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    goto :goto_7f

    .line 500
    :cond_17
    if-nez v0, :cond_7c

    .line 501
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 503
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x2710

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 505
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 506
    int-to-float v1, p1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    const v2, 0x3e19999a    # 0.15f

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 510
    const v1, 0x3db851ec    # 0.09f

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 511
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 517
    div-int/lit8 v0, p1, 0x64

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const v1, 0x391d4952    # 1.5E-4f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 520
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    const v1, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr p1, v1

    .line 522
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 520
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 523
    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    goto :goto_7f

    .line 525
    :cond_7c
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    .line 527
    :goto_7f
    return-void
.end method

.method public whitelist onPull(F)V
    .registers 3

    .line 325
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 326
    return-void
.end method

.method public whitelist onPull(FF)V
    .registers 8

    .line 342
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 343
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 344
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    .line 345
    return-void

    .line 347
    :cond_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 348
    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 349
    iget p2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_24

    iget-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float p2, v3

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float p2, p2, v3

    if-gez p2, :cond_24

    if-nez v0, :cond_24

    .line 351
    return-void

    .line 353
    :cond_24
    iget p2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v3, :cond_39

    .line 354
    if-ne v0, v3, :cond_31

    .line 357
    iget p2, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    goto :goto_39

    .line 359
    :cond_31
    iget p2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 362
    :cond_39
    :goto_39
    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 364
    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 365
    const/high16 p2, 0x43270000    # 167.0f

    iput p2, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 367
    iget p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 368
    if-ne v0, v3, :cond_52

    .line 370
    const/high16 p2, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 372
    :cond_52
    iget p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 373
    iput v4, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 375
    iget p2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float p2, p2, v4

    if-nez p2, :cond_6b

    .line 376
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 377
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    goto :goto_b0

    .line 379
    :cond_6b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 380
    iget p2, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    const p1, 0x3e19999a    # 0.15f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 383
    iget p1, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 384
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double p1, v1, p1

    sub-double/2addr v1, p1

    const-wide p1, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v1, p1

    .line 383
    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide v1, 0x3fe6666666666666L    # 0.7

    div-double/2addr p1, v1

    double-to-float p1, p1

    .line 386
    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 389
    :goto_b0
    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 390
    iget p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput p1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 391
    if-ne v0, v3, :cond_c3

    iget p1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_c3

    .line 392
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 394
    :cond_c3
    return-void
.end method

.method public whitelist onPullDistance(FF)F
    .registers 7

    .line 426
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 427
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 428
    return v2

    .line 430
    :cond_9
    iget v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    add-float/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 431
    iget v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    sub-float/2addr p1, v1

    .line 432
    cmpl-float v1, p1, v2

    if-nez v1, :cond_1e

    iget v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1e

    .line 433
    return v2

    .line 436
    :cond_1e
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_30

    if-nez v0, :cond_30

    .line 438
    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 439
    iput v2, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 441
    :cond_30
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 442
    return p1
.end method

.method public whitelist onRelease()V
    .registers 4

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 468
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    .line 469
    return-void

    .line 472
    :cond_e
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 473
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 474
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 476
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 477
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 478
    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 480
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 481
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 482
    return-void
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3

    .line 551
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 552
    return-void
.end method

.method public whitelist setColor(I)V
    .registers 3

    .line 535
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    return-void
.end method

.method public whitelist setSize(II)V
    .registers 8

    .line 274
    int-to-float v0, p1

    const v1, 0x3f19999a    # 0.6f

    mul-float v2, v0, v1

    sget v3, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v2, v3

    .line 275
    sget v3, Landroid/widget/EdgeEffect;->COS:F

    mul-float/2addr v3, v2

    .line 276
    sub-float v3, v2, v3

    .line 277
    int-to-float p2, p2

    mul-float/2addr v1, p2

    sget v4, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v1, v4

    .line 278
    sget v4, Landroid/widget/EdgeEffect;->COS:F

    mul-float/2addr v4, v1

    .line 279
    sub-float/2addr v1, v4

    .line 281
    iput v2, p0, Landroid/widget/EdgeEffect;->mRadius:F

    .line 282
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v2, :cond_25

    div-float/2addr v1, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_25
    iput v4, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    .line 284
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 286
    iput v0, p0, Landroid/widget/EdgeEffect;->mWidth:F

    .line 287
    iput p2, p0, Landroid/widget/EdgeEffect;->mHeight:F

    .line 288
    return-void
.end method
