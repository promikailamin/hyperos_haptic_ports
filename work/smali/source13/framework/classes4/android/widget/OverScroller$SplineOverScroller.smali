.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final greylist-max-o BALLISTIC:I = 0x2

.field private static final greylist-max-o CUBIC:I = 0x1

.field private static greylist-max-o DECELERATION_RATE:F = 0.0f

.field private static final greylist-max-o END_TENSION:F = 1.0f

.field private static final greylist-max-o GRAVITY:F = 2000.0f

.field private static final greylist-max-o INFLEXION:F = 0.35f

.field private static final greylist-max-o NB_SAMPLES:I = 0x64

.field private static final greylist-max-o P1:F = 0.175f

.field private static final greylist-max-o P2:F = 0.35000002f

.field private static final greylist-max-o SPLINE:I = 0x0

.field private static final greylist-max-o SPLINE_POSITION:[F

.field private static final greylist-max-o SPLINE_TIME:[F

.field private static final greylist-max-o START_TENSION:F = 0.5f


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private greylist mCurrVelocity:F

.field private greylist-max-o mCurrentPosition:I

.field private greylist-max-o mDeceleration:F

.field private greylist-max-o mDuration:I

.field private greylist-max-o mFinal:I

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFlingFriction:F

.field private greylist-max-o mOver:I

.field private greylist-max-o mPhysicalCoeff:F

.field private greylist-max-o mSplineDistance:I

.field private greylist-max-o mSplineDuration:I

.field private blacklist mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

.field private greylist-max-o mStart:I

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private greylist-max-o mVelocity:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 21

    .line 656
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 664
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 665
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 677
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_c7

    .line 678
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 680
    .local v5, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 683
    .local v3, "x_max":F
    :goto_30
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 684
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 685
    .local v9, "coef":F
    sub-float v10, v4, v6

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    .line 686
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_bd

    .line 690
    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    .line 692
    const/high16 v13, 0x3f800000    # 1.0f

    .line 695
    .local v13, "y_max":F
    :goto_72
    sub-float v14, v13, v1

    div-float/2addr v14, v7

    add-float/2addr v14, v1

    .line 696
    .local v14, "y":F
    mul-float v18, v14, v8

    sub-float v19, v4, v14

    mul-float v9, v18, v19

    .line 697
    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v9

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    .line 698
    .local v18, "dy":F
    sub-float v19, v18, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v20, v9

    .end local v9    # "coef":F
    .local v20, "coef":F
    float-to-double v8, v7

    cmpg-double v7, v8, v15

    if-gez v7, :cond_a9

    .line 702
    sget-object v7, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    mul-float/2addr v12, v14

    add-float/2addr v4, v12

    mul-float v9, v20, v4

    mul-float v4, v14, v14

    mul-float/2addr v4, v14

    add-float/2addr v9, v4

    aput v9, v7, v2

    .line 677
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v10    # "tx":F
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "coef":F
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    .line 699
    .restart local v3    # "x_max":F
    .restart local v5    # "alpha":F
    .restart local v6    # "x":F
    .restart local v10    # "tx":F
    .restart local v13    # "y_max":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    .restart local v20    # "coef":F
    :cond_a9
    cmpl-float v7, v18, v5

    if-lez v7, :cond_b5

    move v13, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_72

    .line 700
    :cond_b5
    move v1, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_72

    .line 687
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "coef":F
    .restart local v9    # "coef":F
    :cond_bd
    cmpl-float v7, v10, v5

    if-lez v7, :cond_c4

    move v3, v6

    goto/16 :goto_30

    .line 688
    :cond_c4
    move v0, v6

    goto/16 :goto_30

    .line 704
    .end local v2    # "i":I
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    :cond_c7
    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v5, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    aput v4, v2, v3

    .line 705
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 712
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 715
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 719
    return-void
.end method

.method private greylist-max-o adjustDuration(III)V
    .registers 14
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .line 737
    sub-int v0, p2, p1

    .line 738
    .local v0, "oldDistance":I
    sub-int v1, p3, p1

    .line 740
    .local v1, "newDistance":I
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-interface {v2}, Landroid/widget/OverScrollerSplineOverScrollerStub;->isOptimizeEnable()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 741
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-interface {v2, v1}, Landroid/widget/OverScrollerSplineOverScrollerStub;->adjustDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 742
    return-void

    .line 745
    :cond_15
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 746
    .local v2, "x":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v2, v3

    float-to-int v4, v4

    .line 747
    .local v4, "index":I
    const/16 v5, 0x64

    if-ge v4, v5, :cond_43

    .line 748
    int-to-float v5, v4

    div-float/2addr v5, v3

    .line 749
    .local v5, "x_inf":F
    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 750
    .local v6, "x_sup":F
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v7, v3, v4

    .line 751
    .local v7, "t_inf":F
    add-int/lit8 v8, v4, 0x1

    aget v3, v3, v8

    .line 752
    .local v3, "t_sup":F
    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v3, v7

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    .line 753
    .local v8, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 755
    .end local v3    # "t_sup":F
    .end local v5    # "x_inf":F
    .end local v6    # "x_sup":F
    .end local v7    # "t_inf":F
    .end local v8    # "timeCoef":F
    :cond_43
    return-void
.end method

.method private greylist-max-o fitOnBounceCurve(III)V
    .registers 13
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 904
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 906
    .local v0, "durationToApex":F
    int-to-float v2, p3

    int-to-float v3, p3

    mul-float/2addr v2, v3

    .line 907
    .local v2, "velocitySquared":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    .line 908
    .local v3, "distanceToApex":F
    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 909
    .local v1, "distanceToEdge":F
    add-float v4, v3, v1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 910
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 909
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 911
    .local v4, "totalDuration":F
    iget-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float v7, v4, v0

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 912
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 913
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 914
    return-void
.end method

.method private static greylist-max-o getDeceleration(I)F
    .registers 2
    .param p0, "velocity"    # I

    .line 729
    if-lez p0, :cond_5

    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_7

    :cond_5
    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_7
    return v0
.end method

.method private greylist-max-o getSplineDeceleration(I)D
    .registers 5
    .param p1, "velocity"    # I

    .line 876
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getSplineFlingDistance(I)D
    .registers 11
    .param p1, "velocity"    # I

    .line 881
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-interface {v0}, Landroid/widget/OverScrollerSplineOverScrollerStub;->isOptimizeEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 882
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-interface {v0, p1}, Landroid/widget/OverScrollerSplineOverScrollerStub;->getFlingDistance(I)D

    move-result-wide v0

    return-wide v0

    .line 885
    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 886
    .local v0, "l":D
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    .line 887
    .local v3, "decelMinusOne":D
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    return-wide v5
.end method

.method private greylist-max-o getSplineFlingDuration(I)I
    .registers 10
    .param p1, "velocity"    # I

    .line 893
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-interface {v0}, Landroid/widget/OverScrollerSplineOverScrollerStub;->isOptimizeEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 894
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-interface {v0, p1}, Landroid/widget/OverScrollerSplineOverScrollerStub;->getFlingDuration(I)I

    move-result v0

    return v0

    .line 897
    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 898
    .local v0, "l":D
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 899
    .local v2, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int v4, v6

    return v4
.end method

.method private greylist-max-o onEdgeReached()V
    .registers 8

    .line 959
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 960
    .local v1, "velocitySquared":F
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    .line 961
    .local v0, "distance":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 963
    .local v3, "sign":F
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_26

    .line 965
    neg-float v5, v3

    mul-float/2addr v5, v1

    int-to-float v6, v4

    mul-float/2addr v6, v2

    div-float/2addr v5, v6

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 966
    int-to-float v0, v4

    .line 969
    :cond_26
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 970
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 971
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_34

    move v5, v0

    goto :goto_35

    :cond_34
    neg-float v5, v0

    :goto_35
    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 972
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v4, v2

    float-to-int v2, v4

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 973
    return-void
.end method

.method private greylist-max-o startAfterEdge(IIII)V
    .registers 22
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .line 923
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    const/4 v0, 0x1

    move/from16 v10, p2

    if-le v7, v10, :cond_1a

    if-ge v7, v8, :cond_1a

    .line 924
    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iput-boolean v0, v6, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 926
    return-void

    .line 928
    :cond_1a
    const/4 v1, 0x0

    if-le v7, v8, :cond_1f

    move v2, v0

    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    move v11, v2

    .line 929
    .local v11, "positive":Z
    if-eqz v11, :cond_25

    move v2, v8

    goto :goto_26

    :cond_25
    move v2, v10

    :goto_26
    move v12, v2

    .line 930
    .local v12, "edge":I
    sub-int v13, v7, v12

    .line 931
    .local v13, "overDistance":I
    mul-int v2, v13, v9

    if-ltz v2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    move v14, v0

    .line 932
    .local v14, "keepIncreasing":Z
    if-eqz v14, :cond_36

    .line 934
    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5c

    .line 936
    :cond_36
    invoke-direct {v6, v9}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v15

    .line 937
    .local v15, "totalDistance":D
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v15, v0

    if-lez v0, :cond_59

    .line 938
    if-eqz v11, :cond_47

    move v3, v10

    goto :goto_48

    :cond_47
    move v3, v7

    :goto_48
    if-eqz v11, :cond_4c

    move v4, v7

    goto :goto_4d

    :cond_4c
    move v4, v8

    :goto_4d
    iget v5, v6, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5c

    .line 940
    :cond_59
    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 943
    .end local v15    # "totalDistance":D
    :goto_5c
    return-void
.end method

.method private greylist-max-o startBounceAfterEdge(III)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 917
    if-nez p3, :cond_5

    sub-int v0, p1, p2

    goto :goto_6

    :cond_5
    move v0, p3

    :goto_6
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 918
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 919
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 920
    return-void
.end method

.method private greylist-max-o startSpringback(III)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 822
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 823
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 824
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 825
    sub-int v0, p1, p2

    .line 826
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 828
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 829
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 830
    int-to-double v1, v0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double/2addr v1, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 831
    return-void
.end method


# virtual methods
.method greylist-max-o continueWhenFinished()Z
    .registers 7

    .line 976
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_42

    goto :goto_3c

    .line 993
    :pswitch_7
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 994
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 995
    goto :goto_3c

    .line 997
    :pswitch_17
    return v1

    .line 979
    :pswitch_18
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_3b

    .line 981
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 983
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 984
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 985
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 986
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_3c

    .line 989
    :cond_3b
    return v1

    .line 1000
    :goto_3c
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1001
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_7
    .end packed-switch
.end method

.method greylist-max-o extendDuration(I)V
    .registers 6
    .param p1, "extend"    # I

    .line 795
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 796
    .local v0, "time":J
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 797
    .local v2, "elapsedTime":I
    add-int v3, v2, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 798
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 799
    return-void
.end method

.method greylist-max-o finish()V
    .registers 2

    .line 772
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 777
    return-void
.end method

.method greylist-max-o fling(IIIII)V
    .registers 15
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 834
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 836
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 837
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 838
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 840
    iget-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/widget/OverScrollerSplineOverScrollerStub;->fling(IIIII)V

    .line 842
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 844
    if-gt p1, p4, :cond_65

    if-ge p1, p3, :cond_27

    goto :goto_65

    .line 849
    :cond_27
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 850
    const-wide/16 v0, 0x0

    .line 854
    .local v0, "totalDistance":D
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-interface {v3}, Landroid/widget/OverScrollerSplineOverScrollerStub;->getFlingVelocityThreshold()I

    move-result v3

    if-le v2, v3, :cond_43

    .line 856
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 857
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 860
    :cond_43
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 861
    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 864
    if-ge v2, p3, :cond_59

    .line 865
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v3, v2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 866
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 869
    :cond_59
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_64

    .line 870
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v3, v2, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 871
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 873
    :cond_64
    return-void

    .line 845
    .end local v0    # "totalDistance":D
    :cond_65
    :goto_65
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 846
    return-void
.end method

.method greylist-max-o notifyEdgeReached(III)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 947
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    .line 948
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 949
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 952
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 954
    :cond_12
    return-void
.end method

.method greylist-max-o setFinalPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 789
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 790
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 792
    return-void
.end method

.method blacklist setFlingAnimationStub(Landroid/widget/OverScrollerSplineOverScrollerStub;)V
    .registers 2
    .param p1, "stub"    # Landroid/widget/OverScrollerSplineOverScrollerStub;

    .line 784
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    .line 785
    return-void
.end method

.method greylist-max-o setFriction(F)V
    .registers 2
    .param p1, "friction"    # F

    .line 708
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 709
    return-void
.end method

.method greylist-max-o springback(III)Z
    .registers 8
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 804
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 805
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 807
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 808
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 810
    if-ge p1, p2, :cond_1a

    .line 811
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1f

    .line 812
    :cond_1a
    if-le p1, p3, :cond_1f

    .line 813
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 816
    :cond_1f
    :goto_1f
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o startScroll(III)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 760
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 761
    add-int v1, p1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 763
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 764
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 767
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 768
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 769
    return-void
.end method

.method greylist-max-o update()Z
    .registers 21

    .line 1011
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v1, :cond_31

    iget-object v1, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    invoke-interface {v1}, Landroid/widget/OverScrollerSplineOverScrollerStub;->interceptUpdate()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1012
    iget-object v2, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerStub:Landroid/widget/OverScrollerSplineOverScrollerStub;

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iget v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 1013
    invoke-interface/range {v2 .. v8}, Landroid/widget/OverScrollerSplineOverScrollerStub;->updateByMiuiOptimize(IFIIII)Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    move-result-object v1

    .line 1015
    .local v1, "updateOptimizeResult":Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;
    if-eqz v1, :cond_31

    .line 1016
    iget-boolean v2, v1, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->isVelocityAndPositionValid:Z

    if-eqz v2, :cond_2e

    .line 1017
    iget v2, v1, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->currVelocity:F

    iput v2, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1018
    iget v2, v1, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->currentPosition:I

    iput v2, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1020
    :cond_2e
    iget-boolean v2, v1, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->isUpdate:Z

    return v2

    .line 1024
    .end local v1    # "updateOptimizeResult":Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;
    :cond_31
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 1025
    .local v1, "time":J
    invoke-static {v1, v2}, Landroid/util/BoostFramework$ScrollOptimizer;->getAdjustedAnimationClock(J)J

    move-result-wide v3

    .line 1026
    .local v3, "adjustedTime":J
    iget-wide v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v5, v3, v5

    .line 1027
    .local v5, "currentTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-gtz v7, :cond_4a

    .line 1029
    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v7, :cond_49

    const/4 v8, 0x1

    :cond_49
    return v8

    .line 1031
    :cond_4a
    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v10, v7

    cmp-long v10, v5, v10

    if-lez v10, :cond_52

    .line 1032
    return v8

    .line 1035
    :cond_52
    const-wide/16 v10, 0x0

    .line 1036
    .local v10, "distance":D
    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v12, 0x447a0000    # 1000.0f

    const/high16 v13, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_e0

    goto :goto_d4

    .line 1057
    :pswitch_5e
    long-to-float v7, v5

    div-float/2addr v7, v12

    .line 1058
    .local v7, "t":F
    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v12, v8

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v15, v14, v7

    add-float/2addr v12, v15

    iput v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1059
    int-to-float v8, v8

    mul-float/2addr v8, v7

    mul-float/2addr v14, v7

    mul-float/2addr v14, v7

    div-float/2addr v14, v13

    add-float/2addr v8, v14

    float-to-double v10, v8

    .line 1060
    goto :goto_d4

    .line 1064
    .end local v7    # "t":F
    :pswitch_72
    long-to-float v8, v5

    int-to-float v7, v7

    div-float/2addr v8, v7

    .line 1065
    .local v8, "t":F
    mul-float v7, v8, v8

    .line 1066
    .local v7, "t2":F
    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v12

    .line 1067
    .local v12, "sign":F
    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v15, v14

    mul-float/2addr v15, v12

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v16, v16, v7

    mul-float/2addr v13, v8

    mul-float/2addr v13, v7

    sub-float v16, v16, v13

    mul-float v15, v15, v16

    float-to-double v10, v15

    .line 1068
    int-to-float v13, v14

    mul-float/2addr v13, v12

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v13, v14

    neg-float v14, v8

    add-float/2addr v14, v7

    mul-float/2addr v13, v14

    iput v13, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1069
    goto :goto_d4

    .line 1038
    .end local v7    # "t2":F
    .end local v8    # "t":F
    .end local v12    # "sign":F
    :pswitch_98
    long-to-float v7, v5

    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v13, v8

    div-float/2addr v7, v13

    .line 1039
    .local v7, "t":F
    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v14, v7, v13

    float-to-int v14, v14

    .line 1040
    .local v14, "index":I
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1041
    .local v15, "distanceCoef":F
    const/16 v16, 0x0

    .line 1042
    .local v16, "velocityCoef":F
    const/16 v9, 0x64

    if-ge v14, v9, :cond_c4

    .line 1043
    int-to-float v9, v14

    div-float/2addr v9, v13

    .line 1044
    .local v9, "t_inf":F
    add-int/lit8 v12, v14, 0x1

    int-to-float v12, v12

    div-float/2addr v12, v13

    .line 1045
    .local v12, "t_sup":F
    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v17, v13, v14

    .line 1046
    .local v17, "d_inf":F
    add-int/lit8 v18, v14, 0x1

    aget v13, v13, v18

    .line 1047
    .local v13, "d_sup":F
    sub-float v18, v13, v17

    sub-float v19, v12, v9

    div-float v16, v18, v19

    .line 1048
    sub-float v18, v7, v9

    mul-float v18, v18, v16

    add-float v15, v17, v18

    .line 1051
    .end local v9    # "t_inf":F
    .end local v12    # "t_sup":F
    .end local v13    # "d_sup":F
    .end local v17    # "d_inf":F
    :cond_c4
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v12, v9

    mul-float/2addr v12, v15

    float-to-double v10, v12

    .line 1052
    int-to-float v9, v9

    mul-float v9, v9, v16

    int-to-float v8, v8

    div-float/2addr v9, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v8

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1053
    nop

    .line 1073
    .end local v7    # "t":F
    .end local v14    # "index":I
    .end local v15    # "distanceCoef":F
    .end local v16    # "velocityCoef":F
    :goto_d4
    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1075
    const/4 v7, 0x1

    return v7

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_98
        :pswitch_72
        :pswitch_5e
    .end packed-switch
.end method

.method greylist-max-o updateScroll(F)V
    .registers 4
    .param p1, "q"    # F

    .line 722
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 723
    return-void
.end method
