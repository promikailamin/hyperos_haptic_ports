.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;
.super Ljava/lang/Object;
.source "PathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Monotonic"
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

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mH:[F

    .line 282
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxSeg:[F

    .line 283
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDySeg:[F

    .line 284
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxTan:[F

    .line 285
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDyTan:[F

    .line 286
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    const/16 v1, 0xe9

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;-><init>()V

    return-void
.end method

.method private blacklist monotoneTangents([F[F[FZ)V
    .registers 19

    .line 353
    move-object/from16 v0, p2

    array-length v1, v0

    .line 354
    if-eqz p4, :cond_7

    move v2, v1

    goto :goto_9

    :cond_7
    add-int/lit8 v2, v1, 0x1

    .line 357
    :goto_9
    const/4 v3, 0x0

    move v4, v3

    :goto_b
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-ge v4, v2, :cond_63

    .line 358
    add-int/lit8 v8, v4, -0x1

    add-int/2addr v8, v1

    rem-int/2addr v8, v1

    .line 359
    rem-int v9, v4, v1

    .line 361
    if-nez p4, :cond_1f

    if-nez v4, :cond_1f

    .line 362
    aget v5, v0, v3

    aput v5, p1, v4

    goto :goto_60

    .line 363
    :cond_1f
    if-nez p4, :cond_2c

    add-int/lit8 v10, v2, -0x1

    if-ne v4, v10, :cond_2c

    .line 364
    add-int/lit8 v5, v1, -0x1

    aget v5, v0, v5

    aput v5, p1, v4

    goto :goto_60

    .line 366
    :cond_2c
    aget v10, v0, v8

    .line 367
    aget v11, v0, v9

    .line 368
    float-to-double v12, v10

    cmpl-double v12, v12, v6

    if-eqz v12, :cond_5e

    float-to-double v12, v11

    cmpl-double v6, v12, v6

    if-eqz v6, :cond_5e

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v6

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_47

    goto :goto_5e

    .line 371
    :cond_47
    aget v5, p3, v9

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    aget v7, p3, v8

    add-float/2addr v5, v7

    .line 372
    aget v7, p3, v9

    aget v8, p3, v8

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    .line 373
    add-float v6, v5, v7

    div-float/2addr v5, v10

    div-float/2addr v7, v11

    add-float/2addr v5, v7

    div-float/2addr v6, v5

    aput v6, p1, v4

    goto :goto_60

    .line 369
    :cond_5e
    :goto_5e
    aput v5, p1, v4

    .line 357
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 379
    :cond_63
    nop

    :goto_64
    if-ge v3, v1, :cond_a5

    .line 380
    aget v4, v0, v3

    float-to-double v8, v4

    cmpl-double v4, v8, v6

    if-nez v4, :cond_75

    .line 381
    aput v5, p1, v3

    .line 382
    add-int/lit8 v4, v3, 0x1

    rem-int/2addr v4, v2

    aput v5, p1, v4

    goto :goto_a2

    .line 384
    :cond_75
    aget v4, p1, v3

    aget v8, v0, v3

    div-float/2addr v4, v8

    .line 385
    add-int/lit8 v8, v3, 0x1

    rem-int/2addr v8, v2

    aget v9, p1, v8

    aget v10, v0, v3

    div-float/2addr v9, v10

    .line 386
    mul-float v10, v4, v4

    mul-float v11, v9, v9

    add-float/2addr v10, v11

    .line 387
    float-to-double v10, v10

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_a2

    .line 388
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v11, v10

    .line 389
    mul-float/2addr v4, v11

    aget v10, v0, v3

    mul-float/2addr v4, v10

    aput v4, p1, v3

    .line 390
    mul-float/2addr v11, v9

    aget v4, v0, v3

    mul-float/2addr v11, v4

    aput v11, p1, v8

    .line 379
    :cond_a2
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 394
    :cond_a5
    return-void
.end method


# virtual methods
.method public blacklist asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;
    .registers 27

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-eqz v1, :cond_113

    if-eqz v2, :cond_113

    .line 292
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_10a

    .line 295
    array-length v4, v1

    .line 297
    if-eqz v3, :cond_15

    move v5, v4

    goto :goto_17

    :cond_15
    add-int/lit8 v5, v4, -0x1

    .line 300
    :goto_17
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mH:[F

    array-length v6, v6

    if-eq v5, v6, :cond_3f

    .line 301
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    mul-int/lit8 v7, v5, 0xa

    invoke-direct {v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;-><init>(I)V

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    .line 302
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mH:[F

    .line 303
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxSeg:[F

    .line 304
    new-array v6, v5, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDySeg:[F

    .line 305
    if-eqz v3, :cond_35

    move v6, v5

    goto :goto_37

    :cond_35
    add-int/lit8 v6, v5, 0x1

    .line 306
    :goto_37
    new-array v7, v6, [F

    iput-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxTan:[F

    .line 307
    new-array v6, v6, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDyTan:[F

    .line 309
    :cond_3f
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->reset()V

    .line 310
    if-nez v4, :cond_49

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object v0

    .line 311
    :cond_49
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    const/4 v7, 0x0

    aget v8, v1, v7

    aget v9, v2, v7

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->moveTo(FF)V

    .line 312
    const/4 v6, 0x1

    if-ne v4, v6, :cond_59

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object v0

    .line 314
    :cond_59
    move v6, v7

    :goto_5a
    if-ge v6, v5, :cond_89

    .line 315
    add-int/lit8 v8, v6, 0x1

    rem-int v9, v8, v4

    .line 316
    aget v10, v1, v9

    aget v11, v1, v6

    sub-float/2addr v10, v11

    .line 317
    aget v9, v2, v9

    aget v11, v2, v6

    sub-float/2addr v9, v11

    .line 318
    float-to-double v11, v10

    float-to-double v13, v9

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v11, v11

    .line 319
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-nez v12, :cond_79

    const v11, 0x2b8cbccc    # 1.0E-12f

    .line 320
    :cond_79
    iget-object v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mH:[F

    aput v11, v12, v6

    .line 321
    iget-object v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxSeg:[F

    div-float/2addr v10, v11

    aput v10, v12, v6

    .line 322
    iget-object v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDySeg:[F

    div-float/2addr v9, v11

    aput v9, v10, v6

    .line 314
    move v6, v8

    goto :goto_5a

    .line 325
    :cond_89
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxTan:[F

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxSeg:[F

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mH:[F

    invoke-direct {v0, v6, v8, v9, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->monotoneTangents([F[F[FZ)V

    .line 326
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDyTan:[F

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDySeg:[F

    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mH:[F

    invoke-direct {v0, v6, v8, v9, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->monotoneTangents([F[F[FZ)V

    .line 329
    nop

    :goto_9c
    if-ge v7, v5, :cond_100

    .line 331
    add-int/lit8 v6, v7, 0x1

    rem-int v8, v6, v4

    .line 332
    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mH:[F

    aget v9, v9, v7

    float-to-double v9, v9

    .line 334
    aget v11, v1, v7

    float-to-double v11, v11

    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxTan:[F

    aget v13, v13, v7

    float-to-double v13, v13

    mul-double/2addr v13, v9

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    div-double/2addr v13, v15

    add-double/2addr v11, v13

    .line 335
    aget v13, v2, v7

    float-to-double v13, v13

    move-wide/from16 v17, v15

    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDyTan:[F

    aget v7, v15, v7

    float-to-double v1, v7

    mul-double/2addr v1, v9

    div-double v1, v1, v17

    add-double/2addr v13, v1

    .line 336
    aget v1, p1, v8

    float-to-double v1, v1

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDxTan:[F

    aget v7, v7, v8

    move-wide v15, v1

    float-to-double v1, v7

    mul-double/2addr v1, v9

    div-double v1, v1, v17

    sub-double v1, v15, v1

    .line 337
    aget v7, p2, v8

    move v15, v4

    float-to-double v3, v7

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mDyTan:[F

    aget v7, v7, v8

    move-wide/from16 v19, v3

    float-to-double v3, v7

    mul-double/2addr v3, v9

    div-double v3, v3, v17

    sub-double v3, v19, v3

    .line 339
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    double-to-float v9, v11

    double-to-float v10, v13

    double-to-float v1, v1

    double-to-float v2, v3

    aget v21, p1, v8

    aget v22, p2, v8

    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->cubicTo(FFFFFF)V

    .line 329
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v7, v6

    move v4, v15

    goto :goto_9c

    .line 342
    :cond_100
    if-eqz p3, :cond_107

    .line 343
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->closePath()V

    .line 345
    :cond_107
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->mPath:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    return-object v0

    .line 293
    :cond_10a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x/y length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x/y null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
