.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
.super Ljava/lang/Object;
.source "MonotonicCurveFit.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private blacklist mExtrapolate:Z

.field final blacklist mSlopeTemp:[D

.field private final blacklist mT:[D

.field private final blacklist mTangent:[[D

.field private final blacklist mY:[[D


# direct methods
.method public constructor blacklist <init>([D[[D)V
    .registers 24

    .line 37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mExtrapolate:Z

    .line 38
    array-length v4, v1

    .line 39
    const/4 v5, 0x0

    aget-object v6, v2, v5

    array-length v6, v6

    .line 40
    new-array v7, v6, [D

    iput-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    .line 41
    add-int/lit8 v7, v4, -0x1

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v6, v9, v3

    aput v7, v9, v5

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 42
    new-array v10, v8, [I

    aput v6, v10, v3

    aput v4, v10, v5

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 43
    move v10, v5

    :goto_35
    if-ge v10, v6, :cond_7f

    .line 44
    move v11, v5

    :goto_38
    if-ge v11, v7, :cond_72

    .line 45
    add-int/lit8 v12, v11, 0x1

    aget-wide v13, v1, v12

    aget-wide v15, v1, v11

    sub-double/2addr v13, v15

    .line 46
    aget-object v15, v9, v11

    aget-object v16, v2, v12

    aget-wide v16, v16, v10

    aget-object v18, v2, v11

    aget-wide v18, v18, v10

    sub-double v16, v16, v18

    div-double v16, v16, v13

    aput-wide v16, v15, v10

    .line 47
    if-nez v11, :cond_5c

    .line 48
    aget-object v13, v3, v11

    aget-object v11, v9, v11

    aget-wide v14, v11, v10

    aput-wide v14, v13, v10

    goto :goto_70

    .line 50
    :cond_5c
    aget-object v13, v3, v11

    add-int/lit8 v14, v11, -0x1

    aget-object v14, v9, v14

    aget-wide v14, v14, v10

    aget-object v11, v9, v11

    aget-wide v16, v11, v10

    add-double v14, v14, v16

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    aput-wide v14, v13, v10

    .line 44
    :goto_70
    move v11, v12

    goto :goto_38

    .line 53
    :cond_72
    aget-object v11, v3, v7

    add-int/lit8 v12, v4, -0x2

    aget-object v12, v9, v12

    aget-wide v12, v12, v10

    aput-wide v12, v11, v10

    .line 43
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    .line 56
    :cond_7f
    move v4, v5

    :goto_80
    if-ge v4, v7, :cond_da

    .line 57
    move v8, v5

    :goto_83
    if-ge v8, v6, :cond_d7

    .line 58
    aget-object v10, v9, v4

    aget-wide v10, v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_9a

    .line 59
    aget-object v10, v3, v4

    aput-wide v12, v10, v8

    .line 60
    add-int/lit8 v10, v4, 0x1

    aget-object v10, v3, v10

    aput-wide v12, v10, v8

    goto :goto_d4

    .line 62
    :cond_9a
    aget-object v10, v3, v4

    aget-wide v10, v10, v8

    aget-object v12, v9, v4

    aget-wide v12, v12, v8

    div-double/2addr v10, v12

    .line 63
    add-int/lit8 v12, v4, 0x1

    aget-object v13, v3, v12

    aget-wide v13, v13, v8

    aget-object v15, v9, v4

    aget-wide v15, v15, v8

    div-double/2addr v13, v15

    .line 64
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v15

    .line 65
    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    cmpl-double v17, v15, v17

    if-lez v17, :cond_d4

    .line 66
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    div-double v17, v17, v15

    .line 67
    aget-object v15, v3, v4

    mul-double v10, v10, v17

    aget-object v16, v9, v4

    aget-wide v19, v16, v8

    mul-double v10, v10, v19

    aput-wide v10, v15, v8

    .line 68
    aget-object v10, v3, v12

    mul-double v17, v17, v13

    aget-object v11, v9, v4

    aget-wide v11, v11, v8

    mul-double v17, v17, v11

    aput-wide v17, v10, v8

    .line 57
    :cond_d4
    :goto_d4
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 56
    :cond_d7
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 73
    :cond_da
    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    .line 74
    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    .line 75
    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    .line 76
    return-void
.end method

.method public static blacklist buildWave(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
    .registers 9

    .line 349
    nop

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    .line 351
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 352
    const/16 v2, 0x2c

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 353
    const/4 v4, 0x0

    .line 354
    :goto_18
    const/4 v5, -0x1

    if-eq v3, v5, :cond_33

    .line 355
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 356
    add-int/lit8 v5, v4, 0x1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v4

    .line 357
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 358
    move v4, v5

    goto :goto_18

    .line 359
    :cond_33
    const/16 v2, 0x29

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 360
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 361
    add-int/lit8 v1, v4, 0x1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 363
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->buildWave([D)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildWave([D)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
    .registers 19

    .line 368
    move-object/from16 v0, p0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    .line 369
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 370
    int-to-double v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    .line 371
    new-array v2, v2, [I

    aput v4, v2, v4

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 372
    new-array v1, v1, [D

    .line 373
    move v9, v4

    :goto_21
    array-length v10, v0

    if-ge v9, v10, :cond_50

    .line 374
    aget-wide v10, v0, v9

    .line 375
    add-int v12, v9, v3

    aget-object v13, v2, v12

    aput-wide v10, v13, v4

    .line 376
    int-to-double v13, v9

    mul-double/2addr v13, v5

    aput-wide v13, v1, v12

    .line 377
    if-lez v9, :cond_4d

    .line 378
    mul-int/lit8 v12, v3, 0x2

    add-int/2addr v12, v9

    aget-object v15, v2, v12

    add-double v16, v10, v7

    aput-wide v16, v15, v4

    .line 379
    add-double v15, v13, v7

    aput-wide v15, v1, v12

    .line 381
    add-int/lit8 v12, v9, -0x1

    aget-object v15, v2, v12

    sub-double/2addr v10, v7

    sub-double/2addr v10, v5

    aput-wide v10, v15, v4

    .line 382
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    add-double/2addr v13, v10

    sub-double/2addr v13, v5

    aput-wide v13, v1, v12

    .line 373
    :cond_4d
    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    .line 386
    :cond_50
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;-><init>([D[[D)V

    return-object v0
.end method

.method private static blacklist diff(DDDDDD)D
    .registers 22

    .line 328
    mul-double v0, p2, p2

    .line 329
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    mul-double/2addr v2, v0

    mul-double v2, v2, p6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double v6, p2, v4

    mul-double v8, v6, p6

    add-double/2addr v2, v8

    mul-double/2addr v4, v0

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    mul-double/2addr v6, p4

    sub-double/2addr v2, v6

    const-wide/high16 p4, 0x4008000000000000L    # 3.0

    mul-double/2addr p4, p0

    mul-double v4, p4, p10

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    mul-double p4, p4, p8

    mul-double/2addr p4, v0

    add-double/2addr v2, p4

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    mul-double/2addr p4, p0

    mul-double p4, p4, p10

    mul-double/2addr p4, p2

    sub-double/2addr v2, p4

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    mul-double/2addr p4, p0

    mul-double p4, p4, p8

    mul-double/2addr p4, p2

    sub-double/2addr v2, p4

    mul-double p0, p0, p8

    add-double/2addr v2, p0

    return-wide v2
.end method

.method private static blacklist interpolate(DDDDDD)D
    .registers 24

    .line 312
    mul-double v0, p2, p2

    .line 313
    mul-double v2, v0, p2

    .line 314
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v4, v2

    mul-double v4, v4, p6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v0

    mul-double v8, v6, p6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, v2, v8

    mul-double v10, v10, p4

    add-double/2addr v4, v10

    mul-double v6, v6, p4

    sub-double/2addr v4, v6

    add-double v4, v4, p4

    mul-double v6, p0, p10

    mul-double v10, v6, v2

    add-double/2addr v4, v10

    mul-double v10, p0, p8

    mul-double/2addr v2, v10

    add-double/2addr v4, v2

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    mul-double/2addr p0, v8

    mul-double p0, p0, p8

    mul-double/2addr p0, v0

    sub-double/2addr v4, p0

    mul-double/2addr v10, p2

    add-double/2addr v4, v10

    return-wide v4
.end method


# virtual methods
.method public blacklist getPos(DI)D
    .registers 24

    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v2, v2

    .line 207
    iget-boolean v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mExtrapolate:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4c

    .line 208
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v3, v4

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_2b

    .line 209
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v4

    aget-wide v2, v2, v1

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v5, v4

    sub-double v5, p1, v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v7, v4

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v0

    mul-double/2addr v5, v0

    add-double/2addr v2, v5

    return-wide v2

    .line 211
    :cond_2b
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v2, -0x1

    aget-wide v6, v3, v5

    cmpl-double v3, p1, v6

    if-ltz v3, :cond_6c

    .line 212
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v5

    aget-wide v2, v2, v1

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v4, v5

    sub-double v6, p1, v6

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v2, v6

    return-wide v2

    .line 215
    :cond_4c
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v3, v4

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_5b

    .line 216
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v0, v0, v4

    aget-wide v0, v0, v1

    return-wide v0

    .line 218
    :cond_5b
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v2, -0x1

    aget-wide v6, v3, v5

    cmpl-double v3, p1, v6

    if-ltz v3, :cond_6c

    .line 219
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v0, v0, v5

    aget-wide v0, v0, v1

    return-wide v0

    .line 223
    :cond_6c
    nop

    :goto_6d
    add-int/lit8 v3, v2, -0x1

    if-ge v4, v3, :cond_bb

    .line 224
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v3, v4

    cmpl-double v3, p1, v5

    if-nez v3, :cond_80

    .line 225
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v0, v0, v4

    aget-wide v0, v0, v1

    return-wide v0

    .line 227
    :cond_80
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v4, 0x1

    aget-wide v6, v3, v5

    cmpg-double v3, p1, v6

    if-gez v3, :cond_b9

    .line 228
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v2, v2, v5

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v6, v4

    sub-double v8, v2, v6

    .line 229
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v2, v2, v4

    sub-double v2, p1, v2

    div-double v10, v2, v8

    .line 230
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v4

    aget-wide v12, v2, v1

    .line 231
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v5

    aget-wide v14, v2, v1

    .line 232
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v2, v2, v4

    aget-wide v16, v2, v1

    .line 233
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v0, v0, v5

    aget-wide v18, v0, v1

    .line 234
    invoke-static/range {v8 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v0

    return-wide v0

    .line 223
    :cond_b9
    move v4, v5

    goto :goto_6d

    .line 237
    :cond_bb
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getPos(D[D)V
    .registers 27

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v1, v1

    .line 86
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 87
    iget-boolean v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v4, :cond_69

    .line 88
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_3b

    .line 89
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v1, v3

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(D[D)V

    .line 90
    move v1, v3

    :goto_21
    if-ge v1, v2, :cond_3a

    .line 91
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v1

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double v6, p1, v6

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 93
    :cond_3a
    return-void

    .line 95
    :cond_3b
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, v4, v5

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_99

    .line 96
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v1, v5

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(D[D)V

    .line 97
    nop

    :goto_4f
    if-ge v3, v2, :cond_68

    .line 98
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v5

    aget-wide v6, v1, v3

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v8, v1, v5

    sub-double v8, p1, v8

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v10, v1, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, p3, v3

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 100
    :cond_68
    return-void

    .line 103
    :cond_69
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_80

    .line 104
    move v1, v3

    :goto_72
    if-ge v1, v2, :cond_7f

    .line 105
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v1

    aput-wide v4, p3, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 107
    :cond_7f
    return-void

    .line 109
    :cond_80
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, v4, v5

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_99

    .line 110
    nop

    :goto_8b
    if-ge v3, v2, :cond_98

    .line 111
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v5

    aget-wide v6, v1, v3

    aput-wide v6, p3, v3

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 113
    :cond_98
    return-void

    .line 117
    :cond_99
    move v4, v3

    :goto_9a
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_f7

    .line 118
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v5, v4

    cmpl-double v5, p1, v5

    if-nez v5, :cond_b4

    .line 119
    move v5, v3

    :goto_a7
    if-ge v5, v2, :cond_b4

    .line 120
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v5

    aput-wide v6, p3, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_a7

    .line 123
    :cond_b4
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v4, 0x1

    aget-wide v7, v5, v6

    cmpg-double v5, p1, v7

    if-gez v5, :cond_f5

    .line 124
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v1, v6

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v9, v1, v4

    sub-double v11, v7, v9

    .line 125
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v1, v4

    sub-double v7, p1, v7

    div-double v13, v7, v11

    .line 126
    nop

    :goto_d1
    if-ge v3, v2, :cond_f4

    .line 127
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v4

    aget-wide v15, v1, v3

    .line 128
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v6

    aget-wide v17, v1, v3

    .line 129
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v1, v4

    aget-wide v19, v1, v3

    .line 130
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v1, v6

    aget-wide v21, v1, v3

    .line 131
    invoke-static/range {v11 .. v22}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v7

    aput-wide v7, p3, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_d1

    .line 133
    :cond_f4
    return-void

    .line 117
    :cond_f5
    move v4, v6

    goto :goto_9a

    .line 136
    :cond_f7
    return-void
.end method

.method public blacklist getPos(D[F)V
    .registers 27

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v1, v1

    .line 146
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 147
    iget-boolean v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v4, :cond_6b

    .line 148
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_3c

    .line 149
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v1, v3

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(D[D)V

    .line 150
    move v1, v3

    :goto_21
    if-ge v1, v2, :cond_3b

    .line 151
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v1

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v6, v3

    sub-double v6, p1, v6

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p3, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 153
    :cond_3b
    return-void

    .line 155
    :cond_3c
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, v4, v5

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_9d

    .line 156
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v6, v1, v5

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(D[D)V

    .line 157
    nop

    :goto_50
    if-ge v3, v2, :cond_6a

    .line 158
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v5

    aget-wide v6, v1, v3

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v8, v1, v5

    sub-double v8, p1, v8

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v10, v1, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v1, v6

    aput v1, p3, v3

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 160
    :cond_6a
    return-void

    .line 163
    :cond_6b
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_83

    .line 164
    move v1, v3

    :goto_74
    if-ge v1, v2, :cond_82

    .line 165
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v1

    double-to-float v4, v4

    aput v4, p3, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 167
    :cond_82
    return-void

    .line 169
    :cond_83
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, v4, v5

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_9d

    .line 170
    nop

    :goto_8e
    if-ge v3, v2, :cond_9c

    .line 171
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v5

    aget-wide v6, v1, v3

    double-to-float v1, v6

    aput v1, p3, v3

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 173
    :cond_9c
    return-void

    .line 177
    :cond_9d
    move v4, v3

    :goto_9e
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_fd

    .line 178
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v5, v5, v4

    cmpl-double v5, p1, v5

    if-nez v5, :cond_b9

    .line 179
    move v5, v3

    :goto_ab
    if-ge v5, v2, :cond_b9

    .line 180
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v5

    double-to-float v6, v6

    aput v6, p3, v5

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_ab

    .line 183
    :cond_b9
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v4, 0x1

    aget-wide v7, v5, v6

    cmpg-double v5, p1, v7

    if-gez v5, :cond_fb

    .line 184
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v1, v6

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v9, v1, v4

    sub-double v11, v7, v9

    .line 185
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v1, v4

    sub-double v7, p1, v7

    div-double v13, v7, v11

    .line 186
    nop

    :goto_d6
    if-ge v3, v2, :cond_fa

    .line 187
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v4

    aget-wide v15, v1, v3

    .line 188
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v6

    aget-wide v17, v1, v3

    .line 189
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v1, v4

    aget-wide v19, v1, v3

    .line 190
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v1, v6

    aget-wide v21, v1, v3

    .line 191
    invoke-static/range {v11 .. v22}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v7

    double-to-float v1, v7

    aput v1, p3, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 193
    :cond_fa
    return-void

    .line 177
    :cond_fb
    move v4, v6

    goto :goto_9e

    .line 196
    :cond_fd
    return-void
.end method

.method public blacklist getSlope(DI)D
    .registers 25

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v1, v1

    .line 281
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmpg-double v2, p1, v4

    if-gez v2, :cond_13

    .line 282
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v2, v3

    goto :goto_24

    .line 283
    :cond_13
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v5, v2, v4

    cmpl-double v2, p1, v5

    if-ltz v2, :cond_22

    .line 284
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v2, v4

    goto :goto_24

    .line 283
    :cond_22
    move-wide/from16 v4, p1

    .line 286
    :goto_24
    nop

    :goto_25
    add-int/lit8 v2, v1, -0x1

    if-ge v3, v2, :cond_64

    .line 287
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v3, 0x1

    aget-wide v7, v2, v6

    cmpg-double v2, v4, v7

    if-gtz v2, :cond_62

    .line 288
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v1, v1, v6

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v7, v7, v3

    sub-double v9, v1, v7

    .line 289
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v1, v1, v3

    sub-double/2addr v4, v1

    div-double v11, v4, v9

    .line 290
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v3

    aget-wide v13, v1, p3

    .line 291
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v6

    aget-wide v15, v1, p3

    .line 292
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v1, v3

    aget-wide v17, v1, p3

    .line 293
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v0, v0, v6

    aget-wide v19, v0, p3

    .line 294
    invoke-static/range {v9 .. v20}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v0

    div-double/2addr v0, v9

    return-wide v0

    .line 286
    :cond_62
    move v3, v6

    goto :goto_25

    .line 297
    :cond_64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getSlope(D[D)V
    .registers 29

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    array-length v1, v1

    .line 248
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 249
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_18

    .line 250
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v3

    goto :goto_29

    .line 251
    :cond_18
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, v4, v5

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_27

    .line 252
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v4, v4, v5

    goto :goto_29

    .line 251
    :cond_27
    move-wide/from16 v4, p1

    .line 255
    :goto_29
    move v6, v3

    :goto_2a
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_71

    .line 256
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    add-int/lit8 v8, v6, 0x1

    aget-wide v9, v7, v8

    cmpg-double v7, v4, v9

    if-gtz v7, :cond_6f

    .line 257
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v9, v1, v8

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v11, v1, v6

    sub-double v13, v9, v11

    .line 258
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    aget-wide v9, v1, v6

    sub-double/2addr v4, v9

    div-double v15, v4, v13

    .line 259
    nop

    :goto_4a
    if-ge v3, v2, :cond_6e

    .line 260
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v6

    aget-wide v17, v1, v3

    .line 261
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v8

    aget-wide v19, v1, v3

    .line 262
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v1, v6

    aget-wide v21, v1, v3

    .line 263
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mTangent:[[D

    aget-object v1, v1, v8

    aget-wide v23, v1, v3

    .line 264
    invoke-static/range {v13 .. v24}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v4

    div-double/2addr v4, v13

    aput-wide v4, p3, v3

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 266
    :cond_6e
    goto :goto_71

    .line 255
    :cond_6f
    move v6, v8

    goto :goto_2a

    .line 269
    :cond_71
    :goto_71
    return-void
.end method

.method public blacklist getTimePoints()[D
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->mT:[D

    return-object v0
.end method
