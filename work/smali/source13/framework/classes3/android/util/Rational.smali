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

    .line 44
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 52
    new-instance v0, Landroid/util/Rational;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    .line 60
    new-instance v0, Landroid/util/Rational;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    .line 68
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 109
    if-gez p2, :cond_7

    .line 110
    neg-int p1, p1

    .line 111
    neg-int p2, p2

    .line 115
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_12

    if-lez p1, :cond_12

    .line 116
    iput v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 117
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_38

    .line 118
    :cond_12
    if-nez p2, :cond_1c

    if-gez p1, :cond_1c

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 120
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_38

    .line 121
    :cond_1c
    if-nez p2, :cond_25

    if-nez p1, :cond_25

    .line 122
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 123
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_38

    .line 124
    :cond_25
    if-nez p1, :cond_2c

    .line 125
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 126
    iput v0, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_38

    .line 128
    :cond_2c
    invoke-static {p1, p2}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    .line 130
    .local v0, "gcd":I
    div-int v1, p1, v0

    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 131
    div-int v1, p2, v0

    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 133
    .end local v0    # "gcd":I
    :goto_38
    return-void
.end method

.method private greylist-max-o equals(Landroid/util/Rational;)Z
    .registers 4
    .param p1, "other"    # Landroid/util/Rational;

    .line 250
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p1, Landroid/util/Rational;->mNumerator:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    iget v1, p1, Landroid/util/Rational;->mDenominator:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static greylist-max-o gcd(II)I
    .registers 5
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 320
    move v0, p0

    .line 321
    .local v0, "a":I
    move v1, p1

    .line 323
    .local v1, "b":I
    :goto_2
    if-eqz v1, :cond_9

    .line 324
    move v2, v1

    .line 326
    .local v2, "oldB":I
    rem-int v1, v0, v1

    .line 327
    move v0, v2

    .line 328
    .end local v2    # "oldB":I
    goto :goto_2

    .line 330
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    return v2
.end method

.method private static greylist-max-o invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 551
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Rational: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isNegInf()Z
    .registers 2

    .line 212
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

    .line 208
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
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 584
    const-string/jumbo v0, "string must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v0, "NaN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 587
    sget-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    return-object v0

    .line 588
    :cond_11
    const-string v0, "Infinity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 589
    sget-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    return-object v0

    .line 590
    :cond_1c
    const-string v0, "-Infinity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 591
    sget-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    return-object v0

    .line 594
    :cond_27
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 595
    .local v0, "sep_ix":I
    if-gez v0, :cond_35

    .line 596
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 598
    :cond_35
    if-ltz v0, :cond_56

    .line 602
    :try_start_37
    new-instance v1, Landroid/util/Rational;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 603
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_4f} :catch_50

    .line 602
    return-object v1

    .line 604
    :catch_50
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 599
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_56
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 520
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 530
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 531
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-eq v0, v1, :cond_17

    if-nez v0, :cond_f

    goto :goto_17

    .line 534
    :cond_f
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for zero values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_17
    :goto_17
    return-void

    .line 536
    :cond_18
    iget v2, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v2, :cond_2b

    .line 537
    if-eq v0, v1, :cond_2a

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    goto :goto_2a

    .line 540
    :cond_22
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for infinity values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_2a
    :goto_2a
    return-void

    .line 543
    :cond_2b
    invoke-static {v0, v2}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    if-gt v0, v1, :cond_32

    .line 548
    return-void

    .line 544
    :cond_32
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for finite values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist compareTo(Landroid/util/Rational;)I
    .registers 12
    .param p1, "another"    # Landroid/util/Rational;

    .line 473
    const-string v0, "another must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 476
    return v1

    .line 477
    :cond_d
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 478
    return v2

    .line 479
    :cond_15
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_1d

    .line 480
    return v3

    .line 481
    :cond_1d
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-direct {p1}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_51

    .line 483
    :cond_2a
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-direct {p1}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_50

    .line 490
    :cond_37
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-long v4, v0

    iget v0, p1, Landroid/util/Rational;->mDenominator:I

    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 491
    .local v4, "thisNumerator":J
    iget v0, p1, Landroid/util/Rational;->mNumerator:I

    int-to-long v6, v0

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    int-to-long v8, v0

    mul-long/2addr v6, v8

    .line 494
    .local v6, "otherNumerator":J
    cmp-long v0, v4, v6

    if-gez v0, :cond_4a

    .line 495
    return v3

    .line 496
    :cond_4a
    cmp-long v0, v4, v6

    if-lez v0, :cond_4f

    .line 497
    return v2

    .line 500
    :cond_4f
    return v1

    .line 484
    .end local v4    # "thisNumerator":J
    .end local v6    # "otherNumerator":J
    :cond_50
    :goto_50
    return v3

    .line 482
    :cond_51
    :goto_51
    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 33
    check-cast p1, Landroid/util/Rational;

    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .registers 7

    .line 344
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-double v0, v0

    .line 345
    .local v0, "num":D
    iget v2, p0, Landroid/util/Rational;->mDenominator:I

    int-to-double v2, v2

    .line 347
    .local v2, "den":D
    div-double v4, v0, v2

    return-wide v4
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 246
    instance-of v0, p1, Landroid/util/Rational;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/util/Rational;

    invoke-direct {p0, v0}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api floatValue()F
    .registers 4

    .line 361
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-float v0, v0

    .line 362
    .local v0, "num":F
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    int-to-float v1, v1

    .line 364
    .local v1, "den":F
    div-float v2, v0, v1

    return v2
.end method

.method public whitelist getDenominator()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    return v0
.end method

.method public whitelist getNumerator()I
    .registers 2

    .line 142
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 296
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    shl-int/lit8 v1, v0, 0x10

    ushr-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    .line 298
    .local v0, "numeratorFlipped":I
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    xor-int/2addr v1, v0

    return v1
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 390
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 391
    const v0, 0x7fffffff

    return v0

    .line 392
    :cond_a
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 393
    const/high16 v0, -0x80000000

    return v0

    .line 394
    :cond_13
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 395
    const/4 v0, 0x0

    return v0

    .line 397
    :cond_1b
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public whitelist isFinite()Z
    .registers 2

    .line 192
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

    .line 179
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

    .line 167
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

    .line 204
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

    .line 424
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 425
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 426
    :cond_c
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 427
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 428
    :cond_15
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 429
    const-wide/16 v0, 0x0

    return-wide v0

    .line 431
    :cond_1e
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 446
    invoke-virtual {p0}, Landroid/util/Rational;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o toFloat()F
    .registers 2

    .line 287
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 268
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 269
    const-string v0, "NaN"

    return-object v0

    .line 270
    :cond_9
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 271
    const-string v0, "Infinity"

    return-object v0

    .line 272
    :cond_12
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 273
    const-string v0, "-Infinity"

    return-object v0

    .line 275
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
