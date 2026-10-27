.class public final Lcom/android/internal/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;
    }
.end annotation


# static fields
.field private static final blacklist MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final blacklist MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final blacklist TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final blacklist XYZ_EPSILON:D = 0.008856

.field private static final blacklist XYZ_KAPPA:D = 903.3

.field private static final blacklist XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final blacklist XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final blacklist XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist CAMToColor(FFF)I
    .registers 3

    .line 367
    invoke-static {p0, p1, p2}, Lcom/android/internal/graphics/cam/Cam;->getInt(FFF)I

    move-result p0

    return p0
.end method

.method public static blacklist HSLToColor([F)I
    .registers 7

    .line 288
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 289
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 290
    const/4 v3, 0x2

    aget p0, p0, v3

    .line 292
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, p0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v4, v2

    .line 293
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float/2addr p0, v2

    .line 294
    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v1, v2

    rem-float/2addr v2, v3

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    .line 296
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    .line 298
    nop

    .line 300
    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v1, :pswitch_data_b8

    move p0, v0

    move v1, p0

    move v3, v1

    goto :goto_a4

    .line 328
    :pswitch_34
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 329
    mul-float v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 330
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_a4

    .line 322
    :pswitch_47
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 323
    mul-float v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 324
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 325
    goto :goto_a4

    .line 317
    :pswitch_5a
    mul-float v1, p0, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 318
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 319
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 320
    goto :goto_a4

    .line 312
    :pswitch_6d
    mul-float v1, p0, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 313
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 314
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 315
    goto :goto_a4

    .line 307
    :pswitch_80
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 308
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 309
    mul-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 310
    goto :goto_a4

    .line 302
    :pswitch_92
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 303
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 304
    mul-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 305
    nop

    .line 334
    :goto_a4
    const/16 v2, 0xff

    invoke-static {v1, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v1

    .line 335
    invoke-static {v3, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v3

    .line 336
    invoke-static {p0, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result p0

    .line 338
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

.method public static blacklist LABToColor(DDD)I
    .registers 13

    .line 581
    invoke-static {}, Lcom/android/internal/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v6

    .line 582
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    .line 583
    const/4 p0, 0x0

    aget-wide v0, v6, p0

    const/4 p0, 0x1

    aget-wide v2, v6, p0

    const/4 p0, 0x2

    aget-wide v4, v6, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result p0

    return p0
.end method

.method public static blacklist LABToXYZ(DDD[D)V
    .registers 26

    .line 524
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    .line 525
    const-wide v6, 0x407f400000000000L    # 500.0

    div-double v6, p2, v6

    add-double/2addr v6, v2

    .line 526
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double v8, p4, v8

    sub-double v8, v2, v8

    .line 528
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 529
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v16, v12, v14

    const-wide v17, 0x408c3a6666666666L    # 903.3

    if-lez v16, :cond_2a

    goto :goto_2e

    :cond_2a
    mul-double/2addr v6, v4

    sub-double/2addr v6, v0

    div-double v12, v6, v17

    .line 530
    :goto_2e
    const-wide v6, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v6, p0, v6

    if-lez v6, :cond_3c

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_3e

    :cond_3c
    div-double v2, p0, v17

    .line 532
    :goto_3e
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 533
    cmpl-double v10, v6, v14

    if-lez v10, :cond_47

    goto :goto_4b

    :cond_47
    mul-double/2addr v8, v4

    sub-double/2addr v8, v0

    div-double v6, v8, v17

    .line 535
    :goto_4b
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    mul-double/2addr v12, v0

    const/4 v0, 0x0

    aput-wide v12, p6, v0

    .line 536
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v0

    const/4 v0, 0x1

    aput-wide v2, p6, v0

    .line 537
    const-wide v0, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v6, v0

    const/4 v0, 0x2

    aput-wide v6, p6, v0

    .line 538
    return-void
.end method

.method public static blacklist RGBToHSL(III[F)V
    .registers 11

    .line 223
    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    .line 224
    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 225
    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 227
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 228
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 229
    sub-float v2, v0, v1

    .line 232
    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 234
    cmpl-float v1, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v1, :cond_29

    .line 236
    move p1, v6

    move v2, p1

    goto :goto_4a

    .line 238
    :cond_29
    cmpl-float v1, v0, p0

    if-nez v1, :cond_33

    .line 239
    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    goto :goto_41

    .line 240
    :cond_33
    cmpl-float v0, v0, p1

    if-nez v0, :cond_3c

    .line 241
    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float p1, p2, v4

    goto :goto_41

    .line 243
    :cond_3c
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p1, p0

    .line 246
    :goto_41
    mul-float/2addr v4, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float p0, v5, p0

    div-float/2addr v2, p0

    .line 249
    :goto_4a
    const/high16 p0, 0x42700000    # 60.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p1, p0

    .line 250
    cmpg-float p2, p1, v6

    if-gez p2, :cond_55

    .line 251
    add-float/2addr p1, p0

    .line 254
    :cond_55
    const/4 p2, 0x0

    invoke-static {p1, v6, p0}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result p0

    aput p0, p3, p2

    .line 255
    const/4 p0, 0x1

    invoke-static {v2, v6, v5}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    .line 256
    const/4 p0, 0x2

    invoke-static {v3, v6, v5}, Lcom/android/internal/graphics/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    .line 257
    return-void
.end method

.method public static blacklist RGBToLAB(III[D)V
    .registers 11

    .line 410
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 412
    const/4 p0, 0x0

    aget-wide v0, p3, p0

    const/4 p0, 0x1

    aget-wide v2, p3, p0

    const/4 p0, 0x2

    aget-wide v4, p3, p0

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    .line 414
    return-void
.end method

.method public static blacklist RGBToXYZ(III[D)V
    .registers 24

    .line 455
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a5

    .line 459
    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    .line 460
    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v7, v1, v5

    const-wide v8, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v10, 0x4003333333333333L    # 2.4

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v7, :cond_2e

    div-double/2addr v1, v8

    goto :goto_34

    :cond_2e
    add-double/2addr v1, v14

    div-double/2addr v1, v12

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 461
    :goto_34
    move/from16 v7, p1

    move-wide/from16 v16, v3

    int-to-double v3, v7

    div-double v3, v3, v16

    .line 462
    cmpg-double v7, v3, v5

    if-gez v7, :cond_41

    div-double/2addr v3, v8

    goto :goto_47

    :cond_41
    add-double/2addr v3, v14

    div-double/2addr v3, v12

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 463
    :goto_47
    move/from16 v7, p2

    move-wide/from16 v18, v5

    int-to-double v5, v7

    div-double v5, v5, v16

    .line 464
    cmpg-double v7, v5, v18

    if-gez v7, :cond_54

    div-double/2addr v5, v8

    goto :goto_5a

    :cond_54
    add-double/2addr v5, v14

    div-double/2addr v5, v12

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 466
    :goto_5a
    const-wide v7, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v7, v1

    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    const-wide v9, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    const/4 v11, 0x0

    aput-wide v7, v0, v11

    .line 467
    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v7, v1

    const-wide v11, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v11, v3

    add-double/2addr v7, v11

    const-wide v11, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v11, v5

    add-double/2addr v7, v11

    mul-double/2addr v7, v9

    const/4 v11, 0x1

    aput-wide v7, v0, v11

    .line 468
    const-wide v7, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v1, v7

    const-wide v7, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v3, v7

    add-double/2addr v1, v3

    const-wide v3, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v5, v3

    add-double/2addr v1, v5

    mul-double/2addr v1, v9

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 469
    return-void

    .line 456
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist XYZToColor(DDD)I
    .registers 23

    .line 555
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v0, v0, p0

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double v2, v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 556
    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v4, v4, p0

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v6, v6, p2

    add-double/2addr v4, v6

    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    mul-double v6, v6, p4

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 557
    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v6, v6, p0

    const-wide v8, -0x4035e353f7ced917L    # -0.204

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    .line 559
    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v8, v0, v2

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v8, :cond_6e

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v13

    sub-double/2addr v0, v9

    goto :goto_6f

    :cond_6e
    mul-double/2addr v0, v15

    .line 560
    :goto_6f
    cmpl-double v8, v4, v2

    if-lez v8, :cond_7a

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v13

    sub-double/2addr v4, v9

    goto :goto_7b

    :cond_7a
    mul-double/2addr v4, v15

    .line 561
    :goto_7b
    cmpl-double v2, v6, v2

    if-lez v2, :cond_86

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v13

    sub-double/2addr v2, v9

    goto :goto_88

    :cond_86
    mul-double v2, v6, v15

    .line 563
    :goto_88
    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v6

    .line 564
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    const/16 v8, 0xff

    invoke-static {v0, v1, v8}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v0

    mul-double/2addr v4, v6

    .line 565
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4, v1, v8}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v4

    mul-double/2addr v2, v6

    .line 566
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2, v1, v8}, Lcom/android/internal/graphics/ColorUtils;->constrain(III)I

    move-result v1

    .line 563
    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static blacklist XYZToLAB(DDD[D)V
    .registers 11

    .line 492
    array-length v0, p6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    .line 495
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p0

    .line 496
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p2

    .line 497
    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double/2addr p4, v0

    invoke-static {p4, p5}, Lcom/android/internal/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p4

    .line 498
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, p2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p6, v2

    .line 499
    const-wide v0, 0x407f400000000000L    # 500.0

    sub-double/2addr p0, p2

    mul-double/2addr p0, v0

    const/4 v0, 0x1

    aput-wide p0, p6, v0

    .line 500
    const-wide/high16 p0, 0x4069000000000000L    # 200.0

    sub-double/2addr p2, p4

    mul-double/2addr p2, p0

    const/4 p0, 0x2

    aput-wide p2, p6, p0

    .line 501
    return-void

    .line 493
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "outLab must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I
    .registers 12

    .line 184
    nop

    .line 185
    nop

    .line 186
    const/4 v0, 0x0

    const/16 v1, 0xff

    move v2, v1

    move v1, v0

    .line 188
    :goto_7
    const/16 v3, 0xa

    if-gt v0, v3, :cond_23

    sub-int v3, v2, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    .line 190
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 192
    invoke-interface {p3, p0, p1, v3}, Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;->calculateContrast(III)D

    move-result-wide v4

    .line 194
    float-to-double v6, p2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1f

    .line 195
    move v1, v3

    goto :goto_20

    .line 197
    :cond_1f
    move v2, v3

    .line 200
    :goto_20
    add-int/lit8 v0, v0, 0x1

    .line 201
    goto :goto_7

    .line 204
    :cond_23
    return v2
.end method

.method public static blacklist blendARGB(IIF)I
    .registers 8

    .line 622
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 623
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 624
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 625
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 626
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    .line 627
    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blacklist blendHSL([F[FF[F)V
    .registers 8

    .line 644
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 647
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 649
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Lcom/android/internal/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v2

    aput v2, p3, v1

    .line 650
    const/4 v1, 0x1

    aget v2, p0, v1

    mul-float/2addr v2, v0

    aget v3, p1, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 651
    const/4 v1, 0x2

    aget p0, p0, v1

    mul-float/2addr p0, v0

    aget p1, p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    aput p0, p3, v1

    .line 652
    return-void

    .line 645
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "result must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist blendLAB([D[DD[D)V
    .registers 12

    .line 667
    array-length v0, p4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 670
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    .line 671
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 672
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    .line 673
    const/4 v2, 0x2

    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide p0, p1, v2

    mul-double/2addr p0, p2

    add-double/2addr v3, p0

    aput-wide v3, p4, v2

    .line 674
    return-void

    .line 668
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "outResult must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist calculateContrast(II)D
    .registers 6

    .line 98
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2b

    .line 102
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_12

    .line 104
    invoke-static {p0, p1}, Lcom/android/internal/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 107
    :cond_12
    invoke-static {p0}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 108
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 111
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 99
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background can not be translucent: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist calculateLuminance(I)D
    .registers 5

    .line 84
    invoke-static {}, Lcom/android/internal/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 85
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 87
    const/4 p0, 0x1

    aget-wide v0, v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist calculateMinimumAlpha(IIF)I
    .registers 9

    .line 151
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_21

    .line 156
    new-instance v0, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 162
    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;->calculateContrast(III)D

    move-result-wide v2

    .line 163
    float-to-double v4, p2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_18

    .line 165
    const/4 p0, -0x1

    return p0

    .line 167
    :cond_18
    invoke-static {p0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 168
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I

    move-result p0

    return p0

    .line 152
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "background can not be translucent: #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist calculateMinimumBackgroundAlpha(IIF)I
    .registers 5

    .line 128
    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 129
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 130
    new-instance v1, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/internal/graphics/ColorUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p0, p1, p2, v1}, Lcom/android/internal/graphics/ColorUtils;->binaryAlphaSearch(IIFLcom/android/internal/graphics/ColorUtils$ContrastCalculator;)I

    move-result p0

    return p0
.end method

.method static blacklist circularInterpolate(FFF)F
    .registers 5

    .line 677
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_15

    .line 678
    cmpl-float v0, p1, p0

    if-lez v0, :cond_14

    .line 679
    add-float/2addr p0, v1

    goto :goto_15

    .line 681
    :cond_14
    add-float/2addr p1, v1

    .line 684
    :cond_15
    :goto_15
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    rem-float/2addr p0, v1

    return p0
.end method

.method public static blacklist colorToCAM(I)Lcom/android/internal/graphics/cam/Cam;
    .registers 1

    .line 350
    invoke-static {p0}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist colorToHSL(I[F)V
    .registers 4

    .line 271
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 272
    return-void
.end method

.method public static blacklist colorToLAB(I[D)V
    .registers 4

    .line 389
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 390
    return-void
.end method

.method public static blacklist colorToXYZ(I[D)V
    .registers 4

    .line 432
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 433
    return-void
.end method

.method public static blacklist compositeAlpha(II)I
    .registers 2

    .line 70
    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int/2addr p1, p0

    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method public static blacklist compositeColors(II)I
    .registers 8

    .line 52
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 53
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 54
    invoke-static {v1, v0}, Lcom/android/internal/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 56
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 56
    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 58
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 58
    invoke-static {v4, v1, v5, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 60
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 61
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 60
    invoke-static {p0, v1, p1, v0, v2}, Lcom/android/internal/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result p0

    .line 63
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static blacklist compositeComponent(IIIII)I
    .registers 5

    .line 74
    if-nez p4, :cond_4

    const/4 p0, 0x0

    return p0

    .line 75
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

    .line 596
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

    .line 600
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

.method public static blacklist distanceEuclidean([D[D)D
    .registers 11

    .line 590
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    .line 591
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    const/4 v2, 0x2

    aget-wide v5, p0, v2

    aget-wide p0, p1, v2

    sub-double/2addr v5, p0

    .line 592
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 590
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist getTempDouble3Array()[D
    .registers 2

    .line 688
    sget-object v0, Lcom/android/internal/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 689
    if-nez v0, :cond_12

    .line 690
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 691
    sget-object v1, Lcom/android/internal/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 693
    :cond_12
    return-object v0
.end method

.method static synthetic blacklist lambda$calculateMinimumAlpha$1(III)D
    .registers 3

    .line 157
    invoke-static {p0, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 158
    invoke-static {p0, p1}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$calculateMinimumBackgroundAlpha$0(IIII)D
    .registers 5

    .line 131
    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    invoke-static {p0, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    .line 134
    const/16 p2, 0xff

    invoke-static {p0, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 135
    invoke-static {p1, p0}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist pivotXyzComponent(D)D
    .registers 4

    .line 604
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_13

    .line 605
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_1f

    .line 606
    :cond_13
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    .line 604
    :goto_1f
    return-wide p0
.end method

.method public static blacklist setAlphaComponent(II)I
    .registers 3

    .line 376
    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    .line 379
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 377
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
