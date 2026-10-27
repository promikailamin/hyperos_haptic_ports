.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final greylist-max-o COUNT:I = 0xc

.field private static final greylist-max-o PREDICTION_RATIO:F = 0.33333334f

.field private static final greylist-max-o PREDICTION_TIME:F = 0.08f

.field private static final greylist-max-o SENSORS_RATE_MS:I = 0x14


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-o mT:[J

.field private greylist-max-o mV:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 376
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    .line 380
    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 381
    return-void
.end method


# virtual methods
.method public greylist-max-o filter(JF)F
    .registers 23

    .line 384
    move-object/from16 v0, p0

    .line 386
    iget-object v1, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v1, v1, v2

    .line 387
    sub-float v2, p3, v1

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    const/high16 v4, 0x43b40000    # 360.0f

    if-lez v2, :cond_15

    .line 388
    sub-float v1, p3, v4

    goto :goto_20

    .line 389
    :cond_15
    sub-float v1, v1, p3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1e

    .line 390
    add-float v1, p3, v4

    goto :goto_20

    .line 389
    :cond_1e
    move/from16 v1, p3

    .line 396
    :goto_20
    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 397
    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v3, 0x18

    const/16 v5, 0xc

    if-lt v2, v3, :cond_30

    .line 398
    iput v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 400
    :cond_30
    iget-object v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v3, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v1, v2, v3

    .line 401
    iget-object v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v3, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput-wide p1, v2, v3

    .line 402
    iget-object v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v3, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v3, v5

    aput v1, v2, v3

    .line 403
    iget-object v1, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    sub-int/2addr v2, v5

    aput-wide p1, v1, v2

    .line 409
    nop

    .line 410
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_52
    const/16 v9, 0xb

    if-ge v2, v9, :cond_91

    .line 411
    iget v9, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v2

    .line 412
    iget-object v10, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v10, v10, v9

    .line 413
    iget-object v11, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v11, v11, v9

    const-wide/16 v13, 0x2

    div-long/2addr v11, v13

    iget-object v15, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    add-int/lit8 v16, v9, 0x1

    aget-wide v17, v15, v16

    div-long v17, v17, v13

    add-long v11, v11, v17

    sub-long v11, v11, p1

    long-to-float v11, v11

    const v12, 0x3089705f    # 1.0E-9f

    mul-float/2addr v11, v12

    .line 414
    iget-object v13, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v13, v13, v9

    iget-object v9, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v15, v9, v16

    sub-long/2addr v13, v15

    long-to-float v9, v13

    mul-float/2addr v9, v12

    .line 415
    mul-float/2addr v9, v9

    .line 416
    mul-float v12, v10, v9

    add-float/2addr v3, v12

    .line 417
    mul-float v12, v11, v9

    mul-float/2addr v11, v12

    add-float/2addr v5, v11

    .line 418
    add-float/2addr v6, v12

    .line 419
    mul-float/2addr v10, v12

    add-float/2addr v7, v10

    .line 420
    add-float/2addr v8, v9

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 422
    :cond_91
    mul-float v0, v3, v5

    mul-float/2addr v7, v6

    add-float/2addr v0, v7

    mul-float/2addr v5, v8

    mul-float v2, v6, v6

    add-float/2addr v5, v2

    div-float/2addr v0, v5

    .line 423
    mul-float/2addr v8, v0

    sub-float/2addr v8, v3

    div-float/2addr v8, v6

    .line 424
    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v8, v2

    add-float/2addr v0, v8

    .line 427
    const v2, 0x3b360b61

    mul-float/2addr v0, v2

    .line 428
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_ac

    move v2, v0

    goto :goto_ad

    :cond_ac
    neg-float v2, v0

    :goto_ad
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v2, :cond_be

    .line 429
    add-float/2addr v3, v0

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v0, v2

    add-float/2addr v0, v5

    .line 431
    :cond_be
    cmpg-float v1, v0, v1

    if-gez v1, :cond_c3

    .line 432
    add-float/2addr v0, v5

    .line 434
    :cond_c3
    mul-float/2addr v0, v4

    .line 435
    return v0
.end method
