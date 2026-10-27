.class public Landroid/graphics/Matrix44;
.super Ljava/lang/Object;
.source "Matrix44.java"


# instance fields
.field final blacklist mBackingArray:[F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_e

    iput-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    .line 46
    return-void

    nop

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/graphics/Matrix;)V
    .registers 22

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 64
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 65
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v7, v1, v6

    const/4 v8, 0x3

    aget v9, v1, v8

    const/4 v10, 0x4

    aget v11, v1, v10

    const/4 v12, 0x5

    aget v13, v1, v12

    const/4 v14, 0x6

    aget v15, v1, v14

    const/16 v16, 0x7

    aget v17, v1, v16

    const/16 v18, 0x8

    aget v1, v1, v18

    move/from16 v19, v0

    const/16 v0, 0x10

    new-array v0, v0, [F

    aput v3, v0, v2

    aput v5, v0, v4

    const/4 v2, 0x0

    aput v2, v0, v6

    aput v7, v0, v8

    aput v9, v0, v10

    aput v11, v0, v12

    aput v2, v0, v14

    aput v13, v0, v16

    aput v2, v0, v18

    aput v2, v0, v19

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xa

    aput v3, v0, v4

    const/16 v3, 0xb

    aput v2, v0, v3

    const/16 v3, 0xc

    aput v15, v0, v3

    const/16 v3, 0xd

    aput v17, v0, v3

    const/16 v3, 0xe

    aput v2, v0, v3

    const/16 v2, 0xf

    aput v1, v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/Matrix44;->mBackingArray:[F

    .line 69
    return-void
.end method

.method private static blacklist dot(FFFFFFFF)F
    .registers 8

    .line 224
    mul-float/2addr p0, p4

    mul-float/2addr p1, p5

    add-float/2addr p0, p1

    mul-float/2addr p2, p6

    add-float/2addr p0, p2

    mul-float/2addr p3, p7

    add-float/2addr p0, p3

    return p0
.end method

.method private static blacklist dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F
    .registers 7

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v1

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v1, v0

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 217
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 218
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result p0

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    .line 215
    return v1
.end method


# virtual methods
.method public whitelist concat(Landroid/graphics/Matrix44;)Landroid/graphics/Matrix44;
    .registers 24

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v3

    .line 270
    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v5

    .line 271
    const/4 v6, 0x2

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v7

    .line 272
    const/4 v8, 0x3

    invoke-static {v0, v1, v2, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v9

    .line 273
    invoke-static {v0, v1, v4, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v10

    .line 274
    invoke-static {v0, v1, v4, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v11

    .line 275
    invoke-static {v0, v1, v4, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v12

    .line 276
    invoke-static {v0, v1, v4, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v13

    .line 277
    invoke-static {v0, v1, v6, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v14

    .line 278
    invoke-static {v0, v1, v6, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v15

    .line 279
    invoke-static {v0, v1, v6, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v16

    .line 280
    invoke-static {v0, v1, v6, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v17

    .line 281
    invoke-static {v0, v1, v8, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v18

    .line 282
    invoke-static {v0, v1, v8, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v19

    .line 283
    invoke-static {v0, v1, v8, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v20

    .line 284
    invoke-static {v0, v1, v8, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v1

    .line 286
    move/from16 v21, v2

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v3, v2, v21

    .line 287
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v5, v2, v4

    .line 288
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v7, v2, v6

    .line 289
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v9, v2, v8

    .line 290
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x4

    aput v10, v2, v3

    .line 291
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x5

    aput v11, v2, v3

    .line 292
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x6

    aput v12, v2, v3

    .line 293
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x7

    aput v13, v2, v3

    .line 294
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v3, 0x8

    aput v14, v2, v3

    .line 295
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v3, 0x9

    aput v15, v2, v3

    .line 296
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v3, 0xa

    aput v16, v2, v3

    .line 297
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v3, 0xb

    aput v17, v2, v3

    .line 298
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v3, 0xc

    aput v18, v2, v3

    .line 299
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v3, 0xd

    aput v19, v2, v3

    .line 300
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v3, 0xe

    aput v20, v2, v3

    .line 301
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v3, 0xf

    aput v1, v2, v3

    .line 303
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 460
    instance-of v0, p1, Landroid/graphics/Matrix44;

    if-eqz v0, :cond_f

    .line 461
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    check-cast p1, Landroid/graphics/Matrix44;

    iget-object p1, p1, Landroid/graphics/Matrix44;->mBackingArray:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    .line 463
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist get(II)F
    .registers 5

    .line 109
    if-ltz p1, :cond_10

    const/4 v0, 0x4

    if-ge p1, v0, :cond_10

    if-ltz p2, :cond_10

    if-ge p2, v0, :cond_10

    .line 110
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    aget p1, v1, p1

    return p1

    .line 112
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid row and column values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getValues([F)V
    .registers 5

    .line 79
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    .line 80
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-void

    .line 82
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Dst array must be of length 16"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 468
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist invert()Z
    .registers 50

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 150
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 151
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 152
    iget-object v7, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    .line 153
    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    .line 154
    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    .line 155
    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v14, 0x6

    aget v13, v13, v14

    .line 156
    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v16, 0x7

    aget v15, v15, v16

    .line 157
    move/from16 v17, v2

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v18, 0x8

    aget v2, v2, v18

    .line 158
    move/from16 v19, v4

    iget-object v4, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v20, 0x9

    aget v4, v4, v20

    .line 159
    move/from16 v21, v6

    iget-object v6, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v22, 0xa

    aget v6, v6, v22

    .line 160
    move/from16 v23, v8

    iget-object v8, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v24, 0xb

    aget v8, v8, v24

    .line 161
    move/from16 v25, v10

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v26, 0xc

    aget v10, v10, v26

    .line 162
    move/from16 v27, v12

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v28, 0xd

    aget v12, v12, v28

    .line 163
    move/from16 v29, v14

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v30, 0xe

    aget v14, v14, v30

    .line 164
    move/from16 v31, v5

    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v32, 0xf

    aget v5, v5, v32

    .line 165
    mul-float v33, v1, v11

    mul-float v34, v3, v9

    sub-float v33, v33, v34

    .line 166
    mul-float v34, v1, v13

    mul-float v35, v31, v9

    sub-float v34, v34, v35

    .line 167
    mul-float v35, v1, v15

    mul-float v36, v7, v9

    sub-float v35, v35, v36

    .line 168
    mul-float v36, v3, v13

    mul-float v37, v31, v11

    sub-float v36, v36, v37

    .line 169
    mul-float v37, v3, v15

    mul-float v38, v7, v11

    sub-float v37, v37, v38

    .line 170
    mul-float v38, v31, v15

    mul-float v39, v7, v13

    sub-float v38, v38, v39

    .line 171
    mul-float v39, v2, v12

    mul-float v40, v4, v10

    sub-float v39, v39, v40

    .line 172
    mul-float v40, v2, v14

    mul-float v41, v6, v10

    sub-float v40, v40, v41

    .line 173
    mul-float v41, v2, v5

    mul-float v42, v8, v10

    sub-float v41, v41, v42

    .line 174
    mul-float v42, v4, v14

    mul-float v43, v6, v12

    sub-float v42, v42, v43

    .line 175
    mul-float v43, v4, v5

    mul-float v44, v8, v12

    sub-float v43, v43, v44

    .line 176
    mul-float v44, v6, v5

    mul-float v45, v8, v14

    sub-float v44, v44, v45

    .line 177
    mul-float v45, v33, v44

    mul-float v46, v34, v43

    sub-float v45, v45, v46

    mul-float v46, v35, v42

    add-float v45, v45, v46

    mul-float v46, v36, v41

    add-float v45, v45, v46

    mul-float v46, v37, v40

    sub-float v45, v45, v46

    mul-float v46, v38, v39

    add-float v45, v45, v46

    .line 178
    const/16 v46, 0x0

    cmpl-float v46, v45, v46

    if-nez v46, :cond_d0

    .line 179
    return v17

    .line 181
    :cond_d0
    const/high16 v46, 0x3f800000    # 1.0f

    div-float v46, v46, v45

    .line 182
    move/from16 v45, v5

    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v47, v11, v44

    mul-float v48, v13, v43

    sub-float v47, v47, v48

    mul-float v48, v15, v42

    add-float v47, v47, v48

    mul-float v47, v47, v46

    aput v47, v5, v17

    .line 183
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move-object/from16 v17, v5

    neg-float v5, v3

    mul-float v5, v5, v44

    mul-float v47, v31, v43

    add-float v5, v5, v47

    mul-float v47, v7, v42

    sub-float v5, v5, v47

    mul-float v5, v5, v46

    aput v5, v17, v19

    .line 184
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v17, v12, v38

    mul-float v47, v14, v37

    sub-float v17, v17, v47

    mul-float v47, v45, v36

    add-float v17, v17, v47

    mul-float v17, v17, v46

    aput v17, v5, v21

    .line 185
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move/from16 v17, v3

    neg-float v3, v4

    mul-float v3, v3, v38

    mul-float v21, v6, v37

    add-float v3, v3, v21

    mul-float v21, v8, v36

    sub-float v3, v3, v21

    mul-float v3, v3, v46

    aput v3, v5, v23

    .line 186
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v5, v9

    mul-float v21, v5, v44

    mul-float v23, v13, v41

    add-float v21, v21, v23

    mul-float v23, v15, v40

    sub-float v21, v21, v23

    mul-float v21, v21, v46

    aput v21, v3, v25

    .line 187
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v44, v44, v1

    mul-float v21, v31, v41

    sub-float v44, v44, v21

    mul-float v21, v7, v40

    add-float v44, v44, v21

    mul-float v44, v44, v46

    aput v44, v3, v27

    .line 188
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move-object/from16 v21, v3

    neg-float v3, v10

    mul-float v23, v3, v38

    mul-float v25, v14, v35

    add-float v23, v23, v25

    mul-float v25, v45, v34

    sub-float v23, v23, v25

    mul-float v23, v23, v46

    aput v23, v21, v29

    .line 189
    move/from16 v21, v3

    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v38, v38, v2

    mul-float v23, v6, v35

    sub-float v38, v38, v23

    mul-float v23, v8, v34

    add-float v38, v38, v23

    mul-float v38, v38, v46

    aput v38, v3, v16

    .line 190
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v9, v9, v43

    mul-float v16, v11, v41

    sub-float v9, v9, v16

    mul-float v15, v15, v39

    add-float/2addr v9, v15

    mul-float v9, v9, v46

    aput v9, v3, v18

    .line 191
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v9, v1

    mul-float v9, v9, v43

    mul-float v15, v17, v41

    add-float/2addr v9, v15

    mul-float v7, v7, v39

    sub-float/2addr v9, v7

    mul-float v9, v9, v46

    aput v9, v3, v20

    .line 192
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v10, v10, v37

    mul-float v7, v12, v35

    sub-float/2addr v10, v7

    mul-float v7, v45, v33

    add-float/2addr v10, v7

    mul-float v10, v10, v46

    aput v10, v3, v22

    .line 193
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v7, v2

    mul-float v7, v7, v37

    mul-float v35, v35, v4

    add-float v7, v7, v35

    mul-float v8, v8, v33

    sub-float/2addr v7, v8

    mul-float v7, v7, v46

    aput v7, v3, v24

    .line 194
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v5, v5, v42

    mul-float v11, v11, v40

    add-float/2addr v5, v11

    mul-float v13, v13, v39

    sub-float/2addr v5, v13

    mul-float v5, v5, v46

    aput v5, v3, v26

    .line 195
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v1, v1, v42

    mul-float v5, v17, v40

    sub-float/2addr v1, v5

    mul-float v5, v31, v39

    add-float/2addr v1, v5

    mul-float v1, v1, v46

    aput v1, v3, v28

    .line 196
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v3, v21, v36

    mul-float v12, v12, v34

    add-float/2addr v3, v12

    mul-float v14, v14, v33

    sub-float/2addr v3, v14

    mul-float v3, v3, v46

    aput v3, v1, v30

    .line 197
    iget-object v0, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v2, v2, v36

    mul-float v4, v4, v34

    sub-float/2addr v2, v4

    mul-float v6, v6, v33

    add-float/2addr v2, v6

    mul-float v2, v2, v46

    aput v2, v0, v32

    .line 198
    return v19
.end method

.method public whitelist isIdentity()Z
    .registers 5

    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 207
    rem-int/lit8 v2, v1, 0x4

    div-int/lit8 v3, v1, 0x4

    if-ne v2, v3, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 208
    :goto_11
    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1a

    return v0

    .line 206
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist map(FFFF[F)V
    .registers 13

    .line 247
    array-length v0, p5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_80

    .line 250
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    mul-float/2addr v0, p1

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v0, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v5, 0x2

    aget v3, v3, v5

    mul-float/2addr v3, p3

    add-float/2addr v0, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x3

    aget v3, v3, v6

    mul-float/2addr v3, p4

    add-float/2addr v0, v3

    aput v0, p5, v2

    .line 252
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    aput v0, p5, v4

    .line 254
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    aput v0, p5, v5

    .line 256
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    mul-float/2addr p1, v0

    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    iget-object p2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v0, 0xe

    aget p2, p2, v0

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    iget-object p2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 p3, 0xf

    aget p2, p2, p3

    mul-float/2addr p4, p2

    add-float/2addr p1, p4

    aput p1, p5, v6

    .line 258
    return-void

    .line 248
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Dst array must be of length 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist map(FFFF)[F
    .registers 12

    .line 236
    const/4 v0, 0x4

    new-array v6, v0, [F

    .line 237
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix44;->map(FFFF[F)V

    .line 238
    return-object v6
.end method

.method public whitelist reset()V
    .registers 5

    .line 137
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 138
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    rem-int/lit8 v2, v0, 0x4

    div-int/lit8 v3, v0, 0x4

    if-ne v2, v3, :cond_11

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    aput v2, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_17
    return-void
.end method

.method public whitelist rotate(FFFF)Landroid/graphics/Matrix44;
    .registers 57

    .line 320
    move-object/from16 v0, p0

    add-float v1, p2, p3

    add-float v1, v1, p4

    .line 321
    div-float v2, p2, v1

    .line 322
    div-float v3, p3, v1

    .line 323
    div-float v1, p4, v1

    .line 325
    move/from16 v4, p1

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 326
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 327
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    .line 329
    mul-float v7, v5, v2

    mul-float v8, v7, v2

    add-float v13, v8, v6

    .line 330
    mul-float v8, v7, v3

    mul-float v9, v4, v1

    sub-float v18, v8, v9

    .line 331
    mul-float/2addr v7, v1

    mul-float v10, v4, v3

    add-float v23, v7, v10

    .line 332
    add-float v14, v8, v9

    .line 333
    mul-float v8, v5, v3

    mul-float/2addr v3, v8

    add-float v19, v3, v6

    .line 334
    mul-float/2addr v8, v1

    mul-float/2addr v4, v2

    sub-float v24, v8, v4

    .line 335
    sub-float v15, v7, v10

    .line 336
    add-float v20, v8, v4

    .line 337
    mul-float/2addr v5, v1

    mul-float/2addr v5, v1

    add-float v25, v5, v6

    .line 339
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v9, v1, v2

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x1

    aget v10, v1, v3

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x2

    aget v11, v1, v4

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v5, 0x3

    aget v12, v1, v5

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v1

    .line 341
    move v8, v14

    move v7, v15

    iget-object v6, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v6, v2

    iget-object v6, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v6, v3

    iget-object v6, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v6, v4

    iget-object v6, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v17, v6, v5

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v6

    .line 343
    move/from16 v17, v19

    move/from16 v27, v20

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v19, v9, v2

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v20, v9, v3

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v21, v9, v4

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v22, v9, v5

    const/16 v26, 0x0

    invoke-static/range {v19 .. v26}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v28

    .line 345
    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v29, v9, v2

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v30, v9, v3

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v31, v9, v4

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v32, v9, v5

    const/16 v35, 0x0

    const/high16 v36, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v29 .. v36}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v29

    .line 347
    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v30, 0x4

    aget v9, v9, v30

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v31, 0x5

    aget v10, v10, v31

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v32, 0x6

    aget v11, v11, v32

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v33, 0x7

    aget v12, v12, v33

    const/16 v16, 0x0

    move v15, v7

    move v14, v8

    invoke-static/range {v9 .. v16}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v7

    .line 349
    move v9, v15

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v30

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v10, v31

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v10, v32

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v10, v10, v33

    const/16 v21, 0x0

    move/from16 v19, v17

    move/from16 v20, v27

    move/from16 v17, v10

    invoke-static/range {v14 .. v21}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v27

    .line 351
    move/from16 v17, v19

    move/from16 v34, v20

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v19, v10, v30

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v20, v10, v31

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v21, v10, v32

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v22, v10, v33

    invoke-static/range {v19 .. v26}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v35

    .line 353
    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v36, v10, v30

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v37, v10, v31

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v38, v10, v32

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v39, v10, v33

    const/16 v42, 0x0

    const/high16 v43, 0x3f800000    # 1.0f

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-static/range {v36 .. v43}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v36

    .line 355
    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v37, 0x8

    aget v10, v10, v37

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v38, 0x9

    aget v11, v11, v38

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v39, 0xa

    aget v12, v12, v39

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v40, 0xb

    aget v14, v14, v40

    const/16 v16, 0x0

    move v15, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v14

    move v14, v8

    invoke-static/range {v9 .. v16}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v8

    .line 357
    move v9, v14

    move v10, v15

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v11, v37

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v11, v38

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v11, v39

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v11, v11, v40

    const/16 v21, 0x0

    move/from16 v19, v17

    move/from16 v20, v34

    move/from16 v17, v11

    invoke-static/range {v14 .. v21}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v34

    .line 359
    move/from16 v17, v19

    move/from16 v41, v20

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v19, v11, v37

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v20, v11, v38

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v21, v11, v39

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v22, v11, v40

    invoke-static/range {v19 .. v26}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v42

    .line 361
    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v43, v11, v37

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v44, v11, v38

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v45, v11, v39

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v46, v11, v40

    const/16 v49, 0x0

    const/high16 v50, 0x3f800000    # 1.0f

    const/16 v47, 0x0

    const/16 v48, 0x0

    invoke-static/range {v43 .. v50}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v43

    .line 363
    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v44, 0xc

    aget v11, v11, v44

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v45, 0xd

    aget v12, v12, v45

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v46, 0xe

    aget v14, v14, v46

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v47, 0xf

    aget v15, v15, v47

    const/16 v16, 0x0

    move/from16 v51, v14

    move v14, v9

    move v9, v11

    move/from16 v11, v51

    move/from16 v51, v15

    move v15, v10

    move v10, v12

    move/from16 v12, v51

    invoke-static/range {v9 .. v16}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v9

    .line 365
    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v10, v44

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v10, v45

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v10, v46

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v10, v10, v47

    const/16 v21, 0x0

    move/from16 v19, v17

    move/from16 v20, v41

    move/from16 v17, v10

    invoke-static/range {v14 .. v21}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v10

    .line 367
    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v19, v11, v44

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v20, v11, v45

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v21, v11, v46

    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v22, v11, v47

    invoke-static/range {v19 .. v26}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v11

    .line 369
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v13, v12, v44

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v14, v12, v45

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v12, v46

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v12, v47

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v12

    .line 372
    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v1, v13, v2

    .line 373
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v6, v1, v3

    .line 374
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v28, v1, v4

    .line 375
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v29, v1, v5

    .line 376
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v7, v1, v30

    .line 377
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v27, v1, v31

    .line 378
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v35, v1, v32

    .line 379
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v36, v1, v33

    .line 380
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v8, v1, v37

    .line 381
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v34, v1, v38

    .line 382
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v42, v1, v39

    .line 383
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v43, v1, v40

    .line 384
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v9, v1, v44

    .line 385
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v10, v1, v45

    .line 386
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v11, v1, v46

    .line 387
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v12, v1, v47

    .line 389
    return-object v0
.end method

.method public whitelist scale(FFF)Landroid/graphics/Matrix44;
    .registers 7

    .line 402
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 403
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 404
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0x8

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 405
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 406
    iget-object p1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v0, 0x1

    aget v1, p1, v0

    mul-float/2addr v1, p2

    aput v1, p1, v0

    .line 407
    iget-object p1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v0, 0x5

    aget v1, p1, v0

    mul-float/2addr v1, p2

    aput v1, p1, v0

    .line 408
    iget-object p1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v0, 0x9

    aget v1, p1, v0

    mul-float/2addr v1, p2

    aput v1, p1, v0

    .line 409
    iget-object p1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v0, 0xd

    aget v1, p1, v0

    mul-float/2addr v1, p2

    aput v1, p1, v0

    .line 410
    iget-object p1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 p2, 0x2

    aget v0, p1, p2

    mul-float/2addr v0, p3

    aput v0, p1, p2

    .line 411
    iget-object p1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 p2, 0x6

    aget v0, p1, p2

    mul-float/2addr v0, p3

    aput v0, p1, p2

    .line 412
    iget-object p1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 p2, 0xa

    aget v0, p1, p2

    mul-float/2addr v0, p3

    aput v0, p1, p2

    .line 413
    iget-object p1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 p2, 0xe

    aget v0, p1, p2

    mul-float/2addr v0, p3

    aput v0, p1, p2

    .line 415
    return-object p0
.end method

.method public whitelist set(IIF)V
    .registers 6

    .line 125
    if-ltz p1, :cond_10

    const/4 v0, 0x4

    if-ge p1, v0, :cond_10

    if-ltz p2, :cond_10

    if-ge p2, v0, :cond_10

    .line 126
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    aput p3, v1, p1

    .line 130
    return-void

    .line 128
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid row and column values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setValues([F)V
    .registers 5

    .line 94
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    .line 95
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-void

    .line 97
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Src array must be of length 16"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 19

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 452
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x4

    aget v1, v1, v6

    .line 453
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v7, 0x5

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v8, 0x6

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v9, 0x7

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v10, 0x8

    aget v1, v1, v10

    .line 454
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v11, 0x9

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v12, 0xa

    aget v1, v1, v12

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v13, 0xb

    aget v1, v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v14, 0xc

    aget v1, v1, v14

    .line 455
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v15, 0xd

    aget v1, v1, v15

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v16, 0xe

    aget v1, v1, v16

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget-object v0, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xf

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 447
    const-string/jumbo v1, "| %f %f %f %f |\n| %f %f %f %f |\n| %f %f %f %f |\n| %f %f %f %f |\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist translate(FFF)Landroid/graphics/Matrix44;
    .registers 12

    .line 428
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    add-float/2addr v0, v1

    .line 430
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x4

    aget v1, v1, v3

    mul-float/2addr v1, p1

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    add-float/2addr v1, v3

    .line 432
    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v5, 0x8

    aget v3, v3, v5

    mul-float/2addr v3, p1

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v5, p3

    add-float/2addr v3, v5

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    add-float/2addr v3, v5

    .line 434
    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v7, 0xc

    aget v5, v5, v7

    mul-float/2addr p1, v5

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v7, 0xd

    aget v5, v5, v7

    mul-float/2addr p2, v5

    add-float/2addr p1, p2

    iget-object p2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v5, 0xe

    aget p2, p2, v5

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    iget-object p2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 p3, 0xf

    aget p2, p2, p3

    add-float/2addr p1, p2

    .line 437
    iget-object p2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v0, p2, v2

    .line 438
    iget-object p2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v1, p2, v4

    .line 439
    iget-object p2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v3, p2, v6

    .line 440
    iget-object p2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput p1, p2, p3

    .line 442
    return-object p0
.end method
