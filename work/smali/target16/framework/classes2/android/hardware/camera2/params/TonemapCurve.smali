.class public final Landroid/hardware/camera2/params/TonemapCurve;
.super Ljava/lang/Object;
.source "TonemapCurve.java"


# static fields
.field public static final whitelist CHANNEL_BLUE:I = 0x2

.field public static final whitelist CHANNEL_GREEN:I = 0x1

.field public static final whitelist CHANNEL_RED:I = 0x0

.field public static final whitelist LEVEL_BLACK:F = 0.0f

.field public static final whitelist LEVEL_WHITE:F = 1.0f

.field private static final greylist-max-o MIN_CURVE_LENGTH:I = 0x4

.field private static final greylist-max-o OFFSET_POINT_IN:I = 0x0

.field private static final greylist-max-o OFFSET_POINT_OUT:I = 0x1

.field public static final whitelist POINT_SIZE:I = 0x2

.field private static final greylist-max-o TONEMAP_MIN_CURVE_POINTS:I = 0x2


# instance fields
.field private final greylist-max-o mBlue:[F

.field private final greylist-max-o mGreen:[F

.field private greylist-max-o mHashCalculated:Z

.field private greylist-max-o mHashCode:I

.field private final greylist-max-o mRed:[F


# direct methods
.method public constructor whitelist <init>([F[F[F)V
    .registers 9

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    .line 108
    const-string v0, "red must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "green must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "blue must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v0, 0x2

    const-string v1, "red"

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 113
    const-string v2, "green"

    invoke-static {p2, v0, v2}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 114
    const-string v3, "blue"

    invoke-static {p3, v0, v3}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V

    .line 116
    const/4 v0, 0x4

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 117
    invoke-static {p2, v0, v2}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 118
    invoke-static {p3, v0, v3}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v4, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 121
    invoke-static {p2, v0, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 122
    invoke-static {p3, v0, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 124
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    .line 125
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    .line 126
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    .line 127
    return-void
.end method

.method private static greylist-max-o checkArgumentArrayLengthDivisibleBy([FILjava/lang/String;)V
    .registers 4

    .line 131
    array-length p0, p0

    rem-int/2addr p0, p1

    if-nez p0, :cond_5

    .line 135
    return-void

    .line 132
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " size must be divisible by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o checkArgumentArrayLengthNoLessThan([FILjava/lang/String;)V
    .registers 4

    .line 152
    array-length p0, p0

    if-lt p0, p1, :cond_4

    .line 156
    return-void

    .line 153
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " size must be at least "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o checkArgumentColorChannel(I)I
    .registers 2

    .line 138
    packed-switch p0, :pswitch_data_e

    .line 144
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "colorChannel out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :pswitch_b
    nop

    .line 147
    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o curveToString(I)Ljava/lang/String;
    .registers 7

    .line 309
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object p1

    .line 312
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 313
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v2, v1, :cond_35

    .line 314
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    aget v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 316
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 318
    const-string v4, "), "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_13

    .line 321
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getCurve(I)[F
    .registers 3

    .line 327
    packed-switch p1, :pswitch_data_14

    .line 335
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "colorChannel out of range"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 333
    :pswitch_b
    iget-object p1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    return-object p1

    .line 331
    :pswitch_e
    iget-object p1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    return-object p1

    .line 329
    :pswitch_11
    iget-object p1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    return-object p1

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public whitelist copyColorCurve(I[FI)V
    .registers 6

    .line 233
    const-string v0, "offset must not be negative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 234
    const-string v0, "destination must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    array-length v0, p2

    add-int/2addr v0, p3

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1e

    .line 240
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object p1

    .line 241
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    return-void

    .line 237
    :cond_1e
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "destination too small to fit elements"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 254
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 255
    return v0

    .line 257
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 258
    return v1

    .line 260
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/TonemapCurve;

    if-eqz v2, :cond_30

    .line 261
    check-cast p1, Landroid/hardware/camera2/params/TonemapCurve;

    .line 262
    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    iget-object v3, p1, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    iget-object v3, p1, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    .line 263
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    iget-object p1, p1, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    .line 264
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    nop

    .line 262
    :goto_2f
    return v0

    .line 266
    :cond_30
    return v0
.end method

.method public whitelist getPoint(II)Landroid/graphics/PointF;
    .registers 4

    .line 191
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 192
    if-ltz p2, :cond_1f

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v0

    if-ge p2, v0, :cond_1f

    .line 196
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object p1

    .line 198
    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, p2, 0x0

    aget v0, p1, v0

    .line 199
    add-int/lit8 p2, p2, 0x1

    aget p1, p1, p2

    .line 201
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2

    .line 193
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getPointCount(I)I
    .registers 2

    .line 167
    invoke-static {p1}, Landroid/hardware/camera2/params/TonemapCurve;->checkArgumentColorChannel(I)I

    .line 169
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/TonemapCurve;->getCurve(I)[F

    move-result-object p1

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 274
    iget-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    if-eqz v0, :cond_7

    .line 276
    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0

    .line 279
    :cond_7
    iget-object v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mRed:[F

    iget-object v1, p0, Landroid/hardware/camera2/params/TonemapCurve;->mGreen:[F

    iget-object v2, p0, Landroid/hardware/camera2/params/TonemapCurve;->mBlue:[F

    filled-new-array {v0, v1, v2}, [[F

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCalculated:Z

    .line 282
    iget v0, p0, Landroid/hardware/camera2/params/TonemapCurve;->mHashCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TonemapCurve{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    const-string v1, "R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, ", G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, ", B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/TonemapCurve;->curveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
