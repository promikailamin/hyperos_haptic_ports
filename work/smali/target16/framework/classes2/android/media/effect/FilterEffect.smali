.class public abstract Landroid/media/effect/FilterEffect;
.super Landroid/media/effect/Effect;
.source "FilterEffect.java"


# instance fields
.field protected greylist-max-o mEffectContext:Landroid/media/effect/EffectContext;

.field private greylist-max-o mName:Ljava/lang/String;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Landroid/media/effect/Effect;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 42
    iput-object p2, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected greylist-max-o beginGLEffect()V
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->assertValidGLState()V

    .line 65
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->saveGLState()V

    .line 66
    return-void
.end method

.method protected greylist-max-o endGLEffect()V
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->restoreGLState()V

    .line 73
    return-void
.end method

.method protected greylist-max-o frameFromTexture(III)Landroid/filterfw/core/Frame;
    .registers 7

    .line 86
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    .line 87
    const/4 v1, 0x3

    invoke-static {p2, p3, v1, v1}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p2

    .line 90
    const/16 p3, 0x64

    int-to-long v1, p1

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 93
    const-wide/16 p2, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 94
    return-object p1
.end method

.method protected greylist-max-o getFilterContext()Landroid/filterfw/core/FilterContext;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    iget-object v0, v0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-object v0
.end method
