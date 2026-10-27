.class public Lcom/android/internal/widget/remotecompose/core/operations/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asNan(I)F
    .registers 2

    .line 31
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static blacklist clamp(I)I
    .registers 2

    .line 273
    nop

    .line 274
    shr-int/lit8 v0, p0, 0x1f

    not-int v0, v0

    and-int/2addr p0, v0

    .line 275
    add-int/lit16 p0, p0, -0xff

    .line 276
    shr-int/lit8 v0, p0, 0x1f

    and-int/2addr p0, v0

    .line 277
    add-int/lit16 p0, p0, 0xff

    .line 278
    return p0
.end method

.method public static blacklist colorInt(I)Ljava/lang/String;
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist floatToString(F)Ljava/lang/String;
    .registers 3

    .line 127
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 128
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    if-nez v0, :cond_f

    .line 129
    const-string p0, "NaN"

    return-object p0

    .line 131
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_2d
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist floatToString(FF)Ljava/lang/String;
    .registers 4

    .line 111
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 112
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    if-nez v0, :cond_f

    .line 113
    const-string p0, "NaN"

    return-object p0

    .line 115
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_35
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBrightness(I)F
    .registers 4

    .line 402
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 403
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 404
    and-int/lit16 p0, p0, 0xff

    .line 405
    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    .line 406
    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 407
    int-to-float p0, p0

    div-float/2addr p0, v2

    .line 408
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 410
    return p0
.end method

.method public static blacklist getHue(I)F
    .registers 7

    .line 337
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 338
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 339
    and-int/lit16 p0, p0, 0xff

    .line 340
    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    .line 341
    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 342
    int-to-float p0, p0

    div-float/2addr p0, v2

    .line 343
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 344
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 345
    sub-float v4, v2, v3

    .line 347
    cmpl-float v3, v2, v3

    const/4 v5, 0x0

    if-nez v3, :cond_2b

    .line 349
    move v1, v5

    goto :goto_46

    .line 351
    :cond_2b
    cmpl-float v3, v2, v0

    if-nez v3, :cond_35

    .line 352
    sub-float/2addr v1, p0

    div-float/2addr v1, v4

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr v1, p0

    goto :goto_46

    .line 353
    :cond_35
    cmpl-float v2, v2, v1

    if-nez v2, :cond_40

    .line 354
    sub-float/2addr p0, v0

    div-float/2addr p0, v4

    const/high16 v0, 0x40000000    # 2.0f

    add-float v1, p0, v0

    goto :goto_46

    .line 356
    :cond_40
    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    const/high16 p0, 0x40800000    # 4.0f

    add-float v1, v0, p0

    .line 359
    :goto_46
    const/high16 p0, 0x42700000    # 60.0f

    mul-float/2addr v1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr v1, p0

    .line 360
    cmpg-float v0, v1, v5

    if-gez v0, :cond_51

    .line 361
    add-float/2addr v1, p0

    .line 363
    :cond_51
    div-float/2addr v1, p0

    return v1
.end method

.method public static blacklist getSaturation(I)F
    .registers 4

    .line 373
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 374
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 375
    and-int/lit16 p0, p0, 0xff

    .line 377
    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    .line 378
    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 379
    int-to-float p0, p0

    div-float/2addr p0, v2

    .line 380
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 381
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 382
    sub-float v0, v2, p0

    .line 385
    cmpl-float p0, v2, p0

    if-nez p0, :cond_2a

    .line 387
    const/4 p0, 0x0

    goto :goto_2c

    .line 389
    :cond_2a
    div-float p0, v0, v2

    .line 392
    :goto_2c
    return p0
.end method

