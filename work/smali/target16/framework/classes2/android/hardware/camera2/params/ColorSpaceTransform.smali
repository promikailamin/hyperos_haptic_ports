.class public final Landroid/hardware/camera2/params/ColorSpaceTransform;
.super Ljava/lang/Object;
.source "ColorSpaceTransform.java"


# static fields
.field private static final greylist-max-o COLUMNS:I = 0x3

.field private static final greylist-max-o COUNT:I = 0x9

.field private static final greylist-max-o COUNT_INT:I = 0x12

.field private static final greylist-max-o OFFSET_DENOMINATOR:I = 0x1

.field private static final greylist-max-o OFFSET_NUMERATOR:I = 0x0

.field private static final greylist-max-o RATIONAL_SIZE:I = 0x2

.field private static final greylist-max-o ROWS:I = 0x3


# instance fields
.field private final greylist-max-o mElements:[I


# direct methods
.method public constructor whitelist <init>([I)V
    .registers 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "elements must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    array-length v0, p1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_29

    .line 118
    const/4 v0, 0x0

    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_21

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "element %d must not be null"

    invoke-static {p1, v2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 122
    :cond_21
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 123
    return-void

    .line 115
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "elements must be 18 length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>([Landroid/util/Rational;)V
    .registers 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "elements must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_42

    .line 78
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 80
    const/4 v0, 0x0

    :goto_14
    array-length v1, p1

    if-ge v0, v1, :cond_41

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "element[%d] must not be null"

    invoke-static {p1, v2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x0

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    aput v4, v1, v3

    .line 83
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    aput v3, v1, v2

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 85
    :cond_41
    return-void

    .line 75
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "elements must be 9 length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o toShortString()Ljava/lang/String;
    .registers 12

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    const/4 v4, 0x3

    if-ge v2, v4, :cond_46

    .line 278
    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move v5, v1

    :goto_13
    const-string v6, ", "

    const/4 v7, 0x2

    if-ge v5, v4, :cond_39

    .line 280
    iget-object v8, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v9, v3, 0x0

    aget v8, v8, v9

    .line 281
    iget-object v9, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    .line 282
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    if-ge v5, v7, :cond_34

    .line 286
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_34
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_13

    .line 289
    :cond_39
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    if-ge v2, v7, :cond_43

    .line 291
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 294
    :cond_46
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist copyElements([II)V
    .registers 7

    .line 198
    const-string v0, "offset must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 199
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1f

    .line 205
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_1e

    .line 206
    add-int v2, v0, p2

    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    aget v3, v3, v0

    aput v3, p1, v2

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 208
    :cond_1e
    return-void

    .line 201
    :cond_1f
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "destination too small to fit elements"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist copyElements([Landroid/util/Rational;I)V
    .registers 10

    .line 163
    const-string v0, "offset must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 164
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2f

    .line 169
    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-ge v0, v1, :cond_2e

    .line 170
    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v4, v2, 0x0

    aget v3, v3, v4

    .line 171
    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 173
    add-int v5, v0, p2

    new-instance v6, Landroid/util/Rational;

    invoke-direct {v6, v3, v4}, Landroid/util/Rational;-><init>(II)V

    aput-object v6, p1, v5

    .line 169
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_12

    .line 175
    :cond_2e
    return-void

    .line 166
    :cond_2f
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "destination too small to fit elements"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11

    .line 220
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 221
    return v0

    .line 223
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 224
    return v1

    .line 226
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-eqz v2, :cond_3f

    .line 227
    check-cast p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 228
    move v2, v0

    move v3, v2

    :goto_10
    const/16 v4, 0x9

    if-ge v2, v4, :cond_3e

    .line 229
    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v5, v3, 0x0

    aget v4, v4, v5

    .line 230
    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    .line 231
    iget-object v8, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    aget v5, v8, v5

    .line 232
    iget-object v8, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    aget v7, v8, v7

    .line 233
    new-instance v8, Landroid/util/Rational;

    invoke-direct {v8, v4, v6}, Landroid/util/Rational;-><init>(II)V

    .line 234
    new-instance v4, Landroid/util/Rational;

    invoke-direct {v4, v5, v7}, Landroid/util/Rational;-><init>(II)V

    .line 235
    invoke-virtual {v8, v4}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 236
    return v0

    .line 228
    :cond_39
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_10

    .line 239
    :cond_3e
    return v1

    .line 241
    :cond_3f
    return v0
.end method

.method public whitelist getElement(II)Landroid/util/Rational;
    .registers 5

    .line 136
    if-ltz p1, :cond_27

    const/4 v0, 0x3

    if-ge p1, v0, :cond_27

    .line 138
    if-ltz p2, :cond_1f

    if-ge p2, v0, :cond_1f

    .line 142
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p1, p2, 0x0

    aget p1, v1, p1

    .line 143
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 p2, p2, 0x1

    aget p2, v0, p2

    .line 145
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, p1, p2}, Landroid/util/Rational;-><init>(II)V

    return-object v0

    .line 139
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "row out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "column out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 263
    invoke-direct {p0}, Landroid/hardware/camera2/params/ColorSpaceTransform;->toShortString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ColorSpaceTransform%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
