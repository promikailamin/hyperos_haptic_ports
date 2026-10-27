.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field public static blacklist sTempInVec:[F

.field public static blacklist sTempOutVec:[F

.field public static final blacklist sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

.field public static final blacklist sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;


# instance fields
.field blacklist mDim0:I

.field blacklist mDim1:I

.field blacklist mMatrix:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    .line 32
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    .line 29
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setIdentity()V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    .line 29
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setDimensions(II)V

    .line 49
    return-void
.end method

.method public static blacklist copy(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V
    .registers 5

    .line 70
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setDimensions(II)V

    .line 71
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 72
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 74
    :cond_18
    return-void
.end method

.method private blacklist getIndex(II)I
    .registers 6

    .line 124
    if-ltz p1, :cond_11

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    if-ge p1, v0, :cond_11

    if-ltz p2, :cond_11

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    if-ge p2, v0, :cond_11

    .line 136
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1

    .line 125
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Matrix index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") out of bounds for ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist multiply(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V
    .registers 11

    .line 104
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setDimensions(II)V

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget v2, p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    if-ge v1, v2, :cond_3c

    .line 106
    move v2, v0

    :goto_e
    iget v3, p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    if-ge v2, v3, :cond_39

    .line 107
    nop

    .line 108
    const/4 v3, 0x0

    move v4, v0

    :goto_15
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    if-ge v4, v5, :cond_2e

    .line 109
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    aget v5, v5, v6

    iget-object v6, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v2

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 111
    :cond_2e
    iget-object v4, p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    iget v5, p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aput v3, v4, v5

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 105
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 114
    :cond_3c
    return-void
.end method

.method private static blacklist six(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_12

    .line 241
    const-string v0, "%6s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_12
    return-object p0
.end method


# virtual methods
.method public blacklist copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V
    .registers 5

    .line 82
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setDimensions(II)V

    .line 83
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 84
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 86
    :cond_18
    return-void
.end method

.method public blacklist copyFrom([F)V
    .registers 6

    .line 403
    array-length v0, p1

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    .line 404
    nop

    :goto_7
    array-length v0, p1

    if-ge v2, v0, :cond_7a

    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v1, p1, v2

    aput v1, v0, v2

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 407
    :cond_13
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7a

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v3, p1, v2

    aput v3, v0, v2

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/4 v2, 0x1

    aget v3, p1, v2

    aput v3, v0, v2

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v2, p1, v3

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v2, p1, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 413
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v2, p1, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v2, p1, v3

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v0, v1

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/16 v1, 0xa

    aget p1, p1, v3

    aput p1, v0, v1

    .line 417
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/16 v0, 0xb

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 419
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/16 v0, 0xc

    aput v1, p1, v0

    .line 420
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/16 v0, 0xd

    aput v1, p1, v0

    .line 421
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/16 v0, 0xe

    aput v1, p1, v0

    .line 422
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    .line 424
    :cond_7a
    return-void
.end method

.method public blacklist evalPerspective([F[F)V
    .registers 9

    .line 561
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_24

    .line 562
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempInVec:[F

    if-nez v0, :cond_1e

    .line 563
    new-array v0, v3, [F

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempInVec:[F

    .line 564
    new-array v0, v3, [F

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempOutVec:[F

    .line 565
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempInVec:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v1

    .line 566
    const-string/jumbo v0, "perspective transform "

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 568
    :cond_1e
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempInVec:[F

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    :cond_24
    move p1, v2

    :goto_25
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempOutVec:[F

    array-length v0, v0

    if-ge p1, v0, :cond_49

    .line 572
    nop

    .line 573
    const/4 v0, 0x0

    move v3, v2

    :goto_2d
    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempInVec:[F

    array-length v4, v4

    if-ge v3, v4, :cond_42

    .line 574
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    mul-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v3

    aget v4, v4, v5

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempInVec:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 573
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 576
    :cond_42
    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempOutVec:[F

    aput v0, v3, p1

    .line 571
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    .line 579
    :cond_49
    move p1, v2

    :goto_4a
    array-length v0, p2

    if-ge p1, v0, :cond_5b

    .line 580
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempOutVec:[F

    aget v3, v0, p1

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempOutVec:[F

    aget v4, v4, v1

    div-float/2addr v3, v4

    aput v3, v0, p1

    .line 579
    add-int/lit8 p1, p1, 0x1

    goto :goto_4a

    .line 583
    :cond_5b
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTempOutVec:[F

    array-length v0, p2

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    return-void
.end method

.method public blacklist get(II)F
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->getIndex(II)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public blacklist multiply([F[F)V
    .registers 9

    .line 544
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_27

    .line 545
    nop

    .line 546
    const/4 v2, 0x0

    move v3, v0

    :goto_8
    array-length v4, p1

    if-ge v3, v4, :cond_19

    .line 547
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    aget v4, v4, v5

    aget v5, p1, v3

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 549
    :cond_19
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    add-float/2addr v2, v3

    aput v2, p2, v1

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 551
    :cond_27
    return-void
.end method

.method public blacklist projection(FFFF)V
    .registers 9

    .line 363
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    .line 366
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 367
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float p1, v2, p1

    .line 369
    sub-float v3, p3, p4

    div-float/2addr v2, v3

    .line 372
    const/4 v3, 0x0

    div-float p2, p1, p2

    aput p2, v0, v3

    .line 373
    const/4 p2, 0x1

    const/4 v3, 0x0

    aput v3, v0, p2

    .line 374
    const/4 p2, 0x2

    aput v3, v0, p2

    .line 375
    const/4 p2, 0x3

    aput v3, v0, p2

    .line 377
    const/4 p2, 0x4

    aput v3, v0, p2

    .line 378
    const/4 p2, 0x5

    aput p1, v0, p2

    .line 379
    const/4 p1, 0x6

    aput v3, v0, p1

    .line 380
    const/4 p1, 0x7

    aput v3, v0, p1

    .line 382
    const/16 p1, 0x8

    aput v3, v0, p1

    .line 383
    const/16 p1, 0x9

    aput v3, v0, p1

    .line 384
    add-float p1, p4, p3

    mul-float/2addr p1, v2

    const/16 p2, 0xa

    aput p1, v0, p2

    .line 385
    const/16 p1, 0xb

    const/high16 p2, -0x40800000    # -1.0f

    aput p2, v0, p1

    .line 387
    const/16 p1, 0xc

    aput v3, v0, p1

    .line 388
    const/16 p1, 0xd

    aput v3, v0, p1

    .line 389
    mul-float/2addr p4, v1

    mul-float/2addr p4, p3

    mul-float/2addr p4, v2

    const/16 p1, 0xe

    aput p4, v0, p1

    .line 390
    const/16 p1, 0xf

    aput v3, v0, p1

    .line 392
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    sget-object p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->multiply(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 394
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 395
    return-void
.end method

.method public blacklist putValues([F)V
    .registers 4

    .line 349
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 350
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    aget v1, v1, v0

    aput v1, p1, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 352
    :cond_d
    return-void
.end method

.method public blacklist rotateAroundAxis(FFFF)V
    .registers 23

    .line 439
    move-object/from16 v0, p0

    move/from16 v1, p4

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    .line 440
    mul-float v3, p1, p1

    mul-float v4, p2, p2

    add-float/2addr v3, v4

    mul-float v4, p3, p3

    add-float/2addr v3, v4

    .line 441
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_2c

    .line 446
    const-wide/16 v3, 0x0

    cmpl-double v0, v1, v3

    if-eqz v0, :cond_2b

    .line 447
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Rotation axis vector is zero. No rotation applied for non-zero angle."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    :cond_2b
    return-void

    .line 455
    :cond_2c
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 456
    div-float v5, p1, v3

    .line 457
    div-float v6, p2, v3

    .line 458
    div-float v3, p3, v3

    .line 460
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 461
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 462
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v8, v2, v7

    .line 466
    mul-float v9, v5, v5

    mul-float/2addr v9, v8

    add-float/2addr v9, v7

    .line 467
    mul-float v10, v5, v6

    mul-float/2addr v10, v8

    mul-float v11, v3, v1

    sub-float v12, v10, v11

    .line 468
    mul-float v13, v5, v3

    mul-float/2addr v13, v8

    mul-float v14, v6, v1

    add-float v15, v13, v14

    .line 471
    add-float/2addr v10, v11

    .line 472
    mul-float v11, v6, v6

    mul-float/2addr v11, v8

    add-float/2addr v11, v7

    .line 473
    mul-float/2addr v6, v3

    mul-float/2addr v6, v8

    mul-float/2addr v5, v1

    sub-float v1, v6, v5

    .line 476
    sub-float/2addr v13, v14

    .line 477
    add-float/2addr v6, v5

    .line 478
    mul-float/2addr v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v7, v3

    .line 483
    sget-object v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    .line 485
    const/4 v8, 0x0

    :goto_6c
    const/4 v14, 0x4

    if-ge v8, v14, :cond_d0

    .line 486
    const/4 v2, 0x0

    :goto_70
    if-ge v2, v14, :cond_ca

    .line 487
    nop

    .line 488
    move/from16 v16, v4

    const/4 v4, 0x0

    :goto_76
    if-ge v4, v14, :cond_c0

    .line 491
    const/4 v14, 0x2

    const/4 v5, 0x1

    if-nez v8, :cond_8a

    .line 492
    if-nez v4, :cond_80

    .line 493
    move v5, v9

    goto :goto_b1

    .line 494
    :cond_80
    if-ne v4, v5, :cond_84

    .line 495
    move v5, v12

    goto :goto_b1

    .line 496
    :cond_84
    if-ne v4, v14, :cond_88

    .line 497
    move v5, v15

    goto :goto_b1

    .line 499
    :cond_88
    const/4 v5, 0x0

    goto :goto_b1

    .line 501
    :cond_8a
    if-ne v8, v5, :cond_9a

    .line 502
    if-nez v4, :cond_90

    .line 503
    move v5, v10

    goto :goto_b1

    .line 504
    :cond_90
    if-ne v4, v5, :cond_94

    .line 505
    move v5, v11

    goto :goto_b1

    .line 506
    :cond_94
    if-ne v4, v14, :cond_98

    .line 507
    move v5, v1

    goto :goto_b1

    .line 509
    :cond_98
    const/4 v5, 0x0

    goto :goto_b1

    .line 511
    :cond_9a
    if-ne v8, v14, :cond_aa

    .line 512
    if-nez v4, :cond_a0

    .line 513
    move v5, v13

    goto :goto_b1

    .line 514
    :cond_a0
    if-ne v4, v5, :cond_a4

    .line 515
    move v5, v6

    goto :goto_b1

    .line 516
    :cond_a4
    if-ne v4, v14, :cond_a8

    .line 517
    move v5, v7

    goto :goto_b1

    .line 519
    :cond_a8
    const/4 v5, 0x0

    goto :goto_b1

    .line 522
    :cond_aa
    const/4 v5, 0x3

    if-ne v4, v5, :cond_b0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_b1

    :cond_b0
    const/4 v5, 0x0

    .line 525
    :goto_b1
    iget-object v14, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    mul-int/lit8 v17, v4, 0x4

    add-int v17, v17, v2

    aget v14, v14, v17

    .line 526
    mul-float/2addr v5, v14

    add-float v16, v16, v5

    .line 488
    add-int/lit8 v4, v4, 0x1

    const/4 v14, 0x4

    goto :goto_76

    .line 528
    :cond_c0
    mul-int/lit8 v4, v8, 0x4

    add-int/2addr v4, v2

    aput v16, v3, v4

    .line 486
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x4

    goto :goto_70

    .line 485
    :cond_ca
    add-int/lit8 v8, v8, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    goto :goto_6c

    .line 531
    :cond_d0
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->multiply(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 532
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 534
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    return-void
.end method

.method public blacklist rotateX(F)V
    .registers 7

    .line 167
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 169
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 171
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setIdentity()V

    .line 172
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 173
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    neg-float v3, v0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 174
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v1, v4, v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 175
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v0, v4, v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 176
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->multiply(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 177
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 178
    return-void
.end method

.method public blacklist rotateY(F)V
    .registers 6

    .line 186
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 188
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 189
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 190
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setIdentity()V

    .line 191
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 192
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 193
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    neg-float v0, v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 194
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v0, v3, v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 195
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->multiply(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 196
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 197
    return-void
.end method

.method public blacklist rotateZ(F)V
    .registers 7

    .line 205
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 206
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 208
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setIdentity()V

    .line 209
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 210
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    neg-float v3, v0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 211
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v1, v4, v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 212
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v0, v4, v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 213
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->multiply(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 214
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 215
    return-void
.end method

.method public blacklist rotateZ(FFF)V
    .registers 21

    .line 289
    move-object/from16 v0, p0

    move/from16 v1, p3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 290
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 291
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 292
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v2, v3

    .line 295
    mul-float v5, p1, v4

    mul-float v6, p2, v1

    add-float/2addr v5, v6

    .line 296
    mul-float v4, v4, p2

    mul-float v6, p1, v1

    sub-float/2addr v4, v6

    .line 298
    const/16 v6, 0x10

    new-array v7, v6, [F

    .line 300
    const/4 v8, 0x0

    move v9, v8

    :goto_29
    const/4 v10, 0x4

    if-ge v9, v10, :cond_85

    .line 301
    move v11, v8

    :goto_2d
    if-ge v11, v10, :cond_80

    .line 302
    nop

    .line 303
    const/4 v12, 0x0

    move v13, v8

    move v14, v12

    :goto_33
    if-ge v13, v10, :cond_76

    .line 306
    const/4 v15, 0x3

    const/4 v2, 0x1

    if-nez v9, :cond_46

    .line 307
    if-nez v13, :cond_3c

    .line 308
    goto :goto_4f

    .line 309
    :cond_3c
    if-ne v13, v2, :cond_40

    .line 310
    neg-float v2, v1

    goto :goto_67

    .line 311
    :cond_40
    if-ne v13, v15, :cond_44

    .line 312
    move v2, v5

    goto :goto_67

    .line 314
    :cond_44
    move v2, v12

    goto :goto_67

    .line 316
    :cond_46
    if-ne v9, v2, :cond_57

    .line 317
    if-nez v13, :cond_4c

    .line 318
    move v2, v1

    goto :goto_67

    .line 319
    :cond_4c
    if-ne v13, v2, :cond_51

    .line 320
    nop

    .line 333
    :goto_4f
    move v2, v3

    goto :goto_67

    .line 321
    :cond_51
    if-ne v13, v15, :cond_55

    .line 322
    move v2, v4

    goto :goto_67

    .line 324
    :cond_55
    move v2, v12

    goto :goto_67

    .line 326
    :cond_57
    const/4 v2, 0x2

    if-ne v9, v2, :cond_61

    .line 327
    if-ne v13, v2, :cond_5f

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_67

    :cond_5f
    move v2, v12

    goto :goto_67

    .line 329
    :cond_61
    if-ne v13, v15, :cond_66

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_67

    :cond_66
    move v2, v12

    .line 333
    :goto_67
    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    mul-int/lit8 v16, v13, 0x4

    add-int v16, v16, v11

    aget v15, v15, v16

    .line 335
    mul-float/2addr v2, v15

    add-float/2addr v14, v2

    .line 303
    add-int/lit8 v13, v13, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_33

    .line 337
    :cond_76
    mul-int/lit8 v2, v9, 0x4

    add-int/2addr v2, v11

    aput v14, v7, v2

    .line 301
    add-int/lit8 v11, v11, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2d

    .line 300
    :cond_80
    add-int/lit8 v9, v9, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_29

    .line 340
    :cond_85
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    invoke-static {v7, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    return-void
.end method

.method public blacklist set(IIF)V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->getIndex(II)I

    move-result p1

    aput p3, v0, p1

    .line 159
    return-void
.end method

.method public blacklist setDimensions(II)V
    .registers 3

    .line 58
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    .line 59
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    .line 60
    mul-int/2addr p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    .line 61
    return-void
.end method

.method public blacklist setIdentity()V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 91
    const/4 v0, 0x0

    :goto_7
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 92
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 94
    :cond_1e
    return-void
.end method

.method public blacklist setScale(FFF)V
    .registers 7

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->getIndex(II)I

    move-result v1

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 277
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->getIndex(II)I

    move-result v0

    aget v1, p1, v0

    mul-float/2addr v1, p2

    aput v1, p1, v0

    .line 278
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    const/4 p2, 0x2

    invoke-direct {p0, p2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->getIndex(II)I

    move-result p2

    aget v0, p1, p2

    mul-float/2addr v0, p3

    aput v0, p1, p2

    .line 279
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 256
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim0:I

    if-ge v3, v4, :cond_3d

    .line 257
    move v4, v2

    :goto_13
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    if-ge v4, v5, :cond_35

    .line 258
    if-eqz v4, :cond_1e

    .line 259
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1e
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mMatrix:[F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->mDim1:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v4

    aget v5, v5, v6

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->six(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 263
    :cond_35
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 265
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist translate(FFF)V
    .registers 7

    .line 225
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->setIdentity()V

    .line 226
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 227
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 228
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->set(IIF)V

    .line 229
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix1:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    sget-object p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->multiply(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 230
    sget-object p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->sTmpMatrix2:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;)V

    .line 231
    return-void
.end method
