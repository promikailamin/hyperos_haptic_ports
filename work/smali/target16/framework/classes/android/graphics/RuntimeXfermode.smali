.class public Landroid/graphics/RuntimeXfermode;
.super Landroid/graphics/Xfermode;
.source "RuntimeXfermode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RuntimeXfermode$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private blacklist mBuilderNativeInstance:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/RuntimeXfermode;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 59
    if-eqz p1, :cond_13

    .line 62
    invoke-static {p1}, Landroid/graphics/RuntimeXfermode;->nativeCreateBlenderBuilder(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    .line 63
    sget-object p1, Landroid/graphics/RuntimeXfermode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 65
    return-void

    .line 60
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "RuntimeShader requires a non-null AGSL string"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native blacklist nativeCreateBlenderBuilder(Ljava/lang/String;)J
.end method

.method private static native blacklist nativeCreateNativeInstance(J)J
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private static native blacklist nativeUpdateChild(JLjava/lang/String;J)V
.end method

.method private static native blacklist nativeUpdateColorFilter(JLjava/lang/String;J)V
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

    .line 168
    if-eqz p1, :cond_e

    .line 171
    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeXfermode;->nativeUpdateUniforms(JLjava/lang/String;FFFFI)V

    .line 173
    return-void

    .line 169
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setIntUniform(Ljava/lang/String;IIIII)V
    .registers 15

    .line 250
    if-eqz p1, :cond_e

    .line 253
    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeXfermode;->nativeUpdateUniforms(JLjava/lang/String;IIIII)V

    .line 255
    return-void

    .line 251
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setUniform(Ljava/lang/String;[FZ)V
    .registers 6

    .line 176
    if-eqz p1, :cond_12

    .line 179
    if-eqz p2, :cond_a

    .line 182
    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/RuntimeXfermode;->nativeUpdateUniforms(JLjava/lang/String;[FZ)V

    .line 183
    return-void

    .line 180
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniform values parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist createNativeInstance()J
    .registers 3

    .line 312
    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    invoke-static {v0, v1}, Landroid/graphics/RuntimeXfermode;->nativeCreateNativeInstance(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist setColorUniform(Ljava/lang/String;I)V
    .registers 4

    .line 75
    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeXfermode;->setUniform(Ljava/lang/String;[FZ)V

    .line 76
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;J)V
    .registers 4

    .line 87
    invoke-static {p2, p3}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object p2

    sget-object p3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p2

    .line 88
    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/RuntimeXfermode;->setUniform(Ljava/lang/String;[FZ)V

    .line 89
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;Landroid/graphics/Color;)V
    .registers 4

    .line 100
    if-eqz p2, :cond_15

    .line 103
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeXfermode;->setUniform(Ljava/lang/String;[FZ)V

    .line 105
    return-void

    .line 101
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The color parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;F)V
    .registers 10

    .line 115
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 116
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FF)V
    .registers 11

    .line 126
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 127
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFF)V
    .registers 12

    .line 138
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 140
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFFF)V
    .registers 13

    .line 151
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeXfermode;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 152
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;[F)V
    .registers 4

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeXfermode;->setUniform(Ljava/lang/String;[FZ)V

    .line 164
    return-void
.end method

.method public whitelist setInputColorFilter(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 7

    .line 283
    if-eqz p1, :cond_16

    .line 286
    if-eqz p2, :cond_e

    .line 289
    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    .line 290
    invoke-virtual {p2}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    .line 289
    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeXfermode;->nativeUpdateColorFilter(JLjava/lang/String;J)V

    .line 291
    return-void

    .line 287
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The colorFilter parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The filterName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V
    .registers 7

    .line 265
    if-eqz p1, :cond_16

    .line 268
    if-eqz p2, :cond_e

    .line 271
    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeXfermode;->nativeUpdateChild(JLjava/lang/String;J)V

    .line 272
    return-void

    .line 269
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The shader parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The shaderName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V
    .registers 7

    .line 301
    if-eqz p1, :cond_16

    .line 304
    if-eqz p2, :cond_e

    .line 307
    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    invoke-virtual {p2}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeXfermode;->nativeUpdateChild(JLjava/lang/String;J)V

    .line 308
    return-void

    .line 305
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The xfermode parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The xfermodeName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setIntUniform(Ljava/lang/String;I)V
    .registers 10

    .line 193
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeXfermode;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 194
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;II)V
    .registers 11

    .line 204
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeXfermode;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 205
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;III)V
    .registers 12

    .line 215
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeXfermode;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 216
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;IIII)V
    .registers 13

    .line 227
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeXfermode;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 228
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;[I)V
    .registers 5

    .line 239
    if-eqz p1, :cond_12

    .line 242
    if-eqz p2, :cond_a

    .line 245
    iget-wide v0, p0, Landroid/graphics/RuntimeXfermode;->mBuilderNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/RuntimeXfermode;->nativeUpdateUniforms(JLjava/lang/String;[I)V

    .line 246
    return-void

    .line 243
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniform values parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
