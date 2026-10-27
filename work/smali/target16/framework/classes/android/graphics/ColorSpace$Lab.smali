.class final Landroid/graphics/ColorSpace$Lab;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Lab"
.end annotation


# static fields
.field private static final greylist-max-o A:F = 0.008856452f

.field private static final greylist-max-o B:F = 7.787037f

.field private static final greylist-max-o C:F = 0.13793103f

.field private static final greylist-max-o D:F = 0.20689656f


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 4

    .line 2175
    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    .line 2176
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist fromXyz([F)[F
    .registers 16

    .line 2215
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v2

    aget v2, v2, v0

    div-float/2addr v1, v2

    .line 2216
    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v4

    aget v4, v4, v2

    div-float/2addr v3, v4

    .line 2217
    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v6

    aget v6, v6, v4

    div-float/2addr v5, v6

    .line 2219
    const v6, 0x3c111aa7

    cmpl-float v7, v1, v6

    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    const v10, 0x3e0d3dcb

    const v11, 0x40f92f68

    if-lez v7, :cond_37

    float-to-double v12, v1

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v1, v12

    goto :goto_39

    :cond_37
    mul-float/2addr v1, v11

    add-float/2addr v1, v10

    .line 2220
    :goto_39
    cmpl-float v7, v3, v6

    if-lez v7, :cond_44

    float-to-double v12, v3

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v3, v12

    goto :goto_46

    :cond_44
    mul-float/2addr v3, v11

    add-float/2addr v3, v10

    .line 2221
    :goto_46
    cmpl-float v6, v5, v6

    if-lez v6, :cond_51

    float-to-double v5, v5

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    goto :goto_53

    :cond_51
    mul-float/2addr v5, v11

    add-float/2addr v5, v10

    .line 2223
    :goto_53
    const/high16 v6, 0x42e80000    # 116.0f

    mul-float/2addr v6, v3

    const/high16 v7, 0x41800000    # 16.0f

    sub-float/2addr v6, v7

    .line 2224
    const/high16 v7, 0x43fa0000    # 500.0f

    sub-float/2addr v1, v3

    mul-float/2addr v1, v7

    .line 2225
    const/high16 v7, 0x43480000    # 200.0f

    sub-float/2addr v3, v5

    mul-float/2addr v3, v7

    .line 2227
    const/4 v5, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v6, v5, v7}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v5

    aput v5, p1, v0

    .line 2228
    const/high16 v0, -0x3d000000    # -128.0f

    const/high16 v5, 0x43000000    # 128.0f

    invoke-static {v1, v0, v5}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v1

    aput v1, p1, v2

    .line 2229
    invoke-static {v3, v0, v5}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v0

    aput v0, p1, v4

    .line 2231
    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .registers 2

    .line 2190
    if-nez p1, :cond_5

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_7

    :cond_5
    const/high16 p1, 0x43000000    # 128.0f

    :goto_7
    return p1
.end method

.method public whitelist getMinValue(I)F
    .registers 2

    .line 2185
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/high16 p1, -0x3d000000    # -128.0f

    :goto_6
    return p1
.end method

.method public whitelist isWideGamut()Z
    .registers 2

    .line 2180
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist toXyz([F)[F
    .registers 12

    .line 2195
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 2196
    const/4 v1, 0x1

    aget v2, p1, v1

    const/high16 v3, -0x3d000000    # -128.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-static {v2, v3, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 2197
    const/4 v2, 0x2

    aget v5, p1, v2

    invoke-static {v5, v3, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smclamp(FFF)F

    move-result v3

    aput v3, p1, v2

    .line 2199
    aget v3, p1, v0

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42e80000    # 116.0f

    div-float/2addr v3, v4

    .line 2200
    aget v4, p1, v1

    const v5, 0x3b03126f    # 0.002f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    .line 2201
    aget v5, p1, v2

    const v6, 0x3ba3d70a    # 0.005f

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    .line 2202
    const v6, 0x3e53dcb1

    cmpl-float v7, v4, v6

    const v8, 0x3e0d3dcb

    const v9, 0x3e038027

    if-lez v7, :cond_4a

    mul-float v7, v4, v4

    mul-float/2addr v7, v4

    goto :goto_4d

    :cond_4a
    sub-float/2addr v4, v8

    mul-float v7, v4, v9

    .line 2203
    :goto_4d
    cmpl-float v4, v3, v6

    if-lez v4, :cond_55

    mul-float v4, v3, v3

    mul-float/2addr v4, v3

    goto :goto_58

    :cond_55
    sub-float/2addr v3, v8

    mul-float v4, v3, v9

    .line 2204
    :goto_58
    cmpl-float v3, v5, v6

    if-lez v3, :cond_60

    mul-float v3, v5, v5

    mul-float/2addr v3, v5

    goto :goto_63

    :cond_60
    sub-float/2addr v5, v8

    mul-float v3, v5, v9

    .line 2206
    :goto_63
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v5

    aget v5, v5, v0

    mul-float/2addr v7, v5

    aput v7, p1, v0

    .line 2207
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v0

    aget v0, v0, v1

    mul-float/2addr v4, v0

    aput v4, p1, v1

    .line 2208
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float/2addr v3, v0

    aput v3, p1, v2

    .line 2210
    return-object p1
.end method
