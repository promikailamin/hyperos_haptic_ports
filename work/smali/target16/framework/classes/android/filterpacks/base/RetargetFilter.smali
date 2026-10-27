.class public Landroid/filterpacks/base/RetargetFilter;
.super Landroid/filterfw/core/Filter;
.source "RetargetFilter.java"


# instance fields
.field private blacklist mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private blacklist mTarget:I

.field private blacklist mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = false
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    .line 54
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    .line 55
    iget p2, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    invoke-virtual {p1, p2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    .line 56
    return-object p1
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 5

    .line 62
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/RetargetFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    iget v2, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    invoke-virtual {p1, v1, v2}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 68
    invoke-virtual {p0, v0, p1}, Landroid/filterpacks/base/RetargetFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 71
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 72
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTargetString:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    .line 48
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/RetargetFilter;->addInputPort(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0, v0}, Landroid/filterpacks/base/RetargetFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
