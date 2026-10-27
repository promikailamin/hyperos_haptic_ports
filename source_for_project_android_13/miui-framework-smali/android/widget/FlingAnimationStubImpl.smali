.class public Landroid/widget/FlingAnimationStubImpl;
.super Ljava/lang/Object;
.source "FlingAnimationStubImpl.java"

# interfaces
.implements Landroid/widget/FlingAnimationStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FlingAnimationStubImpl$ConfigDataChangedListener;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_FLING_VELOCITY_MAXIMUM:I = 0x5208

.field private static final blacklist DEFAULT_FLING_VELOCITY_SCALED:D = 1.0

.field private static final blacklist DEFAULT_FLYWHEEL:Z = true

.field private static final blacklist DEFAULT_FLYWHEEL_PARAM1:D = 5.0E-4

.field private static final blacklist DEFAULT_FLYWHEEL_PARAM2:D = 1.8

.field private static final blacklist DEFAULT_FLYWHEEL_PARAM3:I = 0x3a98

.field private static final blacklist DEFAULT_FLYWHEEL_TIME_INTERVAL_THRESHOLD:I = 0x1f4

.field private static final blacklist DEFAULT_FLYWHEEL_VELOCITY_THRESHOLD1:I = 0xbb8

.field private static final blacklist DEFAULT_FLYWHEEL_VELOCITY_THRESHOLD2:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "FlingAnimationStubImpl"


# instance fields
.field private blacklist mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

.field blacklist mConfigChangedListener:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;

.field private blacklist mConfigDataChangedListener:Landroid/widget/FlingAnimationStubImpl$ConfigDataChangedListener;

.field private blacklist mFlingFlag:I

.field private blacklist mFlingVelocityMaximum:I

.field private blacklist mFlingVelocityScaled:D

.field private blacklist mFlywheel:Z

.field private blacklist mFlywheelParam1:D

.field private blacklist mFlywheelParam2:D

.field private blacklist mFlywheelParam3:I

.field private blacklist mFlywheelStamp:J

.field private blacklist mFlywheelTimeIntervalThreshold:I

.field private blacklist mFlywheelVelocityThreshold1:I

.field private blacklist mFlywheelVelocityThreshold2:I

.field private blacklist mIsFling:Z

.field private blacklist mIsInitSuccess:Z

.field private blacklist mIsOptimizeEnable:Z

.field private blacklist mScrollerMode:I

.field private blacklist mScrollerOptimizationDebug:I

.field private blacklist mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

.field private blacklist mShouldUpdateConfig:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsOptimizeEnable:Z

    .line 38
    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsInitSuccess:Z

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheel:Z

    .line 40
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelTimeIntervalThreshold:I

    .line 41
    const/16 v1, 0xbb8

    iput v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelVelocityThreshold1:I

    .line 42
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelVelocityThreshold2:I

    .line 43
    const-wide v1, 0x3f40624dd2f1a9fcL    # 5.0E-4

    iput-wide v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam1:D

    .line 44
    const-wide v1, 0x3ffccccccccccccdL    # 1.8

    iput-wide v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam2:D

    .line 45
    const/16 v1, 0x3a98

    iput v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam3:I

    .line 46
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingVelocityScaled:D

    .line 47
    const/16 v1, 0x5208

    iput v1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingVelocityMaximum:I

    .line 48
    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingFlag:I

    .line 50
    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsFling:Z

    .line 51
    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mShouldUpdateConfig:Z

    .line 52
    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerMode:I

    .line 55
    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerOptimizationDebug:I

    return-void
.end method

