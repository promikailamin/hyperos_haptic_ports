.class public abstract Landroid/filterfw/core/FrameManager;
.super Ljava/lang/Object;
.source "FrameManager.java"


# instance fields
.field private greylist-max-o mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .registers 3

    .line 37
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 39
    return-object v0
.end method

.method public greylist-max-o duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;
    .registers 4

    .line 43
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    .line 45
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p2

    .line 46
    invoke-virtual {p2, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 47
    return-object p2
.end method

.method public greylist-max-o getContext()Landroid/filterfw/core/FilterContext;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public greylist-max-o getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public abstract greylist newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
.end method

.method public abstract greylist newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
.end method

.method public abstract greylist-max-o releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
.end method

.method public abstract greylist-max-o retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
.end method

.method greylist-max-o setContext(Landroid/filterfw/core/FilterContext;)V
    .registers 2

    .line 66
    iput-object p1, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    .line 67
    return-void
.end method

.method public greylist-max-o tearDown()V
    .registers 1

    .line 63
    return-void
.end method
