.class public final Lcom/miui/internal/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Lcom/miui/internal/dynamicanimation/animation/Force;


# static fields
.field public static final blacklist DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final blacklist DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final blacklist DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final blacklist DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final blacklist STIFFNESS_HIGH:F = 10000.0f

.field public static final blacklist STIFFNESS_LOW:F = 200.0f

.field public static final blacklist STIFFNESS_MEDIUM:F = 1500.0f

.field public static final blacklist STIFFNESS_VERY_LOW:F = 50.0f

.field private static final blacklist UNSET:D = 1.7976931348623157E308

.field private static final blacklist VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private blacklist mDampedFreq:D

.field blacklist mDampingRatio:D

.field private blacklist mFinalPosition:D

.field private blacklist mGammaMinus:D

.field private blacklist mGammaPlus:D

.field private blacklist mInitialized:Z

.field private final blacklist mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

.field blacklist mNaturalFreq:D

.field private blacklist mValueThreshold:D

.field private blacklist mVelocityThreshold:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 84
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 103
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 106
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .registers 4
    .param p1, "finalPosition"    # F

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 84
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 103
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 106
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 122
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 123
    return-void
.end method

.method private blacklist init()V
    .registers 9

    .line 244
    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 245
    return-void

    .line 248
    :cond_5
    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_50

    .line 253
    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_37

    .line 255
    neg-double v4, v0

    iget-wide v6, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v4, v6

    mul-double/2addr v0, v0

    sub-double/2addr v0, v2

    .line 256
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 257
    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v4, v0

    iget-wide v6, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v4, v6

    mul-double/2addr v0, v0

    sub-double/2addr v0, v2

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    goto :goto_4c

    .line 259
    :cond_37
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_4c

    cmpg-double v4, v0, v2

    if-gez v4, :cond_4c

    .line 261
    iget-wide v4, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    iput-wide v4, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 264
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 265
    return-void

    .line 249
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getAcceleration(FF)F
    .registers 11
    .param p1, "lastDisplacement"    # F
    .param p2, "lastVelocity"    # F

    .line 216
    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float/2addr p1, v0

    .line 218
    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double v2, v0, v0

    .line 219
    .local v2, "k":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v0, v4

    .line 221
    .local v0, "c":D
    neg-double v4, v2

    float-to-double v6, p1

    mul-double/2addr v4, v6

    float-to-double v6, p2

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method public blacklist getDampingRatio()F
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getFinalPosition()F
    .registers 3

    .line 205
    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getStiffness()F
    .registers 3

    .line 151
    iget-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v0

    double-to-float v0, v0

    return v0
.end method