.method private blacklist loadAndUpdateConfigData()V
    .registers 6

    .line 102
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mConfigDataChangedListener:Landroid/widget/FlingAnimationStubImpl$ConfigDataChangedListener;

    if-eqz v0, :cond_7

    .line 103
    invoke-interface {v0}, Landroid/widget/FlingAnimationStubImpl$ConfigDataChangedListener;->onConfigChanged()V

    .line 105
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mShouldUpdateConfig:Z

    .line 106
    iget-object v1, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->getScrollerMode()I

    move-result v1

    iput v1, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerMode:I

    .line 107
    iget-object v1, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->isDebugEnable()Z

    move-result v1

    const-string v2, "FlingAnimationStubImpl"

    if-eqz v1, :cond_34

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScrollerMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_34
    iget v1, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerMode:I

    const/4 v3, 0x1

    if-nez v1, :cond_bb

    .line 112
    iget-object v1, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->getAppOptimizationConfig()Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    .line 113
    iget v1, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerOptimizationDebug:I

    if-eqz v1, :cond_5d

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appScrollerOptimizationConfig:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_5d
    iget-object v1, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    if-eqz v1, :cond_b8

    .line 117
    invoke-virtual {v1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getIsOptimizeEnable()I

    move-result v1

    if-ne v1, v3, :cond_69

    move v1, v3

    goto :goto_6a

    :cond_69
    move v1, v0

    :goto_6a
    iput-boolean v1, p0, Landroid/widget/FlingAnimationStubImpl;->mIsOptimizeEnable:Z

    .line 118
    iget-object v1, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-virtual {v1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlywheel()I

    move-result v1

    if-ne v1, v3, :cond_75

    move v0, v3

    :cond_75
    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheel:Z

    .line 119
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    .line 120
    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlywheelTimeIntervalThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelTimeIntervalThreshold:I

    .line 121
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    .line 122
    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlywheelVelocityThreshold1()I

    move-result v0

    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelVelocityThreshold1:I

    .line 123
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    .line 124
    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlywheelVelocityThreshold2()I

    move-result v0

    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelVelocityThreshold2:I

    .line 125
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlywheelParam1()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam1:D

    .line 126
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlywheelParam2()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam2:D

    .line 127
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlywheelParam3()I

    move-result v0

    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam3:I

    .line 128
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlingVelocityScaled()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingVelocityScaled:D

    .line 129
    iget-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mAppOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-virtual {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->getFlingVelocityMaximum()I

    move-result v0

    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingVelocityMaximum:I

    goto :goto_c5

    .line 131
    :cond_b8
    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsOptimizeEnable:Z

    goto :goto_c5

    .line 133
    :cond_bb
    if-ne v1, v3, :cond_c0

    .line 134
    iput-boolean v3, p0, Landroid/widget/FlingAnimationStubImpl;->mIsOptimizeEnable:Z

    goto :goto_c5

    .line 135
    :cond_c0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c5

    .line 136
    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsOptimizeEnable:Z

    .line 138
    :cond_c5
    :goto_c5
    return-void
.end method


# virtual methods
.method public blacklist flywheel()Z
    .registers 7

    .line 146
    iget-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 147
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelStamp:J

    sub-long/2addr v2, v4

    .line 148
    .local v2, "tempStamp":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelStamp:J

    .line 149
    iget v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelTimeIntervalThreshold:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 151
    .end local v2    # "tempStamp":J
    :cond_1b
    return v1
.end method

.method public blacklist getFlingFlag()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingFlag:I

    return v0
.end method

.method public blacklist getFlingVelocityMaximum()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingVelocityMaximum:I

    return v0
.end method

.method public blacklist getFlingVelocityScaled()D
    .registers 3

    .line 176
    iget-wide v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingVelocityScaled:D

    return-wide v0
.end method

.method public blacklist getFlywheelParam1()D
    .registers 3

    .line 164
    iget-wide v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam1:D

    return-wide v0
.end method

.method public blacklist getFlywheelParam2()D
    .registers 3

    .line 168
    iget-wide v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam2:D

    return-wide v0
.end method

.method public blacklist getFlywheelParam3()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelParam3:I

    return v0
.end method

.method public blacklist getFlywheelVelocityThreshold()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelVelocityThreshold1:I

    return v0
.end method

.method public blacklist getOptimizeOfVelocityY(FI)I
    .registers 11
    .param p1, "oldVelocityY"    # F
    .param p2, "velocityY"    # I

    .line 184
    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->isOptimizeEnable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 185
    return p2

    .line 187
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->getFlingVelocityScaled()D

    move-result-wide v0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p2, v0

    .line 188
    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->flywheel()Z

    move-result v0

    if-eqz v0, :cond_3e

    int-to-float v0, p2

    .line 189
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3e

    .line 190
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->getFlywheelVelocityThreshold()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3e

    .line 191
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->getTouchFlywheelVelocityThreshold()I

    move-result v1

    if-le v0, v1, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    .line 192
    .local v0, "canTriggerFlywheel":Z
    :goto_3f
    if-eqz v0, :cond_95

    .line 194
    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->getFlywheelParam1()D

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    .line 195
    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->getFlywheelParam2()D

    move-result-wide v5

    .line 194
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    .line 195
    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->getFlywheelParam3()I

    move-result v3

    int-to-double v3, v3

    .line 194
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 196
    .local v1, "temp":D
    move v3, p2

    .line 198
    .local v3, "originVelocityY":I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v4, v1

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v4

    double-to-int p2, v4

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "originVelocityY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wheelVelocity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", temp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OverScroller"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1    # "temp":D
    .end local v3    # "originVelocityY":I
    :cond_95
    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->getFlingVelocityMaximum()I

    move-result v1

    .line 204
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 203
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->copySign(FF)F

    move-result v1

    float-to-int p2, v1

    .line 205
    return p2
.end method

.method public blacklist getTouchFlywheelVelocityThreshold()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/widget/FlingAnimationStubImpl;->mFlywheelVelocityThreshold2:I

    return v0
.end method

.method public blacklist initialize(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    sget-boolean v0, Lmiui/os/DeviceFeature;->SCROLLER_OPTIMIZATION_SUPPORT:Z

    if-eqz v0, :cond_29

    if-nez p1, :cond_7

    goto :goto_29

    .line 65
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsInitSuccess:Z

    .line 66
    const/4 v0, 0x0

    const-string v1, "sys.scrolleroptimization.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerOptimizationDebug:I

    .line 67
    invoke-static {p1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->getInstance(Landroid/content/Context;)Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    .line 68
    invoke-direct {p0}, Landroid/widget/FlingAnimationStubImpl;->loadAndUpdateConfigData()V

    .line 69
    new-instance v0, Landroid/widget/FlingAnimationStubImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/FlingAnimationStubImpl$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FlingAnimationStubImpl;)V

    iput-object v0, p0, Landroid/widget/FlingAnimationStubImpl;->mConfigChangedListener:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;

    .line 76
    iget-object v1, p0, Landroid/widget/FlingAnimationStubImpl;->mScrollerOptimizationManager:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v1, v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->registerConfigChangedListener(Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;)V

    .line 77
    return-void

    .line 63
    :cond_29
    :goto_29
    return-void
.end method

.method public blacklist isOptimizeEnable()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsOptimizeEnable:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsInitSuccess:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method synthetic blacklist lambda$initialize$0$android-widget-FlingAnimationStubImpl()V
    .registers 2

    .line 70
    iget-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsFling:Z

    if-nez v0, :cond_8

    .line 71
    invoke-direct {p0}, Landroid/widget/FlingAnimationStubImpl;->loadAndUpdateConfigData()V

    goto :goto_b

    .line 73
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mShouldUpdateConfig:Z

    .line 75
    :goto_b
    return-void
.end method

.method public blacklist registerConfigChangedListener(Landroid/widget/FlingAnimationStubImpl$ConfigDataChangedListener;)V
    .registers 2
    .param p1, "configDataChangedListener"    # Landroid/widget/FlingAnimationStubImpl$ConfigDataChangedListener;

    .line 209
    iput-object p1, p0, Landroid/widget/FlingAnimationStubImpl;->mConfigDataChangedListener:Landroid/widget/FlingAnimationStubImpl$ConfigDataChangedListener;

    .line 210
    return-void
.end method

.method public blacklist setFlingFlag(I)V
    .registers 3
    .param p1, "flingState"    # I

    .line 82
    iput p1, p0, Landroid/widget/FlingAnimationStubImpl;->mFlingFlag:I

    .line 83
    invoke-virtual {p0}, Landroid/widget/FlingAnimationStubImpl;->isOptimizeEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    return-void

    .line 86
    :cond_9
    iget-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsFling:Z

    if-eqz v0, :cond_1a

    if-nez p1, :cond_1a

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsFling:Z

    .line 88
    iget-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mShouldUpdateConfig:Z

    if-eqz v0, :cond_21

    .line 89
    invoke-direct {p0}, Landroid/widget/FlingAnimationStubImpl;->loadAndUpdateConfigData()V

    goto :goto_21

    .line 91
    :cond_1a
    if-nez v0, :cond_21

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 92
    iput-boolean v0, p0, Landroid/widget/FlingAnimationStubImpl;->mIsFling:Z

    .line 94
    :cond_21
    :goto_21
    return-void
.end method
