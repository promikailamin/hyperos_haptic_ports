.class public Landroid/graphics/RuntimeShader;
.super Landroid/graphics/Shader;
.source "RuntimeShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RuntimeShader$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private blacklist mColorFilterUniforms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNativeInstanceRuntimeShaderBuilder:J

.field private blacklist mShaderUniforms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkingColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mXfermodeUniforms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/RuntimeXfermode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/RuntimeShader;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 284
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Shader;-><init>(Landroid/graphics/ColorSpace;)V

    .line 269
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/RuntimeShader;->mShaderUniforms:Landroid/util/ArrayMap;

    .line 270
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/RuntimeShader;->mColorFilterUniforms:Landroid/util/ArrayMap;

    .line 271
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/RuntimeShader;->mXfermodeUniforms:Landroid/util/ArrayMap;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/RuntimeShader;->mWorkingColorSpace:Landroid/graphics/ColorSpace;

    .line 285
    if-eqz p1, :cond_31

    .line 288
    invoke-static {p1}, Landroid/graphics/RuntimeShader;->nativeCreateBuilder(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    .line 289
    sget-object p1, Landroid/graphics/RuntimeShader$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 291
    return-void

    .line 286
    :cond_31
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "RuntimeShader requires a non-null AGSL string"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native blacklist nativeCreateBuilder(Ljava/lang/String;)J
.end method

.method private static native blacklist nativeCreateShader(JJ)J
.end method

.method private static native blacklist nativeCreateShader(JJJ)J
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private static native blacklist nativeUpdateChild(JLjava/lang/String;J)V
.end method

.method private static native blacklist nativeUpdateColorFilter(JLjava/lang/String;J)V
.end method

.method private static native blacklist nativeUpdateShader(JLjava/lang/String;J)V
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

    .line 428
    if-eqz p1, :cond_11

    .line 432
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeShader;->nativeUpdateUniforms(JLjava/lang/String;FFFFI)V

    .line 434
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 435
    return-void

    .line 429
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setIntUniform(Ljava/lang/String;IIIII)V
    .registers 15

    .line 517
    if-eqz p1, :cond_11

    .line 521
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeShader;->nativeUpdateUniforms(JLjava/lang/String;IIIII)V

    .line 523
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 524
    return-void

    .line 518
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist setUniform(Ljava/lang/String;[FZ)V
    .registers 6

    .line 438
    if-eqz p1, :cond_15

    .line 441
    if-eqz p2, :cond_d

    .line 445
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/RuntimeShader;->nativeUpdateUniforms(JLjava/lang/String;[FZ)V

    .line 446
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 447
    return-void

    .line 442
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniform values parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .registers 10

    .line 615
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    .line 616
    iget-object p3, p0, Landroid/graphics/RuntimeShader;->mWorkingColorSpace:Landroid/graphics/ColorSpace;

    if-eqz p3, :cond_d

    iget-object p3, p0, Landroid/graphics/RuntimeShader;->mWorkingColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p3}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v2

    goto :goto_f

    :cond_d
    const-wide/16 v2, 0x0

    :goto_f
    move-wide v4, v2

    .line 615
    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/RuntimeShader;->nativeCreateShader(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected blacklist getNativeShaderBuilder()J
    .registers 3

    .line 621
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    return-wide v0
.end method

.method public whitelist setColorUniform(Ljava/lang/String;I)V
    .registers 4

    .line 332
    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeShader;->setUniform(Ljava/lang/String;[FZ)V

    .line 333
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;J)V
    .registers 4

    .line 345
    invoke-static {p2, p3}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object p2

    sget-object p3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p2

    .line 346
    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/RuntimeShader;->setUniform(Ljava/lang/String;[FZ)V

    .line 347
    return-void
.end method

.method public whitelist setColorUniform(Ljava/lang/String;Landroid/graphics/Color;)V
    .registers 4

    .line 359
    if-eqz p2, :cond_15

    .line 362
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object p2

    .line 363
    invoke-virtual {p2}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeShader;->setUniform(Ljava/lang/String;[FZ)V

    .line 364
    return-void

    .line 360
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The color parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;F)V
    .registers 10

    .line 374
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 375
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FF)V
    .registers 11

    .line 385
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 387
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFF)V
    .registers 12

    .line 398
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 400
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;FFFF)V
    .registers 13

    .line 411
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFFI)V

    .line 412
    return-void
