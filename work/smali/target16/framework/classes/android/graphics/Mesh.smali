.class public Landroid/graphics/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Mesh$MeshHolder;,
        Landroid/graphics/Mesh$Mode;
    }
.end annotation


# static fields
.field public static final whitelist TRIANGLES:I = 0x0

.field public static final whitelist TRIANGLE_STRIP:I = 0x1


# instance fields
.field private blacklist mIsIndexed:Z

.field private blacklist mNativeMeshWrapper:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Mesh;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/MeshSpecification;ILjava/nio/Buffer;ILandroid/graphics/RectF;)V
    .registers 18

    .line 83
    move-object/from16 v0, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p2, :cond_13

    const/4 v1, 0x1

    if-ne p2, v1, :cond_b

    goto :goto_13

    .line 85
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value passed in for mode parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_13
    :goto_13
    iget-wide v3, p1, Landroid/graphics/MeshSpecification;->mNativeMeshSpec:J

    .line 88
    move-wide v5, v3

    invoke-virtual {p3}, Ljava/nio/Buffer;->isDirect()Z

    move-result v4

    move-wide v7, v5

    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v6

    move-wide v8, v7

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-wide v9, v8

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-wide v10, v9

    iget v9, v0, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 87
    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move-wide v0, v10

    move v10, p1

    invoke-static/range {v0 .. v10}, Landroid/graphics/Mesh;->nativeMake(JILjava/nio/Buffer;ZIIFFFF)J

    move-result-wide v0

    .line 90
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3f

    .line 94
    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Mesh;->meshSetup(JZ)V

    .line 95
    return-void

    .line 91
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mesh construction failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/graphics/MeshSpecification;ILjava/nio/Buffer;ILjava/nio/ShortBuffer;Landroid/graphics/RectF;)V
    .registers 24

    .line 117
    move/from16 v4, p2

    move-object/from16 v0, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v1, 0x1

    if-eqz v4, :cond_15

    if-ne v4, v1, :cond_d

    goto :goto_15

    .line 119
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value passed in for mode parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_15
    :goto_15
    move-object/from16 v2, p1

    iget-wide v2, v2, Landroid/graphics/MeshSpecification;->mNativeMeshSpec:J

    .line 122
    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->isDirect()Z

    move-result v6

    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->position()I

    move-result v8

    .line 123
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v10

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ShortBuffer;->position()I

    move-result v12

    iget v13, v0, Landroid/graphics/RectF;->left:F

    iget v14, v0, Landroid/graphics/RectF;->top:F

    iget v15, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 121
    move-object/from16 v5, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move/from16 v16, v0

    invoke-static/range {v2 .. v16}, Landroid/graphics/Mesh;->nativeMakeIndexed(JILjava/nio/Buffer;ZIILjava/nio/ShortBuffer;ZIIFFFF)J

    move-result-wide v2

    .line 125
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4d

    .line 129
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v1}, Landroid/graphics/Mesh;->meshSetup(JZ)V

    .line 130
    return-void

    .line 126
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mesh construction failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist meshSetup(JZ)V
    .registers 4

    .line 362
    iput-wide p1, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    .line 363
    iput-boolean p3, p0, Landroid/graphics/Mesh;->mIsIndexed:Z

    .line 364
    sget-object p1, Landroid/graphics/Mesh$MeshHolder;->MESH_SPECIFICATION_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    iget-wide p2, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    invoke-virtual {p1, p0, p2, p3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 365
    return-void
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private static native blacklist nativeMake(JILjava/nio/Buffer;ZIIFFFF)J
.end method

.method private static native blacklist nativeMakeIndexed(JILjava/nio/Buffer;ZIILjava/nio/ShortBuffer;ZIIFFFF)J
.end method

.method private static native blacklist nativeUpdateUniforms(JLjava/lang/String;FFFFI)V
.end method

.method private static native blacklist nativeUpdateUniforms(JLjava/lang/String;IIIII)V
.end method

.method private static native blacklist nativeUpdateUniforms(JLjava/lang/String;[FZ)V
.end method

.method private static native blacklist nativeUpdateUniforms(JLjava/lang/String;[I)V
.end method

.method private blacklist setFloatUniform(Ljava/lang/String;FFFFI)V
    .registers 15

    .line 252
    if-eqz p1, :cond_e

    .line 255
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Mesh;->nativeUpdateUniforms(JLjava/lang/String;FFFFI)V

    .line 257
    return-void

    .line 253
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setIntUniform(Ljava/lang/String;IIIII)V
    .registers 15

    .line 353
    if-eqz p1, :cond_e

    .line 357
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Mesh;->nativeUpdateUniforms(JLjava/lang/String;IIIII)V

    .line 359
    return-void

    .line 354
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setUniform(Ljava/lang/String;[FZ)V
    .registers 6

    .line 260
    if-eqz p1, :cond_12

    .line 263
    if-eqz p2, :cond_a

    .line 267
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Mesh;->nativeUpdateUniforms(JLjava/lang/String;[FZ)V

    .line 268
    return-void

    .line 264
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniform values parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method blacklist getNativeWrapperInstance()J
    .registers 3

    .line 348
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    return-wide v0
.end method

.method public whitelist setColorUniform(Ljava/lang/String;I)V
    .registers 4

    .line 143
    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/Mesh;->setUniform(Ljava/lang/String;[FZ)V

    .line 144
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;J)V
    .registers 4

    .line 157
    invoke-static {p2, p3}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object p2

    sget-object p3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p2

    .line 158
    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Mesh;->setUniform(Ljava/lang/String;[FZ)V

    .line 159
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;Landroid/graphics/Color;)V
    .registers 4

    .line 172
    if-eqz p2, :cond_15

    .line 176
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p2

    .line 177
    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/Mesh;->setUniform(Ljava/lang/String;[FZ)V

    .line 178
    return-void

    .line 173
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The color parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;F)V
    .registers 10

    .line 189
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 190
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FF)V
    .registers 11

    .line 202
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 203
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFF)V
    .registers 12

    .line 218
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 219
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFFF)V
    .registers 13

    .line 234
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 235
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;[F)V
    .registers 4

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/Mesh;->setUniform(Ljava/lang/String;[FZ)V

    .line 248
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;I)V
    .registers 10

    .line 279
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 280
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;II)V
    .registers 11

    .line 292
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 293
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;III)V
    .registers 12

    .line 306
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 307
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;IIII)V
    .registers 13

    .line 322
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Mesh;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 323
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;[I)V
    .registers 5

    .line 335
    if-eqz p1, :cond_12

    .line 338
    if-eqz p2, :cond_a

    .line 341
    iget-wide v0, p0, Landroid/graphics/Mesh;->mNativeMeshWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Mesh;->nativeUpdateUniforms(JLjava/lang/String;[I)V

    .line 342
    return-void

    .line 339
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniform values parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
