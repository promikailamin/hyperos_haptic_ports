.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;
.super Ljava/lang/Object;
.source "PathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Spline"
.end annotation


# instance fields
.field blacklist mDxSeg:[F

.field blacklist mDxTan:[F

.field blacklist mDySeg:[F

.field blacklist mDyTan:[F

.field blacklist mH:[F

.field blacklist mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mH:[F

    .line 400
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxSeg:[F

    .line 401
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDySeg:[F

    .line 402
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxTan:[F

    .line 403
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDyTan:[F

    .line 404
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;-><init>()V

    return-void
.end method

.method private blacklist smoothTangents([F[F[FZ)V
    .registers 12

    .line 459
    array-length v0, p2

    .line 460
    if-eqz p4, :cond_5

    move v1, v0

    goto :goto_7

    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 462
    :goto_7
    const/4 v2, 0x0

    if-eqz p4, :cond_29

    .line 463
    nop

    :goto_b
    if-ge v2, v1, :cond_4b

    .line 464
    add-int/lit8 p4, v2, -0x1

    add-int/2addr p4, v0

    rem-int/2addr p4, v0

    .line 465
    rem-int v3, v2, v0

    .line 467
    aget v4, p3, p4

    aget v5, p2, v3

    mul-float/2addr v4, v5

    aget v5, p3, v3

    aget v6, p2, p4

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget p4, p3, p4

    aget v3, p3, v3

    add-float/2addr p4, v3

    div-float/2addr v4, p4

    aput v4, p1, v2

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 470
    :cond_29
    aget p4, p2, v2

    aput p4, p1, v2

    .line 471
    const/4 p4, 0x1

    sub-int/2addr v1, p4

    sub-int/2addr v0, p4

    aget v0, p2, v0

    aput v0, p1, v1

    .line 472
    nop

    :goto_35
    if-ge p4, v1, :cond_4b

    .line 473
    add-int/lit8 v0, p4, -0x1

    aget v2, p3, v0

    .line 474
    aget v3, p3, p4

    .line 475
    aget v4, p2, p4

    mul-float/2addr v4, v2

    aget v0, p2, v0

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    add-float/2addr v2, v3

    div-float/2addr v4, v2

    aput v4, p1, p4

    .line 472
    add-int/lit8 p4, p4, 0x1

    goto :goto_35

    .line 478
    :cond_4b
    return-void
.end method


# virtual methods
.method public blacklist asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;
    .registers 24

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-eqz v1, :cond_ef

    if-eqz v2, :cond_ef

    .line 409
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_e6

    .line 410
    array-length v4, v1

    .line 411
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->reset()V

    .line 412
    if-eqz v3, :cond_1a

    move v5, v4

    goto :goto_1c

    :cond_1a
    add-int/lit8 v5, v4, -0x1

    .line 413
    :goto_1c
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mH:[F

    array-length v6, v6

    if-eq v5, v6, :cond_45

    .line 414
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    array-length v7, v1

    mul-int/lit8 v7, v7, 0xa

    invoke-direct {v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;-><init>(I)V

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    .line 415
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mH:[F

    .line 416
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxSeg:[F

    .line 417
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDySeg:[F

    .line 418
    if-eqz v3, :cond_3b

    move v6, v5

    goto :goto_3d

    :cond_3b
    add-int/lit8 v6, v5, 0x1

    .line 419
    :goto_3d
    new-array v7, v6, [F

    iput-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxTan:[F

    .line 420
    new-array v6, v6, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDyTan:[F

    .line 422
    :cond_45
    if-nez v4, :cond_4a

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object v0

    .line 423
    :cond_4a
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    const/4 v7, 0x0

    aget v8, v1, v7

    aget v9, v2, v7

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->moveTo(FF)V

    .line 424
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5a

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object v0

    .line 426
    :cond_5a
    move v6, v7

    :goto_5b
    if-ge v6, v5, :cond_8a

    .line 428
    add-int/lit8 v8, v6, 0x1

    rem-int v9, v8, v4

    .line 429
    aget v10, v1, v9

    aget v11, v1, v6

    sub-float/2addr v10, v11

    .line 430
    aget v9, v2, v9

    aget v11, v2, v6

    sub-float/2addr v9, v11

    .line 431
    float-to-double v11, v10

    float-to-double v13, v9

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v11, v11

    .line 432
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-nez v12, :cond_7a

    const v11, 0x2b8cbccc    # 1.0E-12f

    .line 433
    :cond_7a
    iget-object v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mH:[F

    aput v11, v12, v6

    .line 434
    iget-object v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxSeg:[F

    div-float/2addr v10, v11

    aput v10, v12, v6

    .line 435
    iget-object v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDySeg:[F

    div-float/2addr v9, v11

    aput v9, v10, v6

    .line 426
    move v6, v8

    goto :goto_5b

    .line 438
    :cond_8a
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxTan:[F

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxSeg:[F

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mH:[F

    invoke-direct {v0, v6, v8, v9, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->smoothTangents([F[F[FZ)V

    .line 439
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDyTan:[F

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDySeg:[F

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mH:[F

    invoke-direct {v0, v6, v8, v9, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->smoothTangents([F[F[FZ)V

    .line 441
    nop

    :goto_9d
    if-ge v7, v5, :cond_dc

    .line 442
    add-int/lit8 v6, v7, 0x1

    rem-int v8, v6, v4

    .line 443
    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mH:[F

    aget v9, v9, v7

    .line 445
    aget v10, v1, v7

    iget-object v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxTan:[F

    aget v11, v11, v7

    mul-float/2addr v11, v9

    const/high16 v12, 0x40400000    # 3.0f

    div-float/2addr v11, v12

    add-float v14, v10, v11

    .line 446
    aget v10, v2, v7

    iget-object v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDyTan:[F

    aget v7, v11, v7

    mul-float/2addr v7, v9

    div-float/2addr v7, v12

    add-float v15, v10, v7

    .line 447
    aget v7, v1, v8

    iget-object v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDxTan:[F

    aget v10, v10, v8

    mul-float/2addr v10, v9

    div-float/2addr v10, v12

    sub-float v16, v7, v10

    .line 448
    aget v7, v2, v8

    iget-object v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mDyTan:[F

    aget v10, v10, v8

    mul-float/2addr v10, v9

    div-float/2addr v10, v12

    sub-float v17, v7, v10

    .line 450
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    aget v18, v1, v8

    aget v19, v2, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->cubicTo(FFFFFF)V

    .line 441
    move v7, v6

    goto :goto_9d

    .line 453
    :cond_dc
    if-eqz v3, :cond_e3

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->closePath()V

    .line 454
    :cond_e3
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object v0

    .line 409
    :cond_e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x/y length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_ef
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x/y null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
