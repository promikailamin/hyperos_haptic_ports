.class public Landroid/graphics/RuntimeColorFilter;
.super Landroid/graphics/ColorFilter;
.source "RuntimeColorFilter.java"


# instance fields
.field private blacklist mAgsl:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 51
    if-eqz p1, :cond_b

    .line 54
    iput-object p1, p0, Landroid/graphics/RuntimeColorFilter;->mAgsl:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    .line 60
    return-void

    .line 52
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "RuntimeColorFilter requires a non-null AGSL string"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native blacklist nativeCreateRuntimeColorFilter(Ljava/lang/String;)J
.end method

.method private static native blacklist nativeUpdateChild(JLjava/lang/String;J)V
.end method

.method private static native blacklist nativeUpdateInputColorFilter(JLjava/lang/String;J)V
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

    .line 163
    if-eqz p1, :cond_10

    .line 166
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateUniforms(JLjava/lang/String;FFFFI)V

    .line 168
    return-void

    .line 164
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setIntUniform(Ljava/lang/String;IIIII)V
    .registers 15

    .line 245
    if-eqz p1, :cond_10

    .line 248
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateUniforms(JLjava/lang/String;IIIII)V

    .line 250
    return-void

    .line 246
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setUniform(Ljava/lang/String;[FZ)V
    .registers 6

    .line 171
    if-eqz p1, :cond_14

    .line 174
    if-eqz p2, :cond_c

    .line 177
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateUniforms(JLjava/lang/String;[FZ)V

    .line 178
    return-void

    .line 175
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniform values parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected blacklist createNativeInstance()J
    .registers 3

    .line 308
    iget-object v0, p0, Landroid/graphics/RuntimeColorFilter;->mAgsl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/RuntimeColorFilter;->nativeCreateRuntimeColorFilter(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist setColorUniform(Ljava/lang/String;I)V
    .registers 4

    .line 70
    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeColorFilter;->setUniform(Ljava/lang/String;[FZ)V

    .line 71
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;J)V
    .registers 4

    .line 82
    invoke-static {p2, p3}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object p2

    sget-object p3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p2

    .line 83
    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/RuntimeColorFilter;->setUniform(Ljava/lang/String;[FZ)V

    .line 84
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;Landroid/graphics/Color;)V
    .registers 4

    .line 95
    if-eqz p2, :cond_15

    .line 98
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p2

    .line 99
    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeColorFilter;->setUniform(Ljava/lang/String;[FZ)V

    .line 100
    return-void

    .line 96
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The color parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;F)V
    .registers 10

    .line 110
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 111
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FF)V
    .registers 11

    .line 121
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 122
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFF)V
    .registers 12

    .line 133
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 135
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFFF)V
    .registers 13

    .line 146
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 147
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;[F)V
    .registers 4

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeColorFilter;->setUniform(Ljava/lang/String;[FZ)V

    .line 159
    return-void
.end method

.method public whitelist setInputColorFilter(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 7

    .line 278
    if-eqz p1, :cond_18

    .line 281
    if-eqz p2, :cond_10

    .line 284
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    .line 285
    invoke-virtual {p2}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    .line 284
    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateInputColorFilter(JLjava/lang/String;J)V

    .line 286
    return-void

    .line 282
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The colorFilter parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The filterName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V
    .registers 7

    .line 260
    if-eqz p1, :cond_18

    .line 263
    if-eqz p2, :cond_10

    .line 266
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateChild(JLjava/lang/String;J)V

    .line 267
    return-void

    .line 264
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The shader parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The shaderName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V
    .registers 7

    .line 296
    if-eqz p1, :cond_18

    .line 299
    if-eqz p2, :cond_10

    .line 302
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateChild(JLjava/lang/String;J)V

    .line 303
    return-void

    .line 300
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The xfermode parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The xfermodeName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setIntUniform(Ljava/lang/String;I)V
    .registers 10

    .line 188
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 189
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;II)V
    .registers 11

    .line 199
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 200
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;III)V
    .registers 12

    .line 210
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 211
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;IIII)V
    .registers 13

    .line 222
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeColorFilter;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 223
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;[I)V
    .registers 5

    .line 234
    if-eqz p1, :cond_14

    .line 237
    if-eqz p2, :cond_c

    .line 240
    invoke-virtual {p0}, Landroid/graphics/RuntimeColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/RuntimeColorFilter;->nativeUpdateUniforms(JLjava/lang/String;[I)V

    .line 241
    return-void

    .line 238
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniform values parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
