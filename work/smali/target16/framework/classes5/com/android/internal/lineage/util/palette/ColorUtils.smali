.class public Lcom/android/internal/lineage/util/palette/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final blacklist MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final blacklist MIN_ALPHA_SEARCH_PRECISION:I = 0xa


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist HSLToColor([F)I
    .registers 7

    .line 228
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 229
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 230
    const/4 v3, 0x2

    aget p0, p0, v3

    .line 232
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, p0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v4, v2

    .line 233
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float/2addr p0, v2

    .line 234
    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v1, v2

    rem-float/2addr v2, v3

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    .line 236
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    .line 238
    nop

    .line 240
    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v1, :pswitch_data_b8

    move p0, v0

    move v1, p0

    move v3, v1

    goto :goto_a4

    .line 268
    :pswitch_34
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 269
    mul-float v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 270
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_a4

    .line 262
    :pswitch_47
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 263
    mul-float v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 264
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 265
    goto :goto_a4

    .line 257
    :pswitch_5a
    mul-float v1, p0, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 258
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 259
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 260
    goto :goto_a4

    .line 252
    :pswitch_6d
    mul-float v1, p0, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 253
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 254
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 255
    goto :goto_a4

    .line 247
    :pswitch_80
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 248
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 249
    mul-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 250
    goto :goto_a4

    .line 242
    :pswitch_92
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 243
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 244
    mul-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 245
    nop

    .line 274
    :goto_a4
    const/16 v2, 0xff

    invoke-static {v1, v0, v2}, Lcom/android/internal/lineage/util/palette/ColorUtils;->constrain(III)I

    move-result v1

    .line 275
    invoke-static {v3, v0, v2}, Lcom/android/internal/lineage/util/palette/ColorUtils;->constrain(III)I

    move-result v3

    .line 276
    invoke-static {p0, v0, v2}, Lcom/android/internal/lineage/util/palette/ColorUtils;->constrain(III)I

    move-result p0

    .line 278
    invoke-static {v1, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_92
        :pswitch_80
        :pswitch_6d
        :pswitch_5a
        :pswitch_47
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public static blacklist RGBToHSL(III[F)V
    .registers 11

    .line 164
    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    .line 165
    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 166
    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 168
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 169
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 170
    sub-float v2, v0, v1

    .line 173
    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 175
    cmpl-float v1, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v1, :cond_29

    .line 177
    move p1, v6

    move v2, p1

    goto :goto_4a

    .line 179
    :cond_29
    cmpl-float v1, v0, p0

    if-nez v1, :cond_33

    .line 180
    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    goto :goto_41

    .line 181
    :cond_33
    cmpl-float v0, v0, p1

    if-nez v0, :cond_3c

    .line 182
    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float p1, p2, v4

    goto :goto_41

    .line 184
    :cond_3c
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p1, p0

    .line 187
    :goto_41
    mul-float/2addr v4, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float p0, v5, p0

    div-float/2addr v2, p0

    .line 190
    :goto_4a
    const/high16 p0, 0x42700000    # 60.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p1, p0

    .line 191
    cmpg-float p2, p1, v6

    if-gez p2, :cond_55

    .line 192
    add-float/2addr p1, p0

    .line 195
    :cond_55
    const/4 p2, 0x0

    invoke-static {p1, v6, p0}, Lcom/android/internal/lineage/util/palette/ColorUtils;->constrain(FFF)F

    move-result p0

    aput p0, p3, p2

    .line 196
    const/4 p0, 0x1

    invoke-static {v2, v6, v5}, Lcom/android/internal/lineage/util/palette/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    .line 197
    const/4 p0, 0x2

    invoke-static {v3, v6, v5}, Lcom/android/internal/lineage/util/palette/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    .line 198
    return-void
.end method

.method public static blacklist calculateContrast(II)D
    .registers 6

    .line 86
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2b

    .line 89
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_12

    .line 91
    invoke-static {p0, p1}, Lcom/android/internal/lineage/util/palette/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 94
    :cond_12
    invoke-static {p0}, Lcom/android/internal/lineage/util/palette/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 95
    invoke-static {p1}, Lcom/android/internal/lineage/util/palette/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 98
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 87
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "background can not be translucent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist calculateLuminance(I)D
    .registers 20

    .line 66
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    .line 67
    const-wide v4, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v6, v0, v4

    const-wide v7, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v9, 0x4003333333333333L    # 2.4

    const-wide v11, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v6, :cond_2a

    div-double/2addr v0, v7

    goto :goto_30

    :cond_2a
    add-double/2addr v0, v13

    div-double/2addr v0, v11

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 69
    :goto_30
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    move-wide v15, v2

    int-to-double v2, v6

    div-double/2addr v2, v15

    .line 70
    cmpg-double v6, v2, v4

    if-gez v6, :cond_3d

    div-double/2addr v2, v7

    goto :goto_43

    :cond_3d
    add-double/2addr v2, v13

    div-double/2addr v2, v11

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 72
    :goto_43
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    move-wide/from16 v17, v4

    int-to-double v4, v6

    div-double/2addr v4, v15

    .line 73
    cmpg-double v6, v4, v17

    if-gez v6, :cond_51

    div-double/2addr v4, v7

    goto :goto_57

    :cond_51
    add-double/2addr v4, v13

    div-double/2addr v4, v11

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 75
    :goto_57
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v0, v6

    const-wide v6, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static blacklist calculateMinimumAlpha(IIF)I
    .registers 11

    .line 113
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3a

    .line 118
    invoke-static {p0, v1}, Lcom/android/internal/lineage/util/palette/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 119
    invoke-static {v0, p1}, Lcom/android/internal/lineage/util/palette/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    .line 120
    float-to-double v4, p2

    cmpg-double p2, v2, v4

    if-gez p2, :cond_17

    .line 122
    const/4 p0, -0x1

    return p0

    .line 126
    :cond_17
    nop

    .line 127
    nop

    .line 128
    const/4 p2, 0x0

    move v0, p2

    .line 130
    :goto_1b
    const/16 v2, 0xa

    if-gt p2, v2, :cond_39

    sub-int v3, v1, v0

    if-le v3, v2, :cond_39

    .line 132
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 134
    invoke-static {p0, v2}, Lcom/android/internal/lineage/util/palette/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 135
    invoke-static {v3, p1}, Lcom/android/internal/lineage/util/palette/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    .line 137
    cmpg-double v3, v6, v4

    if-gez v3, :cond_35

    .line 138
    move v0, v2

    goto :goto_36

    .line 140
    :cond_35
    move v1, v2

    .line 143
    :goto_36
    add-int/lit8 p2, p2, 0x1

    .line 144
    goto :goto_1b

    .line 147
    :cond_39
    return v1

    .line 114
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "background can not be translucent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist colorToHSL(I[F)V
    .registers 4

    .line 212
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/lineage/util/palette/ColorUtils;->RGBToHSL(III[F)V

    .line 213
    return-void
.end method

.method private static blacklist compositeAlpha(II)I
    .registers 2

    .line 52
    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int/2addr p1, p0

    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method public static blacklist compositeColors(II)I
    .registers 8

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 38
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 39
    invoke-static {v1, v0}, Lcom/android/internal/lineage/util/palette/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 41
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 41
    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/internal/lineage/util/palette/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 44
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 43
    invoke-static {v4, v1, v5, v0, v2}, Lcom/android/internal/lineage/util/palette/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 45
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 46
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 45
    invoke-static {p0, v1, p1, v0, v2}, Lcom/android/internal/lineage/util/palette/ColorUtils;->compositeComponent(IIIII)I

    move-result p0

    .line 48
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static blacklist compositeComponent(IIIII)I
    .registers 5

    .line 56
    if-nez p4, :cond_4

    const/4 p0, 0x0

    return p0

    .line 57
    :cond_4
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int p1, p1, 0xff

    mul-int/2addr p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    div-int/2addr p0, p4

    return p0
.end method

.method private static blacklist constrain(FFF)F
    .registers 4

    .line 292
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method private static blacklist constrain(III)I
    .registers 3

    .line 296
    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method public static blacklist setAlphaComponent(II)I
    .registers 3

    .line 285
    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    .line 288
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 286
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
