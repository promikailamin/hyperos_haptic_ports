.class public Landroid/widget/OverScrollerSplineOverScrollerStubImpl;
.super Ljava/lang/Object;
.source "OverScrollerSplineOverScrollerStubImpl.java"

# interfaces
.implements Landroid/widget/OverScrollerSplineOverScrollerStub;


# static fields
.field private static final blacklist DEFAULT_FLING_VELOCITY_THRESHOLD:I = 0x1f4

.field private static final blacklist DEFAULT_FRICTION:F = -2.1f

.field private static final blacklist DEFAULT_VELOCITY_THRESHOLD:F = 30.0f

.field private static final blacklist ITERATION_SIZE:F = 4096.0f

.field private static final blacklist MAX_FRAME_THRESHOLD_NANOS:J = 0x5f5e100L

.field private static final blacklist NANOS_PER_SECONDS:J = 0x3b9aca00L

.field private static final blacklist P0:[D

.field private static final blacklist P1:[D

.field private static final blacklist P2:[D

.field private static final blacklist P3:[D

.field public static final blacklist TAG:Ljava/lang/String; = "SplineOverScroller"


# instance fields
.field blacklist distanceCoef:F

.field private blacklist mAdjustedLastTimeInNanos:J

.field private blacklist mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

.field private blacklist mFlingDistance:D

.field private blacklist mFlingDuration:I

.field private blacklist mFlingStartTimeNanos:J

.field private blacklist mFlingVelocityThreshold:I

.field private blacklist mFriction:F

.field private blacklist mInitialVelocity:I

.field private blacklist mIsScrollY:Z

.field private blacklist mLastAnimationTimeInNanos:J

.field private blacklist mLastUpdateDistance:D

.field private blacklist mLastUpdateTime:J

.field private blacklist mLastUpdateVelocityTime:J

.field private blacklist mNeedUseAnimationTime:Z

.field private blacklist mPreLastUpdateDistance:D

.field private blacklist mPreLastUpdateTime:J

.field private blacklist mScrollerMode:I

.field private blacklist mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

.field private blacklist mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

.field private blacklist mVelocity:I

.field private blacklist mVelocityThreshold:F

.field private blacklist tIndex:I

.field blacklist velocityCoef:F


# direct methods
.method public static synthetic blacklist $r8$lambda$aIOT2lSdrAYmaXAcPgeY-tS4l2M(Landroid/widget/OverScrollerSplineOverScrollerStubImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->loadAndUpdateConfigData()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 72
    const/4 v0, 0x2

    new-array v1, v0, [D

    fill-array-data v1, :array_1e

    sput-object v1, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P0:[D

    .line 73
    new-array v1, v0, [D

    fill-array-data v1, :array_2a

    sput-object v1, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P1:[D

    .line 74
    new-array v1, v0, [D

    fill-array-data v1, :array_36

    sput-object v1, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P2:[D

    .line 75
    new-array v0, v0, [D

    fill-array-data v0, :array_42

    sput-object v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P3:[D

    return-void

    :array_1e
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_2a
    .array-data 8
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_36
    .array-data 8
        0x3fd1eb851eb851ecL    # 0.28
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_42
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const v0, -0x3ff9999a    # -2.1f

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFriction:F

    .line 39
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mVelocityThreshold:F

    .line 40
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingVelocityThreshold:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerMode:I

    .line 61
    iput-boolean v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mNeedUseAnimationTime:Z

    .line 65
    iput-boolean v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mIsScrollY:Z

    .line 77
    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->tIndex:I

    return-void
.end method

.method private blacklist computeDistanceAndDuration(I)V
    .registers 6
    .param p1, "velocity"    # I

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateVelocityTime:J

    .line 119
    iget v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mVelocity:I

    if-eq v0, p1, :cond_6b

    .line 120
    iget v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mVelocityThreshold:F

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFriction:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingDuration:I

    .line 122
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mVelocityThreshold:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getUpdateDistance(FF)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingDistance:D

    .line 123
    iput p1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mVelocity:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFlingDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFlingDistance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingDistance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVelocity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mVelocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplineOverScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_6b
    return-void
.end method

.method private blacklist cubicBezierValue(DDDDD)D
    .registers 23
    .param p1, "t"    # D
    .param p3, "P0"    # D
    .param p5, "P1"    # D
    .param p7, "P2"    # D
    .param p9, "P3"    # D

    .line 427
    move-wide v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, p3

    sub-double v8, v2, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v6

    mul-double/2addr v8, v0

    mul-double v8, v8, p5

    add-double/2addr v4, v8

    sub-double/2addr v2, v0

    mul-double/2addr v2, v6

    .line 428
    invoke-static {p1, p2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v2, v8

    mul-double v2, v2, p7

    add-double/2addr v4, v2

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p9

    add-double/2addr v4, v2

    .line 427
    return-wide v4
.end method

.method private blacklist getCubicBezier(F)F
    .registers 16
    .param p1, "x"    # F

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "t":F
    float-to-double v1, p1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v3

    const/4 v2, 0x0

    if-gtz v1, :cond_e

    .line 408
    iput v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->tIndex:I

    .line 411
    :cond_e
    iget v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->tIndex:I

    .local v1, "i":I
    :goto_10
    int-to-float v3, v1

    const/high16 v4, 0x45800000    # 4096.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3e

    .line 412
    int-to-float v3, v1

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    div-float v0, v3, v4

    .line 413
    float-to-double v4, v0

    sget-object v3, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P0:[D

    aget-wide v6, v3, v2

    sget-object v3, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P1:[D

    aget-wide v8, v3, v2

    sget-object v3, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P2:[D

    aget-wide v10, v3, v2

    sget-object v3, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P3:[D

    aget-wide v12, v3, v2

    move-object v3, p0

    invoke-direct/range {v3 .. v13}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->cubicBezierValue(DDDDD)D

    move-result-wide v3

    .line 414
    .local v3, "tempX":D
    float-to-double v5, p1

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_3b

    .line 415
    iput v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->tIndex:I

    .line 416
    goto :goto_3e

    .line 411
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 419
    .end local v1    # "i":I
    .end local v3    # "tempX":D
    :cond_3e
    :goto_3e
    float-to-double v4, v0

    sget-object v1, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P0:[D

    const/4 v3, 0x1

    aget-wide v6, v1, v3

    sget-object v1, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P1:[D

    aget-wide v8, v1, v3

    sget-object v1, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P2:[D

    aget-wide v10, v1, v3

    sget-object v1, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->P3:[D

    aget-wide v12, v1, v3

    move-object v3, p0

    invoke-direct/range {v3 .. v13}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->cubicBezierValue(DDDDD)D

    move-result-wide v3

    .line 420
    .local v3, "y":D
    float-to-double v5, p1

    const-wide v7, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v1, v5, v7

    if-ltz v1, :cond_61

    .line 421
    iput v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->tIndex:I

    .line 423
    :cond_61
    double-to-float v1, v3

    return v1
.end method

.method private static blacklist getRefreshRate()F
    .registers 2

    .line 212
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 214
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method private blacklist loadAndUpdateConfigData()V
    .registers 5

    .line 329
    iget-object v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->getScrollerMode()I

    move-result v0

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerMode:I

    .line 330
    iget-object v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->isDebugEnable()Z

    move-result v0

    const-string v1, "SplineOverScroller"

    if-eqz v0, :cond_2a

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrollerMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2a
    iget v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerMode:I

    if-nez v0, :cond_67

    .line 335
    iget-object v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    .line 336
    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->getAppOptimizationConfig()Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    move-result-object v0

    .line 337
    .local v0, "mAppOptimizationConfig":Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;
    iget-object v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v2}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appScrollerOptimizationConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_52
    if-eqz v0, :cond_67

    .line 341
    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFriction:F

    .line 342
    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getVelocityThreshold()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mVelocityThreshold:F

    .line 343
    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlingVelocityThreshold()I

    move-result v1

    iput v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingVelocityThreshold:I

    .line 346
    .end local v0    # "mAppOptimizationConfig":Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;
    :cond_67
    return-void
.end method


# virtual methods
.method public blacklist adjustDuration(I)I
    .registers 6
    .param p1, "newDistance"    # I

    .line 104
    int-to-double v0, p1

    iget v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mVelocity:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFriction:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFriction:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 106
    .local v0, "duration":I
    iget-object v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplineOverScroller"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3f
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method public blacklist fling(IIIII)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 152
    invoke-virtual {p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->isOptimizeEnable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 153
    return-void

    .line 155
    :cond_7
    iput p2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mInitialVelocity:I

    .line 156
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/AnimationUtilsStub;->currentAnimationTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingStartTimeNanos:J

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    .line 158
    iput-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastAnimationTimeInNanos:J

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mNeedUseAnimationTime:Z

    .line 160
    return-void
.end method

.method public blacklist getAdjustedAnimationClockInNanos(J)J
    .registers 16
    .param p1, "animationTimeInNanos"    # J

    .line 163
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 164
    return-wide p1

    .line 166
    :cond_b
    iget-object v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    invoke-interface {v0}, Landroid/widget/FlingAnimationStub;->getFlingFlag()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    .line 167
    iput-wide p1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    .line 168
    iput-wide p1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastAnimationTimeInNanos:J

    .line 169
    return-wide p1

    .line 170
    :cond_19
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/AnimationUtilsStub;->getAnimationClockLocked()Z

    move-result v0

    const-string v2, "SplineOverScroller"

    if-nez v0, :cond_46

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unnecessary adjustClockInNanos, timeInNanos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_43

    .line 173
    iput-wide p1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    .line 175
    :cond_43
    iget-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    return-wide v0

    .line 177
    :cond_46
    iget-wide v3, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastAnimationTimeInNanos:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_55

    cmp-long v0, p1, v3

    if-nez v0, :cond_55

    .line 178
    iget-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    return-wide v0

    .line 180
    :cond_55
    iget-boolean v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mNeedUseAnimationTime:Z

    if-eqz v0, :cond_5a

    .line 181
    return-wide p1

    .line 183
    :cond_5a
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/AnimationUtilsStub;->lastAnimationTimeNanos()J

    move-result-wide v3

    .line 184
    .local v3, "lastVsyncTime":J
    iget-wide v7, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastAnimationTimeInNanos:J

    cmp-long v0, v7, v5

    if-lez v0, :cond_7a

    cmp-long v0, v3, v7

    if-eqz v0, :cond_7a

    iget-wide v7, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    cmp-long v0, p1, v7

    if-lez v0, :cond_7a

    .line 186
    iput-boolean v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mNeedUseAnimationTime:Z

    .line 187
    const-string v0, "doFrame lastVsyncTime is not consume"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-wide p1

    .line 190
    :cond_7a
    iget-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    .line 191
    .local v0, "lastTimeInNanos":J
    invoke-static {}, Landroid/util/MiuiScrollOptimizerStub;->getFrameInterval()J

    move-result-wide v7

    .line 193
    .local v7, "currentFrameInterval":J
    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/animation/AnimationUtilsStub;->getFrame()I

    move-result v9

    if-nez v9, :cond_99

    .line 194
    invoke-static {}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getRefreshRate()F

    move-result v9

    .line 195
    .local v9, "fps":F
    const/high16 v10, 0x41f00000    # 30.0f

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_99

    .line 196
    const v10, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v10, v9

    float-to-long v7, v10

    .line 199
    .end local v9    # "fps":F
    :cond_99
    add-long v9, v0, v7

    .line 200
    .local v9, "adjustedTimeInNanos":J
    iget-wide v11, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    cmp-long v5, v11, v5

    if-nez v5, :cond_a3

    .line 201
    move-wide v9, p1

    goto :goto_b4

    .line 202
    :cond_a3
    iget-wide v5, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastAnimationTimeInNanos:J

    sub-long v5, p1, v5

    const-wide/32 v11, 0x5f5e100

    cmp-long v5, v5, v11

    if-lez v5, :cond_b4

    .line 203
    const-string v5, "animation - last more than 100ms Jank!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-wide v9, p1

    .line 206
    :cond_b4
    :goto_b4
    iput-wide p1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastAnimationTimeInNanos:J

    .line 207
    iput-wide v9, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mAdjustedLastTimeInNanos:J

    .line 208
    return-wide v9
.end method

.method public blacklist getFlingDistance(I)D
    .registers 4
    .param p1, "velocity"    # I

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->computeDistanceAndDuration(I)V

    .line 136
    iget-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingDistance:D

    return-wide v0
.end method

.method public blacklist getFlingDuration(I)I
    .registers 3
    .param p1, "velocity"    # I

    .line 141
    invoke-direct {p0, p1}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->computeDistanceAndDuration(I)V

    .line 142
    iget v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingDuration:I

    return v0
.end method

.method public blacklist getFlingVelocityThreshold()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingVelocityThreshold:I

    return v0
.end method

.method public blacklist getScrollerMode()I
    .registers 2

    .line 147
    iget v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerMode:I

    return v0
.end method

.method public blacklist getUpdateDistance(FF)D
    .registers 5
    .param p1, "currentVelocity"    # F
    .param p2, "lastVelocity"    # F

    .line 130
    iget v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFriction:F

    div-float v1, p1, v0

    div-float v0, p2, v0

    sub-float/2addr v1, v0

    float-to-double v0, v1

    return-wide v0
.end method

.method public blacklist getUpdateDistance(JJII)D
    .registers 12
    .param p1, "currentTime"    # J
    .param p3, "lastUpdateTime"    # J
    .param p5, "mSplineDuration"    # I
    .param p6, "mSplineDistance"    # I

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->distanceCoef:F

    .line 317
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->velocityCoef:F

    .line 318
    long-to-float v1, p1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    int-to-float v2, p5

    div-float/2addr v1, v2

    .line 319
    .local v1, "t_sup":F
    const/4 v2, 0x0

    .line 320
    .local v2, "d_sup":F
    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1b

    .line 321
    invoke-direct {p0, v1}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getCubicBezier(F)F

    move-result v2

    .line 322
    div-float v0, v2, v1

    iput v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->velocityCoef:F

    .line 324
    :cond_1b
    int-to-float v0, p6

    mul-float/2addr v0, v2

    float-to-double v3, v0

    return-wide v3
.end method

.method public blacklist getUpdateVelocity(FJ)F
    .registers 10
    .param p1, "velocity"    # F
    .param p2, "currentTimeNanos"    # J

    .line 218
    iget-wide v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateVelocityTime:J

    sub-long v0, p2, v0

    .line 219
    .local v0, "deltaT":J
    float-to-double v2, p1

    long-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFriction:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 221
    .local v2, "cVelocity":F
    iput-wide p2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateVelocityTime:J

    .line 222
    return v2
.end method

.method public blacklist getUpdateVelocity(JJII)F
    .registers 9
    .param p1, "currentTime"    # J
    .param p3, "lastUpdateTime"    # J
    .param p5, "mSplineDuration"    # I
    .param p6, "mSplineDistance"    # I

    .line 402
    iget v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->velocityCoef:F

    int-to-float v1, p6

    mul-float/2addr v0, v1

    int-to-float v1, p5

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public blacklist initialize(Landroid/widget/FlingAnimationStub;Landroid/content/Context;Z)V
    .registers 6
    .param p1, "flingAnimationStub"    # Landroid/widget/FlingAnimationStub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isScrollY"    # Z

    .line 83
    sget-boolean v0, Lmiui/os/DeviceFeature;->SCROLLER_OPTIMIZATION_SUPPORT:Z

    if-eqz v0, :cond_2c

    if-nez p2, :cond_7

    goto :goto_2c

    .line 86
    :cond_7
    iput-object p1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    .line 87
    iput-boolean p3, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mIsScrollY:Z

    .line 88
    new-instance v0, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    invoke-direct {v0}, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    .line 89
    invoke-static {p2}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->getInstance(Landroid/content/Context;)Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    .line 90
    invoke-direct {p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->loadAndUpdateConfigData()V

    .line 91
    iget-object v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    instance-of v1, v0, Landroid/widget/FlingAnimationStubImpl;

    if-eqz v1, :cond_2b

    .line 92
    check-cast v0, Landroid/widget/FlingAnimationStubImpl;

    new-instance v1, Landroid/widget/OverScrollerSplineOverScrollerStubImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl$$ExternalSyntheticLambda0;-><init>(Landroid/widget/OverScrollerSplineOverScrollerStubImpl;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/FlingAnimationStubImpl;->registerConfigChangedListener(Landroid/widget/FlingAnimationStubImpl$ConfigDataChangedListener;)V

    .line 95
    :cond_2b
    return-void

    .line 84
    :cond_2c
    :goto_2c
    return-void
.end method

.method public blacklist interceptUpdate()Z
    .registers 3

    .line 227
    invoke-virtual {p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->isOptimizeEnable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 228
    invoke-virtual {p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getScrollerMode()I

    move-result v0

    .line 229
    .local v0, "scrollerMode":I
    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 230
    return v1

    .line 231
    :cond_e
    if-ne v0, v1, :cond_11

    .line 232
    return v1

    .line 235
    .end local v0    # "scrollerMode":I
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOptimizeEnable()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mIsScrollY:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    invoke-interface {v0}, Landroid/widget/FlingAnimationStub;->isOptimizeEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist updateByMiuiOptimize(IFIIII)Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;
    .registers 11
    .param p1, "duration"    # I
    .param p2, "currVelocity"    # F
    .param p3, "start"    # I
    .param p4, "currentPosition"    # I
    .param p5, "splineDuration"    # I
    .param p6, "splineDistance"    # I

    .line 241
    invoke-virtual {p0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getScrollerMode()I

    move-result v0

    .line 242
    .local v0, "scrollerMode":I
    const-string v1, "SplineOverScroller"

    if-nez v0, :cond_37

    .line 243
    iget-object v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->updateByMiuiOptimizeNormalMode(IFI)Z

    move-result v3

    iput-boolean v3, v2, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->isUpdate:Z

    .line 245
    iget-object v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v2}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update normal mode result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    invoke-virtual {v3}, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_34
    iget-object v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    return-object v1

    .line 249
    :cond_37
    const/4 v2, 0x1

    if-ne v0, v2, :cond_69

    .line 250
    iget-object v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    invoke-virtual {p0, p1, p3, p5, p6}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->updateByMiuiOptimizePowerMode(IIII)Z

    move-result v3

    iput-boolean v3, v2, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->isUpdate:Z

    .line 252
    iget-object v2, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v2}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update power mode result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    invoke-virtual {v3}, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_66
    iget-object v1, p0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    return-object v1

    .line 257
    :cond_69
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist updateByMiuiOptimizeNormalMode(IFI)Z
    .registers 28
    .param p1, "duration"    # I
    .param p2, "currVelocity"    # F
    .param p3, "start"    # I

    .line 261
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/animation/AnimationUtilsStub;->currentAnimationTimeNanos()J

    move-result-wide v3

    .line 262
    .local v3, "time":J
    invoke-virtual {v0, v3, v4}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getAdjustedAnimationClockInNanos(J)J

    move-result-wide v5

    .line 263
    .local v5, "adjustedTime":J
    iget-wide v7, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingStartTimeNanos:J

    sub-long v7, v5, v7

    .line 264
    .local v7, "currentTime":J
    iget-object v9, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->isVelocityAndPositionValid:Z

    .line 265
    iget-object v9, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v9}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->isDebugEnable()Z

    move-result v9

    const-wide/32 v11, 0xf4240

    const-string v13, "SplineOverScroller"

    if-eqz v9, :cond_58

    .line 266
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update normal mode currentTime:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " duration:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v14, v1

    mul-long/2addr v14, v11

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " deltaTime:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v14, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    sub-long v14, v7, v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_58
    const-wide/16 v14, 0x0

    cmp-long v9, v7, v14

    if-gtz v9, :cond_62

    .line 272
    if-lez v1, :cond_61

    const/4 v10, 0x1

    :cond_61
    return v10

    .line 274
    :cond_62
    int-to-long v14, v1

    mul-long/2addr v14, v11

    cmp-long v11, v7, v14

    if-lez v11, :cond_69

    .line 275
    return v10

    .line 277
    :cond_69
    invoke-virtual {v0, v2, v7, v8}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getUpdateVelocity(FJ)F

    move-result v10

    .line 278
    .local v10, "velocity":F
    iget v11, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mInitialVelocity:I

    int-to-float v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getUpdateDistance(FF)D

    move-result-wide v11

    .line 280
    .local v11, "distance":D
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    move/from16 v17, v10

    .end local v10    # "velocity":F
    .local v17, "velocity":F
    iget-wide v9, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    .line 281
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 280
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long/2addr v14, v9

    long-to-int v10, v14

    .line 282
    .local v10, "deltaLastUpdateDistance":I
    iget-wide v14, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    move-wide/from16 v18, v3

    .end local v3    # "time":J
    .local v18, "time":J
    iget-wide v3, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateDistance:D

    .line 283
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 282
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long/2addr v14, v3

    long-to-int v3, v14

    .line 284
    .local v3, "deltaPreUpdateDistance":I
    iget-wide v14, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    move-wide/from16 v20, v5

    .end local v5    # "adjustedTime":J
    .local v20, "adjustedTime":J
    sub-long v4, v7, v14

    long-to-float v4, v4

    const v5, 0x49742400    # 1000000.0f

    div-float/2addr v4, v5

    .line 286
    .local v4, "deltaLastUpdateTime":F
    iget-wide v5, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateTime:J

    sub-long/2addr v14, v5

    long-to-float v5, v14

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v5, v6

    .line 288
    .local v5, "deltaPreUpdateTime":F
    int-to-float v6, v10

    div-float/2addr v6, v4

    int-to-float v9, v3

    div-float/2addr v9, v5

    cmpl-float v6, v6, v9

    if-lez v6, :cond_f8

    iget-wide v14, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateDistance:D

    const-wide/16 v22, 0x0

    cmpl-double v6, v14, v22

    if-eqz v6, :cond_f8

    const/4 v6, 0x1

    if-le v3, v6, :cond_f8

    sub-int v9, v10, v3

    .line 290
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v6, :cond_f6

    .line 292
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v6

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v14

    if-nez v6, :cond_e8

    .line 293
    iget-wide v14, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v16, v10

    .end local v10    # "deltaLastUpdateDistance":I
    .local v16, "deltaLastUpdateDistance":I
    int-to-double v9, v6

    add-double v11, v14, v9

    move/from16 v6, v16

    goto :goto_f9

    .line 296
    .end local v16    # "deltaLastUpdateDistance":I
    .restart local v10    # "deltaLastUpdateDistance":I
    :cond_e8
    move/from16 v16, v10

    .end local v10    # "deltaLastUpdateDistance":I
    .restart local v16    # "deltaLastUpdateDistance":I
    iget-wide v9, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    move/from16 v6, v16

    .end local v16    # "deltaLastUpdateDistance":I
    .local v6, "deltaLastUpdateDistance":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-double v14, v14

    sub-double v11, v9, v14

    goto :goto_f9

    .line 290
    .end local v6    # "deltaLastUpdateDistance":I
    .restart local v10    # "deltaLastUpdateDistance":I
    :cond_f6
    move v6, v10

    .end local v10    # "deltaLastUpdateDistance":I
    .restart local v6    # "deltaLastUpdateDistance":I
    goto :goto_f9

    .line 288
    .end local v6    # "deltaLastUpdateDistance":I
    .restart local v10    # "deltaLastUpdateDistance":I
    :cond_f8
    move v6, v10

    .line 300
    .end local v10    # "deltaLastUpdateDistance":I
    .restart local v6    # "deltaLastUpdateDistance":I
    :goto_f9
    iget-object v9, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v9}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->isDebugEnable()Z

    move-result v9

    if-eqz v9, :cond_13a

    .line 301
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "distance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "currVelocity:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " velocity:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v10, v17

    .end local v17    # "velocity":F
    .local v10, "velocity":F
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " mInitialVelocity:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v14, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mInitialVelocity:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 300
    .end local v10    # "velocity":F
    .restart local v17    # "velocity":F
    :cond_13a
    move/from16 v10, v17

    .line 304
    .end local v17    # "velocity":F
    .restart local v10    # "velocity":F
    :goto_13c
    iget-wide v13, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    iput-wide v13, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateTime:J

    .line 305
    iput-wide v7, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    .line 306
    iget-wide v13, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    iput-wide v13, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateDistance:D

    .line 307
    iput-wide v11, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    .line 308
    iget-object v9, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    iput v10, v9, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->currVelocity:F

    .line 309
    iget-object v9, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    add-int v13, p3, v13

    iput v13, v9, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->currentPosition:I

    .line 310
    iget-object v9, v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    const/4 v13, 0x1

    iput-boolean v13, v9, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->isVelocityAndPositionValid:Z

    .line 311
    return v13
.end method

.method blacklist updateByMiuiOptimizePowerMode(IIII)Z
    .registers 26
    .param p1, "duration"    # I
    .param p2, "start"    # I
    .param p3, "mSplineDuration"    # I
    .param p4, "mSplineDistance"    # I

    .line 352
    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-static {}, Landroid/view/animation/AnimationUtilsStub;->getInstance()Landroid/view/animation/AnimationUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/animation/AnimationUtilsStub;->currentAnimationTimeNanos()J

    move-result-wide v9

    .line 353
    .local v9, "time":J
    invoke-virtual {v7, v9, v10}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getAdjustedAnimationClockInNanos(J)J

    move-result-wide v11

    .line 354
    .local v11, "adjustedTime":J
    iget-wide v0, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mFlingStartTimeNanos:J

    sub-long v13, v11, v0

    .line 355
    .local v13, "currentTime":J
    iget-object v0, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->isVelocityAndPositionValid:Z

    .line 356
    const-wide/16 v2, 0x0

    cmp-long v0, v13, v2

    const/4 v15, 0x1

    if-gtz v0, :cond_24

    .line 358
    if-lez v8, :cond_23

    move v1, v15

    :cond_23
    return v1

    .line 360
    :cond_24
    int-to-long v2, v8

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    cmp-long v0, v13, v2

    if-lez v0, :cond_2e

    .line 361
    return v1

    .line 363
    :cond_2e
    iget-wide v3, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    move-object/from16 v0, p0

    move-wide v1, v13

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getUpdateVelocity(JJII)F

    move-result v6

    .line 365
    .local v6, "currVelocity":F
    iget-wide v3, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    move/from16 v16, v6

    .end local v6    # "currVelocity":F
    .local v16, "currVelocity":F
    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->getUpdateDistance(JJII)D

    move-result-wide v0

    .line 369
    .local v0, "distance":D
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    .line 370
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 369
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 371
    .local v2, "deltaLastUpdateDistance":I
    iget-wide v3, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v5, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateDistance:D

    .line 372
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 371
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    .line 373
    .local v3, "deltaPreUpdateDistance":I
    iget-wide v4, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    move-wide/from16 v17, v0

    .end local v0    # "distance":D
    .local v17, "distance":D
    sub-long v0, v13, v4

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    .line 375
    .local v0, "deltaLastUpdateTime":F
    move v6, v2

    .end local v2    # "deltaLastUpdateDistance":I
    .local v6, "deltaLastUpdateDistance":I
    iget-wide v1, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateTime:J

    sub-long/2addr v4, v1

    long-to-float v1, v4

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    .line 377
    .local v1, "deltaPreUpdateTime":F
    int-to-float v2, v6

    div-float/2addr v2, v0

    int-to-float v4, v3

    div-float/2addr v4, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c6

    iget-wide v4, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateDistance:D

    const-wide/16 v19, 0x0

    cmpl-double v2, v4, v19

    if-eqz v2, :cond_c6

    if-le v3, v15, :cond_c6

    sub-int v2, v6, v3

    .line 379
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v15, :cond_c1

    .line 381
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_b4

    .line 382
    iget-wide v4, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v19, v0

    move/from16 v20, v1

    .end local v0    # "deltaLastUpdateTime":F
    .end local v1    # "deltaPreUpdateTime":F
    .local v19, "deltaLastUpdateTime":F
    .local v20, "deltaPreUpdateTime":F
    int-to-double v0, v2

    add-double/2addr v0, v4

    .end local v17    # "distance":D
    .local v0, "distance":D
    goto :goto_cc

    .line 385
    .end local v19    # "deltaLastUpdateTime":F
    .end local v20    # "deltaPreUpdateTime":F
    .local v0, "deltaLastUpdateTime":F
    .restart local v1    # "deltaPreUpdateTime":F
    .restart local v17    # "distance":D
    :cond_b4
    move/from16 v19, v0

    move/from16 v20, v1

    .end local v0    # "deltaLastUpdateTime":F
    .end local v1    # "deltaPreUpdateTime":F
    .restart local v19    # "deltaLastUpdateTime":F
    .restart local v20    # "deltaPreUpdateTime":F
    iget-wide v0, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v4, v2

    sub-double/2addr v0, v4

    .end local v17    # "distance":D
    .local v0, "distance":D
    goto :goto_cc

    .line 379
    .end local v19    # "deltaLastUpdateTime":F
    .end local v20    # "deltaPreUpdateTime":F
    .local v0, "deltaLastUpdateTime":F
    .restart local v1    # "deltaPreUpdateTime":F
    .restart local v17    # "distance":D
    :cond_c1
    move/from16 v19, v0

    move/from16 v20, v1

    .end local v0    # "deltaLastUpdateTime":F
    .end local v1    # "deltaPreUpdateTime":F
    .restart local v19    # "deltaLastUpdateTime":F
    .restart local v20    # "deltaPreUpdateTime":F
    goto :goto_ca

    .line 377
    .end local v19    # "deltaLastUpdateTime":F
    .end local v20    # "deltaPreUpdateTime":F
    .restart local v0    # "deltaLastUpdateTime":F
    .restart local v1    # "deltaPreUpdateTime":F
    :cond_c6
    move/from16 v19, v0

    move/from16 v20, v1

    .line 389
    .end local v0    # "deltaLastUpdateTime":F
    .end local v1    # "deltaPreUpdateTime":F
    .restart local v19    # "deltaLastUpdateTime":F
    .restart local v20    # "deltaPreUpdateTime":F
    :goto_ca
    move-wide/from16 v0, v17

    .end local v17    # "distance":D
    .local v0, "distance":D
    :goto_cc
    iget-wide v4, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    iput-wide v4, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateTime:J

    .line 390
    iput-wide v13, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateTime:J

    .line 391
    iget-wide v4, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    iput-wide v4, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mPreLastUpdateDistance:D

    .line 392
    iput-wide v0, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mLastUpdateDistance:D

    .line 394
    iget-object v2, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    move/from16 v4, v16

    .end local v16    # "currVelocity":F
    .local v4, "currVelocity":F
    iput v4, v2, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->currVelocity:F

    .line 395
    iget-object v2, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    move v5, v3

    .end local v3    # "deltaPreUpdateDistance":I
    .end local v4    # "currVelocity":F
    .local v5, "deltaPreUpdateDistance":I
    .restart local v16    # "currVelocity":F
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int v3, p2, v3

    iput v3, v2, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->currentPosition:I

    .line 396
    iget-object v2, v7, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;->mUpdateOptimizeResult:Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;

    iput-boolean v15, v2, Landroid/widget/OverScrollerSplineOverScrollerStub$UpdateOptimizeResult;->isVelocityAndPositionValid:Z

    .line 397
    return v15
.end method
