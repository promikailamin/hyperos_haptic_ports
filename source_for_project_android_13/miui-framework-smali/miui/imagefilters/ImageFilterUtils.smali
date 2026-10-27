.class public Lmiui/imagefilters/ImageFilterUtils;
.super Ljava/lang/Object;
.source "ImageFilterUtils.java"


# static fields
.field static final blacklist COLOR_TO_GRAYSCALE_FACTOR_B:F = 0.114f

.field static final blacklist COLOR_TO_GRAYSCALE_FACTOR_G:F = 0.587f

.field static final blacklist COLOR_TO_GRAYSCALE_FACTOR_R:F = 0.299f

.field static final blacklist TAG:Ljava/lang/String; = "ImageFilterUtils"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist HslToRgb(FFF)I
    .registers 21
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "l"    # F

    .line 32
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 35
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    move v1, v0

    .local v1, "b":I
    move v3, v0

    .local v0, "r":I
    .local v3, "g":I
    goto/16 :goto_b1

    .line 39
    .end local v0    # "r":I
    .end local v1    # "b":I
    .end local v3    # "g":I
    :cond_f
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v1, :cond_1c

    add-float v1, p1, v3

    mul-float v1, v1, p2

    goto :goto_21

    :cond_1c
    add-float v1, p2, p1

    mul-float v4, p2, p1

    sub-float/2addr v1, v4

    .line 40
    .local v1, "q":F
    :goto_21
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p2

    sub-float/2addr v4, v1

    .line 42
    .local v4, "p":F
    const/high16 v5, 0x43b40000    # 360.0f

    div-float v5, p0, v5

    .line 43
    .local v5, "Hk":F
    const/4 v6, 0x3

    new-array v7, v6, [F

    .line 44
    .local v7, "T":[F
    const v8, 0x3eaaaaab

    add-float v9, v5, v8

    aput v9, v7, v2

    .line 45
    const/4 v9, 0x1

    aput v5, v7, v9

    .line 46
    sub-float v8, v5, v8

    const/4 v10, 0x2

    aput v8, v7, v10

    .line 48
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3d
    if-ge v8, v6, :cond_9b

    .line 50
    aget v11, v7, v8

    cmpg-float v11, v11, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-gez v11, :cond_4f

    aget v11, v7, v8

    float-to-double v14, v11

    add-double/2addr v14, v12

    double-to-float v11, v14

    aput v11, v7, v8

    goto :goto_5c

    .line 51
    :cond_4f
    aget v11, v7, v8

    cmpl-float v11, v11, v3

    if-lez v11, :cond_5c

    aget v11, v7, v8

    float-to-double v14, v11

    sub-double/2addr v14, v12

    double-to-float v11, v14

    aput v11, v7, v8

    .line 53
    :cond_5c
    :goto_5c
    aget v11, v7, v8

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v11, v14

    cmpg-float v11, v11, v3

    if-gez v11, :cond_6f

    .line 55
    sub-float v11, v1, v4

    mul-float/2addr v11, v14

    aget v12, v7, v8

    mul-float/2addr v11, v12

    add-float/2addr v11, v4

    aput v11, v7, v8

    goto :goto_97

    .line 57
    :cond_6f
    aget v11, v7, v8

    float-to-double v10, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v16

    cmpg-double v10, v10, v12

    if-gez v10, :cond_7d

    .line 59
    aput v1, v7, v8

    goto :goto_97

    .line 61
    :cond_7d
    aget v10, v7, v8

    float-to-double v10, v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    cmpg-double v10, v10, v16

    if-gez v10, :cond_95

    .line 63
    sub-float v10, v1, v4

    const v11, 0x3f2aaaab

    aget v12, v7, v8

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    mul-float/2addr v10, v14

    add-float/2addr v10, v4

    aput v10, v7, v8

    goto :goto_97

    .line 65
    :cond_95
    aput v4, v7, v8

    .line 48
    :goto_97
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x2

    goto :goto_3d

    .line 68
    .end local v8    # "i":I
    :cond_9b
    aget v0, v7, v2

    float-to-double v10, v0

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v12

    double-to-int v0, v10

    .line 69
    .restart local v0    # "r":I
    aget v3, v7, v9

    float-to-double v8, v3

    mul-double/2addr v8, v12

    double-to-int v3, v8

    .line 70
    .restart local v3    # "g":I
    const/4 v6, 0x2

    aget v6, v7, v6

    float-to-double v8, v6

    mul-double/2addr v8, v12

    double-to-int v6, v8

    move v1, v6

    .line 73
    .end local v4    # "p":F
    .end local v5    # "Hk":F
    .end local v7    # "T":[F
    .local v1, "b":I
    :goto_b1
    const/16 v4, 0xff

    invoke-static {v2, v0, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v0

    .line 74
    invoke-static {v2, v3, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v3

    .line 75
    invoke-static {v2, v1, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v1

    .line 77
    const/high16 v2, -0x1000000

    shl-int/lit8 v4, v0, 0x10

    or-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v1

    return v2
.end method

.method public static whitelist HslToRgb([F)I
    .registers 4
    .param p0, "hsl"    # [F

    .line 25
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v0

    return v0
.end method

.method public static whitelist HsvToRgb(FFF)I
    .registers 14
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "r":F
    const/4 v1, 0x0

    .line 84
    .local v1, "g":F
    const/4 v2, 0x0

    .line 86
    .local v2, "b":F
    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_e

    .line 88
    move v2, p2

    move v1, p2

    move v0, p2

    goto :goto_45

    .line 93
    :cond_e
    const/high16 v4, 0x42700000    # 60.0f

    div-float v4, p0, v4

    .line 94
    .local v4, "sectorPos":F
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 96
    .local v6, "sectorNumber":I
    int-to-float v7, v6

    sub-float v7, v4, v7

    .line 99
    .local v7, "fractionalSector":F
    sub-float v8, v5, p1

    mul-float/2addr v8, p2

    .line 100
    .local v8, "p":F
    mul-float v9, p1, v7

    sub-float v9, v5, v9

    mul-float/2addr v9, p2

    .line 101
    .local v9, "q":F
    sub-float v10, v5, v7

    mul-float/2addr v10, p1

    sub-float v10, v5, v10

    mul-float/2addr v10, p2

    .line 104
    .local v10, "t":F
    packed-switch v6, :pswitch_data_66

    goto :goto_45

    .line 132
    :pswitch_2d
    move v0, p2

    .line 133
    move v1, v8

    .line 134
    move v2, v9

    goto :goto_45

    .line 127
    :pswitch_31
    move v0, v10

    .line 128
    move v1, v8

    .line 129
    move v2, p2

    .line 130
    goto :goto_45

    .line 122
    :pswitch_35
    move v0, v8

    .line 123
    move v1, v9

    .line 124
    move v2, p2

    .line 125
    goto :goto_45

    .line 117
    :pswitch_39
    move v0, v8

    .line 118
    move v1, p2

    .line 119
    move v2, v10

    .line 120
    goto :goto_45

    .line 112
    :pswitch_3d
    move v0, v9

    .line 113
    move v1, p2

    .line 114
    move v2, v8

    .line 115
    goto :goto_45

    .line 107
    :pswitch_41
    move v0, p2

    .line 108
    move v1, v10

    .line 109
    move v2, v8

    .line 110
    nop

    .line 139
    .end local v4    # "sectorPos":F
    .end local v6    # "sectorNumber":I
    .end local v7    # "fractionalSector":F
    .end local v8    # "p":F
    .end local v9    # "q":F
    .end local v10    # "t":F
    :goto_45
    invoke-static {v3, v0, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    .line 140
    invoke-static {v3, v1, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v1

    .line 141
    invoke-static {v3, v2, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v2

    .line 143
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    .line 144
    .local v4, "nr":I
    mul-float v5, v1, v3

    float-to-int v5, v5

    .line 145
    .local v5, "ng":I
    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 146
    .local v3, "nb":I
    const/high16 v6, -0x1000000

    shl-int/lit8 v7, v4, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v3

    return v6

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
    .end packed-switch
.end method

.method public static whitelist RgbToHsl(III[F)V
    .registers 21
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsl"    # [F

    .line 156
    const/4 v0, 0x0

    .local v0, "h":F
    const/4 v1, 0x0

    .local v1, "s":F
    const/4 v2, 0x0

    .line 159
    .local v2, "l":F
    move/from16 v3, p0

    int-to-float v4, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    .line 160
    .local v4, "r":F
    move/from16 v6, p1

    int-to-float v7, v6

    div-float/2addr v7, v5

    .line 161
    .local v7, "g":F
    move/from16 v8, p2

    int-to-float v9, v8

    div-float/2addr v9, v5

    .line 163
    .local v9, "b":F
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 164
    .local v5, "max":F
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 167
    .local v10, "min":F
    cmpl-float v11, v5, v10

    const/high16 v12, 0x43b40000    # 360.0f

    if-nez v11, :cond_29

    .line 169
    const/4 v0, 0x0

    goto :goto_69

    .line 171
    :cond_29
    cmpl-float v11, v5, v4

    const/high16 v13, 0x42700000    # 60.0f

    if-nez v11, :cond_3b

    cmpl-float v11, v7, v9

    if-ltz v11, :cond_3b

    .line 173
    sub-float v11, v7, v9

    mul-float/2addr v11, v13

    sub-float v13, v5, v10

    div-float v0, v11, v13

    goto :goto_69

    .line 175
    :cond_3b
    cmpl-float v11, v5, v4

    if-nez v11, :cond_4c

    cmpg-float v11, v7, v9

    if-gez v11, :cond_4c

    .line 177
    sub-float v11, v7, v9

    mul-float/2addr v11, v13

    sub-float v13, v5, v10

    div-float/2addr v11, v13

    add-float v0, v11, v12

    goto :goto_69

    .line 179
    :cond_4c
    cmpl-float v11, v5, v7

    if-nez v11, :cond_5b

    .line 181
    sub-float v11, v9, v4

    mul-float/2addr v11, v13

    sub-float v13, v5, v10

    div-float/2addr v11, v13

    const/high16 v13, 0x42f00000    # 120.0f

    add-float v0, v11, v13

    goto :goto_69

    .line 183
    :cond_5b
    cmpl-float v11, v5, v9

    if-nez v11, :cond_69

    .line 185
    sub-float v11, v4, v7

    mul-float/2addr v11, v13

    sub-float v13, v5, v10

    div-float/2addr v11, v13

    const/high16 v13, 0x43700000    # 240.0f

    add-float v0, v11, v13

    .line 189
    :cond_69
    :goto_69
    add-float v11, v5, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    .line 192
    .end local v2    # "l":F
    .local v11, "l":F
    const/4 v2, 0x0

    cmpl-float v14, v11, v2

    if-eqz v14, :cond_97

    cmpl-float v14, v5, v10

    if-nez v14, :cond_78

    goto :goto_97

    .line 196
    :cond_78
    cmpg-float v14, v2, v11

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    if-gez v14, :cond_8a

    float-to-double v2, v11

    cmpg-double v2, v2, v15

    if-gtz v2, :cond_8a

    .line 198
    sub-float v2, v5, v10

    add-float v3, v5, v10

    div-float v1, v2, v3

    goto :goto_98

    .line 200
    :cond_8a
    float-to-double v2, v11

    cmpl-double v2, v2, v15

    if-lez v2, :cond_98

    .line 202
    sub-float v2, v5, v10

    add-float v3, v5, v10

    sub-float/2addr v13, v3

    div-float v1, v2, v13

    goto :goto_98

    .line 194
    :cond_97
    :goto_97
    const/4 v1, 0x0

    .line 205
    :cond_98
    :goto_98
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v0, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v12

    aput v12, p3, v2

    .line 206
    const/4 v2, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v13

    aput v13, p3, v2

    .line 207
    const/4 v2, 0x2

    invoke-static {v3, v11, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v3

    aput v3, p3, v2

    .line 208
    return-void
.end method

.method public static whitelist RgbToHsl(I[F)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "hsl"    # [F

    .line 151
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(III[F)V

    .line 152
    return-void
.end method

.method public static whitelist RgbToHsv(III[F)V
    .registers 16
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsv"    # [F

    .line 217
    const/4 v0, 0x0

    .local v0, "h":F
    const/4 v1, 0x0

    .local v1, "s":F
    const/4 v2, 0x0

    .line 220
    .local v2, "v":F
    int-to-float v3, p0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 221
    .local v3, "r":F
    int-to-float v5, p1

    div-float/2addr v5, v4

    .line 222
    .local v5, "g":F
    int-to-float v6, p2

    div-float/2addr v6, v4

    .line 224
    .local v6, "b":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 225
    .local v4, "max":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 228
    .local v7, "min":F
    cmpl-float v8, v4, v7

    const/high16 v9, 0x43b40000    # 360.0f

    if-nez v8, :cond_23

    .line 230
    const/4 v0, 0x0

    goto :goto_63

    .line 232
    :cond_23
    cmpl-float v8, v4, v3

    const/high16 v10, 0x42700000    # 60.0f

    if-nez v8, :cond_35

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_35

    .line 234
    sub-float v8, v5, v6

    mul-float/2addr v8, v10

    sub-float v10, v4, v7

    div-float v0, v8, v10

    goto :goto_63

    .line 236
    :cond_35
    cmpl-float v8, v4, v3

    if-nez v8, :cond_46

    cmpg-float v8, v5, v6

    if-gez v8, :cond_46

    .line 238
    sub-float v8, v5, v6

    mul-float/2addr v8, v10

    sub-float v10, v4, v7

    div-float/2addr v8, v10

    add-float v0, v8, v9

    goto :goto_63

    .line 240
    :cond_46
    cmpl-float v8, v4, v5

    if-nez v8, :cond_55

    .line 242
    sub-float v8, v6, v3

    mul-float/2addr v8, v10

    sub-float v10, v4, v7

    div-float/2addr v8, v10

    const/high16 v10, 0x42f00000    # 120.0f

    add-float v0, v8, v10

    goto :goto_63

    .line 244
    :cond_55
    cmpl-float v8, v4, v6

    if-nez v8, :cond_63

    .line 246
    sub-float v8, v3, v5

    mul-float/2addr v8, v10

    sub-float v10, v4, v7

    div-float/2addr v8, v10

    const/high16 v10, 0x43700000    # 240.0f

    add-float v0, v8, v10

    .line 250
    :cond_63
    :goto_63
    move v2, v4

    .line 253
    const/4 v8, 0x0

    cmpl-float v10, v4, v8

    if-nez v10, :cond_6b

    .line 255
    const/4 v1, 0x0

    goto :goto_6f

    .line 258
    :cond_6b
    sub-float v10, v4, v7

    div-float v1, v10, v4

    .line 261
    :goto_6f
    const/4 v10, 0x0

    invoke-static {v8, v0, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v10

    .line 262
    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v1, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v11

    aput v11, p3, v9

    .line 263
    const/4 v9, 0x2

    invoke-static {v8, v2, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v8

    aput v8, p3, v9

    .line 264
    return-void
.end method

.method public static whitelist RgbToHsv(I[F)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    .line 212
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(III[F)V

    .line 213
    return-void
.end method

.method public static whitelist checkChannelParam(Ljava/lang/String;[Z)V
    .registers 5
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "outRgba"    # [Z

    .line 297
    const-string v0, "r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5d

    const-string v0, "red"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5d

    .line 299
    :cond_12
    const-string v0, "g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, "green"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_5a

    .line 301
    :cond_23
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "blue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_56

    .line 303
    :cond_34
    const-string v0, "a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_4e

    .line 306
    :cond_45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    array-length v2, p1

    if-ge v0, v2, :cond_60

    .line 307
    aput-boolean v1, p1, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 304
    .end local v0    # "i":I
    :cond_4e
    :goto_4e
    array-length v0, p1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_60

    const/4 v0, 0x3

    aput-boolean v1, p1, v0

    goto :goto_60

    .line 302
    :cond_56
    :goto_56
    const/4 v0, 0x2

    aput-boolean v1, p1, v0

    goto :goto_60

    .line 300
    :cond_5a
    :goto_5a
    aput-boolean v1, p1, v1

    goto :goto_60

    .line 298
    :cond_5d
    :goto_5d
    const/4 v0, 0x0

    aput-boolean v1, p1, v0

    .line 310
    :cond_60
    :goto_60
    return-void
.end method

.method public static whitelist clamp(FFF)F
    .registers 4
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .line 285
    cmpg-float v0, p1, p0

    if-gtz v0, :cond_5

    return p0

    .line 286
    :cond_5
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_a

    return p2

    .line 287
    :cond_a
    return p1
.end method

.method public static whitelist clamp(III)I
    .registers 3
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 279
    if-gt p1, p0, :cond_3

    return p0

    .line 280
    :cond_3
    if-lt p1, p2, :cond_6

    return p2

    .line 281
    :cond_6
    return p1
.end method

.method public static whitelist convertColorToGrayscale(I)I
    .registers 4
    .param p0, "color"    # I

    .line 291
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    int-to-float v1, v1

    const v2, 0x3de978d5    # 0.114f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static whitelist interpolate(IIIII)I
    .registers 8
    .param p0, "inMin"    # I
    .param p1, "inMax"    # I
    .param p2, "outMin"    # I
    .param p3, "outMax"    # I
    .param p4, "value"    # I

    .line 275
    int-to-float v0, p2

    int-to-float v1, p4

    sub-int v2, p3, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, p1, p0

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static whitelist interpolate([F[FF[F)V
    .registers 9
    .param p0, "hsl1"    # [F
    .param p1, "hsl2"    # [F
    .param p2, "amount"    # F
    .param p3, "hslOut"    # [F

    .line 268
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 269
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 270
    aget v2, p0, v1

    aget v3, p1, v1

    aget v4, p0, v1

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 272
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method static blacklist setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 24
    .param p0, "filterObj"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 313
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ",property:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "strPropertyMethod":Ljava/lang/String;
    const/4 v0, 0x0

    .line 316
    .local v0, "propertyMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 317
    .local v6, "methods":[Ljava/lang/reflect/Method;
    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_27
    const/4 v10, 0x1

    if-ge v9, v7, :cond_43

    aget-object v11, v6, v9

    .line 318
    .local v11, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 319
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v10, :cond_40

    .line 320
    move-object v0, v11

    .line 321
    move-object v7, v0

    goto :goto_44

    .line 317
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :cond_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :cond_43
    move-object v7, v0

    .line 324
    .end local v0    # "propertyMethod":Ljava/lang/reflect/Method;
    .local v7, "propertyMethod":Ljava/lang/reflect/Method;
    :goto_44
    const-string v0, ",obj:"

    const-string v9, "ImageFilterUtils"

    if-nez v7, :cond_69

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown property:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v8

    .line 329
    :cond_69
    const-class v11, Lmiui/imagefilters/FilterParamType;

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lmiui/imagefilters/FilterParamType;

    .line 330
    .local v11, "paramType":Lmiui/imagefilters/FilterParamType;
    if-nez v11, :cond_76

    sget-object v12, Lmiui/imagefilters/FilterParamType$ParamType;->DEFAULT:Lmiui/imagefilters/FilterParamType$ParamType;

    goto :goto_7a

    :cond_76
    invoke-interface {v11}, Lmiui/imagefilters/FilterParamType;->value()Lmiui/imagefilters/FilterParamType$ParamType;

    move-result-object v12

    .line 332
    .local v12, "paramTypeEnum":Lmiui/imagefilters/FilterParamType$ParamType;
    :goto_7a
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v8

    .line 334
    .local v13, "paramClass":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 335
    .local v14, "objValue":Ljava/lang/Object;
    :try_start_81
    instance-of v15, v3, Ljava/lang/String;

    if-eqz v15, :cond_249

    .line 336
    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    .line 337
    .local v15, "strValue":Ljava/lang/String;
    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 338
    move-object v0, v15

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    .end local v14    # "objValue":Ljava/lang/Object;
    .local v0, "objValue":Ljava/lang/Object;
    goto/16 :goto_256

    .line 339
    .end local v0    # "objValue":Ljava/lang/Object;
    .restart local v14    # "objValue":Ljava/lang/Object;
    :cond_9a
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_a0} :catch_265

    if-eqz v10, :cond_c6

    .line 340
    :try_start_a2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, "intVal":I
    sget-object v10, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v10, :cond_af

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(I)I

    move-result v10

    move v0, v10

    .line 342
    :cond_af
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b3} :catch_bd

    move-object v0, v10

    .line 343
    .end local v14    # "objValue":Ljava/lang/Object;
    .local v0, "objValue":Ljava/lang/Object;
    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_256

    .line 391
    .end local v0    # "objValue":Ljava/lang/Object;
    .end local v15    # "strValue":Ljava/lang/String;
    :catch_bd
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_26c

    .line 343
    .restart local v14    # "objValue":Ljava/lang/Object;
    .restart local v15    # "strValue":Ljava/lang/String;
    :cond_c6
    :try_start_c6
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cc} :catch_265

    if-eqz v10, :cond_e9

    .line 344
    :try_start_ce
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 345
    .local v0, "floatVal":F
    sget-object v10, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v10, :cond_db

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v10

    move v0, v10

    .line 346
    :cond_db
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_df} :catch_bd

    move-object v0, v10

    .line 347
    .end local v14    # "objValue":Ljava/lang/Object;
    .local v0, "objValue":Ljava/lang/Object;
    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_256

    .end local v0    # "objValue":Ljava/lang/Object;
    .restart local v14    # "objValue":Ljava/lang/Object;
    :cond_e9
    :try_start_e9
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ef} :catch_265

    if-eqz v10, :cond_10c

    .line 348
    :try_start_f1
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 349
    .local v16, "doubleVal":D
    sget-object v0, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v0, :cond_ff

    invoke-static/range {v16 .. v17}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(D)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 350
    :cond_ff
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_103} :catch_bd

    .line 351
    .end local v14    # "objValue":Ljava/lang/Object;
    .end local v16    # "doubleVal":D
    .restart local v0    # "objValue":Ljava/lang/Object;
    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_256

    .end local v0    # "objValue":Ljava/lang/Object;
    .restart local v14    # "objValue":Ljava/lang/Object;
    :cond_10c
    :try_start_10c
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_112} :catch_265

    if-eqz v10, :cond_125

    .line 352
    :try_start_114
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11c} :catch_bd

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    .end local v14    # "objValue":Ljava/lang/Object;
    .restart local v0    # "objValue":Ljava/lang/Object;
    goto/16 :goto_256

    .line 353
    .end local v0    # "objValue":Ljava/lang/Object;
    .restart local v14    # "objValue":Ljava/lang/Object;
    :cond_125
    :try_start_125
    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_12b} :catch_265

    if-eqz v10, :cond_13a

    .line 354
    :try_start_12d
    invoke-static {v15}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_131} :catch_bd

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    .end local v14    # "objValue":Ljava/lang/Object;
    .restart local v0    # "objValue":Ljava/lang/Object;
    goto/16 :goto_256

    .line 355
    .end local v0    # "objValue":Ljava/lang/Object;
    .restart local v14    # "objValue":Ljava/lang/Object;
    :cond_13a
    :try_start_13a
    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v10
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13e} :catch_265

    if-eqz v10, :cond_14d

    .line 356
    :try_start_140
    invoke-static {v13, v15}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_144} :catch_bd

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    .end local v14    # "objValue":Ljava/lang/Object;
    .restart local v0    # "objValue":Ljava/lang/Object;
    goto/16 :goto_256

    .line 357
    .end local v0    # "objValue":Ljava/lang/Object;
    .restart local v14    # "objValue":Ljava/lang/Object;
    :cond_14d
    :try_start_14d
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_217

    .line 358
    invoke-virtual {v13}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 359
    .local v0, "componentClass":Ljava/lang/Class;
    const-string v10, ","

    invoke-virtual {v15, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 360
    .local v10, "eles":[Ljava/lang/String;
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_163} :catch_265

    if-eqz v8, :cond_19e

    .line 361
    :try_start_165
    array-length v8, v10

    new-array v8, v8, [I
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_168} :catch_195

    .line 362
    .local v8, "array":[I
    const/16 v17, 0x0

    move-object/from16 v18, v5

    move/from16 v5, v17

    .local v5, "i":I
    .local v18, "strPropertyMethod":Ljava/lang/String;
    :goto_16e
    move-object/from16 v17, v6

    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .local v17, "methods":[Ljava/lang/reflect/Method;
    :try_start_170
    array-length v6, v8

    if-ge v5, v6, :cond_190

    .line 363
    aget-object v6, v10, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v8, v5

    .line 364
    sget-object v6, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v6, :cond_18b

    aget v6, v8, v5

    invoke-static {v6}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(I)I

    move-result v6

    aput v6, v8, v5
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_18b} :catch_1d0

    .line 362
    :cond_18b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v17

    goto :goto_16e

    .line 366
    .end local v5    # "i":I
    :cond_190
    move-object v14, v8

    .line 367
    .end local v8    # "array":[I
    move-object/from16 v19, v11

    goto/16 :goto_212

    .line 391
    .end local v0    # "componentClass":Ljava/lang/Class;
    .end local v10    # "eles":[Ljava/lang/String;
    .end local v14    # "objValue":Ljava/lang/Object;
    .end local v15    # "strValue":Ljava/lang/String;
    .end local v17    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .local v5, "strPropertyMethod":Ljava/lang/String;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    :catch_195
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    .end local v5    # "strPropertyMethod":Ljava/lang/String;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v17    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    goto/16 :goto_26c

    .line 367
    .end local v17    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v0    # "componentClass":Ljava/lang/Class;
    .restart local v5    # "strPropertyMethod":Ljava/lang/String;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v10    # "eles":[Ljava/lang/String;
    .restart local v14    # "objValue":Ljava/lang/Object;
    .restart local v15    # "strValue":Ljava/lang/String;
    :cond_19e
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    .end local v5    # "strPropertyMethod":Ljava/lang/String;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v17    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    :try_start_1a2
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a8} :catch_213

    if-eqz v5, :cond_1d5

    .line 368
    :try_start_1aa
    array-length v5, v10

    new-array v5, v5, [F

    .line 369
    .local v5, "array":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1ae
    array-length v8, v5

    if-ge v6, v8, :cond_1cc

    .line 370
    aget-object v8, v10, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v6

    .line 371
    sget-object v8, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v8, :cond_1c9

    aget v8, v5, v6

    invoke-static {v8}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v8

    aput v8, v5, v6
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c9} :catch_1d0

    .line 369
    :cond_1c9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ae

    .line 373
    .end local v6    # "i":I
    :cond_1cc
    move-object v14, v5

    .line 374
    .end local v5    # "array":[F
    move-object/from16 v19, v11

    goto :goto_212

    .line 391
    .end local v0    # "componentClass":Ljava/lang/Class;
    .end local v10    # "eles":[Ljava/lang/String;
    .end local v14    # "objValue":Ljava/lang/Object;
    .end local v15    # "strValue":Ljava/lang/String;
    :catch_1d0
    move-exception v0

    move-object/from16 v19, v11

    goto/16 :goto_26c

    .line 374
    .restart local v0    # "componentClass":Ljava/lang/Class;
    .restart local v10    # "eles":[Ljava/lang/String;
    .restart local v14    # "objValue":Ljava/lang/Object;
    .restart local v15    # "strValue":Ljava/lang/String;
    :cond_1d5
    :try_start_1d5
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20e

    .line 375
    array-length v5, v10

    new-array v5, v5, [D

    .line 376
    .local v5, "array":[D
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1e1
    array-length v8, v5

    if-ge v6, v8, :cond_208

    .line 377
    aget-object v8, v10, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1ee} :catch_213

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    .end local v10    # "eles":[Ljava/lang/String;
    .end local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    .local v19, "paramType":Lmiui/imagefilters/FilterParamType;
    .local v20, "eles":[Ljava/lang/String;
    float-to-double v10, v8

    :try_start_1f3
    aput-wide v10, v5, v6

    .line 378
    sget-object v8, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v8, :cond_201

    aget-wide v10, v5, v6

    invoke-static {v10, v11}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(D)D

    move-result-wide v10

    aput-wide v10, v5, v6

    .line 376
    :cond_201
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    goto :goto_1e1

    .end local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    .end local v20    # "eles":[Ljava/lang/String;
    .restart local v10    # "eles":[Ljava/lang/String;
    .restart local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    :cond_208
    move-object/from16 v20, v10

    move-object/from16 v19, v11

    .line 380
    .end local v6    # "i":I
    .end local v10    # "eles":[Ljava/lang/String;
    .end local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v20    # "eles":[Ljava/lang/String;
    move-object v14, v5

    goto :goto_212

    .line 374
    .end local v5    # "array":[D
    .end local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    .end local v20    # "eles":[Ljava/lang/String;
    .restart local v10    # "eles":[Ljava/lang/String;
    .restart local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    :cond_20e
    move-object/from16 v20, v10

    move-object/from16 v19, v11

    .line 382
    .end local v0    # "componentClass":Ljava/lang/Class;
    .end local v10    # "eles":[Ljava/lang/String;
    .end local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    :goto_212
    goto :goto_256

    .line 391
    .end local v14    # "objValue":Ljava/lang/Object;
    .end local v15    # "strValue":Ljava/lang/String;
    .end local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    :catch_213
    move-exception v0

    move-object/from16 v19, v11

    .end local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    goto :goto_26c

    .line 383
    .end local v17    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    .local v5, "strPropertyMethod":Ljava/lang/String;
    .local v6, "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v14    # "objValue":Ljava/lang/Object;
    .restart local v15    # "strValue":Ljava/lang/String;
    :cond_217
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    .end local v5    # "strPropertyMethod":Ljava/lang/String;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v17    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown param type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v4, 0x0

    return v4

    .line 386
    .end local v15    # "strValue":Ljava/lang/String;
    .end local v17    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v5    # "strPropertyMethod":Ljava/lang/String;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    :cond_249
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    .end local v5    # "strPropertyMethod":Ljava/lang/String;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v17    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    instance-of v0, v3, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v0, :cond_256

    .line 387
    move-object/from16 v14, p2

    goto :goto_257

    .line 386
    :cond_256
    :goto_256
    nop

    .line 390
    :goto_257
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v7, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_260} :catch_263

    .line 394
    nop

    .line 395
    .end local v14    # "objValue":Ljava/lang/Object;
    const/4 v0, 0x1

    return v0

    .line 391
    :catch_263
    move-exception v0

    goto :goto_26c

    .end local v17    # "methods":[Ljava/lang/reflect/Method;
    .end local v18    # "strPropertyMethod":Ljava/lang/String;
    .end local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    .restart local v5    # "strPropertyMethod":Ljava/lang/String;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    :catch_265
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    .line 392
    .end local v5    # "strPropertyMethod":Ljava/lang/String;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "paramType":Lmiui/imagefilters/FilterParamType;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "methods":[Ljava/lang/reflect/Method;
    .restart local v18    # "strPropertyMethod":Ljava/lang/String;
    .restart local v19    # "paramType":Lmiui/imagefilters/FilterParamType;
    :goto_26c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set property fail. obj:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/4 v4, 0x0

    return v4
.end method
