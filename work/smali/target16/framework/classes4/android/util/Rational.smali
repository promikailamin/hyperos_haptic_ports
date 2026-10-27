.class public final Landroid/util/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Rational;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist NEGATIVE_INFINITY:Landroid/util/Rational;

.field public static final whitelist NaN:Landroid/util/Rational;

.field public static final whitelist POSITIVE_INFINITY:Landroid/util/Rational;

.field public static final whitelist ZERO:Landroid/util/Rational;

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final greylist-max-r mDenominator:I

.field private final greylist-max-r mNumerator:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 45
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 53
    new-instance v0, Landroid/util/Rational;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    .line 61
    new-instance v0, Landroid/util/Rational;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    .line 69
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5

    .line 108
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 110
    if-gez p2, :cond_7

    .line 111
    neg-int p1, p1

    .line 112
    neg-int p2, p2

    .line 116
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_12

    if-lez p1, :cond_12

    .line 117
    iput v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 118
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_36

    .line 119
    :cond_12
    if-nez p2, :cond_1c

    if-gez p1, :cond_1c

    .line 120
    const/4 p1, -0x1

    iput p1, p0, Landroid/util/Rational;->mNumerator:I

    .line 121
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_36

    .line 122
    :cond_1c
    if-nez p2, :cond_25

    if-nez p1, :cond_25

    .line 123
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 124
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_36

    .line 125
    :cond_25
    if-nez p1, :cond_2c

    .line 126
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 127
    iput v0, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_36

    .line 129
    :cond_2c
    invoke-static {p1, p2}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    .line 131
    div-int/2addr p1, v0

    iput p1, p0, Landroid/util/Rational;->mNumerator:I

    .line 132
    div-int/2addr p2, v0

    iput p2, p0, Landroid/util/Rational;->mDenominator:I

    .line 134
    :goto_36
    return-void
.end method