.method public blacklist isAtEquilibrium(FF)Z
    .registers 7
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 229
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1e

    .line 230
    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1e

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDampingRatio(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;
    .registers 4
    .param p1, "dampingRatio"    # F

    .line 170
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 173
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 176
    return-object p0

    .line 171
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Damping ratio must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setFinalPosition(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;
    .registers 4
    .param p1, "finalPosition"    # F

    .line 195
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 196
    return-object p0
.end method

.method public blacklist setStiffness(F)Lcom/miui/internal/dynamicanimation/animation/SpringForce;
    .registers 4
    .param p1, "stiffness"    # F

    .line 136
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    .line 139
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 142
    return-object p0

    .line 137
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spring stiffness constant must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setValueThreshold(D)V
    .registers 7
    .param p1, "threshold"    # D

    .line 326
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 327
    const-wide v2, 0x404f400000000000L    # 62.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 328
    return-void
.end method

.method blacklist updateValues(DDJ)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 29
    .param p1, "lastDisplacement"    # D
    .param p3, "lastVelocity"    # D
    .param p5, "timeElapsed"    # J

    .line 273
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->init()V

    .line 275
    move-wide/from16 v1, p5

    long-to-double v3, v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 276
    .local v3, "deltaT":D
    iget-wide v5, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    sub-double v5, p1, v5

    .line 279
    .end local p1    # "lastDisplacement":D
    .local v5, "lastDisplacement":D
    iget-wide v7, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v7, v9

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    if-lez v11, :cond_62

    .line 281
    iget-wide v7, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double v9, v7, v5

    sub-double v9, v9, p3

    iget-wide v14, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    sub-double v16, v7, v14

    div-double v9, v9, v16

    sub-double v9, v5, v9

    .line 283
    .local v9, "coeffA":D
    mul-double v16, v7, v5

    sub-double v16, v16, p3

    sub-double v14, v7, v14

    div-double v16, v16, v14

    .line 285
    .local v16, "coeffB":D
    mul-double/2addr v7, v3

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v9

    iget-wide v14, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v14, v3

    .line 286
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v16

    add-double/2addr v7, v14

    .line 287
    .local v7, "displacement":D
    iget-wide v14, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double v18, v9, v14

    mul-double/2addr v14, v3

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v18, v18, v14

    iget-wide v14, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double v20, v16, v14

    mul-double/2addr v14, v3

    .line 288
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v20, v20, v11

    add-double v18, v18, v20

    .line 289
    .end local v9    # "coeffA":D
    .end local v16    # "coeffB":D
    .local v18, "currentVelocity":D
    move-wide v15, v5

    move-wide/from16 v1, v18

    goto/16 :goto_102

    .end local v7    # "displacement":D
    .end local v18    # "currentVelocity":D
    :cond_62
    cmpl-double v11, v7, v9

    if-nez v11, :cond_a4

    .line 291
    move-wide v7, v5

    .line 292
    .local v7, "coeffA":D
    iget-wide v9, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double v14, v9, v5

    add-double v14, p3, v14

    .line 293
    .local v14, "coeffB":D
    mul-double v16, v14, v3

    add-double v16, v7, v16

    neg-double v9, v9

    mul-double/2addr v9, v3

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v16

    .line 294
    .local v9, "displacement":D
    mul-double v16, v14, v3

    add-double v16, v7, v16

    iget-wide v12, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v11, v12

    mul-double/2addr v11, v3

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v16, v16, v11

    iget-wide v11, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v1, v11

    mul-double v16, v16, v1

    neg-double v1, v11

    mul-double/2addr v1, v3

    .line 295
    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v14

    add-double v18, v16, v1

    .line 296
    .end local v7    # "coeffA":D
    .end local v14    # "coeffB":D
    .restart local v18    # "currentVelocity":D
    move-wide v15, v5

    move-wide v7, v9

    move-wide/from16 v1, v18

    goto :goto_102

    .line 298
    .end local v9    # "displacement":D
    .end local v18    # "currentVelocity":D
    :cond_a4
    move-wide v1, v5

    .line 299
    .local v1, "cosCoeff":D
    iget-wide v11, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    div-double/2addr v9, v11

    iget-wide v11, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double v13, v7, v11

    mul-double/2addr v13, v5

    add-double v13, v13, p3

    mul-double/2addr v9, v13

    .line 301
    .local v9, "sinCoeff":D
    neg-double v7, v7

    mul-double/2addr v7, v11

    mul-double/2addr v7, v3

    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget-wide v11, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v11, v3

    .line 302
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    iget-wide v13, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v13, v3

    .line 303
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    mul-double/2addr v7, v11

    .line 304
    .local v7, "displacement":D
    iget-wide v11, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v13, v11

    mul-double/2addr v13, v7

    move-wide v15, v5

    .end local v5    # "lastDisplacement":D
    .local v15, "lastDisplacement":D
    iget-wide v5, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v13, v5

    neg-double v5, v5

    mul-double/2addr v5, v11

    mul-double/2addr v5, v3

    .line 305
    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v11, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 p1, v7

    .end local v7    # "displacement":D
    .local p1, "displacement":D
    neg-double v7, v11

    mul-double/2addr v7, v1

    mul-double/2addr v11, v3

    .line 306
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v7, v11

    iget-wide v11, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double v17, v11, v9

    mul-double/2addr v11, v3

    .line 307
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v17, v17, v11

    add-double v7, v7, v17

    mul-double/2addr v5, v7

    add-double v18, v13, v5

    move-wide/from16 v7, p1

    move-wide/from16 v1, v18

    .line 310
    .end local v9    # "sinCoeff":D
    .end local p1    # "displacement":D
    .local v1, "currentVelocity":D
    .restart local v7    # "displacement":D
    :goto_102
    iget-object v5, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget-wide v9, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    add-double/2addr v9, v7

    double-to-float v6, v9

    iput v6, v5, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 311
    iget-object v5, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    double-to-float v6, v1

    iput v6, v5, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 312
    iget-object v5, v0, Lcom/miui/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object v5
.end method