.end method

.method public whitelist setFloatUniform(Ljava/lang/String;[F)V
    .registers 4

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeShader;->setUniform(Ljava/lang/String;[FZ)V

    .line 424
    return-void
.end method

.method public whitelist setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V
    .registers 7

    .line 555
    if-eqz p1, :cond_1e

    .line 558
    if-eqz p2, :cond_16

    .line 562
    iget-object v0, p0, Landroid/graphics/RuntimeShader;->mShaderUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    .line 564
    invoke-virtual {p2}, Landroid/graphics/BitmapShader;->getNativeInstanceWithDirectSampling()J

    move-result-wide v2

    .line 563
    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeShader;->nativeUpdateShader(JLjava/lang/String;J)V

    .line 565
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 566
    return-void

    .line 559
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The shader parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The shaderName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputColorFilter(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 7

    .line 578
    if-eqz p1, :cond_1e

    .line 581
    if-eqz p2, :cond_16

    .line 584
    iget-object v0, p0, Landroid/graphics/RuntimeShader;->mColorFilterUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    .line 586
    invoke-virtual {p2}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    .line 585
    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeShader;->nativeUpdateColorFilter(JLjava/lang/String;J)V

    .line 587
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 588
    return-void

    .line 582
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The colorFilter parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 579
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The filterName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V
    .registers 7

    .line 534
    if-eqz p1, :cond_1e

    .line 537
    if-eqz p2, :cond_16

    .line 540
    iget-object v0, p0, Landroid/graphics/RuntimeShader;->mShaderUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    .line 542
    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    .line 541
    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeShader;->nativeUpdateShader(JLjava/lang/String;J)V

    .line 543
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 544
    return-void

    .line 538
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The shader parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 535
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The shaderName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputXfermode(Ljava/lang/String;Landroid/graphics/RuntimeXfermode;)V
    .registers 7

    .line 599
    if-eqz p1, :cond_1e

    .line 602
    if-eqz p2, :cond_16

    .line 605
    iget-object v0, p0, Landroid/graphics/RuntimeShader;->mXfermodeUniforms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    .line 607
    invoke-virtual {p2}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v2

    .line 606
    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeShader;->nativeUpdateChild(JLjava/lang/String;J)V

    .line 608
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 609
    return-void

    .line 603
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The xfermode parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 600
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The xfermodeName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setIntUniform(Ljava/lang/String;I)V
    .registers 10

    .line 457
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 458
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;II)V
    .registers 11

    .line 468
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 470
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;III)V
    .registers 12

    .line 480
    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 482
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;IIII)V
    .registers 13

    .line 493
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;IIIII)V

    .line 494
    return-void
.end method

.method public whitelist setIntUniform(Ljava/lang/String;[I)V
    .registers 5

    .line 505
    if-eqz p1, :cond_15

    .line 508
    if-eqz p2, :cond_d

    .line 511
    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/RuntimeShader;->nativeUpdateUniforms(JLjava/lang/String;[I)V

    .line 512
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 513
    return-void

    .line 509
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniform values parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The uniformName parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setWorkingColorSpace(Landroid/graphics/ColorSpace;)V
    .registers 5

    .line 309
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_b

    goto :goto_24

    .line 310
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorSpace must be RGB, given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/graphics/RuntimeShader;->mWorkingColorSpace:Landroid/graphics/ColorSpace;

    if-eq v0, p1, :cond_36

    .line 313
    iput-object p1, p0, Landroid/graphics/RuntimeShader;->mWorkingColorSpace:Landroid/graphics/ColorSpace;

    .line 314
    iget-object p1, p0, Landroid/graphics/RuntimeShader;->mWorkingColorSpace:Landroid/graphics/ColorSpace;

    if-eqz p1, :cond_33

    .line 316
    iget-object p1, p0, Landroid/graphics/RuntimeShader;->mWorkingColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    .line 318
    :cond_33
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    .line 320
    :cond_36
    return-void
.end method
