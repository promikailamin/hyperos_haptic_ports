.class public Landroid/media/effect/effects/IdentityEffect;
.super Landroid/media/effect/FilterEffect;
.source "IdentityEffect.java"


# direct methods
.method public constructor blacklist <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public whitelist apply(IIII)V
    .registers 5

    .line 35
    invoke-virtual {p0}, Landroid/media/effect/effects/IdentityEffect;->beginGLEffect()V

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/effects/IdentityEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/effects/IdentityEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p2

    .line 40
    invoke-virtual {p2, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 42
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 43
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 45
    invoke-virtual {p0}, Landroid/media/effect/effects/IdentityEffect;->endGLEffect()V

    .line 46
    return-void
.end method

.method public whitelist release()V
    .registers 1

    .line 56
    return-void
.end method

.method public whitelist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 50
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " for IdentityEffect!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
