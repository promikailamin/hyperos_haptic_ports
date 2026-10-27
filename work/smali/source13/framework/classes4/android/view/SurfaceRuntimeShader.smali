.class public Landroid/view/SurfaceRuntimeShader;
.super Ljava/lang/Object;
.source "SurfaceRuntimeShader.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    if-eqz p1, :cond_9

    .line 11
    invoke-static {p1, p2}, Landroid/view/SurfaceRuntimeShader;->nativeCreateBuilder(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 9
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SurfaceRuntimeShader requires a non-null AGSL string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist nativeCreateBuilder(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native blacklist nativeUpdateFloatUniforms(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method private static native blacklist nativeUpdateIntUniforms(Ljava/lang/String;Ljava/lang/String;I)V
.end method


# virtual methods
.method public whitelist setUniformFloat(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uniformName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 19
    invoke-static {p1, p2, p3}, Landroid/view/SurfaceRuntimeShader;->nativeUpdateFloatUniforms(Ljava/lang/String;Ljava/lang/String;F)V

    .line 20
    return-void
.end method

.method public whitelist setUniformInt(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uniformName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 15
    invoke-static {p1, p2, p3}, Landroid/view/SurfaceRuntimeShader;->nativeUpdateIntUniforms(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    return-void
.end method
