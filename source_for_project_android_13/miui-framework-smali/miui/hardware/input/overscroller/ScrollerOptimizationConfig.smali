.class public Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;
.super Ljava/lang/Object;
.source "ScrollerOptimizationConfig.java"


# instance fields
.field private blacklist mFlingVelocityMaximum:I

.field private blacklist mFlingVelocityScaled:D

.field private blacklist mFlingVelocityThreshold:I

.field private blacklist mFlywheel:I

.field private blacklist mFlywheelParam1:D

.field private blacklist mFlywheelParam2:D

.field private blacklist mFlywheelParam3:I

.field private blacklist mFlywheelTimeIntervalThreshold:I

.field private blacklist mFlywheelVelocityThreshold1:I

.field private blacklist mFlywheelVelocityThreshold2:I

.field private blacklist mFriction:D

.field private blacklist mIsOptimizeEnable:I

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mVelocityThreshold:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityScaled:D

    .line 34
    const/16 v0, 0x5208

    iput v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityMaximum:I

    return-void
.end method


# virtual methods
.method public blacklist getFlingVelocityMaximum()I
    .registers 2

    .line 141
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityMaximum:I

    return v0
.end method

.method public blacklist getFlingVelocityScaled()D
    .registers 3

    .line 133
    iget-wide v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityScaled:D

    return-wide v0
.end method

.method public blacklist getFlingVelocityThreshold()I
    .registers 5

    .line 125
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityThreshold:I

    int-to-double v0, v0

    iget-wide v2, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityScaled:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public blacklist getFlywheel()I
    .registers 2

    .line 69
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheel:I

    return v0
.end method

.method public blacklist getFlywheelParam1()D
    .registers 3

    .line 101
    iget-wide v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam1:D

    return-wide v0
.end method

.method public blacklist getFlywheelParam2()D
    .registers 3

    .line 109
    iget-wide v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam2:D

    return-wide v0
.end method

.method public blacklist getFlywheelParam3()I
    .registers 2

    .line 117
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam3:I

    return v0
.end method

.method public blacklist getFlywheelTimeIntervalThreshold()I
    .registers 2

    .line 77
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelTimeIntervalThreshold:I

    return v0
.end method

.method public blacklist getFlywheelVelocityThreshold1()I
    .registers 2

    .line 85
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelVelocityThreshold1:I

    return v0
.end method

.method public blacklist getFlywheelVelocityThreshold2()I
    .registers 5

    .line 93
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelVelocityThreshold2:I

    int-to-double v0, v0

    iget-wide v2, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityScaled:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public blacklist getFriction()F
    .registers 3

    .line 53
    iget-wide v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFriction:D

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getIsOptimizeEnable()I
    .registers 2

    .line 45
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mIsOptimizeEnable:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVelocityThreshold()I
    .registers 2

    .line 61
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mVelocityThreshold:I

    return v0
.end method

.method public blacklist setFlingVelocityMaximum(I)V
    .registers 2
    .param p1, "flingVelocityMaximum"    # I

    .line 145
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityMaximum:I

    .line 146
    return-void
.end method

.method public blacklist setFlingVelocityScaled(D)V
    .registers 3
    .param p1, "flingVelocityScaled"    # D

    .line 137
    iput-wide p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityScaled:D

    .line 138
    return-void
.end method

.method public blacklist setFlingVelocityThreshold(I)V
    .registers 2
    .param p1, "flingVelocityThreshold"    # I

    .line 129
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityThreshold:I

    .line 130
    return-void
.end method

.method public blacklist setFlywheel(I)V
    .registers 2
    .param p1, "flywheel"    # I

    .line 73
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheel:I

    .line 74
    return-void
.end method

.method public blacklist setFlywheelParam1(D)V
    .registers 3
    .param p1, "flywheelParam1"    # D

    .line 105
    iput-wide p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam1:D

    .line 106
    return-void
.end method

.method public blacklist setFlywheelParam2(D)V
    .registers 3
    .param p1, "flywheelParam2"    # D

    .line 113
    iput-wide p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam2:D

    .line 114
    return-void
.end method

.method public blacklist setFlywheelParam3(I)V
    .registers 2
    .param p1, "flywheelParam3"    # I

    .line 121
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam3:I

    .line 122
    return-void
.end method

.method public blacklist setFlywheelTimeIntervalThreshold(I)V
    .registers 2
    .param p1, "flywheelTimeIntervalThreshold"    # I

    .line 81
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelTimeIntervalThreshold:I

    .line 82
    return-void
.end method

.method public blacklist setFlywheelVelocityThreshold1(I)V
    .registers 2
    .param p1, "flywheelVelocityThreshold1"    # I

    .line 89
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelVelocityThreshold1:I

    .line 90
    return-void
.end method

.method public blacklist setFlywheelVelocityThreshold2(I)V
    .registers 2
    .param p1, "flywheelVelocityThreshold2"    # I

    .line 97
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelVelocityThreshold2:I

    .line 98
    return-void
.end method

.method public blacklist setFriction(D)V
    .registers 3
    .param p1, "friction"    # D

    .line 57
    iput-wide p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFriction:D

    .line 58
    return-void
.end method

.method public blacklist setIsOptimizeEnable(I)V
    .registers 2
    .param p1, "isOptimizeEnable"    # I

    .line 49
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mIsOptimizeEnable:I

    .line 50
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mPackageName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public blacklist setVelocityThreshold(I)V
    .registers 2
    .param p1, "velocityThreshold"    # I

    .line 65
    iput p1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mVelocityThreshold:I

    .line 66
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollerOptimizationConfig{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOptimizeEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mIsOptimizeEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", friction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFriction:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", velocityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mVelocityThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flywheel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flywheelTimeIntervalThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelTimeIntervalThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flywheelVelocityThreshold1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelVelocityThreshold1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flywheelVelocityThreshold2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelVelocityThreshold2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flywheelParam1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flywheelParam2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flywheelParam3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlywheelParam3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flingVelocityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flingVelocityScaled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityScaled:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flingVelocityMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->mFlingVelocityMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
