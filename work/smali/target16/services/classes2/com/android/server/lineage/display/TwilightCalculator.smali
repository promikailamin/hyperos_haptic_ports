.class public Lcom/android/server/lineage/display/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# instance fields
.field public mState:I

.field public mSunrise:J

.field public mSunset:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .registers 21

    const-wide v0, 0xdc6d62da00L

    sub-long v2, p1, v0

    long-to-float v2, v2

    const v3, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v2, v3

    const v3, 0x3c8ceb25

    mul-float/2addr v3, v2

    const v4, 0x40c7ae92

    add-float/2addr v3, v4

    const v4, 0x3d08e2fe

    .line 78
    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v6, v3, v4

    .line 79
    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    const v7, 0x39b702d8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v3

    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    const v7, 0x36afb0e6    # 5.236E-6f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const v6, 0x3fe5f6c3

    add-float/2addr v5, v6

    const v6, 0x40490fdb    # (float)Math.PI

    add-float/2addr v5, v6

    move-wide/from16 v6, p5

    neg-double v6, v6

    const-wide v8, 0x4076800000000000L    # 360.0

    div-double/2addr v6, v8

    const v8, 0x3a6bedfa    # 9.0E-4f

    sub-float/2addr v2, v8

    float-to-double v9, v2

    sub-double/2addr v9, v6

    .line 86
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-float v2, v9

    add-float/2addr v2, v8

    float-to-double v8, v2

    add-double/2addr v8, v6

    const v2, 0x3badab9f    # 0.0053f

    .line 87
    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    add-double/2addr v8, v2

    mul-float/2addr v4, v5

    .line 88
    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    const v3, -0x441de69b    # -0.0069f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v8, v2

    .line 91
    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    const v3, 0x3ed18d1c

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v4, v4, p3

    const v6, -0x422988b0

    .line 95
    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v4, v2

    div-double/2addr v6, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v6, v2

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    if-ltz v2, :cond_ae

    .line 100
    iput v3, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mState:I

    .line 101
    iput-wide v4, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mSunset:J

    .line 102
    iput-wide v4, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mSunrise:J

    return-void

    :cond_ae
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpg-double v2, v6, v10

    const/4 v10, 0x0

    if-gtz v2, :cond_bc

    .line 105
    iput v10, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mState:I

    .line 106
    iput-wide v4, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mSunset:J

    .line 107
    iput-wide v4, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mSunrise:J

    return-void

    .line 111
    :cond_bc
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v6

    double-to-float v2, v4

    float-to-double v4, v2

    add-double v6, v8, v4

    const-wide v11, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v6, v11

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mSunset:J

    sub-double/2addr v8, v4

    mul-double/2addr v8, v11

    .line 114
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mSunrise:J

    cmp-long v0, v4, p1

    if-gez v0, :cond_ed

    .line 116
    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mSunset:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_ed

    .line 117
    iput v10, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mState:I

    return-void

    .line 119
    :cond_ed
    iput v3, p0, Lcom/android/server/lineage/display/TwilightCalculator;->mState:I

    return-void
.end method