.method private greylist-max-o equals(Landroid/util/Rational;)Z
    .registers 4

    .line 251
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p1, Landroid/util/Rational;->mNumerator:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    iget p1, p1, Landroid/util/Rational;->mDenominator:I

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public static greylist-max-o gcd(II)I
    .registers 3

    .line 321
    nop

    .line 322
    move v0, p1

    move p1, p0

    move p0, v0

    .line 324
    :goto_4
    if-eqz p0, :cond_d

    .line 325
    nop

    .line 327
    rem-int/2addr p1, p0

    .line 328
    nop

    .line 329
    move v0, p1

    move p1, p0

    move p0, v0

    goto :goto_4

    .line 331
    :cond_d
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private static greylist-max-o invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4

    .line 552
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Rational: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isNegInf()Z
    .registers 2

    .line 213
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o isPosInf()Z
    .registers 2

    .line 209
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static whitelist parseRational(Ljava/lang/String;)Landroid/util/Rational;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 585
    const-string v0, "string must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v0, "NaN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 588
    sget-object p0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    return-object p0

    .line 589
    :cond_10
    const-string v0, "Infinity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 590
    sget-object p0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    return-object p0

    .line 591
    :cond_1b
    const-string v0, "-Infinity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 592
    sget-object p0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    return-object p0

    .line 595
    :cond_26
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 596
    if-gez v0, :cond_34

    .line 597
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 599
    :cond_34
    if-ltz v0, :cond_55

    .line 603
    :try_start_36
    new-instance v1, Landroid/util/Rational;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    .line 604
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Rational;-><init>(II)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_4e} :catch_4f

    .line 603
    return-object v1

    .line 605
    :catch_4f
    move-exception v0

    .line 606
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    .line 600
    :cond_55
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 521
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 531
    iget p1, p0, Landroid/util/Rational;->mNumerator:I

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    .line 532
    iget p1, p0, Landroid/util/Rational;->mDenominator:I

    if-eq p1, v0, :cond_19

    iget p1, p0, Landroid/util/Rational;->mDenominator:I

    if-nez p1, :cond_11

    goto :goto_19

    .line 535
    :cond_11
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Rational must be deserialized from a reduced form for zero values"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 533
    :cond_19
    :goto_19
    return-void

    .line 537
    :cond_1a
    iget p1, p0, Landroid/util/Rational;->mDenominator:I

    if-nez p1, :cond_31

    .line 538
    iget p1, p0, Landroid/util/Rational;->mNumerator:I

    if-eq p1, v0, :cond_30

    iget p1, p0, Landroid/util/Rational;->mNumerator:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_28

    goto :goto_30

    .line 541
    :cond_28
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Rational must be deserialized from a reduced form for infinity values"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :cond_30
    :goto_30
    return-void

    .line 544
    :cond_31
    iget p1, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    invoke-static {p1, v1}, Landroid/util/Rational;->gcd(II)I

    move-result p1

    if-gt p1, v0, :cond_3c

    .line 549
    return-void

    .line 545
    :cond_3c
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Rational must be deserialized from a reduced form for finite values"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist compareTo(Landroid/util/Rational;)I
    .registers 12

    .line 474
    const-string v0, "another must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 477
    return v1

    .line 478
    :cond_d
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 479
    return v2

    .line 480
    :cond_15
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_1d

    .line 481
    return v3

    .line 482
    :cond_1d
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-direct {p1}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_4f

    .line 484
    :cond_2a
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-direct {p1}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_4e

    .line 491
    :cond_37
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-long v4, v0

    iget v0, p1, Landroid/util/Rational;->mDenominator:I

    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 492
    iget p1, p1, Landroid/util/Rational;->mNumerator:I

    int-to-long v6, p1

    iget p1, p0, Landroid/util/Rational;->mDenominator:I

    int-to-long v8, p1

    mul-long/2addr v6, v8

    .line 495
    cmp-long p1, v4, v6

    if-gez p1, :cond_4a

    .line 496
    return v3

    .line 497
    :cond_4a
    if-lez p1, :cond_4d

    .line 498
    return v2

    .line 501
    :cond_4d
    return v1

    .line 485
    :cond_4e
    :goto_4e
    return v3

    .line 483
    :cond_4f
    :goto_4f
    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    check-cast p1, Landroid/util/Rational;

    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .registers 5

    .line 345
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-double v0, v0

    .line 346
    iget v2, p0, Landroid/util/Rational;->mDenominator:I

    int-to-double v2, v2

    .line 348
    div-double/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 247
    instance-of v0, p1, Landroid/util/Rational;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/util/Rational;

    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 362
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-float v0, v0

    .line 363
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    int-to-float v1, v1

    .line 365
    div-float/2addr v0, v1

    return v0
.end method

.method public whitelist getDenominator()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    return v0
.end method

.method public whitelist getNumerator()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 297
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 299
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 391
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 392
    const v0, 0x7fffffff

    return v0

    .line 393
    :cond_a
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 394
    const/high16 v0, -0x80000000

    return v0

    .line 395
    :cond_13
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 396
    const/4 v0, 0x0

    return v0

    .line 398
    :cond_1b
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public whitelist isFinite()Z
    .registers 2

    .line 193
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isInfinite()Z
    .registers 2

    .line 180
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isNaN()Z
    .registers 2

    .line 168
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isZero()Z
    .registers 2

    .line 205
    invoke-virtual {p0}, Landroid/util/Rational;->isFinite()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 425
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 426
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 427
    :cond_c
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 428
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 429
    :cond_15
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 430
    const-wide/16 v0, 0x0

    return-wide v0

    .line 432
    :cond_1e
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 447
    invoke-virtual {p0}, Landroid/util/Rational;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o toFloat()F
    .registers 2

    .line 288
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 269
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 270
    const-string v0, "NaN"

    return-object v0

    .line 271
    :cond_9
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 272
    const-string v0, "Infinity"

    return-object v0

    .line 273
    :cond_12
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 274
    const-string v0, "-Infinity"

    return-object v0

    .line 276
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
