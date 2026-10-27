.class public final Landroid/graphics/RenderEffect;
.super Ljava/lang/Object;
.source "RenderEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RenderEffect$RenderEffectHolder;
    }
.end annotation


# instance fields
.field private final blacklist mNativeRenderEffect:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/RenderEffect;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J)V
    .registers 5

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-wide p1, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    .line 315
    sget-object p1, Landroid/graphics/RenderEffect$RenderEffectHolder;->RENDER_EFFECT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 317
    return-void
.end method

.method public static whitelist createBitmapEffect(Landroid/graphics/Bitmap;)Landroid/graphics/RenderEffect;
    .registers 12

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 138
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v6, v0

    .line 139
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v1

    .line 140
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v5

    move v10, v6

    invoke-static/range {v1 .. v10}, Landroid/graphics/RenderEffect;->nativeCreateBitmapEffect(JFFFFFFFF)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 139
    return-object v0
.end method

.method public static whitelist createBitmapEffect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RenderEffect;
    .registers 14

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    .line 174
    const/4 v2, 0x0

    if-nez p1, :cond_9

    move v3, v2

    goto :goto_b

    :cond_9
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 175
    :goto_b
    if-nez p1, :cond_e

    goto :goto_10

    :cond_e
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 176
    :goto_10
    if-nez p1, :cond_17

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_19

    :cond_17
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 177
    :goto_19
    if-nez p1, :cond_20

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    goto :goto_22

    :cond_20
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 178
    :goto_22
    new-instance p1, Landroid/graphics/RenderEffect;

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v4, v4

    int-to-float v5, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, p0

    iget p0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v8, p0

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, p0

    .line 179
    move v10, v3

    move v3, v2

    move v2, v10

    invoke-static/range {v0 .. v9}, Landroid/graphics/RenderEffect;->nativeCreateBitmapEffect(JFFFFFFFF)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 178
    return-object p1
.end method

.method public static whitelist createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;
    .registers 6

    .line 242
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 244
    invoke-virtual {p0}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 245
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide p0

    .line 246
    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 243
    invoke-static {v1, v2, p0, p1, p2}, Landroid/graphics/RenderEffect;->nativeCreateBlendModeEffect(JJI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 242
    return-object v0
.end method

.method public static whitelist createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .registers 6

    .line 92
    if-eqz p2, :cond_5

    iget-wide v0, p2, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    .line 93
    :goto_7
    new-instance p2, Landroid/graphics/RenderEffect;

    iget p3, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 94
    invoke-static {p0, p1, v0, v1, p3}, Landroid/graphics/RenderEffect;->nativeCreateBlurEffect(FFJI)J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 93
    return-object p2
.end method

.method public static whitelist createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .registers 6

    .line 117
    new-instance v0, Landroid/graphics/RenderEffect;

    iget p2, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 118
    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Landroid/graphics/RenderEffect;->nativeCreateBlurEffect(FFJI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 117
    return-object v0
.end method

.method public static whitelist createChainEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 5

    .line 274
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 276
    invoke-virtual {p0}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 277
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide p0

    .line 275
    invoke-static {v1, v2, p0, p1}, Landroid/graphics/RenderEffect;->nativeCreateChainEffect(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 274
    return-object v0
.end method

.method public static whitelist createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;
    .registers 6

    .line 219
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 221
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    .line 220
    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateColorFilterEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 219
    return-object v0
.end method

.method public static whitelist createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 5

    .line 204
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 206
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    .line 207
    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide p0

    .line 205
    invoke-static {v1, v2, p0, p1}, Landroid/graphics/RenderEffect;->nativeCreateColorFilterEffect(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 204
    return-object v0
.end method

.method public static whitelist createOffsetEffect(FF)Landroid/graphics/RenderEffect;
    .registers 5

    .line 50
    new-instance v0, Landroid/graphics/RenderEffect;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateOffsetEffect(FFJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static whitelist createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 6

    .line 65
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 68
    invoke-virtual {p2}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    .line 65
    invoke-static {p0, p1, v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateOffsetEffect(FFJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static whitelist createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;
    .registers 5

    .line 305
    new-instance v0, Landroid/graphics/RenderEffect;

    .line 306
    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->getNativeShaderBuilder()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Landroid/graphics/RenderEffect;->nativeCreateRuntimeShaderEffect(JLjava/lang/String;)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderEffect;-><init>(J)V

    .line 305
    return-object v0
.end method

.method public static whitelist createShaderEffect(Landroid/graphics/Shader;)Landroid/graphics/RenderEffect;
    .registers 4

    .line 291
    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateShaderEffect(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method private static native blacklist nativeCreateBitmapEffect(JFFFFFFFF)J
.end method

.method private static native blacklist nativeCreateBlendModeEffect(JJI)J
.end method

.method private static native blacklist nativeCreateBlurEffect(FFJI)J
.end method

.method private static native blacklist nativeCreateChainEffect(JJ)J
.end method

.method private static native blacklist nativeCreateColorFilterEffect(JJ)J
.end method

.method private static native blacklist nativeCreateOffsetEffect(FFJ)J
.end method

.method private static native blacklist nativeCreateRuntimeShaderEffect(JLjava/lang/String;)J
.end method

.method private static native blacklist nativeCreateShaderEffect(J)J
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method


# virtual methods
.method blacklist getNativeInstance()J
    .registers 3

    .line 324
    iget-wide v0, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    return-wide v0
.end method
