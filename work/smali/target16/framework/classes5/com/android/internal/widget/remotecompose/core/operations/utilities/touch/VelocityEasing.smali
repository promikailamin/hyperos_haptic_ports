.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;
.super Ljava/lang/Object;
.source "VelocityEasing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;,
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false


# instance fields
.field private blacklist mDuration:F

.field private blacklist mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

.field private blacklist mEasingAdapterA:D

.field private blacklist mEasingAdapterB:D

.field private blacklist mEasingAdapterDistance:D

.field private blacklist mEndPos:F

.field private blacklist mNumberOfStages:I

.field private blacklist mOneDimension:Z

.field private final blacklist mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

.field private blacklist mStartPos:F

.field private blacklist mStartV:F

.field private blacklist mTotalEasingDuration:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStartPos:F

    .line 29
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStartV:F

    .line 30
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEndPos:F

    .line 31
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 33
    const/4 v1, 0x3

    new-array v2, v1, [Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;-><init>(I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;-><init>(I)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    invoke-direct {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;-><init>(I)V

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    .line 34
    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 36
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    .line 37
    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    .line 38
    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    .line 39
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mOneDimension:Z

    .line 40
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mTotalEasingDuration:F

    return-void
.end method

.method private blacklist cruseThenRampDown(FFFFFF)Z
    .registers 18

    .line 185
    div-float v0, p3, p5

    .line 186
    mul-float v1, p3, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 187
    sub-float v2, p2, p1

    sub-float v8, v2, v1

    .line 188
    div-float v9, v8, p3

    .line 189
    add-float/2addr v0, v9

    .line 190
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_38

    cmpg-float p4, v0, p4

    if-gez p4, :cond_38

    .line 191
    const/4 p4, 0x2

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 192
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v3, p4, v2

    const/4 v6, 0x0

    move v7, p3

    move v5, p1

    move v4, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 193
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v10, 0x1

    aget-object v1, p4, v10

    add-float v3, p1, v8

    const/4 v5, 0x0

    move v6, p2

    move v2, p3

    move v7, v0

    move v4, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 200
    iput v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 201
    return v10

    .line 203
    :cond_38
    return v2
.end method

.method private blacklist getEasingDiff(D)D
    .registers 7

    .line 294
    mul-double v0, p1, p1

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    .line 295
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_12

    .line 296
    const-wide/16 p1, 0x0

    return-wide p1

    .line 298
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;->getDiff(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr p1, v2

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    add-double/2addr p1, v2

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method private blacklist rampDown(FFFF)Z
    .registers 14

    .line 165
    sub-float v0, p2, p1

    div-float/2addr v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v8, v0, v1

    .line 166
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    const/4 v1, 0x0

    if-lez v0, :cond_23

    cmpg-float p4, v8, p4

    if-gtz p4, :cond_23

    .line 167
    const/4 p4, 0x1

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v0, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p1

    move v7, p2

    move v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 169
    iput v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 170
    return p4

    .line 172
    :cond_23
    return v1
.end method

.method private blacklist rampUpCruseRampDown(FFFFFF)V
    .registers 21

    .line 266
    move/from16 v6, p6

    const/high16 v0, 0x40400000    # 3.0f

    div-float v10, v6, v0

    .line 267
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v3, v10, v0

    .line 268
    sub-float v1, p2, p1

    .line 269
    sub-float v2, v3, v10

    .line 270
    sub-float v4, v6, v3

    .line 271
    mul-float/2addr v1, v0

    mul-float v5, p3, v10

    sub-float/2addr v1, v5

    mul-float v5, v2, v0

    add-float/2addr v5, v10

    add-float/2addr v5, v4

    div-float v11, v1, v5

    .line 272
    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 273
    add-float v1, p3, v11

    mul-float/2addr v1, v10

    div-float/2addr v1, v0

    .line 274
    add-float v4, v11, v11

    mul-float/2addr v4, v2

    div-float/2addr v4, v0

    .line 275
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v2, 0x0

    aget-object v7, v0, v2

    add-float v9, p1, v1

    move v13, v10

    const/4 v10, 0x0

    move/from16 v8, p3

    move v12, v9

    move v9, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 279
    move v9, v12

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v0, 0x1

    aget-object v7, p1, v0

    add-float v12, v9, v4

    move v1, v11

    move v8, v1

    move v10, v13

    move v13, v3

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 280
    move v11, v8

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v4, 0x0

    move/from16 v5, p2

    move v1, v11

    move v2, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 281
    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 282
    return-void
.end method

.method private blacklist rampUpRampDown(FFFFFF)Z
    .registers 28

    .line 213
    move-object/from16 v0, p0

    .line 214
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->signum(F)F

    move-result v1

    sub-float v2, p2, p1

    mul-float v3, p4, v2

    mul-float v4, p3, p3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 216
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v10, v1, v3

    .line 219
    div-float v1, p5, v10

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_aa

    .line 220
    sub-float v1, v10, p3

    div-float v9, v1, p4

    .line 221
    add-float v1, v10, p3

    mul-float/2addr v1, v9

    div-float/2addr v1, v5

    add-float v11, v1, p1

    .line 222
    div-float v1, v10, p4

    .line 223
    const/4 v4, 0x2

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 224
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v6, v6, v3

    move v12, v9

    const/4 v9, 0x0

    move/from16 v8, p1

    move/from16 v7, p3

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 225
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    const/16 v20, 0x1

    aget-object v6, v6, v20

    add-float/2addr v1, v12

    move v7, v10

    const/4 v10, 0x0

    move v8, v11

    move v9, v12

    move/from16 v11, p2

    move v12, v1

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 226
    iput v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 227
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    cmpl-float v1, v1, p6

    if-lez v1, :cond_57

    .line 228
    return v3

    .line 230
    :cond_57
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    div-float v6, p6, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_a9

    .line 231
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    div-float v16, v1, v5

    .line 232
    nop

    .line 233
    mul-float/2addr v2, v5

    div-float v2, v2, v16

    sub-float v2, v2, p3

    div-float v14, v2, v5

    .line 234
    add-float v1, v14, p3

    mul-float v1, v1, v16

    div-float/2addr v1, v5

    add-float v15, v1, p1

    .line 235
    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    .line 236
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v13, v1, v3

    move/from16 v19, v16

    const/16 v16, 0x0

    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v15, p1

    move/from16 v14, p3

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 237
    move/from16 v14, v17

    move/from16 v15, v18

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v13, v1, v20

    add-float v16, v19, v19

    const/16 v17, 0x0

    move/from16 v18, v19

    move/from16 v19, v16

    move/from16 v16, v18

    move/from16 v18, p2

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->setUp(FFFFFF)V

    .line 238
    move/from16 v1, v19

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    .line 239
    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    cmpl-float v0, v0, p6

    if-lez v0, :cond_a9

    .line 240
    return v3

    .line 243
    :cond_a9
    return v20

    .line 245
    :cond_aa
    return v3
.end method


# virtual methods
.method public blacklist config(FFFFFFLcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;)V
    .registers 16

    .line 133
    nop

    .line 134
    nop

    .line 135
    cmpl-float v0, p1, p2

    if-nez v0, :cond_b

    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    move v1, p1

    goto :goto_c

    .line 135
    :cond_b
    move v1, p1

    .line 138
    :goto_c
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStartPos:F

    .line 139
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEndPos:F

    .line 140
    if-eqz p7, :cond_18

    .line 141
    invoke-interface {p7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;->clone()Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    .line 143
    :cond_18
    sub-float p1, p2, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    .line 144
    mul-float v5, p6, p1

    .line 145
    mul-float v4, p5, p1

    .line 146
    float-to-double p5, p3

    const-wide/16 v2, 0x0

    cmpl-double p5, p5, v2

    if-nez p5, :cond_2f

    .line 147
    const p3, 0x38d1b717    # 1.0E-4f

    mul-float/2addr p3, p1

    move v3, p3

    goto :goto_30

    .line 146
    :cond_2f
    move v3, p3

    .line 149
    :goto_30
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStartV:F

    .line 150
    invoke-direct {p0, v1, p2, v3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->rampDown(FFFF)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 151
    iget-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mOneDimension:Z

    if-eqz p1, :cond_4e

    .line 152
    move-object v0, p0

    move v2, p2

    move v6, v5

    move v5, v4

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->cruseThenRampDown(FFFFFF)Z

    move-result p1

    move v7, v6

    move v6, v4

    move v4, v5

    move v5, v7

    if-nez p1, :cond_4c

    goto :goto_50

    :cond_4c
    move-object v0, p0

    goto :goto_5f

    .line 151
    :cond_4e
    move v2, p2

    move v6, p4

    .line 153
    :goto_50
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->rampUpRampDown(FFFFFF)Z

    move-result p1

    if-nez p1, :cond_5c

    .line 154
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->rampUpCruseRampDown(FFFFFF)V

    goto :goto_5f

    .line 153
    :cond_5c
    move-object v0, p0

    goto :goto_5f

    .line 150
    :cond_5e
    move-object v0, p0

    .line 158
    :goto_5f
    iget-boolean p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mOneDimension:Z

    if-eqz p1, :cond_66

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->configureEasingAdapter()V

    .line 161
    :cond_66
    return-void
.end method

.method protected blacklist configureEasingAdapter()V
    .registers 8

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    if-nez v0, :cond_5

    .line 306
    return-void

    .line 308
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    add-int/lit8 v0, v0, -0x1

    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartV(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v1

    .line 310
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 312
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;->getDiff(D)D

    move-result-wide v3

    .line 313
    float-to-double v5, v1

    float-to-double v1, v2

    mul-double/2addr v3, v1

    div-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    .line 314
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    sub-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    .line 315
    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    .line 316
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    iget-wide v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v3, v1

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    mul-double/2addr v1, v5

    add-double/2addr v3, v1

    .line 317
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v5, v3

    div-double/2addr v1, v5

    .line 320
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v3, v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v0

    float-to-double v3, v0

    add-double/2addr v1, v3

    double-to-float v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mTotalEasingDuration:F

    .line 321
    return-void
.end method

.method public blacklist getDuration()F
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    if-eqz v0, :cond_7

    .line 49
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mTotalEasingDuration:F

    return v0

    .line 51
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mDuration:F

    return v0
.end method

.method blacklist getEasing(D)D
    .registers 7

    .line 285
    mul-double v0, p1, p1

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterA:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterB:D

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    .line 286
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, p1

    if-lez p1, :cond_12

    .line 287
    iget-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    return-wide p1

    .line 289
    :cond_12
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;->get(D)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasingAdapterDistance:D

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method public blacklist getPos(F)F
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 86
    nop

    :goto_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    if-ge v1, v0, :cond_22

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1f

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->getPos(F)F

    move-result p1

    return p1

    .line 86
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 91
    :cond_22
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEndPos:F

    return p1

    .line 93
    :cond_25
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    add-int/lit8 v0, v0, -0x1

    .line 94
    nop

    :goto_2a
    if-ge v1, v0, :cond_44

    .line 95
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_41

    .line 96
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->getPos(F)F

    move-result p1

    return p1

    .line 94
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 99
    :cond_44
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v1

    sub-float/2addr p1, v1

    float-to-double v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getEasing(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 100
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v0

    add-float/2addr p1, v0

    .line 101
    return p1
.end method

.method public blacklist getV(F)F
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 62
    nop

    :goto_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    if-ge v1, v0, :cond_22

    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1f

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->getVel(F)F

    move-result p1

    return p1

    .line 62
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 67
    :cond_22
    const/4 p1, 0x0

    return p1

    .line 69
    :cond_24
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    add-int/lit8 v0, v0, -0x1

    .line 70
    nop

    :goto_29
    if-ge v1, v0, :cond_43

    .line 71
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_40

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->getVel(F)F

    move-result p1

    return p1

    .line 70
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 75
    :cond_43
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->-$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F

    move-result v0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getEasingDiff(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 106
    nop

    .line 107
    const-string v0, " "

    const/4 v1, 0x0

    move-object v2, v0

    :goto_5
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mNumberOfStages:I

    if-ge v1, v3, :cond_2d

    .line 108
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->mStage:[Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;

    aget-object v3, v3, v1

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 111
    :cond_2d
    return-object v2
.end method
