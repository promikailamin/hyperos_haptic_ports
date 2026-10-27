.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;
.super Ljava/lang/Object;
.source "SpringStopEngine.java"


# static fields
.field private static final blacklist UNSET:D = 1.7976931348623157E308


# instance fields
.field private blacklist mBoundaryMode:I

.field blacklist mDamping:D

.field private blacklist mInitialized:Z

.field private blacklist mLastTime:F

.field private blacklist mLastVelocity:D

.field private blacklist mMass:F

.field private blacklist mPos:F

.field private blacklist mStiffness:D

.field private blacklist mStopThreshold:F

.field private blacklist mTargetPos:D

.field private blacklist mV:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    .line 45
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    .line 59
    return-void
.end method

.method public constructor blacklist <init>([F)V
    .registers 9

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    .line 45
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    .line 94
    aget v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    .line 98
    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/4 v0, 0x3

    aget v5, p1, v0

    const/4 v0, 0x4

    aget p1, p1, v0

    .line 103
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 98
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->springParameters(FFFFI)V

    .line 104
    return-void

    .line 95
    :cond_2a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, " parameter[0] should be 0"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist compute(D)V
    .registers 20

    .line 208
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_9

    .line 210
    return-void

    .line 213
    :cond_9
    iget-wide v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    .line 214
    iget-wide v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 216
    iget-wide v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v5, v5, p1

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    div-double/2addr v7, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v5

    double-to-int v5, v7

    .line 217
    int-to-double v6, v5

    div-double v6, p1, v6

    .line 219
    const/4 v8, 0x0

    :goto_27
    if-ge v8, v5, :cond_a2

    .line 220
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v9, v9

    iget-wide v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v9, v11

    .line 221
    neg-double v11, v1

    mul-double/2addr v11, v9

    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v9, v9

    mul-double/2addr v9, v3

    sub-double/2addr v11, v9

    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v9, v9

    div-double/2addr v11, v9

    .line 223
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v9, v9

    mul-double/2addr v11, v6

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    .line 224
    iget v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v11, v11

    mul-double v15, v6, v9

    div-double/2addr v15, v13

    add-double/2addr v11, v15

    move-wide/from16 p1, v13

    iget-wide v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v11, v13

    .line 225
    neg-double v11, v11

    mul-double/2addr v11, v1

    mul-double/2addr v9, v3

    sub-double/2addr v11, v9

    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v9, v9

    div-double/2addr v11, v9

    .line 227
    mul-double/2addr v11, v6

    .line 228
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v9, v9

    div-double v13, v11, p1

    add-double/2addr v9, v13

    .line 229
    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    double-to-float v11, v11

    add-float/2addr v13, v11

    iput v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    .line 230
    iget v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    mul-double/2addr v9, v6

    double-to-float v9, v9

    add-float/2addr v11, v9

    iput v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 231
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    if-lez v9, :cond_9f

    .line 232
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_85

    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_85

    .line 233
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    neg-float v9, v9

    iput v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 234
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    neg-float v9, v9

    iput v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    .line 236
    :cond_85
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9f

    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_9f

    .line 237
    const/high16 v9, 0x40000000    # 2.0f

    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    sub-float/2addr v9, v10

    iput v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 238
    iget v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    neg-float v9, v9

    iput v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    .line 219
    :cond_9f
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 242
    :cond_a2
    return-void
.end method


# virtual methods
.method public blacklist get(F)F
    .registers 4

    .line 158
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->compute(D)V

    .line 159
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 161
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    double-to-float p1, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 163
    :cond_15
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    return p1
.end method

.method public blacklist getAcceleration()F
    .registers 9

    .line 172
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    .line 173
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 174
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v4, v6

    .line 175
    neg-double v0, v0

    mul-double/2addr v0, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    div-float/2addr v0, v1

    return v0
.end method

.method public blacklist getTargetValue()F
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getVelocity()F
    .registers 2

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVelocity(F)F
    .registers 2

    .line 148
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    return p1
.end method

.method public blacklist isStopped()Z
    .registers 9

    .line 193
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    sub-double/2addr v0, v2

    .line 194
    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    .line 195
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mV:F

    float-to-double v4, v4

    .line 196
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    float-to-double v6, v6

    .line 197
    mul-double/2addr v4, v4

    mul-double/2addr v4, v6

    mul-double v6, v2, v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    .line 198
    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 199
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStopThreshold:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method blacklist log(Ljava/lang/String;)V
    .registers 5

    .line 52
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public blacklist setInitialValue(F)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 77
    return-void
.end method

.method public blacklist setTargetValue(F)V
    .registers 4

    .line 85
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    .line 86
    return-void
.end method

.method public blacklist springParameters(FFFFI)V
    .registers 8

    .line 132
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mDamping:D

    .line 133
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    .line 134
    float-to-double p2, p2

    iput-wide p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStiffness:D

    .line 135
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mMass:F

    .line 136
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mStopThreshold:F

    .line 137
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mBoundaryMode:I

    .line 138
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    .line 139
    return-void
.end method

.method public blacklist springStart(FFF)V
    .registers 6

    .line 114
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mTargetPos:D

    .line 115
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mInitialized:Z

    .line 116
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mPos:F

    .line 117
    float-to-double p1, p3

    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastVelocity:D

    .line 118
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->mLastTime:F

    .line 119
    return-void
.end method
