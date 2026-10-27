.class public Landroid/content/res/FontScaleConverterImpl;
.super Ljava/lang/Object;
.source "FontScaleConverterImpl.java"

# interfaces
.implements Landroid/content/res/FontScaleConverter;


# instance fields
.field public final blacklist mFromSpValues:[F

.field public final blacklist mToDpValues:[F


# direct methods
.method public constructor blacklist <init>([F[F)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_f

    array-length v0, p1

    if-eqz v0, :cond_f

    .line 66
    iput-object p1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    .line 67
    iput-object p2, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    .line 68
    return-void

    .line 63
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array lengths must match and be nonzero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist lookupAndInterpolate(F[F[F)F
    .registers 8

    .line 95
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 97
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 100
    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    .line 101
    if-ltz v2, :cond_12

    .line 103
    aget p0, p2, v2

    mul-float/2addr v1, p0

    return v1

    .line 106
    :cond_12
    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 113
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2f

    .line 115
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    .line 116
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    .line 118
    cmpl-float p2, v0, v4

    if-nez p2, :cond_2c

    return v4

    .line 120
    :cond_2c
    div-float/2addr p1, v0

    .line 121
    mul-float/2addr p0, p1

    return p0

    .line 122
    :cond_2f
    const/4 p0, -0x1

    if-ne v2, p0, :cond_3b

    .line 124
    nop

    .line 125
    nop

    .line 126
    const/4 p0, 0x0

    aget p1, p1, p0

    .line 127
    aget p0, p2, p0

    move p2, v4

    goto :goto_47

    .line 129
    :cond_3b
    aget v4, p1, v2

    .line 130
    add-int/lit8 p0, v2, 0x1

    aget p1, p1, p0

    .line 131
    aget v2, p2, v2

    .line 132
    aget p0, p2, p0

    move p2, v4

    move v4, v2

    .line 135
    :goto_47
    nop

    .line 136
    invoke-static {v4, p0, p2, p1, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    mul-float/2addr v1, p0

    .line 135
    return v1
.end method


# virtual methods
.method public whitelist convertDpToSp(F)F
    .registers 4

    .line 77
    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {p1, v0, v1}, Landroid/content/res/FontScaleConverterImpl;->lookupAndInterpolate(F[F[F)F

    move-result p1

    return p1
.end method

.method public whitelist convertSpToDp(F)F
    .registers 4

    .line 87
    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {p1, v0, v1}, Landroid/content/res/FontScaleConverterImpl;->lookupAndInterpolate(F[F[F)F

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 142
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 143
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 144
    :cond_8
    instance-of v2, p1, Landroid/content/res/FontScaleConverterImpl;

    if-nez v2, :cond_d

    return v1

    .line 145
    :cond_d
    check-cast p1, Landroid/content/res/FontScaleConverterImpl;

    .line 146
    iget-object v2, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iget-object v3, p1, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    iget-object p1, p1, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    .line 147
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    .line 146
    :goto_25
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    .line 153
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontScaleConverter{fromSpValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    .line 161
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toDpValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method