.method public static blacklist hsvToRgb(FFF)I
    .registers 8

    .line 290
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p0, v0

    float-to-int v0, p0

    .line 291
    int-to-float v1, v0

    sub-float/2addr p0, v1

    .line 292
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 293
    mul-float v4, p0, p1

    sub-float v4, v1, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v4, v4

    .line 294
    sub-float p0, v1, p0

    mul-float/2addr p0, p1

    sub-float/2addr v1, p0

    mul-float/2addr v1, p2

    add-float/2addr v1, v3

    float-to-int p0, v1

    .line 295
    add-float/2addr p2, v3

    float-to-int p1, p2

    .line 296
    const/high16 p2, -0x1000000

    packed-switch v0, :pswitch_data_5c

    .line 310
    const/4 p0, 0x0

    return p0

    .line 308
    :pswitch_29
    shl-int/lit8 p0, p1, 0x10

    shl-int/lit8 p1, v2, 0x8

    add-int/2addr p0, p1

    add-int/2addr p0, v4

    or-int/2addr p0, p2

    return p0

    .line 306
    :pswitch_31
    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 v0, v2, 0x8

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0

    .line 304
    :pswitch_39
    shl-int/lit8 p0, v2, 0x10

    shl-int/lit8 v0, v4, 0x8

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0

    .line 302
    :pswitch_41
    shl-int/lit8 v0, v2, 0x10

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    or-int p0, v0, p2

    return p0

    .line 300
    :pswitch_4a
    shl-int/lit8 p0, v4, 0x10

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p0, p1

    add-int/2addr p0, v2

    or-int/2addr p0, p2

    return p0

    .line 298
    :pswitch_52
    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p1, p0

    add-int/2addr p1, v2

    or-int p0, p1, p2

    return p0

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4a
        :pswitch_41
        :pswitch_39
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method public static blacklist idFromLong(J)J
    .registers 4

    .line 62
    const-wide v0, 0x100000000L

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist idFromNan(F)I
    .registers 2

    .line 41
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 42
    const v0, 0x3fffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static blacklist idString(I)Ljava/lang/String;
    .registers 4

    .line 85
    const v0, 0xfffff

    if-le p0, v0, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_25

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist idStringFromNan(F)Ljava/lang/String;
    .registers 2

    .line 73
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    const v0, 0x3fffff

    and-int/2addr p0, v0

    .line 74
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist interpolateColor(IIF)I
    .registers 14

    .line 225
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b6

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_d

    goto/16 :goto_b6

    .line 227
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_14

    .line 228
    return p1

    .line 230
    :cond_14
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 231
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 232
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 233
    and-int/lit16 p0, p0, 0xff

    .line 234
    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    float-to-double v4, v1

    const-wide v6, 0x400199999999999aL    # 2.2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 235
    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 236
    int-to-float p0, p0

    div-float/2addr p0, v3

    float-to-double v4, p0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p0, v4

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 240
    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 242
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 243
    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 244
    shr-int/lit8 v8, p1, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 245
    and-int/lit16 p1, p1, 0xff

    .line 246
    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-double v9, v5

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v5, v9

    .line 247
    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 248
    int-to-float p1, p1

    div-float/2addr p1, v3

    float-to-double v9, p1

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float p1, v6

    .line 249
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 253
    sub-float/2addr v5, v1

    mul-float/2addr v5, p2

    add-float/2addr v1, v5

    .line 254
    sub-float/2addr v8, v2

    mul-float/2addr v8, p2

    add-float/2addr v2, v8

    .line 255
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 256
    sub-float/2addr v4, v0

    mul-float/2addr p2, v4

    add-float/2addr v0, p2

    .line 258
    float-to-double p1, v1

    const-wide v4, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result p1

    .line 259
    float-to-double v1, v2

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p2, v1

    mul-float/2addr p2, v3

    float-to-int p2, p2

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result p2

    .line 260
    float-to-double v1, p0

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr p0, v3

    float-to-int p0, p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result p0

    .line 261
    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->clamp(I)I

    move-result v0

    .line 263
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0

    .line 226
    :cond_b6
    :goto_b6
    return p0
.end method

.method public static blacklist isVariable(F)Z
    .registers 3

    .line 195
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 196
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    .line 197
    if-nez p0, :cond_e

    return v1

    .line 198
    :cond_e
    const/16 v0, 0x28

    if-gt p0, v0, :cond_16

    const/16 v0, 0xa

    if-ge p0, v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1

    .line 200
    :cond_18
    return v1
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .registers 5

    .line 142
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 143
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static blacklist logStack(Ljava/lang/String;I)V
    .registers 9

    .line 179
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 180
    const/4 v1, 0x1

    move v2, v1

    :goto_b
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_5a

    .line 181
    aget-object v3, v0, v2

    .line 182
    new-instance v4, Ljava/lang/String;

    new-array v5, v2, [C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 183
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 184
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 186
    :cond_5a
    return-void
.end method

.method public static blacklist logString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 161
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    return-object p0
.end method

.method public static blacklist longIdFromNan(F)J
    .registers 5

    .line 52
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist toARGB(FFFF)I
    .registers 6

    .line 323
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 324
    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 325
    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 326
    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    float-to-int p3, p3

    .line 327
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static blacklist trimString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_20

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 100
    :cond_20
    return-object p0
.end method
