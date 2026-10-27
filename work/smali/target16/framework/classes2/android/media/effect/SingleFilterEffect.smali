.class public Landroid/media/effect/SingleFilterEffect;
.super Landroid/media/effect/FilterEffect;
.source "SingleFilterEffect.java"


# instance fields
.field protected greylist-max-o mFunction:Landroid/filterfw/core/FilterFunction;

.field protected greylist-max-o mInputName:Ljava/lang/String;

.field protected greylist-max-o mOutputName:Ljava/lang/String;


# direct methods
.method public varargs constructor greylist <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 56
    iput-object p4, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Landroid/media/effect/SingleFilterEffect;->mOutputName:Ljava/lang/String;

    .line 59
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    move-result-object p2

    .line 61
    invoke-virtual {p2, p3, p1}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p6}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    .line 64
    new-instance p2, Landroid/filterfw/core/FilterFunction;

    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    iput-object p2, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist apply(IIII)V
    .registers 5

    .line 69
    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->beginGLEffect()V

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/SingleFilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/SingleFilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object p2

    .line 74
    iget-object p3, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    iget-object p4, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object p3

    .line 76
    invoke-virtual {p2, p3}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 78
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 79
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 80
    invoke-virtual {p3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 82
    invoke-virtual {p0}, Landroid/media/effect/SingleFilterEffect;->endGLEffect()V

    .line 83
    return-void
.end method

.method public whitelist release()V
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterFunction;->tearDown()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    .line 94
    return-void
.end method

.method public whitelist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 87
    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/FilterFunction;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method
